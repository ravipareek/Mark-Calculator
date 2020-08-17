package com.pareekiApps.markcalculator;

import android.content.SharedPreferences;
import android.os.Bundle;
import android.preference.EditTextPreference;
import android.preference.Preference;
import android.preference.PreferenceActivity;

public class SettingsActivity extends PreferenceActivity {
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        addPreferencesFromResource(R.xml.prefs);
        EditTextPreference course1Name = (EditTextPreference) findPreference("course1");
        course1Name.setSummary(course1Name.getText());
        EditTextPreference course2Name = (EditTextPreference) findPreference("course2");
        course2Name.setSummary(course2Name.getText());
        EditTextPreference course3Name = (EditTextPreference) findPreference("course3");
        course3Name.setSummary(course3Name.getText());
        EditTextPreference course4Name = (EditTextPreference) findPreference("course4");
        course4Name.setSummary(course4Name.getText());
        EditTextPreference course1KU = (EditTextPreference) findPreference("Course1KU");
        course1KU.setSummary(course1KU.getText());
        EditTextPreference course1MC = (EditTextPreference) findPreference("Course1MC");
        course1MC.setSummary(course1MC.getText());
        EditTextPreference course1TI = (EditTextPreference) findPreference("Course1TI");
        course1TI.setSummary(course1TI.getText());
        EditTextPreference course1C = (EditTextPreference) findPreference("Course1C");
        course1C.setSummary(course1C.getText());
        EditTextPreference course2KU = (EditTextPreference) findPreference("Course2KU");
        course2KU.setSummary(course2KU.getText());
        EditTextPreference course2MC = (EditTextPreference) findPreference("Course2MC");
        course2MC.setSummary(course2MC.getText());
        EditTextPreference course2TI = (EditTextPreference) findPreference("Course2TI");
        course2TI.setSummary(course2TI.getText());
        EditTextPreference course2C = (EditTextPreference) findPreference("Course2C");
        course2C.setSummary(course2C.getText());
        EditTextPreference course3KU = (EditTextPreference) findPreference("Course3KU");
        course3KU.setSummary(course3KU.getText());
        EditTextPreference course3MC = (EditTextPreference) findPreference("Course3MC");
        course3MC.setSummary(course3MC.getText());
        EditTextPreference course3TI = (EditTextPreference) findPreference("Course3TI");
        course3TI.setSummary(course3TI.getText());
        EditTextPreference course3C = (EditTextPreference) findPreference("Course2C");
        course3C.setSummary(course3C.getText());
        EditTextPreference course4KU = (EditTextPreference) findPreference("Course4KU");
        course4KU.setSummary(course4KU.getText());
        EditTextPreference course4MC = (EditTextPreference) findPreference("Course4MC");
        course4MC.setSummary(course4MC.getText());
        EditTextPreference course4TI = (EditTextPreference) findPreference("Course4TI");
        course4TI.setSummary(course4TI.getText());
        EditTextPreference course4C = (EditTextPreference) findPreference("Course4C");
        course4C.setSummary(course4C.getText());
    }

    public void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String key) {
        Preference pref = findPreference(key);
        if (pref instanceof EditTextPreference) {
            pref.setSummary(((EditTextPreference) pref).getText());
        }
    }
}
