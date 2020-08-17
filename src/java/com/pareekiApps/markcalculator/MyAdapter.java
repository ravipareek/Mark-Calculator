package com.pareekiApps.markcalculator;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseExpandableListAdapter;
import android.widget.TextView;
import java.lang.reflect.Array;

public class MyAdapter extends BaseExpandableListAdapter {
    private static Context context;
    static String[] parent = new String[4];
    boolean C = false;
    boolean KU = false;
    boolean MC = false;
    boolean TI = false;
    boolean allEdited = false;
    String[][] child = ((String[][]) Array.newInstance(String.class, new int[]{4, 4}));
    private int counter;
    SharedPreferences getPrefs;
    TextView tv1;
    TextView tv2;
    TextView tv3;
    TextView tv4;

    public MyAdapter(Context context) {
        context = context;
    }

    public Object getChild(int arg0, int arg1) {
        return null;
    }

    public long getChildId(int groupPosition, int childPosition) {
        return 0;
    }

    public View getChildView(int groupPosition, int childPosition, boolean isLastChild, View convertView, ViewGroup parent) {
        this.counter++;
        this.tv1 = new TextView(context);
        this.tv2 = new TextView(context);
        this.tv3 = new TextView(context);
        this.tv4 = new TextView(context);
        this.getPrefs = PreferenceManager.getDefaultSharedPreferences(context);
        this.child[0][0] = this.getPrefs.getString("Course1KU", "");
        this.child[0][1] = this.getPrefs.getString("Course1MC", "");
        this.child[0][2] = this.getPrefs.getString("Course1TI", "");
        this.child[0][3] = this.getPrefs.getString("Course1C", "");
        this.child[1][0] = this.getPrefs.getString("Course2KU", "");
        this.child[1][1] = this.getPrefs.getString("Course2MC", "");
        this.child[1][2] = this.getPrefs.getString("Course2TI", "");
        this.child[1][3] = this.getPrefs.getString("Course2C", "");
        this.child[2][0] = this.getPrefs.getString("Course3KU", "");
        this.child[2][1] = this.getPrefs.getString("Course3MC", "");
        this.child[2][2] = this.getPrefs.getString("Course3TI", "");
        this.child[2][3] = this.getPrefs.getString("Course3C", "");
        this.child[3][0] = this.getPrefs.getString("Course4KU", "");
        this.child[3][1] = this.getPrefs.getString("Course4MC", "");
        this.child[3][2] = this.getPrefs.getString("Course4TI", "");
        this.child[3][3] = this.getPrefs.getString("Course4C", "");
        this.tv1.setText(this.child[groupPosition][childPosition]);
        this.tv1.setPadding(50, 10, 10, 10);
        this.tv1.setTextSize(15.0f);
        this.tv1.setTextColor(-1);
        this.tv1.setFocusable(true);
        this.tv1.setInputType(2);
        this.tv2.setText(this.child[groupPosition][childPosition]);
        this.tv2.setPadding(50, 10, 10, 10);
        this.tv2.setTextSize(15.0f);
        this.tv2.setTextColor(-1);
        this.tv2.setFocusable(true);
        this.tv2.setInputType(2);
        this.tv3.setText(this.child[groupPosition][childPosition]);
        this.tv3.setPadding(50, 10, 10, 10);
        this.tv3.setTextSize(15.0f);
        this.tv3.setTextColor(-1);
        this.tv3.setFocusable(true);
        this.tv3.setInputType(2);
        this.tv4.setText(this.child[groupPosition][childPosition]);
        this.tv4.setPadding(50, 10, 10, 10);
        this.tv4.setTextSize(15.0f);
        this.tv4.setTextColor(-1);
        this.tv4.setFocusable(true);
        this.tv4.setInputType(2);
        if (this.counter == 1) {
            return this.tv1;
        }
        if (this.counter == 2) {
            return this.tv2;
        }
        if (this.counter == 3) {
            return this.tv3;
        }
        if (this.counter == 4) {
            return this.tv4;
        }
        this.counter = 0;
        return this.tv1;
    }

    public int getChildrenCount(int groupPosition) {
        return this.child[groupPosition].length;
    }

    public Object getGroup(int groupPosition) {
        return Integer.valueOf(groupPosition);
    }

    public int getGroupCount() {
        return parent.length;
    }

    public long getGroupId(int groupPosition) {
        return (long) groupPosition;
    }

    public View getGroupView(int groupPosition, boolean isExpanded, View convertView, ViewGroup parent) {
        TextView tvParent = new TextView(context);
        this.getPrefs = PreferenceManager.getDefaultSharedPreferences(context);
        String courseName1 = this.getPrefs.getString("course1", "Set Course Name");
        String courseName2 = this.getPrefs.getString("course2", "Set Course Name");
        String courseName3 = this.getPrefs.getString("course3", "Set Course Name");
        String courseName4 = this.getPrefs.getString("course4", "Set Course Name");
        parent[0] = courseName1;
        parent[1] = courseName2;
        parent[2] = courseName3;
        parent[3] = courseName4;
        tvParent.setText(parent[groupPosition]);
        tvParent.setPadding(50, 10, 10, 10);
        tvParent.setTextSize(20.0f);
        tvParent.setTextColor(-16711936);
        return tvParent;
    }

    public static void setDefaultGroupName(int groupPosition) {
        parent[groupPosition] = "Set Course Name";
        TextView tvParent = new TextView(context);
        tvParent.setText(parent[groupPosition]);
        tvParent.setPadding(50, 10, 10, 10);
        tvParent.setTextSize(20.0f);
        tvParent.setTextColor(-16711936);
    }

    public boolean hasStableIds() {
        return false;
    }

    public boolean isChildSelectable(int groupPosition, int childPositoin) {
        return true;
    }
}
