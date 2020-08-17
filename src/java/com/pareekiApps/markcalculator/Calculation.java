package com.pareekiApps.markcalculator;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.ArrayAdapter;
import android.widget.EditText;
import android.widget.ExpandableListView;
import android.widget.Spinner;
import android.widget.TabHost;
import android.widget.TabHost.TabSpec;
import android.widget.TextView;
import android.widget.Toast;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.AdRequest.Builder;
import com.google.android.gms.ads.AdView;
import com.google.android.gms.ads.InterstitialAd;
import java.util.ArrayList;
import java.util.List;

public class Calculation extends Activity {
    private static final String LOG_TAG = "InterstitialSample";
    static String[] courseNames = new String[5];
    static List<String> list = new ArrayList();
    static boolean saving = false;
    static Spinner spinner1;
    static Spinner spinner5;
    double C;
    double KU;
    double MC;
    double TI;
    boolean allInfo = false;
    double average;
    String[] categories = new String[]{"Categories", "Knowledge and Understanding", "Making Connections", "Thinking and Inquiry", "Communication"};
    EditText den;
    ExpandableListView exv;
    TextView finalAnswer;
    SharedPreferences getPrefs;
    private InterstitialAd interstitialAd;
    EditText markValue;
    EditText num;
    EditText outOf;
    double[] percents = new double[4];
    Prefs prefs = new Prefs(this);
    Spinner spinner2;
    Spinner spinner3;
    Spinner spinner4;
    TabHost th;
    boolean usingClass = false;
    String[] weights = new String[]{"Weights", "1", "2", "3", "4", "5"};

    /* Access modifiers changed, original: protected */
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_calculation);
        ((AdView) findViewById(R.id.adViewTab1)).loadAd(new Builder().addTestDevice("00811854ce4d1200").build());
        ((AdView) findViewById(R.id.adViewTab2)).loadAd(new Builder().addTestDevice("00811854ce4d1200").build());
        ((AdView) findViewById(R.id.adViewTab3)).loadAd(new Builder().addTestDevice("00811854ce4d1200").build());
        this.interstitialAd = new InterstitialAd(this);
        this.interstitialAd.setAdUnitId("ca-app-pub-4733259834848580/5313887353");
        this.interstitialAd.loadAd(new Builder().addTestDevice("00811854ce4d1200").build());
        this.th = (TabHost) findViewById(R.id.tabhost);
        this.th.setup();
        TabSpec spec1 = this.th.newTabSpec("tag1");
        TabSpec spec2 = this.th.newTabSpec("tag2");
        TabSpec spec3 = this.th.newTabSpec("tag3");
        spec1.setContent(R.id.tab1);
        spec1.setIndicator("Calculator");
        spec2.setContent(R.id.tab2);
        spec2.setIndicator("Classes");
        spec3.setContent(R.id.tab3);
        spec3.setIndicator("Catalog");
        this.th.addTab(spec1);
        this.th.addTab(spec2);
        this.th.addTab(spec3);
        this.getPrefs = PreferenceManager.getDefaultSharedPreferences(getBaseContext());
        if (!saving) {
            list.add(0, "Need to set your class");
            courseNames[0] = "Select your class";
            list.add(1, this.getPrefs.getString("course1", "Course 1"));
            courseNames[1] = (String) list.get(1);
            list.add(2, this.getPrefs.getString("course2", "Course 2"));
            courseNames[2] = (String) list.get(2);
            list.add(3, this.getPrefs.getString("course3", "Course 3"));
            courseNames[3] = (String) list.get(3);
            list.add(4, this.getPrefs.getString("course4", "Course 4"));
            courseNames[4] = (String) list.get(4);
            this.th.setCurrentTabByTag("tag1");
        }
        if (this.getPrefs.getInt("firstTime", 0) == 0) {
            AlertDialog.Builder builder = new AlertDialog.Builder(this);
            builder.setMessage(R.string.welcome);
            builder.setTitle("Welcome");
            builder.create().show();
            this.prefs.setPreferenceInt("firstTime", 1);
        }
        spinner1 = (Spinner) findViewById(R.id.spinnerMAIN);
        this.spinner3 = (Spinner) findViewById(R.id.spinnerCategory);
        this.spinner4 = (Spinner) findViewById(R.id.spinnerWeight);
        spinner5 = (Spinner) findViewById(R.id.spinnerSelectClass);
        this.num = (EditText) findViewById(R.id.numeratorCalc);
        this.den = (EditText) findViewById(R.id.denominatorCalc);
        this.markValue = (EditText) findViewById(R.id.numeratorMark);
        this.outOf = (EditText) findViewById(R.id.denominatorMark);
        spinner1.setAdapter(new ArrayAdapter(this, 17367050, list));
        ArrayAdapter<String> adapter2 = new ArrayAdapter(this, 17367048, courseNames);
        adapter2.setDropDownViewResource(17367049);
        spinner5.setAdapter(adapter2);
        spinner5.setOnItemSelectedListener(new OnItemSelectedListener() {
            public void onItemSelected(AdapterView<?> parent, View view, int pos, long id) {
                Intent i;
                Bundle b;
                if (parent.getItemAtPosition(pos).toString().equalsIgnoreCase(Calculation.courseNames[1])) {
                    i = new Intent(Calculation.this.getApplicationContext(), Course1.class);
                    b = new Bundle();
                    b.putString("name", Calculation.courseNames[1]);
                    Calculation.spinner5.setSelection(0);
                    i.putExtras(b);
                    Calculation.this.startActivity(i);
                }
                if (parent.getItemAtPosition(pos).toString().equalsIgnoreCase(Calculation.courseNames[2])) {
                    i = new Intent(Calculation.this.getApplicationContext(), Course2.class);
                    b = new Bundle();
                    b.putString("name", Calculation.courseNames[2]);
                    Calculation.spinner5.setSelection(0);
                    i.putExtras(b);
                    Calculation.this.startActivity(i);
                }
                if (parent.getItemAtPosition(pos).toString().equalsIgnoreCase(Calculation.courseNames[3])) {
                    i = new Intent(Calculation.this.getApplicationContext(), Course3.class);
                    b = new Bundle();
                    b.putString("name", Calculation.courseNames[3]);
                    Calculation.spinner5.setSelection(0);
                    i.putExtras(b);
                    Calculation.this.startActivity(i);
                }
                if (parent.getItemAtPosition(pos).toString().equalsIgnoreCase(Calculation.courseNames[4])) {
                    i = new Intent(Calculation.this.getApplicationContext(), Course4.class);
                    b = new Bundle();
                    b.putString("name", Calculation.courseNames[4]);
                    Calculation.spinner5.setSelection(0);
                    i.putExtras(b);
                    Calculation.this.startActivity(i);
                }
                Calculation.spinner5.setPrompt(Calculation.courseNames[0]);
            }

            public void onNothingSelected(AdapterView<?> adapterView) {
            }
        });
        addListenerOnSpinnerItemSelection();
        this.exv = (ExpandableListView) findViewById(R.id.expandableListView1);
        this.exv.setAdapter(new MyAdapter(this));
        if (saving) {
            this.th.setCurrentTabByTag("tag2");
        }
        this.finalAnswer = (TextView) findViewById(R.id.text);
        this.finalAnswer.setText("You mark will be posted here: ");
    }

    public void onResume() {
        super.onResume();
        ((AdView) findViewById(R.id.adViewTab1)).loadAd(new Builder().addTestDevice("00811854ce4d1200").build());
        ((AdView) findViewById(R.id.adViewTab2)).loadAd(new Builder().addTestDevice("00811854ce4d1200").build());
        ((AdView) findViewById(R.id.adViewTab3)).loadAd(new Builder().addTestDevice("00811854ce4d1200").build());
        spinner5.setPrompt(courseNames[0]);
    }

    public void quickCalc(View v) {
        String n = this.num.getText().toString();
        String d = this.den.getText().toString();
        if (n.matches(".*\\d.*") && d.matches(".*\\d.*")) {
            Toast.makeText(getApplicationContext(), "Your mark is: " + new StringBuilder(String.valueOf((Double.parseDouble(n) / Double.parseDouble(d)) * 100.0d)).toString(), 0).show();
            return;
        }
        Toast.makeText(getApplicationContext(), "You need to insert some numbers", 0).show();
    }

    private void addListenerOnSpinnerItemSelection() {
        spinner1 = (Spinner) findViewById(R.id.spinnerMAIN);
        spinner1.setOnItemSelectedListener(new CustomOnItemSelectedListener());
    }

    public void accessSpinner() {
        String temp = CustomOnItemSelectedListener.getMain();
        if (temp.equals("Course 1") || temp.equals("Course 2") || temp.equals("Course 3") || temp.equals("Course 4")) {
            AlertDialog.Builder builder = new AlertDialog.Builder(this);
            builder.setMessage("Need to set up the classes").setPositiveButton("Setup", new OnClickListener() {
                public void onClick(DialogInterface dialog, int id) {
                    Calculation.this.startActivity(new Intent(Calculation.this.getBaseContext(), SettingsActivity.class));
                }
            }).setNegativeButton("Cancel", new OnClickListener() {
                public void onClick(DialogInterface dialog, int id) {
                }
            });
            builder.create();
            builder.show();
        }
        if (temp.equalsIgnoreCase((String) list.get(1)) && !temp.equalsIgnoreCase("Course 1")) {
            this.percents[0] = Double.parseDouble(this.getPrefs.getString("Course1KU", "")) / 100.0d;
            this.percents[1] = Double.parseDouble(this.getPrefs.getString("Course1MC", "")) / 100.0d;
            this.percents[2] = Double.parseDouble(this.getPrefs.getString("Course1TI", "")) / 100.0d;
            this.percents[3] = Double.parseDouble(this.getPrefs.getString("Course1C", "")) / 100.0d;
            this.usingClass = true;
            this.allInfo = true;
        } else if (temp.equalsIgnoreCase((String) list.get(2)) && !temp.equalsIgnoreCase("Course 2")) {
            this.percents[0] = Double.parseDouble(this.getPrefs.getString("Course2KU", "")) / 100.0d;
            this.percents[1] = Double.parseDouble(this.getPrefs.getString("Course2MC", "")) / 100.0d;
            this.percents[2] = Double.parseDouble(this.getPrefs.getString("Course2TI", "")) / 100.0d;
            this.percents[3] = Double.parseDouble(this.getPrefs.getString("Course2C", "")) / 100.0d;
            this.usingClass = true;
            this.allInfo = true;
        } else if (temp.equalsIgnoreCase((String) list.get(3)) && !temp.equalsIgnoreCase("Course 3")) {
            this.percents[0] = Double.parseDouble(this.getPrefs.getString("Course3KU", "")) / 100.0d;
            this.percents[1] = Double.parseDouble(this.getPrefs.getString("Course3MC", "")) / 100.0d;
            this.percents[2] = Double.parseDouble(this.getPrefs.getString("Course3TI", "")) / 100.0d;
            this.percents[3] = Double.parseDouble(this.getPrefs.getString("Course3C", "")) / 100.0d;
            this.usingClass = true;
            this.allInfo = true;
        } else if (!temp.equalsIgnoreCase((String) list.get(4)) || temp.equalsIgnoreCase("Course 4")) {
            double[] dArr;
            String input1 = ((EditText) findViewById(R.id.edit_percent1)).getText().toString();
            if (input1.matches(".*\\d.*")) {
                this.percents[0] = Double.parseDouble(input1);
                dArr = this.percents;
                dArr[0] = dArr[0] / 100.0d;
            }
            String input2 = ((EditText) findViewById(R.id.edit_percent2)).getText().toString();
            if (input2.matches(".*\\d.*")) {
                this.percents[1] = Double.parseDouble(input2);
                dArr = this.percents;
                dArr[1] = dArr[1] / 100.0d;
            }
            String input3 = ((EditText) findViewById(R.id.edit_percent3)).getText().toString();
            if (input3.matches(".*\\d.*")) {
                this.percents[2] = Double.parseDouble(input3);
                dArr = this.percents;
                dArr[2] = dArr[2] / 100.0d;
            }
            String input4 = ((EditText) findViewById(R.id.edit_percent4)).getText().toString();
            if (input4.matches(".*\\d.*")) {
                this.percents[3] = Double.parseDouble(input4);
                dArr = this.percents;
                dArr[3] = dArr[3] / 100.0d;
            }
        } else {
            this.percents[0] = Double.parseDouble(this.getPrefs.getString("Course4KU", "")) / 100.0d;
            this.percents[1] = Double.parseDouble(this.getPrefs.getString("Course4MC", "")) / 100.0d;
            this.percents[2] = Double.parseDouble(this.getPrefs.getString("Course4TI", "")) / 100.0d;
            this.percents[3] = Double.parseDouble(this.getPrefs.getString("Course4C", "")) / 100.0d;
            this.usingClass = true;
            this.allInfo = true;
        }
    }

    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.menu, menu);
        return true;
    }

    public boolean onOptionsItemSelected(MenuItem item) {
        AlertDialog.Builder builder;
        int itemId = item.getItemId();
        if (itemId == R.id.about) {
            builder = new AlertDialog.Builder(this);
            builder.setMessage("This app will allow you to calculate your real mark on any assessment factoring in the different weight categories. You can save the weights of all your classes for future use.");
            builder.setTitle("About");
            builder.create().show();
        }
        if (itemId == R.id.instructions) {
            builder = new AlertDialog.Builder(this);
            builder.setMessage(R.string.instructions);
            builder.setTitle("Instructions");
            builder.create().show();
        }
        if (itemId == R.id.settings) {
            startActivity(new Intent(getBaseContext(), SettingsActivity.class));
        } else if (itemId == R.id.contact) {
            Intent Email = new Intent("android.intent.action.SEND");
            Email.setType("text/email");
            Email.putExtra("android.intent.extra.EMAIL", new String[]{"pareekiapp@gmail.com"});
            Email.putExtra("android.intent.extra.SUBJECT", "Feedback");
            Email.putExtra("android.intent.extra.TEXT", "Dear ...,");
            startActivity(Intent.createChooser(Email, "Send Feedback:"));
        } else if (itemId == R.id.reset) {
            builder = new AlertDialog.Builder(this);
            builder.setMessage("Do you really want to reset all values").setTitle("Confirm").setPositiveButton("Cancel", new OnClickListener() {
                public void onClick(DialogInterface dialog, int id) {
                }
            }).setNegativeButton("Reset", new OnClickListener() {
                public void onClick(DialogInterface dialog, int id) {
                    Calculation.this.prefs.clearAll();
                    for (int i = 1; i <= 4; i++) {
                        Calculation.courseNames[i] = "Course " + i;
                        Calculation.list.set(i, "Course " + i);
                        MyAdapter.setDefaultGroupName(i - 1);
                    }
                    Calculation.spinner1.setAdapter(new ArrayAdapter(Calculation.this.getApplicationContext(), 17367050, Calculation.list));
                    ArrayAdapter<String> adapter2 = new ArrayAdapter(Calculation.this.getApplicationContext(), 17367048, Calculation.courseNames);
                    adapter2.setDropDownViewResource(17367049);
                    Calculation.spinner5.setAdapter(adapter2);
                }
            });
            builder.create();
            builder.show();
        }
        return false;
    }

    public void gatherInformation(View view) {
        accessSpinner();
        boolean hasKU = false;
        boolean hasMC = false;
        boolean hasTI = false;
        boolean hasC = false;
        double KUMark = 0.0d;
        double MCMark = 0.0d;
        double TIMark = 0.0d;
        double CMark = 0.0d;
        String input1 = ((EditText) findViewById(R.id.edit_message1)).getText().toString();
        if (input1.matches(".*\\d.*")) {
            this.KU = Double.parseDouble(input1);
            KUMark = this.KU * this.percents[0];
            hasKU = true;
        }
        String input2 = ((EditText) findViewById(R.id.edit_message2)).getText().toString();
        if (input2.matches(".*\\d.*")) {
            this.MC = Double.parseDouble(input2);
            MCMark = this.MC * this.percents[1];
            hasMC = true;
        }
        String input3 = ((EditText) findViewById(R.id.edit_message3)).getText().toString();
        if (input3.matches(".*\\d.*")) {
            this.TI = Double.parseDouble(input3);
            TIMark = this.TI * this.percents[2];
            hasTI = true;
        }
        String input4 = ((EditText) findViewById(R.id.edit_message4)).getText().toString();
        if (input4.matches(".*\\d.*")) {
            this.C = Double.parseDouble(input4);
            CMark = this.C * this.percents[3];
            hasC = true;
        }
        this.allInfo = true;
        if (spinner1.getSelectedItem().toString().equals("Need to set your class") || spinner1.getSelectedItem() == null) {
            this.usingClass = false;
        } else {
            this.usingClass = true;
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
            this.average = returning;
        } else if (divider == 3) {
            if (!hasKU) {
                this.average = returning / ((this.percents[1] + this.percents[2]) + this.percents[3]);
            } else if (!hasMC) {
                this.average = returning / ((this.percents[0] + this.percents[2]) + this.percents[3]);
            } else if (!hasTI) {
                this.average = returning / ((this.percents[1] + this.percents[0]) + this.percents[3]);
            } else if (!hasC) {
                this.average = returning / ((this.percents[1] + this.percents[2]) + this.percents[0]);
            }
        } else if (divider == 2) {
            if (!hasKU && !hasMC) {
                this.average = returning / (this.percents[2] + this.percents[3]);
            } else if (!hasKU && !hasTI) {
                this.average = returning / (this.percents[1] + this.percents[3]);
            } else if (!hasKU && !hasC) {
                this.average = returning / (this.percents[2] + this.percents[1]);
            } else if (!hasMC && !hasTI) {
                this.average = returning / (this.percents[0] + this.percents[3]);
            } else if (!hasMC && !hasC) {
                this.average = returning / (this.percents[2] + this.percents[0]);
            } else if (!(hasTI || hasC)) {
                this.average = returning / (this.percents[0] + this.percents[1]);
            }
        } else if (divider == 1) {
            if (hasKU) {
                this.average = returning / this.percents[0];
            } else if (hasMC) {
                this.average = returning / this.percents[1];
            } else if (hasTI) {
                this.average = returning / this.percents[2];
            } else if (hasC) {
                this.average = returning / this.percents[3];
            }
        }
        this.average = (double) Math.round(this.average);
        this.finalAnswer.setText("Your average is: " + String.valueOf(this.average));
        if (this.average > 90.0d) {
            this.finalAnswer.setText("You are very smart! You average is " + String.valueOf(this.average));
        }
        if (this.interstitialAd.isLoaded()) {
            this.interstitialAd.show();
            AdRequest adRequest = new Builder().addTestDevice("00811854ce4d1200").build();
            this.interstitialAd = new InterstitialAd(this);
            this.interstitialAd.setAdUnitId("ca-app-pub-4733259834848580/5313887353");
            this.interstitialAd.loadAd(adRequest);
            return;
        }
        Log.d(LOG_TAG, "Interstitial ad was not ready to be shown.");
    }
}
