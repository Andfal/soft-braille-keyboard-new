package com.googlecode.eyesfree.braille.service.translate;

import android.util.Log;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * Advanced utility to search for Braille dot patterns and sequences 
 * with localized, user-friendly descriptions.
 */
public class BrailleRuleSearcher {
    private static final String TAG = "BrailleRuleSearcher";

    public static class BrailleRule {
        public final String fileName;
        public final int lineNumber;
        public final String content;
        public final String type; 
        public final String resourceKey; // The key to look up in strings.xml

        public BrailleRule(String fileName, int lineNumber, String content, String type, String resourceKey) {
            this.fileName = fileName;
            this.lineNumber = lineNumber;
            this.content = content;
            this.type = type;
            this.resourceKey = resourceKey;
        }
    }

    public List<BrailleRule> search(String dotPattern, String startFilePath) {
        List<BrailleRule> results = new ArrayList<>();
        Set<String> visitedFiles = new HashSet<>();
        
        String regex = "(?<![1-8])" + Pattern.quote(dotPattern) + "(?![1-8])";
        Pattern pattern = Pattern.compile(regex);

        searchRecursive(dotPattern, startFilePath, pattern, results, visitedFiles, null);
        return results;
    }

    private void searchRecursive(String dotPattern, String filePath, Pattern pattern, 
                                List<BrailleRule> results, Set<String> visitedFiles, String includeChain) {
        File file = new File(filePath);
        String absPath = file.getAbsolutePath();
        
        if (visitedFiles.contains(absPath) || !file.exists()) {
            return;
        }
        visitedFiles.add(absPath);

        File parentDir = file.getParentFile();
        BufferedReader reader = null;
        
        try {
            reader = new BufferedReader(new FileReader(file));
            String line;
            int lineNum = 0;
            
            while ((line = reader.readLine()) != null) {
                lineNum++;
                String trimmed = line.trim();
                
                if (trimmed.isEmpty() || trimmed.startsWith("#")) {
                    continue;
                }

                if (trimmed.startsWith("include ")) {
                    String[] parts = trimmed.split("\\s+");
                    if (parts.length > 1) {
                        String includeName = parts[1];
                        File includeFile = new File(parentDir, includeName);
                        
                        // Build the full breadcrumb chain: root -> file1:line -> file2:line
                        String nextChain = (includeChain == null) 
                                ? file.getName() + ":" + lineNum
                                : includeChain + " -> " + file.getName() + ":" + lineNum;
                                
                        searchRecursive(dotPattern, includeFile.getAbsolutePath(), 
                                       pattern, results, visitedFiles, nextChain);
                    }
                }

                Matcher matcher = pattern.matcher(line);
                if (matcher.find()) {
                    String type = identifyRuleType(trimmed);
                    String resKey = getResourceKey(trimmed);
                    
                    // Format the filename with the full inclusion context
                    String fileNameWithContext = (includeChain != null) 
                            ? file.getName() + " (-> " + includeChain + ")" 
                            : file.getName();
                            
                    results.add(new BrailleRule(fileNameWithContext, lineNum, trimmed, type, resKey));
                }
            }
        } catch (IOException e) {
            Log.e(TAG, "Error reading table file: " + filePath, e);
        } finally {
            if (reader != null) {
                try { reader.close(); } catch (IOException ignored) {}
            }
        }
    }

    private String identifyRuleType(String line) {
        if (line.contains("context")) return "Contextual";
        if (line.contains("match")) return "Pattern Match";
        if (line.contains("pass2")) return "Multi-pass";
        if (line.contains("correct")) return "Auto-correction";
        if (line.contains("caps") || line.contains("capitalsign")) return "Capitalization";
        if (line.contains("numsign") || line.contains("numeric")) return "Numeric";
        if (line.contains("emph")) return "Emphasis";
        if (line.contains("lowercase") || line.contains("uppercase") || line.contains("base uppercase")) return "Alphabet";
        return "Standard";
    }

    private String getResourceKey(String line) {
        // Order matters: more specific first
        if (line.contains("$d") || line.contains("$D")) {
            return "help_desc_numeric";
        }
        if (line.contains("%<*") || line.contains("standing alone")) {
            return "help_desc_whole_word";
        }
        if (line.contains("capsletter") || (line.contains("context") && line.contains("uppercase"))) {
            return "help_desc_caps_letter";
        }
        if (line.contains("begcapsword")) {
            return "help_desc_caps_lock";
        }
        if (line.contains("numsign")) {
            return "help_desc_numsign";
        }
        if (line.contains("emphclass italic")) return "help_desc_italic";
        if (line.contains("emphclass bold")) return "help_desc_bold";
        if (line.contains("emphclass underline")) return "help_desc_underline";
        
        if (line.contains("correct")) {
            if (line.contains("\"̄\"") || line.contains("\"̅\"")) {
                return "help_desc_diacritic";
            }
            return "help_desc_autocorrect";
        }
        
        if (line.contains("#") && line.contains("=")) {
            if (line.contains("latin")) return "help_desc_latin_mode";
            if (line.contains("greek")) return "help_desc_greek_mode";
            return "help_desc_state_change";
        }

        return "help_desc_default";
    }
}
