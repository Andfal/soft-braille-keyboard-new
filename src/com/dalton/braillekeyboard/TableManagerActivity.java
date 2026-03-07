package com.dalton.braillekeyboard;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.ListView;
import android.widget.Toast;
import com.googlecode.eyesfree.braille.service.translate.CustomTableManager;
import com.googlecode.eyesfree.braille.translate.TableInfo;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;

public class TableManagerActivity extends Activity {
    private static final String TAG = "TableManagerActivity";
    private static final int PICK_FILE_REQUEST = 1;
    private CustomTableManager mManager;
    private ListView mListView;
    private ArrayAdapter<String> mAdapter;
    private List<TableInfo> mTables;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        
        mManager = new CustomTableManager(this);
        
        android.widget.LinearLayout layout = new android.widget.LinearLayout(this);
        layout.setOrientation(android.widget.LinearLayout.VERTICAL);
        layout.setPadding(20, 20, 20, 20);
        
        Button addButton = new Button(this);
        addButton.setId(View.generateViewId());
        addButton.setText(R.string.btn_import_table);
        addButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                pickFile();
            }
        });
        layout.addView(addButton);

        Button createButton = new Button(this);
        createButton.setId(View.generateViewId());
        createButton.setText(R.string.btn_create_table);
        createButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(TableManagerActivity.this, TableCreatorActivity.class);
                startActivity(intent);
            }
        });
        layout.addView(createButton);
        
        android.widget.TextView tv = new android.widget.TextView(this);
        tv.setText(R.string.label_tap_to_edit);
        tv.setPadding(0, 20, 0, 10);
        layout.addView(tv);
        
        mListView = new ListView(this);
        mListView.setId(View.generateViewId());
        mListView.setContentDescription(getString(R.string.label_tap_to_edit));
        layout.addView(mListView);
        
        setContentView(layout);
        refreshList();

        mListView.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
                TableInfo table = mTables.get(position);
                Intent intent = new Intent(TableManagerActivity.this, TableCreatorActivity.class);
                // Pass the table ID/fileName to the creator for loading
                intent.putExtra("table_id", table.getId());
                startActivity(intent);
            }
        });

        mListView.setOnItemLongClickListener(new AdapterView.OnItemLongClickListener() {
            @Override
            public boolean onItemLongClick(AdapterView<?> parent, View view, final int position, long id) {
                final TableInfo table = mTables.get(position);
                new AlertDialog.Builder(TableManagerActivity.this)
                    .setTitle(R.string.confirm_delete_title)
                    .setMessage(String.format(getString(R.string.confirm_delete_msg), table.getVariant()))
                    .setPositiveButton(R.string.btn_delete, new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialog, int which) {
                            if (mManager.deleteTable(table.getId())) {
                                Toast.makeText(TableManagerActivity.this, R.string.msg_deleted, Toast.LENGTH_SHORT).show();
                                refreshList();
                            }
                        }
                    })
                    .setNegativeButton(R.string.btn_cancel, null)
                    .show();
                return true;
            }
        });
    }

    private void refreshList() {
        mManager.scanFiles();
        mTables = mManager.getTables();
        List<String> names = new ArrayList<>();
        for (TableInfo t : mTables) {
            names.add(t.getVariant());
        }
        mAdapter = new ArrayAdapter<>(this, android.R.layout.simple_list_item_1, names);
        mListView.setAdapter(mAdapter);
    }

    private void pickFile() {
        Intent intent = new Intent(Intent.ACTION_GET_CONTENT);
        intent.setType("*/*");
        intent.addCategory(Intent.CATEGORY_OPENABLE);
        startActivityForResult(Intent.createChooser(intent, getString(R.string.title_select_table_file)), PICK_FILE_REQUEST);
    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        if (requestCode == PICK_FILE_REQUEST && resultCode == RESULT_OK && data != null) {
            Uri uri = data.getData();
            if (uri != null) {
                importTable(uri);
            }
        }
    }

    private void importTable(Uri uri) {
        try {
            String fileName = getFileName(uri);
            if (!fileName.endsWith(".ctb") && !fileName.endsWith(".utb") && !fileName.endsWith(".dis")) {
                Toast.makeText(this, R.string.error_invalid_file, Toast.LENGTH_LONG).show();
                return;
            }

            File destFile = mManager.getCustomTableFile(fileName);
            
            try (InputStream is = getContentResolver().openInputStream(uri);
                 OutputStream os = new FileOutputStream(destFile)) {
                byte[] buffer = new byte[4096];
                int read;
                while ((read = is.read(buffer)) != -1) {
                    os.write(buffer, 0, read);
                }
            }

            Toast.makeText(this, String.format(getString(R.string.msg_imported), fileName), Toast.LENGTH_SHORT).show();
            refreshList();

        } catch (Exception e) {
            Log.e(TAG, "Error importing table", e);
            Toast.makeText(this, String.format(getString(R.string.label_error_prefix), e.getMessage()), Toast.LENGTH_LONG).show();
        }
    }

    private String getFileName(Uri uri) {
        String path = uri.getPath();
        int cut = path.lastIndexOf('/');
        if (cut != -1) {
            return path.substring(cut + 1);
        }
        return "custom_table.ctb";
    }
}
