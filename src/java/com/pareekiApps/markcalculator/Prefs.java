package com.pareekiApps.markcalculator;

import android.content.Context;
import android.content.SharedPreferences.Editor;
import android.os.Bundle;
import android.preference.PreferenceActivity;
import android.preference.PreferenceManager;

public class Prefs extends PreferenceActivity {
    static String allCourseNames = "";
    Context context;

    public Prefs(Context ctx) {
        this.context = ctx;
    }

    /* Access modifiers changed, original: protected */
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setTitle("Settings");
        addPreferencesFromResource(R.xml.prefs);
    }

    public void setPreference(String key, String value) {
        Editor editor = PreferenceManager.getDefaultSharedPreferences(this.context).edit();
        editor.putString(key, value);
        editor.commit();
    }

    public void setPreferenceName(String key, String value) {
        Editor editor = PreferenceManager.getDefaultSharedPreferences(this.context).edit();
        editor.putString(key, value);
        if (allCourseNames.isEmpty()) {
            allCourseNames = value;
        } else {
            allCourseNames += "," + value;
        }
        editor.commit();
    }

    public void setPreferenceInt(String key, int num) {
        Editor editor = PreferenceManager.getDefaultSharedPreferences(this.context).edit();
        editor.putInt(key, num);
        editor.commit();
    }

    public static String getAllCourseNames() {
        return allCourseNames;
    }

    public void clearAll() {
        Editor editor = PreferenceManager.getDefaultSharedPreferences(this.context).edit();
        editor.clear();
        editor.commit();
    }
}
