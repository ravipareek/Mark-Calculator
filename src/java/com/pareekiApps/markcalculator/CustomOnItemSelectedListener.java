package com.pareekiApps.markcalculator;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;

public class CustomOnItemSelectedListener implements OnItemSelectedListener {
    static String spinnerCategory;
    static String spinnerMain;
    static String spinnerWeight;

    public void onItemSelected(AdapterView<?> parent, View view, int pos, long arg) {
        int id = parent.getId();
        if (id == R.id.spinnerMAIN) {
            spinnerMain = parent.getItemAtPosition(pos).toString();
        } else if (id == R.id.spinnerCategory) {
            spinnerCategory = parent.getItemAtPosition(pos).toString();
        } else if (id == R.id.spinnerWeight) {
            spinnerWeight = parent.getItemAtPosition(pos).toString();
        }
    }

    public void onNothingSelected(AdapterView<?> adapterView) {
    }

    public static String getMain() {
        return spinnerMain;
    }

    public static String getCategory() {
        return spinnerCategory;
    }

    public static String getWeight() {
        return spinnerWeight;
    }
}
