.class public Lcom/pareekiApps/markcalculator/Course3;
.super Landroid/app/Activity;
.source "Course3.java"


# static fields
.field static getPrefs:Landroid/content/SharedPreferences;


# instance fields
.field answer:D

.field builder:Landroid/app/Dialog;

.field cat:Ljava/lang/String;

.field categories:[Ljava/lang/String;

.field cats:[Ljava/lang/String;

.field context:Landroid/content/Context;

.field courseName:Ljava/lang/String;

.field entryCounter:I

.field finalAverage:Landroid/widget/TextView;

.field private interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

.field name:Ljava/lang/String;

.field prefs:Lcom/pareekiApps/markcalculator/Prefs;

.field saveName:Ljava/lang/String;

.field spinnerSelectCategory:Ljava/lang/String;

.field spinnerSelectWeight:Ljava/lang/String;

.field totalC:D

.field totalCCount:I

.field totalKU:D

.field totalKUCount:I

.field totalMC:D

.field totalMCCount:I

.field totalMarks:D

.field totalTI:D

.field totalTICount:I

.field weights:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 40
    new-instance v0, Lcom/pareekiApps/markcalculator/Prefs;

    invoke-direct {v0, p0}, Lcom/pareekiApps/markcalculator/Prefs;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pareekiApps/markcalculator/Course3;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    .line 41
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Categories"

    aput-object v1, v0, v3

    const-string v1, "Knowledge and Understanding"

    aput-object v1, v0, v2

    const-string v1, "Making Connections"

    aput-object v1, v0, v4

    const-string v1, "Thinking and Inquiry"

    aput-object v1, v0, v5

    const-string v1, "Communication"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/pareekiApps/markcalculator/Course3;->categories:[Ljava/lang/String;

    .line 42
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Categories"

    aput-object v1, v0, v3

    const-string v1, "KU"

    aput-object v1, v0, v2

    const-string v1, "MC"

    aput-object v1, v0, v4

    const-string v1, "TI"

    aput-object v1, v0, v5

    const-string v1, "C"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/pareekiApps/markcalculator/Course3;->cats:[Ljava/lang/String;

    .line 43
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Weights"

    aput-object v1, v0, v3

    const-string v1, "1"

    aput-object v1, v0, v2

    const-string v1, "2"

    aput-object v1, v0, v4

    const-string v1, "3"

    aput-object v1, v0, v5

    const-string v1, "4"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "5"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/pareekiApps/markcalculator/Course3;->weights:[Ljava/lang/String;

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/pareekiApps/markcalculator/Course3;->spinnerSelectCategory:Ljava/lang/String;

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/pareekiApps/markcalculator/Course3;->spinnerSelectWeight:Ljava/lang/String;

    .line 47
    iput v3, p0, Lcom/pareekiApps/markcalculator/Course3;->entryCounter:I

    .line 48
    const-wide/high16 v0, -0x4010

    iput-wide v0, p0, Lcom/pareekiApps/markcalculator/Course3;->answer:D

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/pareekiApps/markcalculator/Course3;->cat:Ljava/lang/String;

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcom/pareekiApps/markcalculator/Course3;->name:Ljava/lang/String;

    .line 34
    return-void
.end method

.method static synthetic access$0(Lcom/pareekiApps/markcalculator/Course3;Landroid/view/View;Landroid/widget/TableRow;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 924
    invoke-direct {p0, p1, p2}, Lcom/pareekiApps/markcalculator/Course3;->showPopupMenu(Landroid/view/View;Landroid/widget/TableRow;)V

    return-void
.end method

.method static synthetic access$1(Lcom/pareekiApps/markcalculator/Course3;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 242
    invoke-direct {p0, p1, p2}, Lcom/pareekiApps/markcalculator/Course3;->editMark(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$2(Lcom/pareekiApps/markcalculator/Course3;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 388
    invoke-direct {p0, p1}, Lcom/pareekiApps/markcalculator/Course3;->updateRow(I)V

    return-void
.end method

.method static synthetic access$3(Lcom/pareekiApps/markcalculator/Course3;)V
    .locals 0
    .parameter

    .prologue
    .line 515
    invoke-direct {p0}, Lcom/pareekiApps/markcalculator/Course3;->putOveralMarks()V

    return-void
.end method

.method static synthetic access$4(Lcom/pareekiApps/markcalculator/Course3;)V
    .locals 0
    .parameter

    .prologue
    .line 656
    invoke-direct {p0}, Lcom/pareekiApps/markcalculator/Course3;->savetheNewMark()V

    return-void
.end method

.method static synthetic access$5(Lcom/pareekiApps/markcalculator/Course3;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 952
    invoke-direct {p0, p1, p2}, Lcom/pareekiApps/markcalculator/Course3;->deleteMark(Ljava/lang/String;I)V

    return-void
.end method

.method private calculateMark()D
    .locals 25

    .prologue
    .line 755
    const/4 v12, 0x0

    .line 756
    .local v12, hasKU:Z
    const/4 v13, 0x0

    .line 757
    .local v13, hasMC:Z
    const/4 v14, 0x0

    .line 758
    .local v14, hasTI:Z
    const/4 v11, 0x0

    .line 760
    .local v11, hasC:Z
    const-wide/16 v4, 0x0

    .line 761
    .local v4, KUMark:D
    const-wide/16 v6, 0x0

    .line 762
    .local v6, MCMark:D
    const-wide/16 v8, 0x0

    .line 763
    .local v8, TIMark:D
    const-wide/16 v2, 0x0

    .line 765
    .local v2, CMark:D
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pareekiApps/markcalculator/Course3;->totalKUCount:I

    move/from16 v19, v0

    if-lez v19, :cond_0

    .line 767
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/pareekiApps/markcalculator/Course3;->totalKU:D

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pareekiApps/markcalculator/Course3;->totalKUCount:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v21, v0

    div-double v4, v19, v21

    const/4 v12, 0x1

    .line 769
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pareekiApps/markcalculator/Course3;->totalMCCount:I

    move/from16 v19, v0

    if-lez v19, :cond_1

    .line 771
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/pareekiApps/markcalculator/Course3;->totalMC:D

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pareekiApps/markcalculator/Course3;->totalMCCount:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v21, v0

    div-double v6, v19, v21

    const/4 v13, 0x1

    .line 773
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pareekiApps/markcalculator/Course3;->totalTICount:I

    move/from16 v19, v0

    if-lez v19, :cond_2

    .line 775
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/pareekiApps/markcalculator/Course3;->totalTI:D

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pareekiApps/markcalculator/Course3;->totalTICount:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v21, v0

    div-double v8, v19, v21

    const/4 v14, 0x1

    .line 777
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pareekiApps/markcalculator/Course3;->totalCCount:I

    move/from16 v19, v0

    if-lez v19, :cond_3

    .line 779
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/pareekiApps/markcalculator/Course3;->totalC:D

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pareekiApps/markcalculator/Course3;->totalCCount:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v21, v0

    div-double v2, v19, v21

    const/4 v11, 0x1

    .line 782
    :cond_3
    const/4 v10, 0x0

    .line 783
    .local v10, divider:I
    if-eqz v12, :cond_4

    .line 785
    add-int/lit8 v10, v10, 0x1

    .line 787
    :cond_4
    if-eqz v13, :cond_5

    .line 789
    add-int/lit8 v10, v10, 0x1

    .line 791
    :cond_5
    if-eqz v14, :cond_6

    .line 793
    add-int/lit8 v10, v10, 0x1

    .line 795
    :cond_6
    if-eqz v11, :cond_7

    .line 797
    add-int/lit8 v10, v10, 0x1

    .line 800
    :cond_7
    add-double v19, v4, v6

    add-double v19, v19, v8

    add-double v15, v19, v2

    .line 801
    .local v15, returning:D
    const/16 v19, 0x4

    move/from16 v0, v19

    if-ne v10, v0, :cond_8

    .line 884
    .end local v15           #returning:D
    :goto_0
    return-wide v15

    .line 805
    .restart local v15       #returning:D
    :cond_8
    const/16 v19, 0x3

    move/from16 v0, v19

    if-ne v10, v0, :cond_c

    .line 807
    if-nez v12, :cond_9

    .line 809
    sget-object v19, Lcom/pareekiApps/markcalculator/Course3;->getPrefs:Landroid/content/SharedPreferences;

    const-string v20, "Course3MC"

    const-string v21, ""

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v19

    const-wide/high16 v21, 0x4059

    div-double v19, v19, v21

    sget-object v21, Lcom/pareekiApps/markcalculator/Course3;->getPrefs:Landroid/content/SharedPreferences;

    const-string v22, "Course3TI"

    const-string v23, ""

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v21

    const-wide/high16 v23, 0x4059

    div-double v21, v21, v23

    add-double v19, v19, v21

    sget-object v21, Lcom/pareekiApps/markcalculator/Course3;->getPrefs:Landroid/content/SharedPreferences;

    const-string v22, "Course3C"

    const-string v23, ""

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v21

    const-wide/high16 v23, 0x4059

    div-double v21, v21, v23

    add-double v17, v19, v21

    .line 810
    .local v17, weightSum:D
    div-double v15, v15, v17

    goto :goto_0

    .line 812
    .end local v17           #weightSum:D
    :cond_9
    if-nez v13, :cond_a

    .line 814
    sget-object v19, Lcom/pareekiApps/markcalculator/Course3;->getPrefs:Landroid/content/SharedPreferences;

    const-string v20, "Course3KU"

    const-string v21, ""

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v19

    const-wide/high16 v21, 0x4059

    div-double v19, v19, v21

    sget-object v21, Lcom/pareekiApps/markcalculator/Course3;->getPrefs:Landroid/content/SharedPreferences;

    const-string v22, "Course3TI"

    const-string v23, ""

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v21

    const-wide/high16 v23, 0x4059

    div-double v21, v21, v23

    add-double v19, v19, v21

    sget-object v21, Lcom/pareekiApps/markcalculator/Course3;->getPrefs:Landroid/content/SharedPreferences;

    const-string v22, "Course3C"

    const-string v23, ""

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v21

    const-wide/high16 v23, 0x4059

    div-double v21, v21, v23

    add-double v17, v19, v21

    .line 815
    .restart local v17       #weightSum:D
    div-double v15, v15, v17

    goto/16 :goto_0

    .line 817
    .end local v17           #weightSum:D
    :cond_a
    if-nez v14, :cond_b

    .line 819
    sget-object v19, Lcom/pareekiApps/markcalculator/Course3;->getPrefs:Landroid/content/SharedPreferences;

    const-string v20, "Course3MC"

    const-string v21, ""

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v19

    const-wide/high16 v21, 0x4059

    div-double v19, v19, v21

    sget-object v21, Lcom/pareekiApps/markcalculator/Course3;->getPrefs:Landroid/content/SharedPreferences;

    const-string v22, "Course3KU"

    const-string v23, ""

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v21

    const-wide/high16 v23, 0x4059

    div-double v21, v21, v23

    add-double v19, v19, v21

    sget-object v21, Lcom/pareekiApps/markcalculator/Course3;->getPrefs:Landroid/content/SharedPreferences;

    const-string v22, "Course3C"

    const-string v23, ""

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v21

    const-wide/high16 v23, 0x4059

    div-double v21, v21, v23

    add-double v17, v19, v21

    .line 820
    .restart local v17       #weightSum:D
    div-double v15, v15, v17

    goto/16 :goto_0

    .line 822
    .end local v17           #weightSum:D
    :cond_b
    if-nez v11, :cond_16

    .line 824
    sget-object v19, Lcom/pareekiApps/markcalculator/Course3;->getPrefs:Landroid/content/SharedPreferences;

    const-string v20, "Course3MC"

    const-string v21, ""

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v19

    const-wide/high16 v21, 0x4059

    div-double v19, v19, v21

    sget-object v21, Lcom/pareekiApps/markcalculator/Course3;->getPrefs:Landroid/content/SharedPreferences;

    const-string v22, "Course3TI"

    const-string v23, ""

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v21

    const-wide/high16 v23, 0x4059

    div-double v21, v21, v23

    add-double v19, v19, v21

    sget-object v21, Lcom/pareekiApps/markcalculator/Course3;->getPrefs:Landroid/content/SharedPreferences;

    const-string v22, "Course3KU"

    const-string v23, ""

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v21

    const-wide/high16 v23, 0x4059

    div-double v21, v21, v23

    add-double v17, v19, v21

    .line 825
    .restart local v17       #weightSum:D
    div-double v15, v15, v17

    goto/16 :goto_0

    .line 828
    .end local v17           #weightSum:D
    :cond_c
    const/16 v19, 0x2

    move/from16 v0, v19

    if-ne v10, v0, :cond_12

    .line 830
    if-nez v12, :cond_d

    if-nez v13, :cond_d

    .line 832
    sget-object v19, Lcom/pareekiApps/markcalculator/Course3;->getPrefs:Landroid/content/SharedPreferences;

    const-string v20, "Course3TI"

    const-string v21, ""

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v19

    const-wide/high16 v21, 0x4059

    div-double v19, v19, v21

    sget-object v21, Lcom/pareekiApps/markcalculator/Course3;->getPrefs:Landroid/content/SharedPreferences;

    const-string v22, "Course3C"

    const-string v23, ""

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v21

    const-wide/high16 v23, 0x4059

    div-double v21, v21, v23

    add-double v17, v19, v21

    .line 833
    .restart local v17       #weightSum:D
    div-double v15, v15, v17

    goto/16 :goto_0

    .line 835
    .end local v17           #weightSum:D
    :cond_d
    if-nez v12, :cond_e

    if-nez v14, :cond_e

    .line 837
    sget-object v19, Lcom/pareekiApps/markcalculator/Course3;->getPrefs:Landroid/content/SharedPreferences;

    const-string v20, "Course3MC"

    const-string v21, ""

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v19

    const-wide/high16 v21, 0x4059

    div-double v19, v19, v21

    sget-object v21, Lcom/pareekiApps/markcalculator/Course3;->getPrefs:Landroid/content/SharedPreferences;

    const-string v22, "Course3C"

    const-string v23, ""

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v21

    const-wide/high16 v23, 0x4059

    div-double v21, v21, v23

    add-double v17, v19, v21

    .line 838
    .restart local v17       #weightSum:D
    div-double v15, v15, v17

    goto/16 :goto_0

    .line 840
    .end local v17           #weightSum:D
    :cond_e
    if-nez v12, :cond_f

    if-nez v11, :cond_f

    .line 842
    sget-object v19, Lcom/pareekiApps/markcalculator/Course3;->getPrefs:Landroid/content/SharedPreferences;

    const-string v20, "Course3TI"

    const-string v21, ""

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v19

    const-wide/high16 v21, 0x4059

    div-double v19, v19, v21

    sget-object v21, Lcom/pareekiApps/markcalculator/Course3;->getPrefs:Landroid/content/SharedPreferences;

    const-string v22, "Course3MC"

    const-string v23, ""

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v21

    const-wide/high16 v23, 0x4059

    div-double v21, v21, v23

    add-double v17, v19, v21

    .line 843
    .restart local v17       #weightSum:D
    div-double v15, v15, v17

    goto/16 :goto_0

    .line 845
    .end local v17           #weightSum:D
    :cond_f
    if-nez v13, :cond_10

    if-nez v14, :cond_10

    .line 847
    sget-object v19, Lcom/pareekiApps/markcalculator/Course3;->getPrefs:Landroid/content/SharedPreferences;

    const-string v20, "Course3KU"

    const-string v21, ""

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v19

    const-wide/high16 v21, 0x4059

    div-double v19, v19, v21

    sget-object v21, Lcom/pareekiApps/markcalculator/Course3;->getPrefs:Landroid/content/SharedPreferences;

    const-string v22, "Course3C"

    const-string v23, ""

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v21

    const-wide/high16 v23, 0x4059

    div-double v21, v21, v23

    add-double v17, v19, v21

    .line 848
    .restart local v17       #weightSum:D
    div-double v15, v15, v17

    goto/16 :goto_0

    .line 850
    .end local v17           #weightSum:D
    :cond_10
    if-nez v13, :cond_11

    if-nez v11, :cond_11

    .line 852
    sget-object v19, Lcom/pareekiApps/markcalculator/Course3;->getPrefs:Landroid/content/SharedPreferences;

    const-string v20, "Course3TI"

    const-string v21, ""

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v19

    const-wide/high16 v21, 0x4059

    div-double v19, v19, v21

    sget-object v21, Lcom/pareekiApps/markcalculator/Course3;->getPrefs:Landroid/content/SharedPreferences;

    const-string v22, "Course3KU"

    const-string v23, ""

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v21

    const-wide/high16 v23, 0x4059

    div-double v21, v21, v23

    add-double v17, v19, v21

    .line 853
    .restart local v17       #weightSum:D
    div-double v15, v15, v17

    goto/16 :goto_0

    .line 855
    .end local v17           #weightSum:D
    :cond_11
    if-nez v14, :cond_16

    if-nez v11, :cond_16

    .line 857
    sget-object v19, Lcom/pareekiApps/markcalculator/Course3;->getPrefs:Landroid/content/SharedPreferences;

    const-string v20, "Course3KU"

    const-string v21, ""

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v19

    const-wide/high16 v21, 0x4059

    div-double v19, v19, v21

    sget-object v21, Lcom/pareekiApps/markcalculator/Course3;->getPrefs:Landroid/content/SharedPreferences;

    const-string v22, "Course3MC"

    const-string v23, ""

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v21

    const-wide/high16 v23, 0x4059

    div-double v21, v21, v23

    add-double v17, v19, v21

    .line 858
    .restart local v17       #weightSum:D
    div-double v15, v15, v17

    goto/16 :goto_0

    .line 861
    .end local v17           #weightSum:D
    :cond_12
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v10, v0, :cond_16

    .line 863
    if-eqz v12, :cond_13

    .line 865
    sget-object v19, Lcom/pareekiApps/markcalculator/Course3;->getPrefs:Landroid/content/SharedPreferences;

    const-string v20, "Course3KU"

    const-string v21, ""

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v19

    const-wide/high16 v21, 0x4059

    div-double v17, v19, v21

    .line 866
    .restart local v17       #weightSum:D
    div-double v15, v15, v17

    goto/16 :goto_0

    .line 868
    .end local v17           #weightSum:D
    :cond_13
    if-eqz v13, :cond_14

    .line 870
    sget-object v19, Lcom/pareekiApps/markcalculator/Course3;->getPrefs:Landroid/content/SharedPreferences;

    const-string v20, "Course3MC"

    const-string v21, ""

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v19

    const-wide/high16 v21, 0x4059

    div-double v17, v19, v21

    .line 871
    .restart local v17       #weightSum:D
    div-double v15, v15, v17

    goto/16 :goto_0

    .line 873
    .end local v17           #weightSum:D
    :cond_14
    if-eqz v14, :cond_15

    .line 875
    sget-object v19, Lcom/pareekiApps/markcalculator/Course3;->getPrefs:Landroid/content/SharedPreferences;

    const-string v20, "Course3TI"

    const-string v21, ""

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v19

    const-wide/high16 v21, 0x4059

    div-double v17, v19, v21

    .line 876
    .restart local v17       #weightSum:D
    div-double v15, v15, v17

    goto/16 :goto_0

    .line 878
    .end local v17           #weightSum:D
    :cond_15
    if-eqz v11, :cond_16

    .line 880
    sget-object v19, Lcom/pareekiApps/markcalculator/Course3;->getPrefs:Landroid/content/SharedPreferences;

    const-string v20, "Course3C"

    const-string v21, ""

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v19

    const-wide/high16 v21, 0x4059

    div-double v17, v19, v21

    .line 881
    .restart local v17       #weightSum:D
    div-double v15, v15, v17

    goto/16 :goto_0

    .line 884
    .end local v17           #weightSum:D
    :cond_16
    const-wide/16 v15, 0x0

    goto/16 :goto_0
.end method

.method private deleteAll()V
    .locals 18

    .prologue
    .line 1039
    const/4 v1, 0x0

    .local v1, all:I
    :goto_0
    move-object/from16 v0, p0

    iget v12, v0, Lcom/pareekiApps/markcalculator/Course3;->entryCounter:I

    if-lt v1, v12, :cond_0

    .line 1112
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pareekiApps/markcalculator/Course3;->finalAverage:Landroid/widget/TextView;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Average:"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/pareekiApps/markcalculator/Course3;->calculateMark()D

    move-result-wide v14

    const-wide/high16 v16, 0x4059

    mul-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    long-to-double v14, v14

    const-wide/high16 v16, 0x4059

    div-double v14, v14, v16

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "%"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1113
    invoke-direct/range {p0 .. p0}, Lcom/pareekiApps/markcalculator/Course3;->putOveralMarks()V

    .line 1114
    return-void

    .line 1046
    :cond_0
    sget-object v12, Lcom/pareekiApps/markcalculator/Course3;->getPrefs:Landroid/content/SharedPreferences;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Entry"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "Course1"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, ",,"

    invoke-interface {v12, v13, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1047
    .local v2, allData:Ljava/lang/String;
    const-string v12, ","

    invoke-virtual {v2, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1049
    .local v5, data:[Ljava/lang/String;
    const/4 v12, 0x0

    aget-object v12, v5, v12

    invoke-static {v12}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    .line 1050
    .local v7, mark:D
    const/4 v11, 0x0

    .line 1051
    .local v11, weight:I
    const-string v3, ""

    .line 1053
    .local v3, catagory:Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    const/4 v12, 0x6

    if-lt v6, v12, :cond_2

    .line 1061
    :goto_2
    const/4 v6, 0x0

    :goto_3
    const/4 v12, 0x5

    if-lt v6, v12, :cond_4

    .line 1069
    :goto_4
    sget-object v12, Lcom/pareekiApps/markcalculator/Course3;->getPrefs:Landroid/content/SharedPreferences;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Course1"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, ""

    invoke-interface {v12, v13, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1070
    .local v4, categoryWeight:Ljava/lang/String;
    int-to-double v12, v11

    mul-double/2addr v12, v7

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    const-wide/high16 v16, 0x4059

    div-double v14, v14, v16

    mul-double v9, v12, v14

    .line 1071
    .local v9, removing:D
    const-wide/high16 v12, 0x4059

    mul-double/2addr v12, v9

    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    move-result-wide v12

    long-to-double v12, v12

    const-wide/high16 v14, 0x4059

    div-double v9, v12, v14

    .line 1074
    const-string v12, "KU"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 1076
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/pareekiApps/markcalculator/Course3;->totalKU:D

    sub-double/2addr v12, v9

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/pareekiApps/markcalculator/Course3;->totalKU:D

    .line 1077
    move-object/from16 v0, p0

    iget v12, v0, Lcom/pareekiApps/markcalculator/Course3;->totalKUCount:I

    sub-int/2addr v12, v11

    move-object/from16 v0, p0

    iput v12, v0, Lcom/pareekiApps/markcalculator/Course3;->totalKUCount:I

    .line 1079
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pareekiApps/markcalculator/Course3;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    const-string v13, "Course1totalKU"

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/pareekiApps/markcalculator/Course3;->totalKU:D

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lcom/pareekiApps/markcalculator/Prefs;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 1080
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pareekiApps/markcalculator/Course3;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    const-string v13, "Course1totalKUCount"

    move-object/from16 v0, p0

    iget v14, v0, Lcom/pareekiApps/markcalculator/Course3;->totalKUCount:I

    invoke-virtual {v12, v13, v14}, Lcom/pareekiApps/markcalculator/Prefs;->setPreferenceInt(Ljava/lang/String;I)V

    .line 1107
    :cond_1
    :goto_5
    move-object/from16 v0, p0

    iget v12, v0, Lcom/pareekiApps/markcalculator/Course3;->entryCounter:I

    add-int/lit8 v12, v12, -0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/pareekiApps/markcalculator/Course3;->entryCounter:I

    .line 1108
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pareekiApps/markcalculator/Course3;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    const-string v13, "Class1EntryCounter"

    move-object/from16 v0, p0

    iget v14, v0, Lcom/pareekiApps/markcalculator/Course3;->entryCounter:I

    invoke-virtual {v12, v13, v14}, Lcom/pareekiApps/markcalculator/Prefs;->setPreferenceInt(Ljava/lang/String;I)V

    .line 1109
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/pareekiApps/markcalculator/Course3;->rearrangeData(I)V

    .line 1110
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/pareekiApps/markcalculator/Course3;->updateRow(I)V

    .line 1039
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1055
    .end local v4           #categoryWeight:Ljava/lang/String;
    .end local v9           #removing:D
    :cond_2
    const/4 v12, 0x2

    aget-object v12, v5, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pareekiApps/markcalculator/Course3;->weights:[Ljava/lang/String;

    aget-object v13, v13, v6

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 1057
    const/4 v12, 0x2

    aget-object v12, v5, v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 1058
    goto/16 :goto_2

    .line 1053
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 1063
    :cond_4
    const/4 v12, 0x1

    aget-object v12, v5, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pareekiApps/markcalculator/Course3;->cats:[Ljava/lang/String;

    aget-object v13, v13, v6

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 1065
    const/4 v12, 0x1

    aget-object v3, v5, v12

    .line 1066
    goto/16 :goto_4

    .line 1061
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    .line 1082
    .restart local v4       #categoryWeight:Ljava/lang/String;
    .restart local v9       #removing:D
    :cond_6
    const-string v12, "MC"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 1084
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/pareekiApps/markcalculator/Course3;->totalMC:D

    sub-double/2addr v12, v9

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/pareekiApps/markcalculator/Course3;->totalMC:D

    .line 1085
    move-object/from16 v0, p0

    iget v12, v0, Lcom/pareekiApps/markcalculator/Course3;->totalMCCount:I

    sub-int/2addr v12, v11

    move-object/from16 v0, p0

    iput v12, v0, Lcom/pareekiApps/markcalculator/Course3;->totalMCCount:I

    .line 1087
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pareekiApps/markcalculator/Course3;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    const-string v13, "Course1totalMC"

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/pareekiApps/markcalculator/Course3;->totalMC:D

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lcom/pareekiApps/markcalculator/Prefs;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 1088
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pareekiApps/markcalculator/Course3;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    const-string v13, "Course1totalMCCount"

    move-object/from16 v0, p0

    iget v14, v0, Lcom/pareekiApps/markcalculator/Course3;->totalMCCount:I

    invoke-virtual {v12, v13, v14}, Lcom/pareekiApps/markcalculator/Prefs;->setPreferenceInt(Ljava/lang/String;I)V

    goto/16 :goto_5

    .line 1090
    :cond_7
    const-string v12, "TI"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 1092
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/pareekiApps/markcalculator/Course3;->totalTI:D

    sub-double/2addr v12, v9

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/pareekiApps/markcalculator/Course3;->totalTI:D

    .line 1093
    move-object/from16 v0, p0

    iget v12, v0, Lcom/pareekiApps/markcalculator/Course3;->totalTICount:I

    sub-int/2addr v12, v11

    move-object/from16 v0, p0

    iput v12, v0, Lcom/pareekiApps/markcalculator/Course3;->totalTICount:I

    .line 1095
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pareekiApps/markcalculator/Course3;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    const-string v13, "Course1totalTI"

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/pareekiApps/markcalculator/Course3;->totalTI:D

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lcom/pareekiApps/markcalculator/Prefs;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 1096
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pareekiApps/markcalculator/Course3;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    const-string v13, "Course1totalTICount"

    move-object/from16 v0, p0

    iget v14, v0, Lcom/pareekiApps/markcalculator/Course3;->totalTICount:I

    invoke-virtual {v12, v13, v14}, Lcom/pareekiApps/markcalculator/Prefs;->setPreferenceInt(Ljava/lang/String;I)V

    goto/16 :goto_5

    .line 1098
    :cond_8
    const-string v12, "C"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 1100
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/pareekiApps/markcalculator/Course3;->totalC:D

    sub-double/2addr v12, v9

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/pareekiApps/markcalculator/Course3;->totalC:D

    .line 1101
    move-object/from16 v0, p0

    iget v12, v0, Lcom/pareekiApps/markcalculator/Course3;->totalCCount:I

    sub-int/2addr v12, v11

    move-object/from16 v0, p0

    iput v12, v0, Lcom/pareekiApps/markcalculator/Course3;->totalCCount:I

    .line 1103
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pareekiApps/markcalculator/Course3;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    const-string v13, "Course1totalC"

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/pareekiApps/markcalculator/Course3;->totalC:D

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lcom/pareekiApps/markcalculator/Prefs;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 1104
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pareekiApps/markcalculator/Course3;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    const-string v13, "Course1totalCCount"

    move-object/from16 v0, p0

    iget v14, v0, Lcom/pareekiApps/markcalculator/Course3;->totalCCount:I

    invoke-virtual {v12, v13, v14}, Lcom/pareekiApps/markcalculator/Prefs;->setPreferenceInt(Ljava/lang/String;I)V

    goto/16 :goto_5
.end method

.method private deleteMark(Ljava/lang/String;I)V
    .locals 18
    .parameter "col1Name"
    .parameter "rowNum"

    .prologue
    .line 959
    sget-object v12, Lcom/pareekiApps/markcalculator/Course3;->getPrefs:Landroid/content/SharedPreferences;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Entry"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "Course3"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, ",,"

    invoke-interface {v12, v13, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 960
    .local v2, allData:Ljava/lang/String;
    const-string v12, ","

    invoke-virtual {v2, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 962
    .local v5, data:[Ljava/lang/String;
    const/4 v12, 0x0

    aget-object v12, v5, v12

    invoke-static {v12}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    .line 963
    .local v7, mark:D
    const/4 v11, 0x0

    .line 964
    .local v11, weight:I
    const-string v3, ""

    .line 966
    .local v3, catagory:Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    const/4 v12, 0x6

    if-lt v6, v12, :cond_1

    .line 974
    :goto_1
    const/4 v6, 0x0

    :goto_2
    const/4 v12, 0x5

    if-lt v6, v12, :cond_3

    .line 982
    :goto_3
    sget-object v12, Lcom/pareekiApps/markcalculator/Course3;->getPrefs:Landroid/content/SharedPreferences;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Course3"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, ""

    invoke-interface {v12, v13, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 983
    .local v4, categoryWeight:Ljava/lang/String;
    int-to-double v12, v11

    mul-double/2addr v12, v7

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    const-wide/high16 v16, 0x4059

    div-double v14, v14, v16

    mul-double v9, v12, v14

    .line 984
    .local v9, removing:D
    const-wide/high16 v12, 0x4059

    mul-double/2addr v12, v9

    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    move-result-wide v12

    long-to-double v12, v12

    const-wide/high16 v14, 0x4059

    div-double v9, v12, v14

    .line 987
    const-string v12, "KU"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 989
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/pareekiApps/markcalculator/Course3;->totalKU:D

    sub-double/2addr v12, v9

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/pareekiApps/markcalculator/Course3;->totalKU:D

    .line 990
    move-object/from16 v0, p0

    iget v12, v0, Lcom/pareekiApps/markcalculator/Course3;->totalKUCount:I

    sub-int/2addr v12, v11

    move-object/from16 v0, p0

    iput v12, v0, Lcom/pareekiApps/markcalculator/Course3;->totalKUCount:I

    .line 992
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pareekiApps/markcalculator/Course3;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    const-string v13, "Course3totalKU"

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/pareekiApps/markcalculator/Course3;->totalKU:D

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lcom/pareekiApps/markcalculator/Prefs;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 993
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pareekiApps/markcalculator/Course3;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    const-string v13, "Course3totalKUCount"

    move-object/from16 v0, p0

    iget v14, v0, Lcom/pareekiApps/markcalculator/Course3;->totalKUCount:I

    invoke-virtual {v12, v13, v14}, Lcom/pareekiApps/markcalculator/Prefs;->setPreferenceInt(Ljava/lang/String;I)V

    .line 1020
    :cond_0
    :goto_4
    move-object/from16 v0, p0

    iget v12, v0, Lcom/pareekiApps/markcalculator/Course3;->entryCounter:I

    add-int/lit8 v12, v12, -0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/pareekiApps/markcalculator/Course3;->entryCounter:I

    .line 1021
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pareekiApps/markcalculator/Course3;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    const-string v13, "Class3EntryCounter"

    move-object/from16 v0, p0

    iget v14, v0, Lcom/pareekiApps/markcalculator/Course3;->entryCounter:I

    invoke-virtual {v12, v13, v14}, Lcom/pareekiApps/markcalculator/Prefs;->setPreferenceInt(Ljava/lang/String;I)V

    .line 1022
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/pareekiApps/markcalculator/Course3;->rearrangeData(I)V

    .line 1023
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/pareekiApps/markcalculator/Course3;->updateRow(I)V

    .line 1024
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pareekiApps/markcalculator/Course3;->finalAverage:Landroid/widget/TextView;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Average:"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/pareekiApps/markcalculator/Course3;->calculateMark()D

    move-result-wide v14

    const-wide/high16 v16, 0x4059

    mul-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    long-to-double v14, v14

    const-wide/high16 v16, 0x4059

    div-double v14, v14, v16

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "%"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1025
    invoke-direct/range {p0 .. p0}, Lcom/pareekiApps/markcalculator/Course3;->putOveralMarks()V

    .line 1026
    return-void

    .line 968
    .end local v4           #categoryWeight:Ljava/lang/String;
    .end local v9           #removing:D
    :cond_1
    const/4 v12, 0x2

    aget-object v12, v5, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pareekiApps/markcalculator/Course3;->weights:[Ljava/lang/String;

    aget-object v13, v13, v6

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 970
    const/4 v12, 0x2

    aget-object v12, v5, v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 971
    goto/16 :goto_1

    .line 966
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 976
    :cond_3
    const/4 v12, 0x1

    aget-object v12, v5, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pareekiApps/markcalculator/Course3;->cats:[Ljava/lang/String;

    aget-object v13, v13, v6

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 978
    const/4 v12, 0x1

    aget-object v3, v5, v12

    .line 979
    goto/16 :goto_3

    .line 974
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 995
    .restart local v4       #categoryWeight:Ljava/lang/String;
    .restart local v9       #removing:D
    :cond_5
    const-string v12, "MC"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 997
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/pareekiApps/markcalculator/Course3;->totalMC:D

    sub-double/2addr v12, v9

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/pareekiApps/markcalculator/Course3;->totalMC:D

    .line 998
    move-object/from16 v0, p0

    iget v12, v0, Lcom/pareekiApps/markcalculator/Course3;->totalMCCount:I

    sub-int/2addr v12, v11

    move-object/from16 v0, p0

    iput v12, v0, Lcom/pareekiApps/markcalculator/Course3;->totalMCCount:I

    .line 1000
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pareekiApps/markcalculator/Course3;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    const-string v13, "Course3totalMC"

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/pareekiApps/markcalculator/Course3;->totalMC:D

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lcom/pareekiApps/markcalculator/Prefs;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 1001
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pareekiApps/markcalculator/Course3;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    const-string v13, "Course3totalMCCount"

    move-object/from16 v0, p0

    iget v14, v0, Lcom/pareekiApps/markcalculator/Course3;->totalMCCount:I

    invoke-virtual {v12, v13, v14}, Lcom/pareekiApps/markcalculator/Prefs;->setPreferenceInt(Ljava/lang/String;I)V

    goto/16 :goto_4

    .line 1003
    :cond_6
    const-string v12, "TI"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 1005
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/pareekiApps/markcalculator/Course3;->totalTI:D

    sub-double/2addr v12, v9

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/pareekiApps/markcalculator/Course3;->totalTI:D

    .line 1006
    move-object/from16 v0, p0

    iget v12, v0, Lcom/pareekiApps/markcalculator/Course3;->totalTICount:I

    sub-int/2addr v12, v11

    move-object/from16 v0, p0

    iput v12, v0, Lcom/pareekiApps/markcalculator/Course3;->totalTICount:I

    .line 1008
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pareekiApps/markcalculator/Course3;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    const-string v13, "Course3totalTI"

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/pareekiApps/markcalculator/Course3;->totalTI:D

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lcom/pareekiApps/markcalculator/Prefs;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 1009
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pareekiApps/markcalculator/Course3;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    const-string v13, "Course3totalTICount"

    move-object/from16 v0, p0

    iget v14, v0, Lcom/pareekiApps/markcalculator/Course3;->totalTICount:I

    invoke-virtual {v12, v13, v14}, Lcom/pareekiApps/markcalculator/Prefs;->setPreferenceInt(Ljava/lang/String;I)V

    goto/16 :goto_4

    .line 1011
    :cond_7
    const-string v12, "C"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 1013
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/pareekiApps/markcalculator/Course3;->totalC:D

    sub-double/2addr v12, v9

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/pareekiApps/markcalculator/Course3;->totalC:D

    .line 1014
    move-object/from16 v0, p0

    iget v12, v0, Lcom/pareekiApps/markcalculator/Course3;->totalCCount:I

    sub-int/2addr v12, v11

    move-object/from16 v0, p0

    iput v12, v0, Lcom/pareekiApps/markcalculator/Course3;->totalCCount:I

    .line 1016
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pareekiApps/markcalculator/Course3;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    const-string v13, "Course3totalC"

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/pareekiApps/markcalculator/Course3;->totalC:D

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lcom/pareekiApps/markcalculator/Prefs;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 1017
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pareekiApps/markcalculator/Course3;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    const-string v13, "Course3totalCCount"

    move-object/from16 v0, p0

    iget v14, v0, Lcom/pareekiApps/markcalculator/Course3;->totalCCount:I

    invoke-virtual {v12, v13, v14}, Lcom/pareekiApps/markcalculator/Prefs;->setPreferenceInt(Ljava/lang/String;I)V

    goto/16 :goto_4
.end method

.method private editMark(Ljava/lang/String;I)V
    .locals 20
    .parameter "col1Name"
    .parameter "rowNum"

    .prologue
    .line 244
    new-instance v1, Landroid/app/Dialog;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/pareekiApps/markcalculator/Course3;->builder:Landroid/app/Dialog;

    .line 245
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pareekiApps/markcalculator/Course3;->builder:Landroid/app/Dialog;

    const-string v2, "Editing a mark"

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 248
    invoke-virtual/range {p0 .. p0}, Lcom/pareekiApps/markcalculator/Course3;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/LayoutInflater;

    .line 249
    .local v14, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f030002

    const/4 v2, 0x0

    invoke-virtual {v14, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v15

    .line 250
    .local v15, layout_spinners:Landroid/view/View;
    const v1, 0x7f060013

    invoke-virtual {v15, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/Spinner;

    .line 251
    .local v17, spinner1:Landroid/widget/Spinner;
    const v1, 0x7f060014

    invoke-virtual {v15, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/Spinner;

    .line 252
    .local v18, spinner2:Landroid/widget/Spinner;
    const v1, 0x7f060015

    invoke-virtual {v15, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/Button;

    .line 253
    .local v16, saveMark:Landroid/widget/Button;
    const v1, 0x7f060011

    invoke-virtual {v15, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 254
    .local v3, numMark:Landroid/widget/EditText;
    const v1, 0x7f060012

    invoke-virtual {v15, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 255
    .local v4, denMark:Landroid/widget/EditText;
    const v1, 0x7f060010

    invoke-virtual {v15, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 258
    .local v5, et:Landroid/widget/EditText;
    sget-object v1, Lcom/pareekiApps/markcalculator/Course3;->getPrefs:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "Course3Entry"

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "values"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "0,0"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 259
    .local v12, get:Ljava/lang/String;
    const-string v1, ","

    invoke-virtual {v12, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 261
    .local v19, values:[Ljava/lang/String;
    sget-object v1, Lcom/pareekiApps/markcalculator/Course3;->getPrefs:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "Entry"

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "Course3"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, ",,"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 262
    .local v10, allData:Ljava/lang/String;
    const-string v1, ","

    invoke-virtual {v10, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 264
    .local v11, data:[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v19, v1

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 265
    const/4 v1, 0x1

    aget-object v1, v19, v1

    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 266
    const/4 v1, 0x3

    aget-object v1, v11, v1

    invoke-virtual {v5, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 268
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pareekiApps/markcalculator/Course3;->builder:Landroid/app/Dialog;

    invoke-virtual {v1, v15}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 269
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pareekiApps/markcalculator/Course3;->builder:Landroid/app/Dialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 271
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pareekiApps/markcalculator/Course3;->builder:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 275
    new-instance v8, Landroid/widget/ArrayAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/pareekiApps/markcalculator/Course3;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1090008

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/pareekiApps/markcalculator/Course3;->categories:[Ljava/lang/String;

    invoke-direct {v8, v1, v2, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 276
    .local v8, adapter1:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v1, 0x1090009

    invoke-virtual {v8, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 277
    new-instance v1, Lcom/pareekiApps/markcalculator/CustomOnItemSelectedListener;

    invoke-direct {v1}, Lcom/pareekiApps/markcalculator/CustomOnItemSelectedListener;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 278
    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 280
    new-instance v9, Landroid/widget/ArrayAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/pareekiApps/markcalculator/Course3;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1090008

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/pareekiApps/markcalculator/Course3;->weights:[Ljava/lang/String;

    invoke-direct {v9, v1, v2, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 281
    .local v9, adapter2:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v1, 0x1090009

    invoke-virtual {v9, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 282
    new-instance v1, Lcom/pareekiApps/markcalculator/CustomOnItemSelectedListener;

    invoke-direct {v1}, Lcom/pareekiApps/markcalculator/CustomOnItemSelectedListener;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 283
    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 286
    const/4 v13, 0x0

    .local v13, i:I
    :goto_0
    const/4 v1, 0x5

    if-lt v13, v1, :cond_1

    .line 294
    :goto_1
    const/4 v13, 0x0

    :goto_2
    const/4 v1, 0x6

    if-lt v13, v1, :cond_3

    .line 304
    :goto_3
    new-instance v1, Lcom/pareekiApps/markcalculator/Course3$3;

    move-object/from16 v2, p0

    move/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/pareekiApps/markcalculator/Course3$3;-><init>(Lcom/pareekiApps/markcalculator/Course3;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;I)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 373
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pareekiApps/markcalculator/Course3;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/InterstitialAd;->isLoaded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 375
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pareekiApps/markcalculator/Course3;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/InterstitialAd;->show()V

    .line 377
    new-instance v1, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    .line 378
    const-string v2, "00811854ce4d1200"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v1

    .line 379
    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v7

    .line 381
    .local v7, adRequest:Lcom/google/android/gms/ads/AdRequest;
    new-instance v1, Lcom/google/android/gms/ads/InterstitialAd;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/google/android/gms/ads/InterstitialAd;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/pareekiApps/markcalculator/Course3;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    .line 382
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pareekiApps/markcalculator/Course3;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    const-string v2, "ca-app-pub-4733259834848580/7569349752"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/InterstitialAd;->setAdUnitId(Ljava/lang/String;)V

    .line 385
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pareekiApps/markcalculator/Course3;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v1, v7}, Lcom/google/android/gms/ads/InterstitialAd;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 387
    .end local v7           #adRequest:Lcom/google/android/gms/ads/AdRequest;
    :cond_0
    return-void

    .line 288
    :cond_1
    const/4 v1, 0x1

    aget-object v1, v11, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pareekiApps/markcalculator/Course3;->cats:[Ljava/lang/String;

    aget-object v2, v2, v13

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 290
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_1

    .line 286
    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 296
    :cond_3
    const/4 v1, 0x2

    aget-object v1, v11, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pareekiApps/markcalculator/Course3;->weights:[Ljava/lang/String;

    aget-object v2, v2, v13

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 298
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_3

    .line 294
    :cond_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_2
.end method

.method private putOveralMarks()V
    .locals 19

    .prologue
    .line 517
    sget-object v14, Lcom/pareekiApps/markcalculator/Course3;->getPrefs:Landroid/content/SharedPreferences;

    const-string v15, "Course3KU"

    const-string v16, "0"

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 518
    .local v4, KUWeight:D
    sget-object v14, Lcom/pareekiApps/markcalculator/Course3;->getPrefs:Landroid/content/SharedPreferences;

    const-string v15, "Course3MC"

    const-string v16, "0"

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    .line 519
    .local v6, MCWeight:D
    sget-object v14, Lcom/pareekiApps/markcalculator/Course3;->getPrefs:Landroid/content/SharedPreferences;

    const-string v15, "Course3TI"

    const-string v16, "0"

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    .line 520
    .local v8, TIWeight:D
    sget-object v14, Lcom/pareekiApps/markcalculator/Course3;->getPrefs:Landroid/content/SharedPreferences;

    const-string v15, "Course3C"

    const-string v16, "0"

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 522
    .local v2, CWeight:D
    const v14, 0x7f060025

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/pareekiApps/markcalculator/Course3;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 523
    .local v11, ku:Landroid/widget/TextView;
    const v14, 0x7f060027

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/pareekiApps/markcalculator/Course3;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 524
    .local v12, mc:Landroid/widget/TextView;
    const v14, 0x7f060029

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/pareekiApps/markcalculator/Course3;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 525
    .local v13, ti:Landroid/widget/TextView;
    const v14, 0x7f06002b

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/pareekiApps/markcalculator/Course3;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 527
    .local v10, c:Landroid/widget/TextView;
    sget-object v14, Lcom/pareekiApps/markcalculator/Course3;->getPrefs:Landroid/content/SharedPreferences;

    const-string v15, "Course3totalKUCount"

    const/16 v16, 0x0

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/pareekiApps/markcalculator/Course3;->totalKUCount:I

    .line 528
    sget-object v14, Lcom/pareekiApps/markcalculator/Course3;->getPrefs:Landroid/content/SharedPreferences;

    const-string v15, "Course3totalMCCount"

    const/16 v16, 0x0

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/pareekiApps/markcalculator/Course3;->totalMCCount:I

    .line 529
    sget-object v14, Lcom/pareekiApps/markcalculator/Course3;->getPrefs:Landroid/content/SharedPreferences;

    const-string v15, "Course3totalTICount"

    const/16 v16, 0x0

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/pareekiApps/markcalculator/Course3;->totalTICount:I

    .line 530
    sget-object v14, Lcom/pareekiApps/markcalculator/Course3;->getPrefs:Landroid/content/SharedPreferences;

    const-string v15, "Course3totalCCount"

    const/16 v16, 0x0

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/pareekiApps/markcalculator/Course3;->totalCCount:I

    .line 532
    sget-object v14, Lcom/pareekiApps/markcalculator/Course3;->getPrefs:Landroid/content/SharedPreferences;

    const-string v15, "Course3totalKU"

    const-string v16, "0"

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/pareekiApps/markcalculator/Course3;->totalKU:D

    .line 533
    sget-object v14, Lcom/pareekiApps/markcalculator/Course3;->getPrefs:Landroid/content/SharedPreferences;

    const-string v15, "Course3totalMC"

    const-string v16, "0"

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/pareekiApps/markcalculator/Course3;->totalMC:D

    .line 534
    sget-object v14, Lcom/pareekiApps/markcalculator/Course3;->getPrefs:Landroid/content/SharedPreferences;

    const-string v15, "Course3totalTI"

    const-string v16, "0"

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/pareekiApps/markcalculator/Course3;->totalTI:D

    .line 535
    sget-object v14, Lcom/pareekiApps/markcalculator/Course3;->getPrefs:Landroid/content/SharedPreferences;

    const-string v15, "Course3totalC"

    const-string v16, "0"

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/pareekiApps/markcalculator/Course3;->totalC:D

    .line 537
    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/pareekiApps/markcalculator/Course3;->totalKU:D

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pareekiApps/markcalculator/Course3;->totalKUCount:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    div-double v15, v15, v17

    const-wide/high16 v17, 0x4059

    div-double v17, v4, v17

    div-double v15, v15, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->round(D)J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, "%"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 538
    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/pareekiApps/markcalculator/Course3;->totalMC:D

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pareekiApps/markcalculator/Course3;->totalMCCount:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    div-double v15, v15, v17

    const-wide/high16 v17, 0x4059

    div-double v17, v6, v17

    div-double v15, v15, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->round(D)J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, "%"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 539
    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/pareekiApps/markcalculator/Course3;->totalTI:D

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pareekiApps/markcalculator/Course3;->totalTICount:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    div-double v15, v15, v17

    const-wide/high16 v17, 0x4059

    div-double v17, v8, v17

    div-double v15, v15, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->round(D)J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, "%"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 540
    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/pareekiApps/markcalculator/Course3;->totalC:D

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pareekiApps/markcalculator/Course3;->totalCCount:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    div-double v15, v15, v17

    const-wide/high16 v17, 0x4059

    div-double v17, v2, v17

    div-double v15, v15, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->round(D)J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, "%"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 541
    return-void
.end method

.method private rearrangeData(I)V
    .locals 5
    .parameter "rowNumber"

    .prologue
    .line 1030
    move v0, p1

    .local v0, i:I
    :goto_0
    iget v2, p0, Lcom/pareekiApps/markcalculator/Course3;->entryCounter:I

    add-int/lit8 v2, v2, 0x1

    if-le v0, v2, :cond_0

    .line 1036
    return-void

    .line 1032
    :cond_0
    sget-object v2, Lcom/pareekiApps/markcalculator/Course3;->getPrefs:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Entry"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Course3"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1033
    .local v1, next:Ljava/lang/String;
    iget-object v2, p0, Lcom/pareekiApps/markcalculator/Course3;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Entry"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Course3"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/pareekiApps/markcalculator/Prefs;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 1030
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private savetheNewMark()V
    .locals 24

    .prologue
    .line 659
    const v18, 0x7f060036

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/pareekiApps/markcalculator/Course3;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TableLayout;

    .line 662
    .local v7, table:Landroid/widget/TableLayout;
    new-instance v6, Landroid/widget/TableRow;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 664
    .local v6, row:Landroid/widget/TableRow;
    new-instance v12, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 665
    .local v12, tv1:Landroid/widget/TextView;
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 666
    new-instance v13, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 667
    .local v13, tv2:Landroid/widget/TextView;
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 668
    new-instance v14, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 669
    .local v14, tv3:Landroid/widget/TextView;
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 670
    new-instance v15, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 671
    .local v15, tv4:Landroid/widget/TextView;
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 673
    new-instance v18, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pareekiApps/markcalculator/Course3;->entryCounter:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, ". "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course3;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 674
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/pareekiApps/markcalculator/Course3;->answer:D

    move-wide/from16 v19, v0

    invoke-virtual/range {v18 .. v20}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 676
    sget-object v18, Lcom/pareekiApps/markcalculator/Course3;->getPrefs:Landroid/content/SharedPreferences;

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "Course3"

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course3;->cat:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const-string v20, ""

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 677
    .local v5, categoryWeight:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/pareekiApps/markcalculator/Course3;->answer:D

    move-wide/from16 v18, v0

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v20

    mul-double v18, v18, v20

    const-wide/high16 v20, 0x4059

    div-double v18, v18, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course3;->spinnerSelectWeight:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v20

    mul-double v16, v18, v20

    .line 678
    .local v16, weightedMark:D
    const-wide/high16 v18, 0x4059

    mul-double v18, v18, v16

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->round(D)J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4059

    div-double v16, v18, v20

    .line 680
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course3;->spinnerSelectCategory:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "Knowledge and Understanding"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 682
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/pareekiApps/markcalculator/Course3;->totalKU:D

    move-wide/from16 v18, v0

    add-double v18, v18, v16

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/pareekiApps/markcalculator/Course3;->totalKU:D

    .line 683
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pareekiApps/markcalculator/Course3;->totalKUCount:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course3;->spinnerSelectWeight:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v20

    add-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pareekiApps/markcalculator/Course3;->totalKUCount:I

    .line 701
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course3;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    move-object/from16 v18, v0

    const-string v19, "Course3totalKUCount"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pareekiApps/markcalculator/Course3;->totalKUCount:I

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Lcom/pareekiApps/markcalculator/Prefs;->setPreferenceInt(Ljava/lang/String;I)V

    .line 702
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course3;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    move-object/from16 v18, v0

    const-string v19, "Course3totalMCCount"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pareekiApps/markcalculator/Course3;->totalMCCount:I

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Lcom/pareekiApps/markcalculator/Prefs;->setPreferenceInt(Ljava/lang/String;I)V

    .line 703
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course3;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    move-object/from16 v18, v0

    const-string v19, "Course3totalTICount"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pareekiApps/markcalculator/Course3;->totalTICount:I

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Lcom/pareekiApps/markcalculator/Prefs;->setPreferenceInt(Ljava/lang/String;I)V

    .line 704
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course3;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    move-object/from16 v18, v0

    const-string v19, "Course3totalCCount"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pareekiApps/markcalculator/Course3;->totalCCount:I

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Lcom/pareekiApps/markcalculator/Prefs;->setPreferenceInt(Ljava/lang/String;I)V

    .line 706
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course3;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    move-object/from16 v18, v0

    const-string v19, "Course3totalKU"

    new-instance v20, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/pareekiApps/markcalculator/Course3;->totalKU:D

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Lcom/pareekiApps/markcalculator/Prefs;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course3;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    move-object/from16 v18, v0

    const-string v19, "Course3totalMC"

    new-instance v20, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/pareekiApps/markcalculator/Course3;->totalMC:D

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Lcom/pareekiApps/markcalculator/Prefs;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course3;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    move-object/from16 v18, v0

    const-string v19, "Course3totalTI"

    new-instance v20, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/pareekiApps/markcalculator/Course3;->totalTI:D

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Lcom/pareekiApps/markcalculator/Prefs;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course3;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    move-object/from16 v18, v0

    const-string v19, "Course3totalC"

    new-instance v20, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/pareekiApps/markcalculator/Course3;->totalC:D

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Lcom/pareekiApps/markcalculator/Prefs;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/pareekiApps/markcalculator/Course3;->totalKU:D

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/pareekiApps/markcalculator/Course3;->totalC:D

    move-wide/from16 v20, v0

    add-double v18, v18, v20

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/pareekiApps/markcalculator/Course3;->totalMC:D

    move-wide/from16 v20, v0

    add-double v18, v18, v20

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/pareekiApps/markcalculator/Course3;->totalTI:D

    move-wide/from16 v20, v0

    add-double v8, v18, v20

    .line 712
    .local v8, total:D
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pareekiApps/markcalculator/Course3;->totalKUCount:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pareekiApps/markcalculator/Course3;->totalMCCount:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pareekiApps/markcalculator/Course3;->totalTICount:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pareekiApps/markcalculator/Course3;->totalCCount:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v18

    int-to-double v10, v0

    .line 713
    .local v10, totalMarksCounter:D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course3;->cat:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 714
    div-double v3, v8, v10

    .line 715
    .local v3, average:D
    const-wide/high16 v18, 0x4059

    mul-double v18, v18, v3

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->round(D)J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4059

    div-double v3, v18, v20

    .line 716
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 718
    invoke-virtual {v6, v12}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 719
    invoke-virtual {v6, v13}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 720
    invoke-virtual {v6, v14}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 721
    invoke-virtual {v6, v15}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 723
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/widget/TableRow;->setLongClickable(Z)V

    .line 724
    new-instance v18, Landroid/widget/TableLayout$LayoutParams;

    const/16 v19, -0x2

    const/16 v20, -0x2

    invoke-direct/range {v18 .. v20}, Landroid/widget/TableLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v18

    invoke-virtual {v7, v6, v0}, Landroid/widget/TableLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 725
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course3;->finalAverage:Landroid/widget/TextView;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "Average:"

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/pareekiApps/markcalculator/Course3;->calculateMark()D

    move-result-wide v20

    const-wide/high16 v22, 0x4059

    mul-double v20, v20, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->round(D)J

    move-result-wide v20

    move-wide/from16 v0, v20

    long-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide/high16 v22, 0x4059

    div-double v20, v20, v22

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "%"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 726
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course3;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    move-object/from16 v18, v0

    const-string v19, "Course3finalAverage"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Lcom/pareekiApps/markcalculator/Prefs;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pareekiApps/markcalculator/Course3;->entryCounter:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/pareekiApps/markcalculator/Course3;->updateRow(I)V

    .line 729
    invoke-direct/range {p0 .. p0}, Lcom/pareekiApps/markcalculator/Course3;->putOveralMarks()V

    .line 731
    new-instance v18, Lcom/pareekiApps/markcalculator/Course3$6;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v6}, Lcom/pareekiApps/markcalculator/Course3$6;-><init>(Lcom/pareekiApps/markcalculator/Course3;Landroid/widget/TableRow;)V

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/widget/TableRow;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 752
    return-void

    .line 685
    .end local v3           #average:D
    .end local v8           #total:D
    .end local v10           #totalMarksCounter:D
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course3;->spinnerSelectCategory:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "Making Connections"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 687
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/pareekiApps/markcalculator/Course3;->totalMC:D

    move-wide/from16 v18, v0

    add-double v18, v18, v16

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/pareekiApps/markcalculator/Course3;->totalMC:D

    .line 688
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pareekiApps/markcalculator/Course3;->totalMCCount:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course3;->spinnerSelectWeight:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v20

    add-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pareekiApps/markcalculator/Course3;->totalMCCount:I

    goto/16 :goto_0

    .line 690
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course3;->spinnerSelectCategory:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "Thinking and Inquiry"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 692
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/pareekiApps/markcalculator/Course3;->totalTI:D

    move-wide/from16 v18, v0

    add-double v18, v18, v16

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/pareekiApps/markcalculator/Course3;->totalTI:D

    .line 693
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pareekiApps/markcalculator/Course3;->totalTICount:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course3;->spinnerSelectWeight:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v20

    add-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pareekiApps/markcalculator/Course3;->totalTICount:I

    goto/16 :goto_0

    .line 695
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course3;->spinnerSelectCategory:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "Communication"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 697
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/pareekiApps/markcalculator/Course3;->totalC:D

    move-wide/from16 v18, v0

    add-double v18, v18, v16

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/pareekiApps/markcalculator/Course3;->totalC:D

    .line 698
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pareekiApps/markcalculator/Course3;->totalCCount:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course3;->spinnerSelectWeight:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v20

    add-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pareekiApps/markcalculator/Course3;->totalCCount:I

    goto/16 :goto_0
.end method

.method private showPopupMenu(Landroid/view/View;Landroid/widget/TableRow;)V
    .locals 4
    .parameter "v"
    .parameter "row"

    .prologue
    .line 926
    new-instance v0, Landroid/widget/PopupMenu;

    invoke-direct {v0, p0, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 928
    .local v0, popupmenu:Landroid/widget/PopupMenu;
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const/high16 v2, 0x7f0c

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 929
    new-instance v1, Lcom/pareekiApps/markcalculator/Course3$7;

    invoke-direct {v1, p0, p2}, Lcom/pareekiApps/markcalculator/Course3$7;-><init>(Lcom/pareekiApps/markcalculator/Course3;Landroid/widget/TableRow;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 950
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 951
    return-void
.end method

.method private updateRow(I)V
    .locals 40
    .parameter "rowNum"

    .prologue
    .line 390
    sget-object v34, Lcom/pareekiApps/markcalculator/Course3;->getPrefs:Landroid/content/SharedPreferences;

    const-string v35, "Class3EntryCounter"

    const/16 v36, 0x0

    invoke-interface/range {v34 .. v36}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v34

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pareekiApps/markcalculator/Course3;->entryCounter:I

    .line 391
    sget-object v34, Lcom/pareekiApps/markcalculator/Course3;->getPrefs:Landroid/content/SharedPreferences;

    const-string v35, "Course3totalKUCount"

    const/16 v36, 0x0

    invoke-interface/range {v34 .. v36}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v34

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pareekiApps/markcalculator/Course3;->totalKUCount:I

    .line 392
    sget-object v34, Lcom/pareekiApps/markcalculator/Course3;->getPrefs:Landroid/content/SharedPreferences;

    const-string v35, "Course3totalMCCount"

    const/16 v36, 0x0

    invoke-interface/range {v34 .. v36}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v34

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pareekiApps/markcalculator/Course3;->totalMCCount:I

    .line 393
    sget-object v34, Lcom/pareekiApps/markcalculator/Course3;->getPrefs:Landroid/content/SharedPreferences;

    const-string v35, "Course3totalTICount"

    const/16 v36, 0x0

    invoke-interface/range {v34 .. v36}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v34

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pareekiApps/markcalculator/Course3;->totalTICount:I

    .line 394
    sget-object v34, Lcom/pareekiApps/markcalculator/Course3;->getPrefs:Landroid/content/SharedPreferences;

    const-string v35, "Course3totalCCount"

    const/16 v36, 0x0

    invoke-interface/range {v34 .. v36}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v34

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pareekiApps/markcalculator/Course3;->totalCCount:I

    .line 396
    const v34, 0x7f060036

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/pareekiApps/markcalculator/Course3;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TableLayout;

    .line 397
    .local v15, table:Landroid/widget/TableLayout;
    invoke-virtual {v15}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v8

    .line 398
    .local v8, entered:I
    const/16 v34, 0x2

    add-int/lit8 v35, v8, -0x2

    move/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v15, v0, v1}, Landroid/widget/TableLayout;->removeViews(II)V

    .line 400
    const-wide/16 v20, 0x0

    .line 401
    .local v20, totalKUe:D
    const-wide/16 v22, 0x0

    .line 402
    .local v22, totalMCe:D
    const-wide/16 v25, 0x0

    .line 403
    .local v25, totalTIe:D
    const-wide/16 v18, 0x0

    .line 405
    .local v18, totalCe:D
    const-wide/16 v16, 0x0

    .line 406
    .local v16, total:D
    const/16 v24, 0x0

    .line 408
    .local v24, totalMarksCounter:I
    const/4 v10, 0x1

    .local v10, i:I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pareekiApps/markcalculator/Course3;->entryCounter:I

    move/from16 v34, v0

    move/from16 v0, v34

    if-le v10, v0, :cond_0

    .line 514
    return-void

    .line 411
    :cond_0
    new-instance v12, Landroid/widget/TableRow;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 413
    .local v12, row:Landroid/widget/TableRow;
    sget-object v34, Lcom/pareekiApps/markcalculator/Course3;->getPrefs:Landroid/content/SharedPreferences;

    new-instance v35, Ljava/lang/StringBuilder;

    const-string v36, "Entry"

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v35

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "Course3"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    const-string v36, "0"

    invoke-interface/range {v34 .. v36}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 415
    .local v11, input:Ljava/lang/String;
    const-string v34, ","

    move-object/from16 v0, v34

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 416
    .local v7, data:[Ljava/lang/String;
    const/16 v34, 0x0

    aget-object v34, v7, v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v13

    .line 417
    .local v13, savedMark:D
    const-wide/high16 v34, 0x4059

    mul-double v34, v34, v13

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->round(D)J

    move-result-wide v34

    move-wide/from16 v0, v34

    long-to-double v0, v0

    move-wide/from16 v34, v0

    const-wide/high16 v36, 0x4059

    div-double v13, v34, v36

    .line 419
    const/16 v34, 0x1

    aget-object v5, v7, v34

    .line 420
    .local v5, cate:Ljava/lang/String;
    const/16 v34, 0x2

    aget-object v34, v7, v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v31

    .line 421
    .local v31, wei:I
    move/from16 v0, v31

    int-to-double v0, v0

    move-wide/from16 v34, v0

    mul-double v34, v34, v13

    add-double v16, v16, v34

    .line 422
    add-int v24, v24, v31

    .line 423
    const/16 v34, 0x3

    aget-object v9, v7, v34

    .line 426
    .local v9, entryName:Ljava/lang/String;
    new-instance v27, Landroid/widget/TextView;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 427
    .local v27, tv1:Landroid/widget/TextView;
    const/16 v34, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 428
    new-instance v28, Landroid/widget/TextView;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 429
    .local v28, tv2:Landroid/widget/TextView;
    const/16 v34, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 430
    new-instance v29, Landroid/widget/TextView;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 431
    .local v29, tv3:Landroid/widget/TextView;
    const/16 v34, 0x1

    move-object/from16 v0, v29

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 432
    new-instance v30, Landroid/widget/TextView;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 433
    .local v30, tv4:Landroid/widget/TextView;
    const/16 v34, 0x1

    move-object/from16 v0, v30

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 435
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v35, ". "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v27

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 436
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v34

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v28

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 438
    sget-object v34, Lcom/pareekiApps/markcalculator/Course3;->getPrefs:Landroid/content/SharedPreferences;

    new-instance v35, Ljava/lang/StringBuilder;

    const-string v36, "Course3"

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    const-string v36, ""

    invoke-interface/range {v34 .. v36}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 439
    .local v6, categoryWeight:Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v34

    mul-double v34, v34, v13

    const-wide/high16 v36, 0x4059

    div-double v34, v34, v36

    move/from16 v0, v31

    int-to-double v0, v0

    move-wide/from16 v36, v0

    mul-double v32, v34, v36

    .line 440
    .local v32, weightedMark:D
    const-wide/high16 v34, 0x4059

    mul-double v34, v34, v32

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->round(D)J

    move-result-wide v34

    move-wide/from16 v0, v34

    long-to-double v0, v0

    move-wide/from16 v34, v0

    const-wide/high16 v36, 0x4059

    div-double v32, v34, v36

    .line 442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course3;->spinnerSelectCategory:Ljava/lang/String;

    move-object/from16 v34, v0

    const-string v35, "Knowledge and Understanding"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_2

    const-string v34, "KU"

    move-object/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_2

    .line 444
    add-double v20, v20, v32

    .line 445
    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/pareekiApps/markcalculator/Course3;->totalKU:D

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course3;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    move-object/from16 v34, v0

    const-string v35, "Course3totalKU"

    new-instance v36, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/pareekiApps/markcalculator/Course3;->totalKU:D

    move-wide/from16 v37, v0

    invoke-static/range {v37 .. v38}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v37

    invoke-direct/range {v36 .. v37}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v34 .. v36}, Lcom/pareekiApps/markcalculator/Prefs;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course3;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    move-object/from16 v34, v0

    const-string v35, "Course3totalKUCount"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pareekiApps/markcalculator/Course3;->totalKUCount:I

    move/from16 v36, v0

    invoke-virtual/range {v34 .. v36}, Lcom/pareekiApps/markcalculator/Prefs;->setPreferenceInt(Ljava/lang/String;I)V

    .line 468
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course3;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    move-object/from16 v34, v0

    const-string v35, "Course3totalMCCount"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pareekiApps/markcalculator/Course3;->totalMCCount:I

    move/from16 v36, v0

    invoke-virtual/range {v34 .. v36}, Lcom/pareekiApps/markcalculator/Prefs;->setPreferenceInt(Ljava/lang/String;I)V

    .line 469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course3;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    move-object/from16 v34, v0

    const-string v35, "Course3totalTICount"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pareekiApps/markcalculator/Course3;->totalTICount:I

    move/from16 v36, v0

    invoke-virtual/range {v34 .. v36}, Lcom/pareekiApps/markcalculator/Prefs;->setPreferenceInt(Ljava/lang/String;I)V

    .line 470
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course3;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    move-object/from16 v34, v0

    const-string v35, "Course3totalCCount"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pareekiApps/markcalculator/Course3;->totalCCount:I

    move/from16 v36, v0

    invoke-virtual/range {v34 .. v36}, Lcom/pareekiApps/markcalculator/Prefs;->setPreferenceInt(Ljava/lang/String;I)V

    .line 473
    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course3;->finalAverage:Landroid/widget/TextView;

    move-object/from16 v34, v0

    new-instance v35, Ljava/lang/StringBuilder;

    const-string v36, "Average:"

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/pareekiApps/markcalculator/Course3;->calculateMark()D

    move-result-wide v36

    const-wide/high16 v38, 0x4059

    mul-double v36, v36, v38

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->round(D)J

    move-result-wide v36

    move-wide/from16 v0, v36

    long-to-double v0, v0

    move-wide/from16 v36, v0

    const-wide/high16 v38, 0x4059

    div-double v36, v36, v38

    invoke-virtual/range {v35 .. v37}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "%"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 475
    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v34, v0

    div-double v3, v16, v34

    .line 476
    .local v3, average:D
    const-wide/high16 v34, 0x4059

    mul-double v34, v34, v3

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->round(D)J

    move-result-wide v34

    move-wide/from16 v0, v34

    long-to-double v0, v0

    move-wide/from16 v34, v0

    const-wide/high16 v36, 0x4059

    div-double v3, v34, v36

    .line 477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course3;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    move-object/from16 v34, v0

    const-string v35, "Course3finalAverage"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v37

    invoke-direct/range {v36 .. v37}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v34 .. v36}, Lcom/pareekiApps/markcalculator/Prefs;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v34

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v30

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 482
    move-object/from16 v0, v27

    invoke-virtual {v12, v0}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 483
    move-object/from16 v0, v28

    invoke-virtual {v12, v0}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 484
    move-object/from16 v0, v29

    invoke-virtual {v12, v0}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 485
    move-object/from16 v0, v30

    invoke-virtual {v12, v0}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 487
    const/16 v34, 0x1

    move/from16 v0, v34

    invoke-virtual {v12, v0}, Landroid/widget/TableRow;->setLongClickable(Z)V

    .line 489
    new-instance v34, Landroid/widget/TableLayout$LayoutParams;

    const/16 v35, -0x2

    const/16 v36, -0x2

    invoke-direct/range {v34 .. v36}, Landroid/widget/TableLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v34

    invoke-virtual {v15, v12, v0}, Landroid/widget/TableLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 491
    new-instance v34, Lcom/pareekiApps/markcalculator/Course3$4;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v12}, Lcom/pareekiApps/markcalculator/Course3$4;-><init>(Lcom/pareekiApps/markcalculator/Course3;Landroid/widget/TableRow;)V

    move-object/from16 v0, v34

    invoke-virtual {v12, v0}, Landroid/widget/TableRow;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 408
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 448
    .end local v3           #average:D
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course3;->spinnerSelectCategory:Ljava/lang/String;

    move-object/from16 v34, v0

    const-string v35, "Making Connections"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_3

    const-string v34, "MC"

    move-object/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_3

    .line 450
    add-double v22, v22, v32

    .line 451
    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/pareekiApps/markcalculator/Course3;->totalMC:D

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course3;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    move-object/from16 v34, v0

    const-string v35, "Course3totalMC"

    new-instance v36, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/pareekiApps/markcalculator/Course3;->totalMC:D

    move-wide/from16 v37, v0

    invoke-static/range {v37 .. v38}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v37

    invoke-direct/range {v36 .. v37}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v34 .. v36}, Lcom/pareekiApps/markcalculator/Prefs;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 454
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course3;->spinnerSelectCategory:Ljava/lang/String;

    move-object/from16 v34, v0

    const-string v35, "Thinking and Inquiry"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_4

    const-string v34, "TI"

    move-object/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_4

    .line 456
    add-double v25, v25, v32

    .line 457
    move-wide/from16 v0, v25

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/pareekiApps/markcalculator/Course3;->totalTI:D

    .line 458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course3;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    move-object/from16 v34, v0

    const-string v35, "Course3totalTI"

    new-instance v36, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/pareekiApps/markcalculator/Course3;->totalTI:D

    move-wide/from16 v37, v0

    invoke-static/range {v37 .. v38}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v37

    invoke-direct/range {v36 .. v37}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v34 .. v36}, Lcom/pareekiApps/markcalculator/Prefs;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 460
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course3;->spinnerSelectCategory:Ljava/lang/String;

    move-object/from16 v34, v0

    const-string v35, "Communication"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_1

    const-string v34, "C"

    move-object/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_1

    .line 462
    add-double v18, v18, v32

    .line 463
    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/pareekiApps/markcalculator/Course3;->totalC:D

    .line 464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course3;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    move-object/from16 v34, v0

    const-string v35, "Course3totalC"

    new-instance v36, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/pareekiApps/markcalculator/Course3;->totalC:D

    move-wide/from16 v37, v0

    invoke-static/range {v37 .. v38}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v37

    invoke-direct/range {v36 .. v37}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v34 .. v36}, Lcom/pareekiApps/markcalculator/Prefs;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method


# virtual methods
.method public addANewMark()V
    .locals 15

    .prologue
    const v14, 0x1090009

    const v13, 0x1090008

    .line 544
    new-instance v11, Landroid/app/Dialog;

    invoke-direct {v11, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v11, p0, Lcom/pareekiApps/markcalculator/Course3;->builder:Landroid/app/Dialog;

    .line 545
    iget-object v11, p0, Lcom/pareekiApps/markcalculator/Course3;->builder:Landroid/app/Dialog;

    const-string v12, "Add a new mark"

    invoke-virtual {v11, v12}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 547
    invoke-virtual {p0}, Lcom/pareekiApps/markcalculator/Course3;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    const-string v12, "layout_inflater"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 548
    .local v5, inflater:Landroid/view/LayoutInflater;
    const v11, 0x7f030002

    const/4 v12, 0x0

    invoke-virtual {v5, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 549
    .local v6, layout_spinners:Landroid/view/View;
    const v11, 0x7f060013

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Spinner;

    .line 550
    .local v9, spinner1:Landroid/widget/Spinner;
    const v11, 0x7f060014

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Spinner;

    .line 551
    .local v10, spinner2:Landroid/widget/Spinner;
    const v11, 0x7f060015

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    .line 552
    .local v8, saveMark:Landroid/widget/Button;
    const v11, 0x7f060011

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    .line 553
    .local v7, numMark:Landroid/widget/EditText;
    const v11, 0x7f060012

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 554
    .local v3, denMark:Landroid/widget/EditText;
    const v11, 0x7f060010

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 557
    .local v4, et:Landroid/widget/EditText;
    iget-object v11, p0, Lcom/pareekiApps/markcalculator/Course3;->builder:Landroid/app/Dialog;

    invoke-virtual {v11, v6}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 558
    iget-object v11, p0, Lcom/pareekiApps/markcalculator/Course3;->builder:Landroid/app/Dialog;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 559
    iget-object v11, p0, Lcom/pareekiApps/markcalculator/Course3;->builder:Landroid/app/Dialog;

    invoke-virtual {v11}, Landroid/app/Dialog;->show()V

    .line 561
    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v11, p0, Lcom/pareekiApps/markcalculator/Course3;->categories:[Ljava/lang/String;

    invoke-direct {v1, p0, v13, v11}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 562
    .local v1, adapter1:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v1, v14}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 563
    new-instance v11, Lcom/pareekiApps/markcalculator/CustomOnItemSelectedListener;

    invoke-direct {v11}, Lcom/pareekiApps/markcalculator/CustomOnItemSelectedListener;-><init>()V

    invoke-virtual {v9, v11}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 564
    invoke-virtual {v9, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 567
    new-instance v2, Landroid/widget/ArrayAdapter;

    iget-object v11, p0, Lcom/pareekiApps/markcalculator/Course3;->weights:[Ljava/lang/String;

    invoke-direct {v2, p0, v13, v11}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 568
    .local v2, adapter2:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v2, v14}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 569
    new-instance v11, Lcom/pareekiApps/markcalculator/CustomOnItemSelectedListener;

    invoke-direct {v11}, Lcom/pareekiApps/markcalculator/CustomOnItemSelectedListener;-><init>()V

    invoke-virtual {v10, v11}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 570
    invoke-virtual {v10, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 572
    new-instance v11, Lcom/pareekiApps/markcalculator/Course3$5;

    invoke-direct {v11, p0, v7, v3, v4}, Lcom/pareekiApps/markcalculator/Course3$5;-><init>(Lcom/pareekiApps/markcalculator/Course3;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v8, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 641
    iget-object v11, p0, Lcom/pareekiApps/markcalculator/Course3;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v11}, Lcom/google/android/gms/ads/InterstitialAd;->isLoaded()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 643
    iget-object v11, p0, Lcom/pareekiApps/markcalculator/Course3;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v11}, Lcom/google/android/gms/ads/InterstitialAd;->show()V

    .line 645
    new-instance v11, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v11}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    .line 646
    const-string v12, "00811854ce4d1200"

    invoke-virtual {v11, v12}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v11

    .line 647
    invoke-virtual {v11}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    .line 649
    .local v0, adRequest:Lcom/google/android/gms/ads/AdRequest;
    new-instance v11, Lcom/google/android/gms/ads/InterstitialAd;

    invoke-direct {v11, p0}, Lcom/google/android/gms/ads/InterstitialAd;-><init>(Landroid/content/Context;)V

    iput-object v11, p0, Lcom/pareekiApps/markcalculator/Course3;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    .line 650
    iget-object v11, p0, Lcom/pareekiApps/markcalculator/Course3;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    const-string v12, "ca-app-pub-4733259834848580/7569349752"

    invoke-virtual {v11, v12}, Lcom/google/android/gms/ads/InterstitialAd;->setAdUnitId(Ljava/lang/String;)V

    .line 653
    iget-object v11, p0, Lcom/pareekiApps/markcalculator/Course3;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v11, v0}, Lcom/google/android/gms/ads/InterstitialAd;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 655
    .end local v0           #adRequest:Lcom/google/android/gms/ads/AdRequest;
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 36
    .parameter "savedInstanceState"

    .prologue
    .line 70
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pareekiApps/markcalculator/Course3;->context:Landroid/content/Context;

    .line 73
    invoke-virtual/range {p0 .. p0}, Lcom/pareekiApps/markcalculator/Course3;->getIntent()Landroid/content/Intent;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 74
    .local v7, b:Landroid/os/Bundle;
    const-string v30, "name"

    move-object/from16 v0, v30

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pareekiApps/markcalculator/Course3;->courseName:Ljava/lang/String;

    .line 75
    new-instance v30, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course3;->courseName:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v31, " Mark Catalog"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/pareekiApps/markcalculator/Course3;->setTitle(Ljava/lang/CharSequence;)V

    .line 76
    invoke-virtual/range {p0 .. p0}, Lcom/pareekiApps/markcalculator/Course3;->getBaseContext()Landroid/content/Context;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v30

    sput-object v30, Lcom/pareekiApps/markcalculator/Course3;->getPrefs:Landroid/content/SharedPreferences;

    .line 79
    const v30, 0x7f030005

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/pareekiApps/markcalculator/Course3;->setContentView(I)V

    .line 81
    new-instance v30, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct/range {v30 .. v30}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    .line 82
    const-string v31, "00811854ce4d1200"

    invoke-virtual/range {v30 .. v31}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v30

    .line 83
    invoke-virtual/range {v30 .. v30}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v3

    .line 85
    .local v3, adRequest:Lcom/google/android/gms/ads/AdRequest;
    const v30, 0x7f060038

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/pareekiApps/markcalculator/Course3;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/ads/AdView;

    .line 86
    .local v4, adView:Lcom/google/android/gms/ads/AdView;
    invoke-virtual {v4, v3}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 88
    new-instance v30, Lcom/google/android/gms/ads/InterstitialAd;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pareekiApps/markcalculator/Course3;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    .line 89
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course3;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    move-object/from16 v30, v0

    const-string v31, "ca-app-pub-4733259834848580/5313887353"

    invoke-virtual/range {v30 .. v31}, Lcom/google/android/gms/ads/InterstitialAd;->setAdUnitId(Ljava/lang/String;)V

    .line 91
    new-instance v30, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct/range {v30 .. v30}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    .line 92
    const-string v31, "00811854ce4d1200"

    invoke-virtual/range {v30 .. v31}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v30

    .line 93
    invoke-virtual/range {v30 .. v30}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v3

    .line 96
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course3;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Lcom/google/android/gms/ads/InterstitialAd;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 98
    const v30, 0x7f060034

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/pareekiApps/markcalculator/Course3;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 99
    .local v19, title:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course3;->courseName:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    const v30, -0xff0100

    move-object/from16 v0, v19

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 102
    const v30, 0x7f060016

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/pareekiApps/markcalculator/Course3;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/TextView;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pareekiApps/markcalculator/Course3;->finalAverage:Landroid/widget/TextView;

    .line 104
    const v30, 0x7f060033

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/pareekiApps/markcalculator/Course3;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    .line 105
    .local v8, button:Landroid/widget/Button;
    new-instance v30, Lcom/pareekiApps/markcalculator/Course3$1;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/pareekiApps/markcalculator/Course3$1;-><init>(Lcom/pareekiApps/markcalculator/Course3;)V

    move-object/from16 v0, v30

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    const-wide/16 v20, 0x0

    .line 148
    .local v20, total:D
    const/16 v22, 0x0

    .line 149
    .local v22, totalMarksCounter:I
    sget-object v30, Lcom/pareekiApps/markcalculator/Course3;->getPrefs:Landroid/content/SharedPreferences;

    const-string v31, "Class3EntryCounter"

    const/16 v32, 0x0

    invoke-interface/range {v30 .. v32}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pareekiApps/markcalculator/Course3;->entryCounter:I

    .line 151
    sget-object v30, Lcom/pareekiApps/markcalculator/Course3;->getPrefs:Landroid/content/SharedPreferences;

    const-string v31, "Course3totalKUCount"

    const/16 v32, 0x0

    invoke-interface/range {v30 .. v32}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pareekiApps/markcalculator/Course3;->totalKUCount:I

    .line 152
    sget-object v30, Lcom/pareekiApps/markcalculator/Course3;->getPrefs:Landroid/content/SharedPreferences;

    const-string v31, "Course3totalMCCount"

    const/16 v32, 0x0

    invoke-interface/range {v30 .. v32}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pareekiApps/markcalculator/Course3;->totalMCCount:I

    .line 153
    sget-object v30, Lcom/pareekiApps/markcalculator/Course3;->getPrefs:Landroid/content/SharedPreferences;

    const-string v31, "Course3totalTICount"

    const/16 v32, 0x0

    invoke-interface/range {v30 .. v32}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pareekiApps/markcalculator/Course3;->totalTICount:I

    .line 154
    sget-object v30, Lcom/pareekiApps/markcalculator/Course3;->getPrefs:Landroid/content/SharedPreferences;

    const-string v31, "Course3totalCCount"

    const/16 v32, 0x0

    invoke-interface/range {v30 .. v32}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pareekiApps/markcalculator/Course3;->totalCCount:I

    .line 156
    sget-object v30, Lcom/pareekiApps/markcalculator/Course3;->getPrefs:Landroid/content/SharedPreferences;

    const-string v31, "Course3totalKU"

    const-string v32, "0"

    invoke-interface/range {v30 .. v32}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v30

    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/pareekiApps/markcalculator/Course3;->totalKU:D

    .line 157
    sget-object v30, Lcom/pareekiApps/markcalculator/Course3;->getPrefs:Landroid/content/SharedPreferences;

    const-string v31, "Course3totalMC"

    const-string v32, "0"

    invoke-interface/range {v30 .. v32}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v30

    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/pareekiApps/markcalculator/Course3;->totalMC:D

    .line 158
    sget-object v30, Lcom/pareekiApps/markcalculator/Course3;->getPrefs:Landroid/content/SharedPreferences;

    const-string v31, "Course3totalTI"

    const-string v32, "0"

    invoke-interface/range {v30 .. v32}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v30

    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/pareekiApps/markcalculator/Course3;->totalTI:D

    .line 159
    sget-object v30, Lcom/pareekiApps/markcalculator/Course3;->getPrefs:Landroid/content/SharedPreferences;

    const-string v31, "Course3totalC"

    const-string v32, "0"

    invoke-interface/range {v30 .. v32}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v30

    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/pareekiApps/markcalculator/Course3;->totalC:D

    .line 161
    invoke-direct/range {p0 .. p0}, Lcom/pareekiApps/markcalculator/Course3;->putOveralMarks()V

    .line 163
    const/4 v13, 0x1

    .local v13, i:I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pareekiApps/markcalculator/Course3;->entryCounter:I

    move/from16 v30, v0

    move/from16 v0, v30

    if-le v13, v0, :cond_0

    .line 237
    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v30, v0

    div-double v5, v20, v30

    .line 238
    .local v5, average:D
    const-wide/high16 v30, 0x4059

    mul-double v30, v30, v5

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->round(D)J

    move-result-wide v30

    move-wide/from16 v0, v30

    long-to-double v0, v0

    move-wide/from16 v30, v0

    const-wide/high16 v32, 0x4059

    div-double v5, v30, v32

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course3;->finalAverage:Landroid/widget/TextView;

    move-object/from16 v30, v0

    new-instance v31, Ljava/lang/StringBuilder;

    const-string v32, "Average:"

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/pareekiApps/markcalculator/Course3;->calculateMark()D

    move-result-wide v32

    const-wide/high16 v34, 0x4059

    mul-double v32, v32, v34

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->round(D)J

    move-result-wide v32

    move-wide/from16 v0, v32

    long-to-double v0, v0

    move-wide/from16 v32, v0

    const-wide/high16 v34, 0x4059

    div-double v32, v32, v34

    invoke-virtual/range {v31 .. v33}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "%"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course3;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    move-object/from16 v30, v0

    const-string v31, "Course3finalAverage"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v30 .. v32}, Lcom/pareekiApps/markcalculator/Prefs;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    return-void

    .line 166
    .end local v5           #average:D
    :cond_0
    const v30, 0x7f060036

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/pareekiApps/markcalculator/Course3;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TableLayout;

    .line 169
    .local v18, table:Landroid/widget/TableLayout;
    new-instance v15, Landroid/widget/TableRow;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 171
    .local v15, row:Landroid/widget/TableRow;
    sget-object v30, Lcom/pareekiApps/markcalculator/Course3;->getPrefs:Landroid/content/SharedPreferences;

    new-instance v31, Ljava/lang/StringBuilder;

    const-string v32, "Entry"

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "Course3"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    const-string v32, "0"

    invoke-interface/range {v30 .. v32}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 173
    .local v14, input:Ljava/lang/String;
    const-string v30, ","

    move-object/from16 v0, v30

    invoke-virtual {v14, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 174
    .local v11, data:[Ljava/lang/String;
    const/16 v30, 0x0

    aget-object v30, v11, v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v16

    .line 175
    .local v16, savedMark:D
    const-wide/high16 v30, 0x4059

    mul-double v30, v30, v16

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->round(D)J

    move-result-wide v30

    move-wide/from16 v0, v30

    long-to-double v0, v0

    move-wide/from16 v30, v0

    const-wide/high16 v32, 0x4059

    div-double v16, v30, v32

    .line 177
    const/16 v30, 0x1

    aget-object v9, v11, v30

    .line 178
    .local v9, cate:Ljava/lang/String;
    const/16 v30, 0x2

    aget-object v30, v11, v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    .line 179
    .local v27, wei:I
    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v30, v0

    mul-double v30, v30, v16

    add-double v20, v20, v30

    .line 180
    add-int v22, v22, v27

    .line 181
    const/16 v30, 0x3

    aget-object v12, v11, v30

    .line 184
    .local v12, entryName:Ljava/lang/String;
    new-instance v23, Landroid/widget/TextView;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 185
    .local v23, tv1:Landroid/widget/TextView;
    const/16 v30, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 186
    new-instance v24, Landroid/widget/TextView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 187
    .local v24, tv2:Landroid/widget/TextView;
    const/16 v30, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 188
    new-instance v25, Landroid/widget/TextView;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 189
    .local v25, tv3:Landroid/widget/TextView;
    const/16 v30, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 190
    new-instance v26, Landroid/widget/TextView;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 191
    .local v26, tv4:Landroid/widget/TextView;
    const/16 v30, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 193
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v31

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v31, ". "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v24

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    sget-object v30, Lcom/pareekiApps/markcalculator/Course3;->getPrefs:Landroid/content/SharedPreferences;

    new-instance v31, Ljava/lang/StringBuilder;

    const-string v32, "Course3"

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    const-string v32, ""

    invoke-interface/range {v30 .. v32}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 197
    .local v10, categoryWeight:Ljava/lang/String;
    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v30

    mul-double v30, v30, v16

    const-wide/high16 v32, 0x4059

    div-double v30, v30, v32

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v32, v0

    mul-double v28, v30, v32

    .line 198
    .local v28, weightedMark:D
    const-wide/high16 v30, 0x4059

    mul-double v30, v30, v28

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->round(D)J

    move-result-wide v30

    move-wide/from16 v0, v30

    long-to-double v0, v0

    move-wide/from16 v30, v0

    const-wide/high16 v32, 0x4059

    div-double v28, v30, v32

    .line 199
    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v30, v0

    div-double v5, v20, v30

    .line 200
    .restart local v5       #average:D
    const-wide/high16 v30, 0x4059

    mul-double v30, v30, v5

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->round(D)J

    move-result-wide v30

    move-wide/from16 v0, v30

    long-to-double v0, v0

    move-wide/from16 v30, v0

    const-wide/high16 v32, 0x4059

    div-double v5, v30, v32

    .line 201
    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v26

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 205
    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 206
    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 207
    move-object/from16 v0, v26

    invoke-virtual {v15, v0}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 209
    const/16 v30, 0x1

    move/from16 v0, v30

    invoke-virtual {v15, v0}, Landroid/widget/TableRow;->setLongClickable(Z)V

    .line 211
    new-instance v30, Landroid/widget/TableLayout$LayoutParams;

    const/16 v31, -0x2

    const/16 v32, -0x2

    invoke-direct/range {v30 .. v32}, Landroid/widget/TableLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v18

    move-object/from16 v1, v30

    invoke-virtual {v0, v15, v1}, Landroid/widget/TableLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 213
    new-instance v30, Lcom/pareekiApps/markcalculator/Course3$2;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v15}, Lcom/pareekiApps/markcalculator/Course3$2;-><init>(Lcom/pareekiApps/markcalculator/Course3;Landroid/widget/TableRow;)V

    move-object/from16 v0, v30

    invoke-virtual {v15, v0}, Landroid/widget/TableRow;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 163
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 890
    invoke-virtual {p0}, Lcom/pareekiApps/markcalculator/Course3;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0c0002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 891
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter "item"

    .prologue
    const/4 v5, 0x0

    .line 895
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    .line 896
    .local v2, itemId:I
    const v3, 0x7f06005d

    if-ne v2, v3, :cond_0

    .line 899
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 901
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const-string v3, "Please note that this is only a very close estimate that takes into consideration the weighting of the categories and the type of assessment. The average listed is accurate and should be accurate to 2 percent because of rounding errors. The program used my teachers, MarkBook, is very accurate and this is designed to immitate that"

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 902
    const-string v3, "Disclamer"

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 904
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 905
    .local v0, ad:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 907
    .end local v0           #ad:Landroid/app/AlertDialog;
    .end local v1           #builder:Landroid/app/AlertDialog$Builder;
    :cond_0
    const v3, 0x7f06005e

    if-ne v2, v3, :cond_2

    .line 909
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 911
    .restart local v1       #builder:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f070027

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 912
    const-string v3, "More Instructions"

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 914
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 915
    .restart local v0       #ad:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 922
    .end local v0           #ad:Landroid/app/AlertDialog;
    .end local v1           #builder:Landroid/app/AlertDialog$Builder;
    :cond_1
    :goto_0
    return v5

    .line 917
    :cond_2
    const v3, 0x7f06005f

    if-ne v2, v3, :cond_1

    .line 920
    invoke-virtual {p0}, Lcom/pareekiApps/markcalculator/Course3;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "The feature is currently unavailable"

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
