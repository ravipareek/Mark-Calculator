package com.pareekiApps.markcalculator;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnLongClickListener;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.PopupMenu;
import android.widget.PopupMenu.OnMenuItemClickListener;
import android.widget.Spinner;
import android.widget.TableLayout;
import android.widget.TableLayout.LayoutParams;
import android.widget.TableRow;
import android.widget.TextView;
import android.widget.Toast;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.AdRequest.Builder;
import com.google.android.gms.ads.AdView;
import com.google.android.gms.ads.InterstitialAd;

public class Course1 extends Activity {
    static SharedPreferences getPrefs;
    double answer = -1.0d;
    Dialog builder;
    String cat = "";
    String[] categories = new String[]{"Categories", "Knowledge and Understanding", "Making Connections", "Thinking and Inquiry", "Communication"};
    String[] cats = new String[]{"Categories", "KU", "MC", "TI", "C"};
    Context context;
    String courseName;
    int entryCounter = 0;
    TextView finalAverage;
    private InterstitialAd interstitialAd;
    String name = "";
    Prefs prefs = new Prefs(this);
    String saveName;
    String spinnerSelectCategory = "";
    String spinnerSelectWeight = "";
    double totalC;
    int totalCCount;
    double totalKU;
    int totalKUCount;
    double totalMC;
    int totalMCCount;
    double totalMarks;
    double totalTI;
    int totalTICount;
    String[] weights = new String[]{"Weights", "1", "2", "3", "4", "5"};

    /* Access modifiers changed, original: protected */
    public void onCreate(Bundle savedInstanceState) {
        double average;
        super.onCreate(savedInstanceState);
        this.context = this;
        this.courseName = getIntent().getExtras().getString("name");
        setTitle(this.courseName + " Mark Catalog");
        getPrefs = PreferenceManager.getDefaultSharedPreferences(getBaseContext());
        setContentView(R.layout.course1);
        ((AdView) findViewById(R.id.adViewC1)).loadAd(new Builder().addTestDevice("00811854ce4d1200").build());
        this.interstitialAd = new InterstitialAd(this);
        this.interstitialAd.setAdUnitId("ca-app-pub-4733259834848580/5313887353");
        this.interstitialAd.loadAd(new Builder().addTestDevice("00811854ce4d1200").build());
        TextView title = (TextView) findViewById(R.id.Table1CourseTitle);
        title.setText(this.courseName);
        title.setTextColor(-16711936);
        this.finalAverage = (TextView) findViewById(R.id.overalAverage);
        ((Button) findViewById(R.id.addNewMark1)).setOnClickListener(new OnClickListener() {
            public void onClick(View v) {
                boolean KU = false;
                boolean MC = false;
                boolean TI = false;
                boolean C = false;
                if (!Course1.getPrefs.getString("Course1KU", "0").equals("0")) {
                    KU = true;
                }
                if (!Course1.getPrefs.getString("Course1MC", "0").equals("0")) {
                    MC = true;
                }
                if (!Course1.getPrefs.getString("Course1TI", "0").equals("0")) {
                    TI = true;
                }
                if (!Course1.getPrefs.getString("Course1C", "0").equals("0")) {
                    C = true;
                }
                if (KU && MC && TI && C) {
                    Course1.this.addANewMark();
                    return;
                }
                AlertDialog.Builder builder = new AlertDialog.Builder(Course1.this.context);
                builder.setMessage("Please setup you classes in the 'Settings Menu'");
                builder.setTitle("Error");
                builder.create();
                builder.show();
            }
        });
        double total = 0.0d;
        int totalMarksCounter = 0;
        this.entryCounter = getPrefs.getInt("Class1EntryCounter", 0);
        this.totalKUCount = getPrefs.getInt("Course1totalKUCount", 0);
        this.totalMCCount = getPrefs.getInt("Course1totalMCCount", 0);
        this.totalTICount = getPrefs.getInt("Course1totalTICount", 0);
        this.totalCCount = getPrefs.getInt("Course1totalCCount", 0);
        this.totalKU = Double.parseDouble(getPrefs.getString("Course1totalKU", "0"));
        this.totalMC = Double.parseDouble(getPrefs.getString("Course1totalMC", "0"));
        this.totalTI = Double.parseDouble(getPrefs.getString("Course1totalTI", "0"));
        this.totalC = Double.parseDouble(getPrefs.getString("Course1totalC", "0"));
        putOveralMarks();
        for (int i = 1; i <= this.entryCounter; i++) {
            TableLayout table = (TableLayout) findViewById(R.id.tableLayoutClass1);
            final TableRow row = new TableRow(this);
            String[] data = getPrefs.getString("Entry" + i + "Course1", "0").split(",");
            double savedMark = ((double) Math.round(100.0d * Double.parseDouble(data[0]))) / 100.0d;
            String cate = data[1];
            int wei = Integer.parseInt(data[2]);
            total += ((double) wei) * savedMark;
            totalMarksCounter += wei;
            String entryName = data[3];
            View textView = new TextView(this);
            textView.setGravity(1);
            textView = new TextView(this);
            textView.setGravity(1);
            textView = new TextView(this);
            textView.setGravity(1);
            textView = new TextView(this);
            textView.setGravity(1);
            textView.setText(new StringBuilder(String.valueOf(i)).append(". ").append(entryName).toString());
            textView.setText(savedMark);
            double weightedMark = ((double) Math.round(100.0d * (((Double.parseDouble(getPrefs.getString("Course1" + cate, "")) * savedMark) / 100.0d) * ((double) wei)))) / 100.0d;
            average = ((double) Math.round(100.0d * (total / ((double) totalMarksCounter)))) / 100.0d;
            textView.setText(cate);
            textView.setText(average);
            row.addView(textView);
            row.addView(textView);
            row.addView(textView);
            row.addView(textView);
            row.setLongClickable(true);
            table.addView(row, new LayoutParams(-2, -2));
            row.setOnLongClickListener(new OnLongClickListener() {
                public boolean onLongClick(View arg0) {
                    if (VERSION.SDK_INT >= 11) {
                        Course1.this.showPopupMenu(arg0, row);
                    } else {
                        String[] col1Name = ((TextView) row.getVirtualChildAt(0)).getText().toString().split(" ");
                        Course1.this.editMark(col1Name[1], Integer.parseInt(col1Name[0].substring(0, col1Name[0].length() - 1)));
                    }
                    return true;
                }
            });
        }
        average = ((double) Math.round(100.0d * (total / ((double) totalMarksCounter)))) / 100.0d;
        this.finalAverage.setText("Average:" + (((double) Math.round(calculateMark() * 100.0d)) / 100.0d) + "%");
        this.prefs.setPreference("Course1finalAverage", new StringBuilder(String.valueOf(average)).toString());
    }

    private void editMark(String col1Name, int rowNum) {
        int i;
        this.builder = new Dialog(this);
        this.builder.setTitle("Editing a mark");
        View layout_spinners = ((LayoutInflater) getApplicationContext().getSystemService("layout_inflater")).inflate(R.layout.addnewmark, null);
        Spinner spinner1 = (Spinner) layout_spinners.findViewById(R.id.spinnerCategory);
        Spinner spinner2 = (Spinner) layout_spinners.findViewById(R.id.spinnerWeight);
        Button saveMark = (Button) layout_spinners.findViewById(R.id.saveMark);
        final EditText numMark = (EditText) layout_spinners.findViewById(R.id.numeratorMark);
        final EditText denMark = (EditText) layout_spinners.findViewById(R.id.denominatorMark);
        final EditText et = (EditText) layout_spinners.findViewById(R.id.entryNames);
        String[] values = getPrefs.getString("Course1Entry" + rowNum + "values", "0,0").split(",");
        String[] data = getPrefs.getString("Entry" + rowNum + "Course1", ",,").split(",");
        numMark.setText(values[0]);
        denMark.setText(values[1]);
        et.setText(data[3]);
        this.builder.setContentView(layout_spinners);
        this.builder.setCancelable(true);
        this.builder.show();
        ArrayAdapter<String> adapter1 = new ArrayAdapter(getApplicationContext(), 17367048, this.categories);
        adapter1.setDropDownViewResource(17367049);
        spinner1.setOnItemSelectedListener(new CustomOnItemSelectedListener());
        spinner1.setAdapter(adapter1);
        ArrayAdapter<String> adapter2 = new ArrayAdapter(getApplicationContext(), 17367048, this.weights);
        adapter2.setDropDownViewResource(17367049);
        spinner2.setOnItemSelectedListener(new CustomOnItemSelectedListener());
        spinner2.setAdapter(adapter2);
        for (i = 0; i < 5; i++) {
            if (data[1].equals(this.cats[i])) {
                spinner1.setSelection(i);
                break;
            }
        }
        for (i = 0; i < 6; i++) {
            if (data[2].equals(this.weights[i])) {
                spinner2.setSelection(i);
                break;
            }
        }
        final int i2 = rowNum;
        saveMark.setOnClickListener(new OnClickListener() {
            public void onClick(View v) {
                boolean gotMark = false;
                boolean gotCategory = false;
                boolean gotWeight = false;
                String n = numMark.getText().toString();
                String d = denMark.getText().toString();
                Course1.this.name = et.getText().toString();
                Course1.this.spinnerSelectWeight = CustomOnItemSelectedListener.getWeight();
                if (!Course1.this.spinnerSelectCategory.equals("Categories")) {
                    gotCategory = true;
                }
                if (!Course1.this.spinnerSelectWeight.equals("Weights")) {
                    gotWeight = true;
                }
                if (n.matches(".*\\d.*") || d.matches(".*\\d.*")) {
                    double numerator = Double.parseDouble(n);
                    double denominator = Double.parseDouble(d);
                    Course1.this.answer = (numerator / denominator) * 100.0d;
                    Course1.this.answer = ((double) Math.round(Course1.this.answer * 100.0d)) / 100.0d;
                    Course1 course1 = Course1.this;
                    course1.totalMarks += Course1.this.answer * Double.parseDouble(Course1.this.spinnerSelectWeight);
                    gotMark = true;
                    Course1.this.prefs.setPreference("Course1Entry" + i2 + "values", new StringBuilder(String.valueOf(numerator)).append(",").append(denominator).toString());
                }
                Course1.this.spinnerSelectCategory = CustomOnItemSelectedListener.getCategory();
                if (Course1.this.spinnerSelectCategory.equals("Knowledge and Understanding")) {
                    Course1.this.cat = "KU";
                } else if (Course1.this.spinnerSelectCategory.equals("Making Connections")) {
                    Course1.this.cat = "MC";
                } else if (Course1.this.spinnerSelectCategory.equals("Thinking and Inquiry")) {
                    Course1.this.cat = "TI";
                } else if (Course1.this.spinnerSelectCategory.equals("Communication")) {
                    Course1.this.cat = "C";
                }
                if (gotMark && gotCategory && gotWeight) {
                    Course1.this.saveName = "Entry" + i2 + "Course1";
                    Course1.this.prefs.setPreference(Course1.this.saveName, new StringBuilder(String.valueOf(Course1.this.answer)).append(",").append(Course1.this.cat).append(",").append(Course1.this.spinnerSelectWeight).append(",").append(Course1.this.name).toString());
                    Course1.this.prefs.setPreferenceInt("Class1EntryCounter", Course1.this.entryCounter);
                    Course1.this.updateRow(i2);
                    Course1.this.putOveralMarks();
                    Course1.this.builder.dismiss();
                    return;
                }
                Toast.makeText(Course1.this.getApplicationContext(), "Make sure all the informatoion is present", 0).show();
            }
        });
        if (this.interstitialAd.isLoaded()) {
            this.interstitialAd.show();
            AdRequest adRequest = new Builder().addTestDevice("00811854ce4d1200").build();
            this.interstitialAd = new InterstitialAd(this);
            this.interstitialAd.setAdUnitId("ca-app-pub-4733259834848580/9185683751");
            this.interstitialAd.loadAd(adRequest);
        }
    }

    private void updateRow(int rowNum) {
        this.entryCounter = getPrefs.getInt("Class1EntryCounter", 0);
        this.totalKUCount = getPrefs.getInt("Course1totalKUCount", 0);
        this.totalMCCount = getPrefs.getInt("Course1totalMCCount", 0);
        this.totalTICount = getPrefs.getInt("Course1totalTICount", 0);
        this.totalCCount = getPrefs.getInt("Course1totalCCount", 0);
        TableLayout table = (TableLayout) findViewById(R.id.tableLayoutClass1);
        table.removeViews(2, table.getChildCount() - 2);
        double totalKUe = 0.0d;
        double totalMCe = 0.0d;
        double totalTIe = 0.0d;
        double totalCe = 0.0d;
        double total = 0.0d;
        int totalMarksCounter = 0;
        for (int i = 1; i <= this.entryCounter; i++) {
            final TableRow row = new TableRow(this);
            String[] data = getPrefs.getString("Entry" + i + "Course1", "0").split(",");
            double savedMark = ((double) Math.round(100.0d * Double.parseDouble(data[0]))) / 100.0d;
            String cate = data[1];
            int wei = Integer.parseInt(data[2]);
            total += ((double) wei) * savedMark;
            totalMarksCounter += wei;
            String entryName = data[3];
            View textView = new TextView(this);
            textView.setGravity(1);
            textView = new TextView(this);
            textView.setGravity(1);
            textView = new TextView(this);
            textView.setGravity(1);
            textView = new TextView(this);
            textView.setGravity(1);
            textView.setText(new StringBuilder(String.valueOf(i)).append(". ").append(entryName).toString());
            textView.setText(savedMark);
            double weightedMark = ((double) Math.round(100.0d * (((Double.parseDouble(getPrefs.getString("Course1" + cate, "")) * savedMark) / 100.0d) * ((double) wei)))) / 100.0d;
            if (this.spinnerSelectCategory.equals("Knowledge and Understanding") && cate.equals("KU")) {
                totalKUe += weightedMark;
                this.totalKU = totalKUe;
                this.prefs.setPreference("Course1totalKU", new StringBuilder(String.valueOf(this.totalKU)).toString());
            } else if (this.spinnerSelectCategory.equals("Making Connections") && cate.equals("MC")) {
                totalMCe += weightedMark;
                this.totalMC = totalMCe;
                this.prefs.setPreference("Course1totalMC", new StringBuilder(String.valueOf(this.totalMC)).toString());
            } else if (this.spinnerSelectCategory.equals("Thinking and Inquiry") && cate.equals("TI")) {
                totalTIe += weightedMark;
                this.totalTI = totalTIe;
                this.prefs.setPreference("Course1totalTI", new StringBuilder(String.valueOf(this.totalTI)).toString());
            } else if (this.spinnerSelectCategory.equals("Communication") && cate.equals("C")) {
                totalCe += weightedMark;
                this.totalC = totalCe;
                this.prefs.setPreference("Course1totalC", new StringBuilder(String.valueOf(this.totalC)).toString());
            }
            this.prefs.setPreferenceInt("Course1totalKUCount", this.totalKUCount);
            this.prefs.setPreferenceInt("Course1totalMCCount", this.totalMCCount);
            this.prefs.setPreferenceInt("Course1totalTICount", this.totalTICount);
            this.prefs.setPreferenceInt("Course1totalCCount", this.totalCCount);
            textView.setText(cate);
            this.finalAverage.setText("Average:" + (((double) Math.round(calculateMark() * 100.0d)) / 100.0d) + "%");
            double average = ((double) Math.round(100.0d * (total / ((double) totalMarksCounter)))) / 100.0d;
            this.prefs.setPreference("Course1finalAverage", new StringBuilder(String.valueOf(average)).toString());
            textView.setText(average);
            row.addView(textView);
            row.addView(textView);
            row.addView(textView);
            row.addView(textView);
            row.setLongClickable(true);
            table.addView(row, new LayoutParams(-2, -2));
            row.setOnLongClickListener(new OnLongClickListener() {
                public boolean onLongClick(View arg0) {
                    if (VERSION.SDK_INT >= 11) {
                        Course1.this.showPopupMenu(arg0, row);
                    } else {
                        String[] col1Name = ((TextView) row.getVirtualChildAt(0)).getText().toString().split(" ");
                        Course1.this.editMark(col1Name[1], Integer.parseInt(col1Name[0].substring(0, col1Name[0].length() - 1)));
                    }
                    return true;
                }
            });
        }
    }

    private void putOveralMarks() {
        double KUWeight = Double.parseDouble(getPrefs.getString("Course1KU", "0"));
        double MCWeight = Double.parseDouble(getPrefs.getString("Course1MC", "0"));
        double TIWeight = Double.parseDouble(getPrefs.getString("Course1TI", "0"));
        double CWeight = Double.parseDouble(getPrefs.getString("Course1C", "0"));
        TextView ku = (TextView) findViewById(R.id.overalKU);
        TextView mc = (TextView) findViewById(R.id.overalMC);
        TextView ti = (TextView) findViewById(R.id.overalTI);
        TextView c = (TextView) findViewById(R.id.overalC);
        this.totalKUCount = getPrefs.getInt("Course1totalKUCount", 0);
        this.totalMCCount = getPrefs.getInt("Course1totalMCCount", 0);
        this.totalTICount = getPrefs.getInt("Course1totalTICount", 0);
        this.totalCCount = getPrefs.getInt("Course1totalCCount", 0);
        this.totalKU = Double.parseDouble(getPrefs.getString("Course1totalKU", "0"));
        this.totalMC = Double.parseDouble(getPrefs.getString("Course1totalMC", "0"));
        this.totalTI = Double.parseDouble(getPrefs.getString("Course1totalTI", "0"));
        this.totalC = Double.parseDouble(getPrefs.getString("Course1totalC", "0"));
        ku.setText(new StringBuilder(String.valueOf(Math.round((this.totalKU / ((double) this.totalKUCount)) / (KUWeight / 100.0d)))).append("%").toString());
        mc.setText(new StringBuilder(String.valueOf(Math.round((this.totalMC / ((double) this.totalMCCount)) / (MCWeight / 100.0d)))).append("%").toString());
        ti.setText(new StringBuilder(String.valueOf(Math.round((this.totalTI / ((double) this.totalTICount)) / (TIWeight / 100.0d)))).append("%").toString());
        c.setText(new StringBuilder(String.valueOf(Math.round((this.totalC / ((double) this.totalCCount)) / (CWeight / 100.0d)))).append("%").toString());
    }

    public void addANewMark() {
        this.builder = new Dialog(this);
        this.builder.setTitle("Add a new mark");
        View layout_spinners = ((LayoutInflater) getApplicationContext().getSystemService("layout_inflater")).inflate(R.layout.addnewmark, null);
        Spinner spinner1 = (Spinner) layout_spinners.findViewById(R.id.spinnerCategory);
        Spinner spinner2 = (Spinner) layout_spinners.findViewById(R.id.spinnerWeight);
        Button saveMark = (Button) layout_spinners.findViewById(R.id.saveMark);
        final EditText numMark = (EditText) layout_spinners.findViewById(R.id.numeratorMark);
        final EditText denMark = (EditText) layout_spinners.findViewById(R.id.denominatorMark);
        final EditText et = (EditText) layout_spinners.findViewById(R.id.entryNames);
        this.builder.setContentView(layout_spinners);
        this.builder.setCancelable(true);
        this.builder.show();
        ArrayAdapter<String> adapter1 = new ArrayAdapter(this, 17367048, this.categories);
        adapter1.setDropDownViewResource(17367049);
        spinner1.setOnItemSelectedListener(new CustomOnItemSelectedListener());
        spinner1.setAdapter(adapter1);
        ArrayAdapter<String> adapter2 = new ArrayAdapter(this, 17367048, this.weights);
        adapter2.setDropDownViewResource(17367049);
        spinner2.setOnItemSelectedListener(new CustomOnItemSelectedListener());
        spinner2.setAdapter(adapter2);
        saveMark.setOnClickListener(new OnClickListener() {
            public void onClick(View v) {
                Course1 course1;
                boolean gotMark = false;
                boolean gotCategory = false;
                boolean gotWeight = false;
                boolean gotName = false;
                String n = numMark.getText().toString();
                String d = denMark.getText().toString();
                String entryName = et.getText().toString();
                if (!entryName.equals("")) {
                    gotName = true;
                }
                Course1.this.name = entryName;
                Course1.this.spinnerSelectWeight = CustomOnItemSelectedListener.getWeight();
                if (!Course1.this.spinnerSelectWeight.equals("Weights")) {
                    gotWeight = true;
                }
                Course1.this.spinnerSelectCategory = CustomOnItemSelectedListener.getCategory();
                if (!Course1.this.spinnerSelectCategory.equals("Categories")) {
                    gotCategory = true;
                }
                if (n.matches(".*\\d.*") && d.matches(".*\\d.*") && gotWeight) {
                    double numerator = Double.parseDouble(n);
                    double denominator = Double.parseDouble(d);
                    Course1.this.answer = (numerator / denominator) * 100.0d;
                    Course1.this.answer = ((double) Math.round(Course1.this.answer * 100.0d)) / 100.0d;
                    course1 = Course1.this;
                    course1.totalMarks += Course1.this.answer * Double.parseDouble(Course1.this.spinnerSelectWeight);
                    gotMark = true;
                    Course1.this.entryCounter = Course1.getPrefs.getInt("Class1EntryCounter", 0);
                    Course1.this.prefs.setPreference("Course1Entry" + (Course1.this.entryCounter + 1) + "values", new StringBuilder(String.valueOf(numerator)).append(",").append(denominator).toString());
                }
                if (Course1.this.spinnerSelectCategory.equals("Knowledge and Understanding")) {
                    Course1.this.cat = "KU";
                } else if (Course1.this.spinnerSelectCategory.equals("Making Connections")) {
                    Course1.this.cat = "MC";
                } else if (Course1.this.spinnerSelectCategory.equals("Thinking and Inquiry")) {
                    Course1.this.cat = "TI";
                } else if (Course1.this.spinnerSelectCategory.equals("Communication")) {
                    Course1.this.cat = "C";
                }
                if (gotMark && gotCategory && gotWeight && gotName) {
                    Course1.this.entryCounter = Course1.getPrefs.getInt("Class1EntryCounter", 0);
                    course1 = Course1.this;
                    course1.entryCounter++;
                    Course1.this.saveName = "Entry" + Course1.this.entryCounter + "Course1";
                    Course1.this.prefs.setPreference(Course1.this.saveName, new StringBuilder(String.valueOf(Course1.this.answer)).append(",").append(Course1.this.cat).append(",").append(Course1.this.spinnerSelectWeight).append(",").append(Course1.this.name).toString());
                    Course1.this.prefs.setPreferenceInt("Class1EntryCounter", Course1.this.entryCounter);
                    Toast.makeText(Course1.this.getApplicationContext(), "Saved", 0).show();
                    Course1.this.savetheNewMark();
                    Course1.this.builder.dismiss();
                    return;
                }
                Toast.makeText(Course1.this.getApplicationContext(), "Make sure all the informatoion is present", 0).show();
            }
        });
        if (this.interstitialAd.isLoaded()) {
            this.interstitialAd.show();
            AdRequest adRequest = new Builder().addTestDevice("00811854ce4d1200").build();
            this.interstitialAd = new InterstitialAd(this);
            this.interstitialAd.setAdUnitId("ca-app-pub-4733259834848580/9185683751");
            this.interstitialAd.loadAd(adRequest);
        }
    }

    private void savetheNewMark() {
        TableLayout table = (TableLayout) findViewById(R.id.tableLayoutClass1);
        final TableRow row = new TableRow(this);
        TextView tv1 = new TextView(this);
        tv1.setGravity(1);
        TextView tv2 = new TextView(this);
        tv2.setGravity(1);
        TextView tv3 = new TextView(this);
        tv3.setGravity(1);
        TextView tv4 = new TextView(this);
        tv4.setGravity(1);
        tv1.setText(this.entryCounter + ". " + this.name);
        tv2.setText(this.answer);
        double weightedMark = ((double) Math.round(100.0d * (((this.answer * Double.parseDouble(getPrefs.getString("Course1" + this.cat, ""))) / 100.0d) * Double.parseDouble(this.spinnerSelectWeight)))) / 100.0d;
        if (this.spinnerSelectCategory.equals("Knowledge and Understanding")) {
            this.totalKU += weightedMark;
            this.totalKUCount = (int) (((double) this.totalKUCount) + Double.parseDouble(this.spinnerSelectWeight));
        } else if (this.spinnerSelectCategory.equals("Making Connections")) {
            this.totalMC += weightedMark;
            this.totalMCCount = (int) (((double) this.totalMCCount) + Double.parseDouble(this.spinnerSelectWeight));
        } else if (this.spinnerSelectCategory.equals("Thinking and Inquiry")) {
            this.totalTI += weightedMark;
            this.totalTICount = (int) (((double) this.totalTICount) + Double.parseDouble(this.spinnerSelectWeight));
        } else if (this.spinnerSelectCategory.equals("Communication")) {
            this.totalC += weightedMark;
            this.totalCCount = (int) (((double) this.totalCCount) + Double.parseDouble(this.spinnerSelectWeight));
        }
        this.prefs.setPreferenceInt("Course1totalKUCount", this.totalKUCount);
        this.prefs.setPreferenceInt("Course1totalMCCount", this.totalMCCount);
        this.prefs.setPreferenceInt("Course1totalTICount", this.totalTICount);
        this.prefs.setPreferenceInt("Course1totalCCount", this.totalCCount);
        this.prefs.setPreference("Course1totalKU", new StringBuilder(String.valueOf(this.totalKU)).toString());
        this.prefs.setPreference("Course1totalMC", new StringBuilder(String.valueOf(this.totalMC)).toString());
        this.prefs.setPreference("Course1totalTI", new StringBuilder(String.valueOf(this.totalTI)).toString());
        this.prefs.setPreference("Course1totalC", new StringBuilder(String.valueOf(this.totalC)).toString());
        double total = ((this.totalKU + this.totalC) + this.totalMC) + this.totalTI;
        double totalMarksCounter = (double) (((this.totalKUCount + this.totalMCCount) + this.totalTICount) + this.totalCCount);
        tv3.setText(this.cat);
        double average = ((double) Math.round(100.0d * (total / totalMarksCounter))) / 100.0d;
        tv4.setText(average);
        row.addView(tv1);
        row.addView(tv2);
        row.addView(tv3);
        row.addView(tv4);
        row.setLongClickable(true);
        table.addView(row, new LayoutParams(-2, -2));
        this.finalAverage.setText("Average:" + (((double) Math.round(calculateMark() * 100.0d)) / 100.0d) + "%");
        this.prefs.setPreference("Course1finalAverage", new StringBuilder(String.valueOf(average)).toString());
        updateRow(this.entryCounter);
        putOveralMarks();
        row.setOnLongClickListener(new OnLongClickListener() {
            public boolean onLongClick(View arg0) {
                if (VERSION.SDK_INT >= 11) {
                    Course1.this.showPopupMenu(arg0, row);
                } else {
                    String[] col1Name = ((TextView) row.getVirtualChildAt(0)).getText().toString().split(" ");
                    Course1.this.editMark(col1Name[1], Integer.parseInt(col1Name[0].substring(0, col1Name[0].length() - 1)));
                }
                return true;
            }
        });
    }

    private double calculateMark() {
        boolean hasKU = false;
        boolean hasMC = false;
        boolean hasTI = false;
        boolean hasC = false;
        double KUMark = 0.0d;
        double MCMark = 0.0d;
        double TIMark = 0.0d;
        double CMark = 0.0d;
        if (this.totalKUCount > 0) {
            KUMark = this.totalKU / ((double) this.totalKUCount);
            hasKU = true;
        }
        if (this.totalMCCount > 0) {
            MCMark = this.totalMC / ((double) this.totalMCCount);
            hasMC = true;
        }
        if (this.totalTICount > 0) {
            TIMark = this.totalTI / ((double) this.totalTICount);
            hasTI = true;
        }
        if (this.totalCCount > 0) {
            CMark = this.totalC / ((double) this.totalCCount);
            hasC = true;
        }
        int divider = 0;
        if (hasKU) {
            divider = 0 + 1;
        }
        if (hasMC) {
            divider++;
        }
        if (hasTI) {
            divider++;
        }
        if (hasC) {
            divider++;
        }
        double returning = ((KUMark + MCMark) + TIMark) + CMark;
        if (divider == 4) {
            return returning;
        }
        if (divider == 3) {
            if (!hasKU) {
                return returning / (((Double.parseDouble(getPrefs.getString("Course1MC", "")) / 100.0d) + (Double.parseDouble(getPrefs.getString("Course1TI", "")) / 100.0d)) + (Double.parseDouble(getPrefs.getString("Course1C", "")) / 100.0d));
            }
            if (!hasMC) {
                return returning / (((Double.parseDouble(getPrefs.getString("Course1KU", "")) / 100.0d) + (Double.parseDouble(getPrefs.getString("Course1TI", "")) / 100.0d)) + (Double.parseDouble(getPrefs.getString("Course1C", "")) / 100.0d));
            }
            if (!hasTI) {
                return returning / (((Double.parseDouble(getPrefs.getString("Course1MC", "")) / 100.0d) + (Double.parseDouble(getPrefs.getString("Course1KU", "")) / 100.0d)) + (Double.parseDouble(getPrefs.getString("Course1C", "")) / 100.0d));
            }
            if (!hasC) {
                return returning / (((Double.parseDouble(getPrefs.getString("Course1MC", "")) / 100.0d) + (Double.parseDouble(getPrefs.getString("Course1TI", "")) / 100.0d)) + (Double.parseDouble(getPrefs.getString("Course1KU", "")) / 100.0d));
            }
        } else if (divider == 2) {
            if (!hasKU && !hasMC) {
                return returning / ((Double.parseDouble(getPrefs.getString("Course1TI", "")) / 100.0d) + (Double.parseDouble(getPrefs.getString("Course1C", "")) / 100.0d));
            }
            if (!hasKU && !hasTI) {
                return returning / ((Double.parseDouble(getPrefs.getString("Course1MC", "")) / 100.0d) + (Double.parseDouble(getPrefs.getString("Course1C", "")) / 100.0d));
            }
            if (!hasKU && !hasC) {
                return returning / ((Double.parseDouble(getPrefs.getString("Course1TI", "")) / 100.0d) + (Double.parseDouble(getPrefs.getString("Course1MC", "")) / 100.0d));
            }
            if (!hasMC && !hasTI) {
                return returning / ((Double.parseDouble(getPrefs.getString("Course1KU", "")) / 100.0d) + (Double.parseDouble(getPrefs.getString("Course1C", "")) / 100.0d));
            }
            if (!hasMC && !hasC) {
                return returning / ((Double.parseDouble(getPrefs.getString("Course1TI", "")) / 100.0d) + (Double.parseDouble(getPrefs.getString("Course1KU", "")) / 100.0d));
            }
            if (!(hasTI || hasC)) {
                return returning / ((Double.parseDouble(getPrefs.getString("Course1KU", "")) / 100.0d) + (Double.parseDouble(getPrefs.getString("Course1MC", "")) / 100.0d));
            }
        } else if (divider == 1) {
            if (hasKU) {
                return returning / (Double.parseDouble(getPrefs.getString("Course1KU", "")) / 100.0d);
            }
            if (hasMC) {
                return returning / (Double.parseDouble(getPrefs.getString("Course1MC", "")) / 100.0d);
            }
            if (hasTI) {
                return returning / (Double.parseDouble(getPrefs.getString("Course1TI", "")) / 100.0d);
            }
            if (hasC) {
                return returning / (Double.parseDouble(getPrefs.getString("Course1C", "")) / 100.0d);
            }
        }
        return 0.0d;
    }

    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.submenu, menu);
        return true;
    }

    public boolean onOptionsItemSelected(MenuItem item) {
        AlertDialog.Builder builder;
        int itemId = item.getItemId();
        if (itemId == R.id.disclaimer) {
            builder = new AlertDialog.Builder(this);
            builder.setMessage("Please note that this is only a very close estimate that takes into consideration the weighting of the categories and the type of assessment. The average listed is accurate and should be accurate to 2 percent because of rounding errors. The program used my teachers, MarkBook, is very accurate and this is designed to immitate that");
            builder.setTitle("Disclamer");
            builder.create().show();
        }
        if (itemId == R.id.howTo) {
            builder = new AlertDialog.Builder(this);
            builder.setMessage(R.string.howTo);
            builder.setTitle("More Instructions");
            builder.create().show();
        } else if (itemId == R.id.resetThisClass) {
            Toast.makeText(getApplicationContext(), "The feature is currently unavailable", 0).show();
        }
        return false;
    }

    private void showPopupMenu(View v, final TableRow row) {
        PopupMenu popupmenu = new PopupMenu(this, v);
        popupmenu.getMenuInflater().inflate(R.menu.longclick, popupmenu.getMenu());
        popupmenu.setOnMenuItemClickListener(new OnMenuItemClickListener() {
            public boolean onMenuItemClick(MenuItem item) {
                String[] col1Name = ((TextView) row.getVirtualChildAt(0)).getText().toString().split(" ");
                int rowNum = Integer.parseInt(col1Name[0].substring(0, col1Name[0].length() - 1));
                int itemId = item.getItemId();
                if (itemId == R.id.edit) {
                    Course1.this.editMark(col1Name[1], rowNum);
                } else if (itemId == R.id.delete) {
                    Course1.this.deleteMark(col1Name[1], rowNum);
                }
                return false;
            }
        });
        popupmenu.show();
    }

    private void deleteMark(String col1Name, int rowNum) {
        int i;
        String[] data = getPrefs.getString("Entry" + rowNum + "Course1", ",,").split(",");
        double mark = Double.parseDouble(data[0]);
        int weight = 0;
        String catagory = "";
        for (i = 0; i < 6; i++) {
            if (data[2].equals(this.weights[i])) {
                weight = Integer.parseInt(data[2]);
                break;
            }
        }
        for (i = 0; i < 5; i++) {
            if (data[1].equals(this.cats[i])) {
                catagory = data[1];
                break;
            }
        }
        double removing = ((double) Math.round(100.0d * ((((double) weight) * mark) * (Double.parseDouble(getPrefs.getString("Course1" + catagory, "")) / 100.0d)))) / 100.0d;
        if (catagory.equals("KU")) {
            this.totalKU -= removing;
            this.totalKUCount -= weight;
            this.prefs.setPreference("Course1totalKU", new StringBuilder(String.valueOf(this.totalKU)).toString());
            this.prefs.setPreferenceInt("Course1totalKUCount", this.totalKUCount);
        } else if (catagory.equals("MC")) {
            this.totalMC -= removing;
            this.totalMCCount -= weight;
            this.prefs.setPreference("Course1totalMC", new StringBuilder(String.valueOf(this.totalMC)).toString());
            this.prefs.setPreferenceInt("Course1totalMCCount", this.totalMCCount);
        } else if (catagory.equals("TI")) {
            this.totalTI -= removing;
            this.totalTICount -= weight;
            this.prefs.setPreference("Course1totalTI", new StringBuilder(String.valueOf(this.totalTI)).toString());
            this.prefs.setPreferenceInt("Course1totalTICount", this.totalTICount);
        } else if (catagory.equals("C")) {
            this.totalC -= removing;
            this.totalCCount -= weight;
            this.prefs.setPreference("Course1totalC", new StringBuilder(String.valueOf(this.totalC)).toString());
            this.prefs.setPreferenceInt("Course1totalCCount", this.totalCCount);
        }
        this.entryCounter--;
        this.prefs.setPreferenceInt("Class1EntryCounter", this.entryCounter);
        rearrangeData(rowNum);
        updateRow(rowNum);
        this.finalAverage.setText("Average:" + (((double) Math.round(calculateMark() * 100.0d)) / 100.0d) + "%");
        putOveralMarks();
    }

    private void rearrangeData(int rowNumber) {
        for (int i = rowNumber; i <= this.entryCounter + 1; i++) {
            this.prefs.setPreference("Entry" + i + "Course1", getPrefs.getString("Entry" + (i + 1) + "Course1", "0"));
        }
    }

    private void deleteAll() {
        for (int all = 0; all < this.entryCounter; all++) {
            int i;
            String[] data = getPrefs.getString("Entry" + all + "Course1", ",,").split(",");
            double mark = Double.parseDouble(data[0]);
            int weight = 0;
            String catagory = "";
            for (i = 0; i < 6; i++) {
                if (data[2].equals(this.weights[i])) {
                    weight = Integer.parseInt(data[2]);
                    break;
                }
            }
            for (i = 0; i < 5; i++) {
                if (data[1].equals(this.cats[i])) {
                    catagory = data[1];
                    break;
                }
            }
            double removing = ((double) Math.round(100.0d * ((((double) weight) * mark) * (Double.parseDouble(getPrefs.getString("Course1" + catagory, "")) / 100.0d)))) / 100.0d;
            if (catagory.equals("KU")) {
                this.totalKU -= removing;
                this.totalKUCount -= weight;
                this.prefs.setPreference("Course1totalKU", new StringBuilder(String.valueOf(this.totalKU)).toString());
                this.prefs.setPreferenceInt("Course1totalKUCount", this.totalKUCount);
            } else if (catagory.equals("MC")) {
                this.totalMC -= removing;
                this.totalMCCount -= weight;
                this.prefs.setPreference("Course1totalMC", new StringBuilder(String.valueOf(this.totalMC)).toString());
                this.prefs.setPreferenceInt("Course1totalMCCount", this.totalMCCount);
            } else if (catagory.equals("TI")) {
                this.totalTI -= removing;
                this.totalTICount -= weight;
                this.prefs.setPreference("Course1totalTI", new StringBuilder(String.valueOf(this.totalTI)).toString());
                this.prefs.setPreferenceInt("Course1totalTICount", this.totalTICount);
            } else if (catagory.equals("C")) {
                this.totalC -= removing;
                this.totalCCount -= weight;
                this.prefs.setPreference("Course1totalC", new StringBuilder(String.valueOf(this.totalC)).toString());
                this.prefs.setPreferenceInt("Course1totalCCount", this.totalCCount);
            }
            this.entryCounter--;
            this.prefs.setPreferenceInt("Class1EntryCounter", this.entryCounter);
            rearrangeData(all);
            updateRow(all);
        }
        this.finalAverage.setText("Average:" + (((double) Math.round(calculateMark() * 100.0d)) / 100.0d) + "%");
        putOveralMarks();
    }
}
