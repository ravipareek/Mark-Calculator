package com.pareekiApps.markcalculator;

import android.app.Activity;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.view.View;
import android.widget.ArrayAdapter;
import android.widget.EditText;
import android.widget.Toast;

public class EditingClasses extends Activity {
    double C;
    double KU;
    double MC;
    double TI;
    EditText courseName;
    int courseNumber;
    EditText et1;
    EditText et2;
    EditText et3;
    EditText et4;
    Prefs prefs = new Prefs(this);

    /* Access modifiers changed, original: protected */
    public void onCreate(Bundle savedInstanceState) {
        this.courseNumber = getIntent().getExtras().getInt("class");
        setTitle("Editing Class " + this.courseNumber);
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_editcourse);
        SharedPreferences getPrefs = PreferenceManager.getDefaultSharedPreferences(getBaseContext());
        this.courseName = (EditText) findViewById(R.id.EditText1);
        this.et1 = (EditText) findViewById(R.id.EditText2);
        this.et2 = (EditText) findViewById(R.id.EditText3);
        this.et3 = (EditText) findViewById(R.id.EditText4);
        this.et4 = (EditText) findViewById(R.id.EditText5);
        String temp = "";
        temp = getPrefs.getString("course" + this.courseNumber, "");
        this.courseName.setText(temp);
        if (!Calculation.list.contains(temp)) {
            Calculation.list.set(this.courseNumber, temp);
        }
        this.et1.setText(getPrefs.getString("Course" + this.courseNumber + "KU", ""));
        this.et1.setWidth(100);
        this.et1.setTextSize(15.0f);
        this.et1.setTextColor(-1);
        this.et1.setFocusable(true);
        this.et1.setInputType(2);
        this.et2.setText(getPrefs.getString("Course" + this.courseNumber + "MC", ""));
        this.et2.setTextSize(15.0f);
        this.et2.setTextColor(-1);
        this.et2.setFocusable(true);
        this.et2.setInputType(2);
        this.et3.setText(getPrefs.getString("Course" + this.courseNumber + "TI", ""));
        this.et3.setTextSize(15.0f);
        this.et3.setTextColor(-1);
        this.et3.setFocusable(true);
        this.et3.setInputType(2);
        this.et4.setText(getPrefs.getString("Course" + this.courseNumber + "C", ""));
        this.et4.setTextSize(15.0f);
        this.et4.setTextColor(-1);
        this.et4.setFocusable(true);
        this.et4.setInputType(2);
    }

    public void saveInfo(View v) {
        double KU = Double.parseDouble(this.et1.getText().toString());
        double MC = Double.parseDouble(this.et2.getText().toString());
        double TI = Double.parseDouble(this.et3.getText().toString());
        if (((KU + MC) + TI) + Double.parseDouble(this.et4.getText().toString()) == 100.0d) {
            Calculation.saving = true;
            this.prefs.setPreference("Course" + this.courseNumber + "KU", this.et1.getText().toString());
            this.prefs.setPreference("Course" + this.courseNumber + "MC", this.et2.getText().toString());
            this.prefs.setPreference("Course" + this.courseNumber + "TI", this.et3.getText().toString());
            this.prefs.setPreference("Course" + this.courseNumber + "C", this.et4.getText().toString());
            this.prefs.setPreferenceName("course" + this.courseNumber, this.courseName.getText().toString());
            Calculation.list.set(this.courseNumber, this.courseName.getText().toString());
            Calculation.spinner1.setAdapter(new ArrayAdapter(this, 17367050, Calculation.list));
            Calculation.courseNames[this.courseNumber] = this.courseName.getText().toString();
            ArrayAdapter<String> adapter2 = new ArrayAdapter(this, 17367048, Calculation.courseNames);
            adapter2.setDropDownViewResource(17367049);
            Calculation.spinner5.setAdapter(adapter2);
            Toast.makeText(getApplicationContext(), "Saved", 0).show();
            finish();
            return;
        }
        Toast.makeText(getApplicationContext(), "Make Sure the Weights Add Up To 100%", 0).show();
    }
}
