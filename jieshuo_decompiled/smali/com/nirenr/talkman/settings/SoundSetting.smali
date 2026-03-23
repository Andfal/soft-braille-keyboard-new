.class public Lcom/nirenr/talkman/settings/SoundSetting;
.super Landroid/app/BaseActivity;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/dialog/EditDialog$EditDialogCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;
    }
.end annotation


# static fields
.field private static e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static f:[Ljava/lang/String;


# instance fields
.field private a:Lcom/androlua/LuaApplication;

.field private b:Ljava/io/File;

.field private c:Ljava/lang/String;

.field private d:Landroid/media/MediaPlayer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lk2/f0;->c()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/nirenr/talkman/settings/SoundSetting;->e:Ljava/util/HashMap;

    sget-object v0, Lk2/f0;->a:[Ljava/lang/String;

    sput-object v0, Lcom/nirenr/talkman/settings/SoundSetting;->f:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/BaseActivity;-><init>()V

    return-void
.end method

.method static bridge synthetic a(Lcom/nirenr/talkman/settings/SoundSetting;)Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/settings/SoundSetting;->b:Ljava/io/File;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/nirenr/talkman/settings/SoundSetting;)Landroid/media/MediaPlayer;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/settings/SoundSetting;->d:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static bridge synthetic c()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lcom/nirenr/talkman/settings/SoundSetting;->e:Ljava/util/HashMap;

    return-object v0
.end method

.method static bridge synthetic d()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/nirenr/talkman/settings/SoundSetting;->f:[Ljava/lang/String;

    return-object v0
.end method

.method private e()V
    .locals 13

    new-instance v6, Landroid/widget/ListView;

    invoke-direct {v6, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    new-instance v7, Lcom/nirenr/talkman/settings/SoundSetting$1;

    const v0, 0x1090010

    invoke-direct {v7, p0, p0, v0}, Lcom/nirenr/talkman/settings/SoundSetting$1;-><init>(Lcom/nirenr/talkman/settings/SoundSetting;Landroid/content/Context;I)V

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/4 v0, 0x2

    invoke-virtual {v6, v0}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    new-instance v8, Landroid/widget/EditText;

    invoke-direct {v8, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setEnabled(Z)V

    const v0, 0x7f070318

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setHint(I)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v10, -0x2

    invoke-direct {v2, v3, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v8, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v6, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sput-boolean v1, Lcom/nirenr/talkman/h;->b:Z

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0705a0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/nirenr/talkman/settings/SoundSetting$3;

    invoke-direct {v1, p0, v6, v7}, Lcom/nirenr/talkman/settings/SoundSetting$3;-><init>(Lcom/nirenr/talkman/settings/SoundSetting;Landroid/widget/ListView;Landroid/widget/ArrayListAdapter;)V

    const v2, 0x7f0702fc

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070095

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/nirenr/talkman/settings/SoundSetting$2;

    invoke-direct {v1, p0}, Lcom/nirenr/talkman/settings/SoundSetting$2;-><init>(Lcom/nirenr/talkman/settings/SoundSetting;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Dialog;->show()V

    invoke-virtual {v11, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/View;->setEnabled(Z)V

    const/4 v0, -0x3

    invoke-virtual {v11, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/View;->setEnabled(Z)V

    new-instance v12, Lcom/nirenr/talkman/settings/SoundSetting$4;

    move-object v0, v12

    move-object v1, p0

    move-object v2, v11

    move-object v3, v7

    move-object v4, v8

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/nirenr/talkman/settings/SoundSetting$4;-><init>(Lcom/nirenr/talkman/settings/SoundSetting;Landroid/app/AlertDialog;Landroid/widget/ArrayListAdapter;Landroid/widget/EditText;Landroid/widget/ListView;)V

    new-array v0, v9, [Ljava/lang/String;

    invoke-virtual {v12, v0}, Lcom/androlua/util/AsyncTaskX;->execute([Ljava/lang/Object;)Lcom/androlua/util/AsyncTaskX;

    move-result-object v2

    invoke-virtual {v11, v10}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v9

    new-instance v10, Lcom/nirenr/talkman/settings/SoundSetting$5;

    move-object v0, v10

    move-object v3, v11

    move-object v5, v7

    invoke-direct/range {v0 .. v6}, Lcom/nirenr/talkman/settings/SoundSetting$5;-><init>(Lcom/nirenr/talkman/settings/SoundSetting;Lcom/androlua/util/AsyncTaskX;Landroid/app/AlertDialog;Landroid/widget/EditText;Landroid/widget/ArrayListAdapter;Landroid/widget/ListView;)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onCallback(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nirenr/talkman/settings/GestureEdit;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/nirenr/talkman/settings/SoundSetting;->a:Lcom/androlua/LuaApplication;

    iget-object v2, p0, Lcom/nirenr/talkman/settings/SoundSetting;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Lcom/androlua/LuaApplication;->getGesturePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "RES_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/app/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Landroid/media/MediaPlayer;

    invoke-direct {p1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object p1, p0, Lcom/nirenr/talkman/settings/SoundSetting;->d:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const v0, 0x1080038

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setHomeAsUpIndicator(I)V

    const v0, 0x7f07026b

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setHomeActionContentDescription(I)V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "RES_ID"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/nirenr/talkman/settings/SoundSetting;->c:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0701ba

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/nirenr/talkman/settings/SoundSetting;->c:Ljava/lang/String;

    :cond_1
    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object p1

    iput-object p1, p0, Lcom/nirenr/talkman/settings/SoundSetting;->a:Lcom/androlua/LuaApplication;

    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/nirenr/talkman/settings/SoundSetting;->a:Lcom/androlua/LuaApplication;

    iget-object v1, p0, Lcom/nirenr/talkman/settings/SoundSetting;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/androlua/LuaApplication;->getSoundsDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/nirenr/talkman/settings/SoundSetting;->b:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/nirenr/talkman/settings/SoundSetting;->b:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result p1

    if-eqz p1, :cond_3

    :try_start_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    sget-object v0, Lcom/nirenr/talkman/settings/SoundSetting;->f:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    const v4, 0x7f0708ae

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/nirenr/talkman/settings/SoundSetting;->a:Lcom/androlua/LuaApplication;

    iget-object v2, p0, Lcom/nirenr/talkman/settings/SoundSetting;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/androlua/LuaApplication;->getSoundsDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "config"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/nirenr/talkman/o;->m(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/nirenr/talkman/settings/SoundSetting;->c:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    new-instance v0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;

    invoke-direct {v0}, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;-><init>()V

    const v1, 0x1020002

    invoke-virtual {p1, v1, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    const/4 v0, 0x0

    const v1, 0x7f0702fc

    invoke-interface {p1, v0, v0, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/nirenr/talkman/settings/SoundSetting;->d:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    if-eqz v0, :cond_1

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/nirenr/talkman/settings/SoundSetting;->e()V

    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/BaseActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/BaseActivity;->onResume()V

    return-void
.end method
