.class public Lcom/pareekiApps/markcalculator/Course1;
.super Landroid/app/Activity;
.source "Course1.java"


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

    iput-object v0, p0, Lcom/pareekiApps/markcalculator/Course1;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

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

    iput-object v0, p0, Lcom/pareekiApps/markcalculator/Course1;->categories:[Ljava/lang/String;

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

    iput-object v0, p0, Lcom/pareekiApps/markcalculator/Course1;->cats:[Ljava/lang/String;

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

    iput-object v0, p0, Lcom/pareekiApps/markcalculator/Course1;->weights:[Ljava/lang/String;

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/pareekiApps/markcalculator/Course1;->spinnerSelectCategory:Ljava/lang/String;

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/pareekiApps/markcalculator/Course1;->spinnerSelectWeight:Ljava/lang/String;

    .line 47
    iput v3, p0, Lcom/pareekiApps/markcalculator/Course1;->entryCounter:I

    .line 48
    const-wide/high16 v0, -0x4010

    iput-wide v0, p0, Lcom/pareekiApps/markcalculator/Course1;->answer:D

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/pareekiApps/markcalculator/Course1;->cat:Ljava/lang/String;

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcom/pareekiApps/markcalculator/Course1;->name:Ljava/lang/String;

    .line 34
    return-void
.end method

.method static synthetic access$0(Lcom/pareekiApps/markcalculator/Course1;Landroid/view/View;Landroid/widget/TableRow;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 922
    invoke-direct {p0, p1, p2}, Lcom/pareekiApps/markcalculator/Course1;->showPopupMenu(Landroid/view/View;Landroid/widget/TableRow;)V

    return-void
.end method

.method static synthetic access$1(Lcom/pareekiApps/markcalculator/Course1;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 241
    invoke-direct {p0, p1, p2}, Lcom/pareekiApps/markcalculator/Course1;->editMark(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$2(Lcom/pareekiApps/markcalculator/Course1;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 387
    invoke-direct {p0, p1}, Lcom/pareekiApps/markcalculator/Course1;->updateRow(I)V

    return-void
.end method

.method static synthetic access$3(Lcom/pareekiApps/markcalculator/Course1;)V
    .locals 0
    .parameter

    .prologue
    .line 514
    invoke-direct {p0}, Lcom/pareekiApps/markcalculator/Course1;->putOveralMarks()V

    return-void
.end method

.method static synthetic access$4(Lcom/pareekiApps/markcalculator/Course1;)V
    .locals 0
    .parameter

    .prologue
    .line 655
    invoke-direct {p0}, Lcom/pareekiApps/markcalculator/Course1;->savetheNewMark()V

    return-void
.end method

.method static synthetic access$5(Lcom/pareekiApps/markcalculator/Course1;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 950
    invoke-direct {p0, p1, p2}, Lcom/pareekiApps/markcalculator/Course1;->deleteMark(Ljava/lang/String;I)V

    return-void
.end method

.method private calculateMark()D
    .locals 25

    .prologue
    .line 754
    const/4 v12, 0x0

    .line 755
    .local v12, hasKU:Z
    const/4 v13, 0x0

    .line 756
    .local v13, hasMC:Z
    const/4 v14, 0x0

    .line 757
    .local v14, hasTI:Z
    const/4 v11, 0x0

    .line 759
    .local v11, hasC:Z
    const-wide/16 v4, 0x0

    .line 760
    .local v4, KUMark:D
    const-wide/16 v6, 0x0

    .line 761
    .local v6, MCMark:D
    const-wide/16 v8, 0x0

    .line 762
    .local v8, TIMark:D
    const-wide/16 v2, 0x0

    .line 764
    .local v2, CMark:D
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pareekiApps/markcalculator/Course1;->totalKUCount:I

    move/from16 v19, v0

    if-lez v19, :cond_0

    .line 766
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/pareekiApps/markcalculator/Course1;->totalKU:D

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pareekiApps/markcalculator/Course1;->totalKUCount:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v21, v0

    div-double v4, v19, v21

    const/4 v12, 0x1

    .line 768
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pareekiApps/markcalculator/Course1;->totalMCCount:I

    move/from16 v19, v0

    if-lez v19, :cond_1

    .line 770
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/pareekiApps/markcalculator/Course1;->totalMC:D

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pareekiApps/markcalculator/Course1;->totalMCCount:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v21, v0

    div-double v6, v19, v21

    const/4 v13, 0x1

    .line 772
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pareekiApps/markcalculator/Course1;->totalTICount:I

    move/from16 v19, v0

    if-lez v19, :cond_2

    .line 774
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/pareekiApps/markcalculator/Course1;->totalTI:D

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pareekiApps/markcalculator/Course1;->totalTICount:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v21, v0

    div-double v8, v19, v21

    const/4 v14, 0x1

    .line 776
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pareekiApps/markcalculator/Course1;->totalCCount:I

    move/from16 v19, v0

    if-lez v19, :cond_3

    .line 778
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/pareekiApps/markcalculator/Course1;->totalC:D

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pareekiApps/markcalculator/Course1;->totalCCount:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v21, v0

    div-double v2, v19, v21

    const/4 v11, 0x1

    .line 781
    :cond_3
    const/4 v10, 0x0

    .line 782
    .local v10, divider:I
    if-eqz v12, :cond_4

    .line 784
    add-int/lit8 v10, v10, 0x1

    .line 786
    :cond_4
    if-eqz v13, :cond_5

    .line 788
    add-int/lit8 v10, v10, 0x1

    .line 790
    :cond_5
    if-eqz v14, :cond_6

    .line 792
    add-int/lit8 v10, v10, 0x1

    .line 794
    :cond_6
    if-eqz v11, :cond_7

    .line 796
    add-int/lit8 v10, v10, 0x1

    .line 799
    :cond_7
    add-double v19, v4, v6

    add-double v19, v19, v8

    add-double v15, v19, v2

    .line 800
    .local v15, returning:D
    const/16 v19, 0x4

    move/from16 v0, v19

    if-ne v10, v0, :cond_8

    .line 883
    .end local v15           #returning:D
    :goto_0
    return-wide v15

    .line 804
    .restart local v15       #returning:D
    :cond_8
    const/16 v19, 0x3

    move/from16 v0, v19

    if-ne v10, v0, :cond_c

    .line 806
    if-nez v12, :cond_9

    .line 808
    sget-object v19, Lcom/pareekiApps/markcalculator/Course1;->getPrefs:Landroid/content/SharedPreferences;

    const-string v20, "Course1MC"

    const-string v21, ""

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v19

    const-wide/high16 v21, 0x4059

    div-double v19, v19, v21

    sget-object v21, Lcom/pareekiApps/markcalculator/Course1;->getPrefs:Landroid/content/SharedPreferences;

    const-string v22, "Course1TI"

    const-string v23, ""

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v21

    const-wide/high16 v23, 0x4059

    div-double v21, v21, v23

    add-double v19, v19, v21

    sget-object v21, Lcom/pareekiApps/markcalculator/Course1;->getPrefs:Landroid/content/SharedPreferences;

    const-string v22, "Course1C"

    const-string v23, ""

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v21

    const-wide/high16 v23, 0x4059

    div-double v21, v21, v23

    add-double v17, v19, v21

    .line 809
    .local v17, weightSum:D
    div-double v15, v15, v17

    goto :goto_0

    .line 811
    .end local v17           #weightSum:D
    :cond_9
    if-nez v13, :cond_a

    .line 813
    sget-object v19, Lcom/pareekiApps/markcalculator/Course1;->getPrefs:Landroid/content/SharedPreferences;

    const-string v20, "Course1KU"

    const-string v21, ""

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v19

    const-wide/high16 v21, 0x4059

    div-double v19, v19, v21

    sget-object v21, Lcom/pareekiApps/markcalculator/Course1;->getPrefs:Landroid/content/SharedPreferences;

    const-string v22, "Course1TI"

    const-string v23, ""

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v21

    const-wide/high16 v23, 0x4059

    div-double v21, v21, v23

    add-double v19, v19, v21

    sget-object v21, Lcom/pareekiApps/markcalculator/Course1;->getPrefs:Landroid/content/SharedPreferences;

    const-string v22, "Course1C"

    const-string v23, ""

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v21

    const-wide/high16 v23, 0x4059

    div-double v21, v21, v23

    add-double v17, v19, v21

    .line 814
    .restart local v17       #weightSum:D
    div-double v15, v15, v17

    goto/16 :goto_0

    .line 816
    .end local v17           #weightSum:D
    :cond_a
    if-nez v14, :cond_b

    .line 818
    sget-object v19, Lcom/pareekiApps/markcalculator/Course1;->getPrefs:Landroid/content/SharedPreferences;

    const-string v20, "Course1MC"

    const-string v21, ""

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v19

    const-wide/high16 v21, 0x4059

    div-double v19, v19, v21

    sget-object v21, Lcom/pareekiApps/markcalculator/Course1;->getPrefs:Landroid/content/SharedPreferences;

    const-string v22, "Course1KU"

    const-string v23, ""

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v21

    const-wide/high16 v23, 0x4059

    div-double v21, v21, v23

    add-double v19, v19, v21

    sget-object v21, Lcom/pareekiApps/markcalculator/Course1;->getPrefs:Landroid/content/SharedPreferences;

    const-string v22, "Course1C"

    const-string v23, ""

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v21

    const-wide/high16 v23, 0x4059

    div-double v21, v21, v23

    add-double v17, v19, v21

    .line 819
    .restart local v17       #weightSum:D
    div-double v15, v15, v17

    goto/16 :goto_0

    .line 821
    .end local v17           #weightSum:D
    :cond_b
    if-nez v11, :cond_16

    .line 823
    sget-object v19, Lcom/pareekiApps/markcalculator/Course1;->getPrefs:Landroid/content/SharedPreferences;

    const-string v20, "Course1MC"

    const-string v21, ""

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v19

    const-wide/high16 v21, 0x4059

    div-double v19, v19, v21

    sget-object v21, Lcom/pareekiApps/markcalculator/Course1;->getPrefs:Landroid/content/SharedPreferences;

    const-string v22, "Course1TI"

    const-string v23, ""

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v21

    const-wide/high16 v23, 0x4059

    div-double v21, v21, v23

    add-double v19, v19, v21

    sget-object v21, Lcom/pareekiApps/markcalculator/Course1;->getPrefs:Landroid/content/SharedPreferences;

    const-string v22, "Course1KU"

    const-string v23, ""

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v21

    const-wide/high16 v23, 0x4059

    div-double v21, v21, v23

    add-double v17, v19, v21

    .line 824
    .restart local v17       #weightSum:D
    div-double v15, v15, v17

    goto/16 :goto_0

    .line 827
    .end local v17           #weightSum:D
    :cond_c
    const/16 v19, 0x2

    move/from16 v0, v19

    if-ne v10, v0, :cond_12

    .line 829
    if-nez v12, :cond_d

    if-nez v13, :cond_d

    .line 831
    sget-object v19, Lcom/pareekiApps/markcalculator/Course1;->getPrefs:Landroid/content/SharedPreferences;

    const-string v20, "Course1TI"

    const-string v21, ""

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v19

    const-wide/high16 v21, 0x4059

    div-double v19, v19, v21

    sget-object v21, Lcom/pareekiApps/markcalculator/Course1;->getPrefs:Landroid/content/SharedPreferences;

    const-string v22, "Course1C"

    const-string v23, ""

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v21

    const-wide/high16 v23, 0x4059

    div-double v21, v21, v23

    add-double v17, v19, v21

    .line 832
    .restart local v17       #weightSum:D
    div-double v15, v15, v17

    goto/16 :goto_0

    .line 834
    .end local v17           #weightSum:D
    :cond_d
    if-nez v12, :cond_e

    if-nez v14, :cond_e

    .line 836
    sget-object v19, Lcom/pareekiApps/markcalculator/Course1;->getPrefs:Landroid/content/SharedPreferences;

    const-string v20, "Course1MC"

    const-string v21, ""

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v19

    const-wide/high16 v21, 0x4059

    div-double v19, v19, v21

    sget-object v21, Lcom/pareekiApps/markcalculator/Course1;->getPrefs:Landroid/content/SharedPreferences;

    const-string v22, "Course1C"

    const-string v23, ""

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v21

    const-wide/high16 v23, 0x4059

    div-double v21, v21, v23

    add-double v17, v19, v21

    .line 837
    .restart local v17       #weightSum:D
    div-double v15, v15, v17

    goto/16 :goto_0

    .line 839
    .end local v17           #weightSum:D
    :cond_e
    if-nez v12, :cond_f

    if-nez v11, :cond_f

    .line 841
    sget-object v19, Lcom/pareekiApps/markcalculator/Course1;->getPrefs:Landroid/content/SharedPreferences;

    const-string v20, "Course1TI"

    const-string v21, ""

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v19

    const-wide/high16 v21, 0x4059

    div-double v19, v19, v21

    sget-object v21, Lcom/pareekiApps/markcalculator/Course1;->getPrefs:Landroid/content/SharedPreferences;

    const-string v22, "Course1MC"

    const-string v23, ""

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v21

    const-wide/high16 v23, 0x4059

    div-double v21, v21, v23

    add-double v17, v19, v21

    .line 842
    .restart local v17       #weightSum:D
    div-double v15, v15, v17

    goto/16 :goto_0

    .line 844
    .end local v17           #weightSum:D
    :cond_f
    if-nez v13, :cond_10

    if-nez v14, :cond_10

    .line 846
    sget-object v19, Lcom/pareekiApps/markcalculator/Course1;->getPrefs:Landroid/content/SharedPreferences;

    const-string v20, "Course1KU"

    const-string v21, ""

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v19

    const-wide/high16 v21, 0x4059

    div-double v19, v19, v21

    sget-object v21, Lcom/pareekiApps/markcalculator/Course1;->getPrefs:Landroid/content/SharedPreferences;

    const-string v22, "Course1C"

    const-string v23, ""

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v21

    const-wide/high16 v23, 0x4059

    div-double v21, v21, v23

    add-double v17, v19, v21

    .line 847
    .restart local v17       #weightSum:D
    div-double v15, v15, v17

    goto/16 :goto_0

    .line 849
    .end local v17           #weightSum:D
    :cond_10
    if-nez v13, :cond_11

    if-nez v11, :cond_11

    .line 851
    sget-object v19, Lcom/pareekiApps/markcalculator/Course1;->getPrefs:Landroid/content/SharedPreferences;

    const-string v20, "Course1TI"

    const-string v21, ""

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v19

    const-wide/high16 v21, 0x4059

    div-double v19, v19, v21

    sget-object v21, Lcom/pareekiApps/markcalculator/Course1;->getPrefs:Landroid/content/SharedPreferences;

    const-string v22, "Course1KU"

    const-string v23, ""

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v21

    const-wide/high16 v23, 0x4059

    div-double v21, v21, v23

    add-double v17, v19, v21

    .line 852
    .restart local v17       #weightSum:D
    div-double v15, v15, v17

    goto/16 :goto_0

    .line 854
    .end local v17           #weightSum:D
    :cond_11
    if-nez v14, :cond_16

    if-nez v11, :cond_16

    .line 856
    sget-object v19, Lcom/pareekiApps/markcalculator/Course1;->getPrefs:Landroid/content/SharedPreferences;

    const-string v20, "Course1KU"

    const-string v21, ""

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v19

    const-wide/high16 v21, 0x4059

    div-double v19, v19, v21

    sget-object v21, Lcom/pareekiApps/markcalculator/Course1;->getPrefs:Landroid/content/SharedPreferences;

    const-string v22, "Course1MC"

    const-string v23, ""

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v21

    const-wide/high16 v23, 0x4059

    div-double v21, v21, v23

    add-double v17, v19, v21

    .line 857
    .restart local v17       #weightSum:D
    div-double v15, v15, v17

    goto/16 :goto_0

    .line 860
    .end local v17           #weightSum:D
    :cond_12
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v10, v0, :cond_16

    .line 862
    if-eqz v12, :cond_13

    .line 864
    sget-object v19, Lcom/pareekiApps/markcalculator/Course1;->getPrefs:Landroid/content/SharedPreferences;

    const-string v20, "Course1KU"

    const-string v21, ""

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v19

    const-wide/high16 v21, 0x4059

    div-double v17, v19, v21

    .line 865
    .restart local v17       #weightSum:D
    div-double v15, v15, v17

    goto/16 :goto_0

    .line 867
    .end local v17           #weightSum:D
    :cond_13
    if-eqz v13, :cond_14

    .line 869
    sget-object v19, Lcom/pareekiApps/markcalculator/Course1;->getPrefs:Landroid/content/SharedPreferences;

    const-string v20, "Course1MC"

    const-string v21, ""

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v19

    const-wide/high16 v21, 0x4059

    div-double v17, v19, v21

    .line 870
    .restart local v17       #weightSum:D
    div-double v15, v15, v17

    goto/16 :goto_0

    .line 872
    .end local v17           #weightSum:D
    :cond_14
    if-eqz v14, :cond_15

    .line 874
    sget-object v19, Lcom/pareekiApps/markcalculator/Course1;->getPrefs:Landroid/content/SharedPreferences;

    const-string v20, "Course1TI"

    const-string v21, ""

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v19

    const-wide/high16 v21, 0x4059

    div-double v17, v19, v21

    .line 875
    .restart local v17       #weightSum:D
    div-double v15, v15, v17

    goto/16 :goto_0

    .line 877
    .end local v17           #weightSum:D
    :cond_15
    if-eqz v11, :cond_16

    .line 879
    sget-object v19, Lcom/pareekiApps/markcalculator/Course1;->getPrefs:Landroid/content/SharedPreferences;

    const-string v20, "Course1C"

    const-string v21, ""

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v19

    const-wide/high16 v21, 0x4059

    div-double v17, v19, v21

    .line 880
    .restart local v17       #weightSum:D
    div-double v15, v15, v17

    goto/16 :goto_0

    .line 883
    .end local v17           #weightSum:D
    :cond_16
    const-wide/16 v15, 0x0

    goto/16 :goto_0
.end method

.method private deleteAll()V
    .locals 18

    .prologue
    .line 1038
    const/4 v1, 0x0

    .local v1, all:I
    :goto_0
    move-object/from16 v0, p0

    iget v12, v0, Lcom/pareekiApps/markcalculator/Course1;->entryCounter:I

    if-lt v1, v12, :cond_0

    .line 1111
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pareekiApps/markcalculator/Course1;->finalAverage:Landroid/widget/TextView;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Average:"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/pareekiApps/markcalculator/Course1;->calculateMark()D

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

    .line 1112
    invoke-direct/range {p0 .. p0}, Lcom/pareekiApps/markcalculator/Course1;->putOveralMarks()V

    .line 1113
    return-void

    .line 1045
    :cond_0
    sget-object v12, Lcom/pareekiApps/markcalculator/Course1;->getPrefs:Landroid/content/SharedPreferences;

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

    .line 1046
    .local v2, allData:Ljava/lang/String;
    const-string v12, ","

    invoke-virtual {v2, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1048
    .local v5, data:[Ljava/lang/String;
    const/4 v12, 0x0

    aget-object v12, v5, v12

    invoke-static {v12}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    .line 1049
    .local v7, mark:D
    const/4 v11, 0x0

    .line 1050
    .local v11, weight:I
    const-string v3, ""

    .line 1052
    .local v3, catagory:Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    const/4 v12, 0x6

    if-lt v6, v12, :cond_2

    .line 1060
    :goto_2
    const/4 v6, 0x0

    :goto_3
    const/4 v12, 0x5

    if-lt v6, v12, :cond_4

    .line 1068
    :goto_4
    sget-object v12, Lcom/pareekiApps/markcalculator/Course1;->getPrefs:Landroid/content/SharedPreferences;

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

    .line 1069
    .local v4, categoryWeight:Ljava/lang/String;
    int-to-double v12, v11

    mul-double/2addr v12, v7

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    const-wide/high16 v16, 0x4059

    div-double v14, v14, v16

    mul-double v9, v12, v14

    .line 1070
    .local v9, removing:D
    const-wide/high16 v12, 0x4059

    mul-double/2addr v12, v9

    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    move-result-wide v12

    long-to-double v12, v12

    const-wide/high16 v14, 0x4059

    div-double v9, v12, v14

    .line 1073
    const-string v12, "KU"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 1075
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/pareekiApps/markcalculator/Course1;->totalKU:D

    sub-double/2addr v12, v9

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/pareekiApps/markcalculator/Course1;->totalKU:D

    .line 1076
    move-object/from16 v0, p0

    iget v12, v0, Lcom/pareekiApps/markcalculator/Course1;->totalKUCount:I

    sub-int/2addr v12, v11

    move-object/from16 v0, p0

    iput v12, v0, Lcom/pareekiApps/markcalculator/Course1;->totalKUCount:I

    .line 1078
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pareekiApps/markcalculator/Course1;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    const-string v13, "Course1totalKU"

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/pareekiApps/markcalculator/Course1;->totalKU:D

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lcom/pareekiApps/markcalculator/Prefs;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 1079
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pareekiApps/markcalculator/Course1;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    const-string v13, "Course1totalKUCount"

    move-object/from16 v0, p0

    iget v14, v0, Lcom/pareekiApps/markcalculator/Course1;->totalKUCount:I

    invoke-virtual {v12, v13, v14}, Lcom/pareekiApps/markcalculator/Prefs;->setPreferenceInt(Ljava/lang/String;I)V

    .line 1106
    :cond_1
    :goto_5
    move-object/from16 v0, p0

    iget v12, v0, Lcom/pareekiApps/markcalculator/Course1;->entryCounter:I

    add-int/lit8 v12, v12, -0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/pareekiApps/markcalculator/Course1;->entryCounter:I

    .line 1107
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pareekiApps/markcalculator/Course1;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    const-string v13, "Class1EntryCounter"

    move-object/from16 v0, p0

    iget v14, v0, Lcom/pareekiApps/markcalculator/Course1;->entryCounter:I

    invoke-virtual {v12, v13, v14}, Lcom/pareekiApps/markcalculator/Prefs;->setPreferenceInt(Ljava/lang/String;I)V

    .line 1108
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/pareekiApps/markcalculator/Course1;->rearrangeData(I)V

    .line 1109
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/pareekiApps/markcalculator/Course1;->updateRow(I)V

    .line 1038
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1054
    .end local v4           #categoryWeight:Ljava/lang/String;
    .end local v9           #removing:D
    :cond_2
    const/4 v12, 0x2

    aget-object v12, v5, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pareekiApps/markcalculator/Course1;->weights:[Ljava/lang/String;

    aget-object v13, v13, v6

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 1056
    const/4 v12, 0x2

    aget-object v12, v5, v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 1057
    goto/16 :goto_2

    .line 1052
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 1062
    :cond_4
    const/4 v12, 0x1

    aget-object v12, v5, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pareekiApps/markcalculator/Course1;->cats:[Ljava/lang/String;

    aget-object v13, v13, v6

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 1064
    const/4 v12, 0x1

    aget-object v3, v5, v12

    .line 1065
    goto/16 :goto_4

    .line 1060
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    .line 1081
    .restart local v4       #categoryWeight:Ljava/lang/String;
    .restart local v9       #removing:D
    :cond_6
    const-string v12, "MC"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 1083
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/pareekiApps/markcalculator/Course1;->totalMC:D

    sub-double/2addr v12, v9

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/pareekiApps/markcalculator/Course1;->totalMC:D

    .line 1084
    move-object/from16 v0, p0

    iget v12, v0, Lcom/pareekiApps/markcalculator/Course1;->totalMCCount:I

    sub-int/2addr v12, v11

    move-object/from16 v0, p0

    iput v12, v0, Lcom/pareekiApps/markcalculator/Course1;->totalMCCount:I

    .line 1086
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pareekiApps/markcalculator/Course1;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    const-string v13, "Course1totalMC"

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/pareekiApps/markcalculator/Course1;->totalMC:D

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lcom/pareekiApps/markcalculator/Prefs;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pareekiApps/markcalculator/Course1;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    const-string v13, "Course1totalMCCount"

    move-object/from16 v0, p0

    iget v14, v0, Lcom/pareekiApps/markcalculator/Course1;->totalMCCount:I

    invoke-virtual {v12, v13, v14}, Lcom/pareekiApps/markcalculator/Prefs;->setPreferenceInt(Ljava/lang/String;I)V

    goto/16 :goto_5

    .line 1089
    :cond_7
    const-string v12, "TI"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 1091
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/pareekiApps/markcalculator/Course1;->totalTI:D

    sub-double/2addr v12, v9

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/pareekiApps/markcalculator/Course1;->totalTI:D

    .line 1092
    move-object/from16 v0, p0

    iget v12, v0, Lcom/pareekiApps/markcalculator/Course1;->totalTICount:I

    sub-int/2addr v12, v11

    move-object/from16 v0, p0

    iput v12, v0, Lcom/pareekiApps/markcalculator/Course1;->totalTICount:I

    .line 1094
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pareekiApps/markcalculator/Course1;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    const-string v13, "Course1totalTI"

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/pareekiApps/markcalculator/Course1;->totalTI:D

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lcom/pareekiApps/markcalculator/Prefs;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 1095
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pareekiApps/markcalculator/Course1;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    const-string v13, "Course1totalTICount"

    move-object/from16 v0, p0

    iget v14, v0, Lcom/pareekiApps/markcalculator/Course1;->totalTICount:I

    invoke-virtual {v12, v13, v14}, Lcom/pareekiApps/markcalculator/Prefs;->setPreferenceInt(Ljava/lang/String;I)V

    goto/16 :goto_5

    .line 1097
    :cond_8
    const-string v12, "C"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 1099
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/pareekiApps/markcalculator/Course1;->totalC:D

    sub-double/2addr v12, v9

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/pareekiApps/markcalculator/Course1;->totalC:D

    .line 1100
    move-object/from16 v0, p0

    iget v12, v0, Lcom/pareekiApps/markcalculator/Course1;->totalCCount:I

    sub-int/2addr v12, v11

    move-object/from16 v0, p0

    iput v12, v0, Lcom/pareekiApps/markcalculator/Course1;->totalCCount:I

    .line 1102
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pareekiApps/markcalculator/Course1;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    const-string v13, "Course1totalC"

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/pareekiApps/markcalculator/Course1;->totalC:D

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lcom/pareekiApps/markcalculator/Prefs;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 1103
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pareekiApps/markcalculator/Course1;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    const-string v13, "Course1totalCCount"

    move-object/from16 v0, p0

    iget v14, v0, Lcom/pareekiApps/markcalculator/Course1;->totalCCount:I

    invoke-virtual {v12, v13, v14}, Lcom/pareekiApps/markcalculator/Prefs;->setPreferenceInt(Ljava/lang/String;I)V

    goto/16 :goto_5
.end method

.method private deleteMark(Ljava/lang/String;I)V
    .locals 18
    .parameter "col1Name"
    .parameter "rowNum"

    .prologue
    .line 957
    sget-object v12, Lcom/pareekiApps/markcalculator/Course1;->getPrefs:Landroid/content/SharedPreferences;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Entry"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "Course1"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, ",,"

    invoke-interface {v12, v13, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 958
    .local v2, allData:Ljava/lang/String;
    const-string v12, ","

    invoke-virtual {v2, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 960
    .local v5, data:[Ljava/lang/String;
    const/4 v12, 0x0

    aget-object v12, v5, v12

    invoke-static {v12}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    .line 961
    .local v7, mark:D
    const/4 v11, 0x0

    .line 962
    .local v11, weight:I
    const-string v3, ""

    .line 964
    .local v3, catagory:Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    const/4 v12, 0x6

    if-lt v6, v12, :cond_1

    .line 972
    :goto_1
    const/4 v6, 0x0

    :goto_2
    const/4 v12, 0x5

    if-lt v6, v12, :cond_3

    .line 980
    :goto_3
    sget-object v12, Lcom/pareekiApps/markcalculator/Course1;->getPrefs:Landroid/content/SharedPreferences;

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

    .line 981
    .local v4, categoryWeight:Ljava/lang/String;
    int-to-double v12, v11

    mul-double/2addr v12, v7

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    const-wide/high16 v16, 0x4059

    div-double v14, v14, v16

    mul-double v9, v12, v14

    .line 982
    .local v9, removing:D
    const-wide/high16 v12, 0x4059

    mul-double/2addr v12, v9

    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    move-result-wide v12

    long-to-double v12, v12

    const-wide/high16 v14, 0x4059

    div-double v9, v12, v14

    .line 985
    const-string v12, "KU"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 987
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/pareekiApps/markcalculator/Course1;->totalKU:D

    sub-double/2addr v12, v9

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/pareekiApps/markcalculator/Course1;->totalKU:D

    .line 988
    move-object/from16 v0, p0

    iget v12, v0, Lcom/pareekiApps/markcalculator/Course1;->totalKUCount:I

    sub-int/2addr v12, v11

    move-object/from16 v0, p0

    iput v12, v0, Lcom/pareekiApps/markcalculator/Course1;->totalKUCount:I

    .line 990
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pareekiApps/markcalculator/Course1;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    const-string v13, "Course1totalKU"

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/pareekiApps/markcalculator/Course1;->totalKU:D

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lcom/pareekiApps/markcalculator/Prefs;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pareekiApps/markcalculator/Course1;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    const-string v13, "Course1totalKUCount"

    move-object/from16 v0, p0

    iget v14, v0, Lcom/pareekiApps/markcalculator/Course1;->totalKUCount:I

    invoke-virtual {v12, v13, v14}, Lcom/pareekiApps/markcalculator/Prefs;->setPreferenceInt(Ljava/lang/String;I)V

    .line 1018
    :cond_0
    :goto_4
    move-object/from16 v0, p0

    iget v12, v0, Lcom/pareekiApps/markcalculator/Course1;->entryCounter:I

    add-int/lit8 v12, v12, -0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/pareekiApps/markcalculator/Course1;->entryCounter:I

    .line 1019
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pareekiApps/markcalculator/Course1;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    const-string v13, "Class1EntryCounter"

    move-object/from16 v0, p0

    iget v14, v0, Lcom/pareekiApps/markcalculator/Course1;->entryCounter:I

    invoke-virtual {v12, v13, v14}, Lcom/pareekiApps/markcalculator/Prefs;->setPreferenceInt(Ljava/lang/String;I)V

    .line 1020
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/pareekiApps/markcalculator/Course1;->rearrangeData(I)V

    .line 1021
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/pareekiApps/markcalculator/Course1;->updateRow(I)V

    .line 1022
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pareekiApps/markcalculator/Course1;->finalAverage:Landroid/widget/TextView;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Average:"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/pareekiApps/markcalculator/Course1;->calculateMark()D

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

    .line 1023
    invoke-direct/range {p0 .. p0}, Lcom/pareekiApps/markcalculator/Course1;->putOveralMarks()V

    .line 1024
    return-void

    .line 966
    .end local v4           #categoryWeight:Ljava/lang/String;
    .end local v9           #removing:D
    :cond_1
    const/4 v12, 0x2

    aget-object v12, v5, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pareekiApps/markcalculator/Course1;->weights:[Ljava/lang/String;

    aget-object v13, v13, v6

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 968
    const/4 v12, 0x2

    aget-object v12, v5, v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 969
    goto/16 :goto_1

    .line 964
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 974
    :cond_3
    const/4 v12, 0x1

    aget-object v12, v5, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pareekiApps/markcalculator/Course1;->cats:[Ljava/lang/String;

    aget-object v13, v13, v6

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 976
    const/4 v12, 0x1

    aget-object v3, v5, v12

    .line 977
    goto/16 :goto_3

    .line 972
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 993
    .restart local v4       #categoryWeight:Ljava/lang/String;
    .restart local v9       #removing:D
    :cond_5
    const-string v12, "MC"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 995
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/pareekiApps/markcalculator/Course1;->totalMC:D

    sub-double/2addr v12, v9

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/pareekiApps/markcalculator/Course1;->totalMC:D

    .line 996
    move-object/from16 v0, p0

    iget v12, v0, Lcom/pareekiApps/markcalculator/Course1;->totalMCCount:I

    sub-int/2addr v12, v11

    move-object/from16 v0, p0

    iput v12, v0, Lcom/pareekiApps/markcalculator/Course1;->totalMCCount:I

    .line 998
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pareekiApps/markcalculator/Course1;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    const-string v13, "Course1totalMC"

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/pareekiApps/markcalculator/Course1;->totalMC:D

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lcom/pareekiApps/markcalculator/Prefs;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 999
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pareekiApps/markcalculator/Course1;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    const-string v13, "Course1totalMCCount"

    move-object/from16 v0, p0

    iget v14, v0, Lcom/pareekiApps/markcalculator/Course1;->totalMCCount:I

    invoke-virtual {v12, v13, v14}, Lcom/pareekiApps/markcalculator/Prefs;->setPreferenceInt(Ljava/lang/String;I)V

    goto/16 :goto_4

    .line 1001
    :cond_6
    const-string v12, "TI"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 1003
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/pareekiApps/markcalculator/Course1;->totalTI:D

    sub-double/2addr v12, v9

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/pareekiApps/markcalculator/Course1;->totalTI:D

    .line 1004
    move-object/from16 v0, p0

    iget v12, v0, Lcom/pareekiApps/markcalculator/Course1;->totalTICount:I

    sub-int/2addr v12, v11

    move-object/from16 v0, p0

    iput v12, v0, Lcom/pareekiApps/markcalculator/Course1;->totalTICount:I

    .line 1006
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pareekiApps/markcalculator/Course1;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    const-string v13, "Course1totalTI"

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/pareekiApps/markcalculator/Course1;->totalTI:D

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lcom/pareekiApps/markcalculator/Prefs;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 1007
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pareekiApps/markcalculator/Course1;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    const-string v13, "Course1totalTICount"

    move-object/from16 v0, p0

    iget v14, v0, Lcom/pareekiApps/markcalculator/Course1;->totalTICount:I

    invoke-virtual {v12, v13, v14}, Lcom/pareekiApps/markcalculator/Prefs;->setPreferenceInt(Ljava/lang/String;I)V

    goto/16 :goto_4

    .line 1009
    :cond_7
    const-string v12, "C"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 1011
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/pareekiApps/markcalculator/Course1;->totalC:D

    sub-double/2addr v12, v9

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/pareekiApps/markcalculator/Course1;->totalC:D

    .line 1012
    move-object/from16 v0, p0

    iget v12, v0, Lcom/pareekiApps/markcalculator/Course1;->totalCCount:I

    sub-int/2addr v12, v11

    move-object/from16 v0, p0

    iput v12, v0, Lcom/pareekiApps/markcalculator/Course1;->totalCCount:I

    .line 1014
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pareekiApps/markcalculator/Course1;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    const-string v13, "Course1totalC"

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/pareekiApps/markcalculator/Course1;->totalC:D

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lcom/pareekiApps/markcalculator/Prefs;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 1015
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pareekiApps/markcalculator/Course1;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    const-string v13, "Course1totalCCount"

    move-object/from16 v0, p0

    iget v14, v0, Lcom/pareekiApps/markcalculator/Course1;->totalCCount:I

    invoke-virtual {v12, v13, v14}, Lcom/pareekiApps/markcalculator/Prefs;->setPreferenceInt(Ljava/lang/String;I)V

    goto/16 :goto_4
.end method

.method private editMark(Ljava/lang/String;I)V
    .locals 20
    .parameter "col1Name"
    .parameter "rowNum"

    .prologue
    .line 243
    new-instance v1, Landroid/app/Dialog;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/pareekiApps/markcalculator/Course1;->builder:Landroid/app/Dialog;

    .line 244
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pareekiApps/markcalculator/Course1;->builder:Landroid/app/Dialog;

    const-string v2, "Editing a mark"

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 247
    invoke-virtual/range {p0 .. p0}, Lcom/pareekiApps/markcalculator/Course1;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/LayoutInflater;

    .line 248
    .local v14, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f030002

    const/4 v2, 0x0

    invoke-virtual {v14, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v15

    .line 249
    .local v15, layout_spinners:Landroid/view/View;
    const v1, 0x7f060013

    invoke-virtual {v15, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/Spinner;

    .line 250
    .local v17, spinner1:Landroid/widget/Spinner;
    const v1, 0x7f060014

    invoke-virtual {v15, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/Spinner;

    .line 251
    .local v18, spinner2:Landroid/widget/Spinner;
    const v1, 0x7f060015

    invoke-virtual {v15, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/Button;

    .line 252
    .local v16, saveMark:Landroid/widget/Button;
    const v1, 0x7f060011

    invoke-virtual {v15, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 253
    .local v3, numMark:Landroid/widget/EditText;
    const v1, 0x7f060012

    invoke-virtual {v15, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 254
    .local v4, denMark:Landroid/widget/EditText;
    const v1, 0x7f060010

    invoke-virtual {v15, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 257
    .local v5, et:Landroid/widget/EditText;
    sget-object v1, Lcom/pareekiApps/markcalculator/Course1;->getPrefs:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "Course1Entry"

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

    .line 258
    .local v12, get:Ljava/lang/String;
    const-string v1, ","

    invoke-virtual {v12, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 260
    .local v19, values:[Ljava/lang/String;
    sget-object v1, Lcom/pareekiApps/markcalculator/Course1;->getPrefs:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "Entry"

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "Course1"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, ",,"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 261
    .local v10, allData:Ljava/lang/String;
    const-string v1, ","

    invoke-virtual {v10, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 263
    .local v11, data:[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v19, v1

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 264
    const/4 v1, 0x1

    aget-object v1, v19, v1

    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 265
    const/4 v1, 0x3

    aget-object v1, v11, v1

    invoke-virtual {v5, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 267
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pareekiApps/markcalculator/Course1;->builder:Landroid/app/Dialog;

    invoke-virtual {v1, v15}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 268
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pareekiApps/markcalculator/Course1;->builder:Landroid/app/Dialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 270
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pareekiApps/markcalculator/Course1;->builder:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 274
    new-instance v8, Landroid/widget/ArrayAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/pareekiApps/markcalculator/Course1;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1090008

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/pareekiApps/markcalculator/Course1;->categories:[Ljava/lang/String;

    invoke-direct {v8, v1, v2, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 275
    .local v8, adapter1:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v1, 0x1090009

    invoke-virtual {v8, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 276
    new-instance v1, Lcom/pareekiApps/markcalculator/CustomOnItemSelectedListener;

    invoke-direct {v1}, Lcom/pareekiApps/markcalculator/CustomOnItemSelectedListener;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 277
    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 279
    new-instance v9, Landroid/widget/ArrayAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/pareekiApps/markcalculator/Course1;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1090008

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/pareekiApps/markcalculator/Course1;->weights:[Ljava/lang/String;

    invoke-direct {v9, v1, v2, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 280
    .local v9, adapter2:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v1, 0x1090009

    invoke-virtual {v9, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 281
    new-instance v1, Lcom/pareekiApps/markcalculator/CustomOnItemSelectedListener;

    invoke-direct {v1}, Lcom/pareekiApps/markcalculator/CustomOnItemSelectedListener;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 282
    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 285
    const/4 v13, 0x0

    .local v13, i:I
    :goto_0
    const/4 v1, 0x5

    if-lt v13, v1, :cond_1

    .line 293
    :goto_1
    const/4 v13, 0x0

    :goto_2
    const/4 v1, 0x6

    if-lt v13, v1, :cond_3

    .line 303
    :goto_3
    new-instance v1, Lcom/pareekiApps/markcalculator/Course1$3;

    move-object/from16 v2, p0

    move/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/pareekiApps/markcalculator/Course1$3;-><init>(Lcom/pareekiApps/markcalculator/Course1;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;I)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 372
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pareekiApps/markcalculator/Course1;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/InterstitialAd;->isLoaded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 374
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pareekiApps/markcalculator/Course1;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/InterstitialAd;->show()V

    .line 376
    new-instance v1, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    .line 377
    const-string v2, "00811854ce4d1200"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v1

    .line 378
    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v7

    .line 380
    .local v7, adRequest:Lcom/google/android/gms/ads/AdRequest;
    new-instance v1, Lcom/google/android/gms/ads/InterstitialAd;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/google/android/gms/ads/InterstitialAd;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/pareekiApps/markcalculator/Course1;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    .line 381
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pareekiApps/markcalculator/Course1;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    const-string v2, "ca-app-pub-4733259834848580/9185683751"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/InterstitialAd;->setAdUnitId(Ljava/lang/String;)V

    .line 384
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pareekiApps/markcalculator/Course1;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v1, v7}, Lcom/google/android/gms/ads/InterstitialAd;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 386
    .end local v7           #adRequest:Lcom/google/android/gms/ads/AdRequest;
    :cond_0
    return-void

    .line 287
    :cond_1
    const/4 v1, 0x1

    aget-object v1, v11, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pareekiApps/markcalculator/Course1;->cats:[Ljava/lang/String;

    aget-object v2, v2, v13

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 289
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_1

    .line 285
    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 295
    :cond_3
    const/4 v1, 0x2

    aget-object v1, v11, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pareekiApps/markcalculator/Course1;->weights:[Ljava/lang/String;

    aget-object v2, v2, v13

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 297
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_3

    .line 293
    :cond_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_2
.end method

.method private putOveralMarks()V
    .locals 19

    .prologue
    .line 516
    sget-object v14, Lcom/pareekiApps/markcalculator/Course1;->getPrefs:Landroid/content/SharedPreferences;

    const-string v15, "Course1KU"

    const-string v16, "0"

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 517
    .local v4, KUWeight:D
    sget-object v14, Lcom/pareekiApps/markcalculator/Course1;->getPrefs:Landroid/content/SharedPreferences;

    const-string v15, "Course1MC"

    const-string v16, "0"

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    .line 518
    .local v6, MCWeight:D
    sget-object v14, Lcom/pareekiApps/markcalculator/Course1;->getPrefs:Landroid/content/SharedPreferences;

    const-string v15, "Course1TI"

    const-string v16, "0"

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    .line 519
    .local v8, TIWeight:D
    sget-object v14, Lcom/pareekiApps/markcalculator/Course1;->getPrefs:Landroid/content/SharedPreferences;

    const-string v15, "Course1C"

    const-string v16, "0"

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 521
    .local v2, CWeight:D
    const v14, 0x7f060025

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/pareekiApps/markcalculator/Course1;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 522
    .local v11, ku:Landroid/widget/TextView;
    const v14, 0x7f060027

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/pareekiApps/markcalculator/Course1;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 523
    .local v12, mc:Landroid/widget/TextView;
    const v14, 0x7f060029

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/pareekiApps/markcalculator/Course1;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 524
    .local v13, ti:Landroid/widget/TextView;
    const v14, 0x7f06002b

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/pareekiApps/markcalculator/Course1;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 526
    .local v10, c:Landroid/widget/TextView;
    sget-object v14, Lcom/pareekiApps/markcalculator/Course1;->getPrefs:Landroid/content/SharedPreferences;

    const-string v15, "Course1totalKUCount"

    const/16 v16, 0x0

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/pareekiApps/markcalculator/Course1;->totalKUCount:I

    .line 527
    sget-object v14, Lcom/pareekiApps/markcalculator/Course1;->getPrefs:Landroid/content/SharedPreferences;

    const-string v15, "Course1totalMCCount"

    const/16 v16, 0x0

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/pareekiApps/markcalculator/Course1;->totalMCCount:I

    .line 528
    sget-object v14, Lcom/pareekiApps/markcalculator/Course1;->getPrefs:Landroid/content/SharedPreferences;

    const-string v15, "Course1totalTICount"

    const/16 v16, 0x0

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/pareekiApps/markcalculator/Course1;->totalTICount:I

    .line 529
    sget-object v14, Lcom/pareekiApps/markcalculator/Course1;->getPrefs:Landroid/content/SharedPreferences;

    const-string v15, "Course1totalCCount"

    const/16 v16, 0x0

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/pareekiApps/markcalculator/Course1;->totalCCount:I

    .line 531
    sget-object v14, Lcom/pareekiApps/markcalculator/Course1;->getPrefs:Landroid/content/SharedPreferences;

    const-string v15, "Course1totalKU"

    const-string v16, "0"

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/pareekiApps/markcalculator/Course1;->totalKU:D

    .line 532
    sget-object v14, Lcom/pareekiApps/markcalculator/Course1;->getPrefs:Landroid/content/SharedPreferences;

    const-string v15, "Course1totalMC"

    const-string v16, "0"

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/pareekiApps/markcalculator/Course1;->totalMC:D

    .line 533
    sget-object v14, Lcom/pareekiApps/markcalculator/Course1;->getPrefs:Landroid/content/SharedPreferences;

    const-string v15, "Course1totalTI"

    const-string v16, "0"

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/pareekiApps/markcalculator/Course1;->totalTI:D

    .line 534
    sget-object v14, Lcom/pareekiApps/markcalculator/Course1;->getPrefs:Landroid/content/SharedPreferences;

    const-string v15, "Course1totalC"

    const-string v16, "0"

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/pareekiApps/markcalculator/Course1;->totalC:D

    .line 536
    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/pareekiApps/markcalculator/Course1;->totalKU:D

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pareekiApps/markcalculator/Course1;->totalKUCount:I

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

    .line 537
    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/pareekiApps/markcalculator/Course1;->totalMC:D

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pareekiApps/markcalculator/Course1;->totalMCCount:I

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

    .line 538
    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/pareekiApps/markcalculator/Course1;->totalTI:D

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pareekiApps/markcalculator/Course1;->totalTICount:I

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

    .line 539
    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/pareekiApps/markcalculator/Course1;->totalC:D

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pareekiApps/markcalculator/Course1;->totalCCount:I

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

    .line 540
    return-void
.end method

.method private rearrangeData(I)V
    .locals 5
    .parameter "rowNumber"

    .prologue
    .line 1028
    move v0, p1

    .local v0, i:I
    :goto_0
    iget v2, p0, Lcom/pareekiApps/markcalculator/Course1;->entryCounter:I

    add-int/lit8 v2, v2, 0x1

    if-le v0, v2, :cond_0

    .line 1034
    return-void

    .line 1030
    :cond_0
    sget-object v2, Lcom/pareekiApps/markcalculator/Course1;->getPrefs:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Entry"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Course1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1031
    .local v1, next:Ljava/lang/String;
    iget-object v2, p0, Lcom/pareekiApps/markcalculator/Course1;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Entry"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Course1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/pareekiApps/markcalculator/Prefs;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 1028
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private savetheNewMark()V
    .locals 24

    .prologue
    .line 658
    const v18, 0x7f06001b

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/pareekiApps/markcalculator/Course1;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TableLayout;

    .line 661
    .local v7, table:Landroid/widget/TableLayout;
    new-instance v6, Landroid/widget/TableRow;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 663
    .local v6, row:Landroid/widget/TableRow;
    new-instance v12, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 664
    .local v12, tv1:Landroid/widget/TextView;
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 665
    new-instance v13, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 666
    .local v13, tv2:Landroid/widget/TextView;
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 667
    new-instance v14, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 668
    .local v14, tv3:Landroid/widget/TextView;
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 669
    new-instance v15, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 670
    .local v15, tv4:Landroid/widget/TextView;
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 672
    new-instance v18, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pareekiApps/markcalculator/Course1;->entryCounter:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, ". "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course1;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 673
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/pareekiApps/markcalculator/Course1;->answer:D

    move-wide/from16 v19, v0

    invoke-virtual/range {v18 .. v20}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 675
    sget-object v18, Lcom/pareekiApps/markcalculator/Course1;->getPrefs:Landroid/content/SharedPreferences;

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "Course1"

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course1;->cat:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const-string v20, ""

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 676
    .local v5, categoryWeight:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/pareekiApps/markcalculator/Course1;->answer:D

    move-wide/from16 v18, v0

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v20

    mul-double v18, v18, v20

    const-wide/high16 v20, 0x4059

    div-double v18, v18, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course1;->spinnerSelectWeight:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v20

    mul-double v16, v18, v20

    .line 677
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

    .line 679
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course1;->spinnerSelectCategory:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "Knowledge and Understanding"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 681
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/pareekiApps/markcalculator/Course1;->totalKU:D

    move-wide/from16 v18, v0

    add-double v18, v18, v16

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/pareekiApps/markcalculator/Course1;->totalKU:D

    .line 682
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pareekiApps/markcalculator/Course1;->totalKUCount:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course1;->spinnerSelectWeight:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v20

    add-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pareekiApps/markcalculator/Course1;->totalKUCount:I

    .line 700
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course1;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    move-object/from16 v18, v0

    const-string v19, "Course1totalKUCount"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pareekiApps/markcalculator/Course1;->totalKUCount:I

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Lcom/pareekiApps/markcalculator/Prefs;->setPreferenceInt(Ljava/lang/String;I)V

    .line 701
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course1;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    move-object/from16 v18, v0

    const-string v19, "Course1totalMCCount"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pareekiApps/markcalculator/Course1;->totalMCCount:I

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Lcom/pareekiApps/markcalculator/Prefs;->setPreferenceInt(Ljava/lang/String;I)V

    .line 702
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course1;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    move-object/from16 v18, v0

    const-string v19, "Course1totalTICount"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pareekiApps/markcalculator/Course1;->totalTICount:I

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Lcom/pareekiApps/markcalculator/Prefs;->setPreferenceInt(Ljava/lang/String;I)V

    .line 703
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course1;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    move-object/from16 v18, v0

    const-string v19, "Course1totalCCount"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pareekiApps/markcalculator/Course1;->totalCCount:I

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Lcom/pareekiApps/markcalculator/Prefs;->setPreferenceInt(Ljava/lang/String;I)V

    .line 705
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course1;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    move-object/from16 v18, v0

    const-string v19, "Course1totalKU"

    new-instance v20, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/pareekiApps/markcalculator/Course1;->totalKU:D

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Lcom/pareekiApps/markcalculator/Prefs;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course1;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    move-object/from16 v18, v0

    const-string v19, "Course1totalMC"

    new-instance v20, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/pareekiApps/markcalculator/Course1;->totalMC:D

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Lcom/pareekiApps/markcalculator/Prefs;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course1;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    move-object/from16 v18, v0

    const-string v19, "Course1totalTI"

    new-instance v20, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/pareekiApps/markcalculator/Course1;->totalTI:D

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Lcom/pareekiApps/markcalculator/Prefs;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course1;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    move-object/from16 v18, v0

    const-string v19, "Course1totalC"

    new-instance v20, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/pareekiApps/markcalculator/Course1;->totalC:D

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Lcom/pareekiApps/markcalculator/Prefs;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/pareekiApps/markcalculator/Course1;->totalKU:D

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/pareekiApps/markcalculator/Course1;->totalC:D

    move-wide/from16 v20, v0

    add-double v18, v18, v20

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/pareekiApps/markcalculator/Course1;->totalMC:D

    move-wide/from16 v20, v0

    add-double v18, v18, v20

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/pareekiApps/markcalculator/Course1;->totalTI:D

    move-wide/from16 v20, v0

    add-double v8, v18, v20

    .line 711
    .local v8, total:D
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pareekiApps/markcalculator/Course1;->totalKUCount:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pareekiApps/markcalculator/Course1;->totalMCCount:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pareekiApps/markcalculator/Course1;->totalTICount:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pareekiApps/markcalculator/Course1;->totalCCount:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v18

    int-to-double v10, v0

    .line 712
    .local v10, totalMarksCounter:D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course1;->cat:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 713
    div-double v3, v8, v10

    .line 714
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

    .line 715
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 717
    invoke-virtual {v6, v12}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 718
    invoke-virtual {v6, v13}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 719
    invoke-virtual {v6, v14}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 720
    invoke-virtual {v6, v15}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 722
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/widget/TableRow;->setLongClickable(Z)V

    .line 723
    new-instance v18, Landroid/widget/TableLayout$LayoutParams;

    const/16 v19, -0x2

    const/16 v20, -0x2

    invoke-direct/range {v18 .. v20}, Landroid/widget/TableLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v18

    invoke-virtual {v7, v6, v0}, Landroid/widget/TableLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 724
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course1;->finalAverage:Landroid/widget/TextView;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "Average:"

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/pareekiApps/markcalculator/Course1;->calculateMark()D

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

    .line 725
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course1;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    move-object/from16 v18, v0

    const-string v19, "Course1finalAverage"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Lcom/pareekiApps/markcalculator/Prefs;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pareekiApps/markcalculator/Course1;->entryCounter:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/pareekiApps/markcalculator/Course1;->updateRow(I)V

    .line 728
    invoke-direct/range {p0 .. p0}, Lcom/pareekiApps/markcalculator/Course1;->putOveralMarks()V

    .line 730
    new-instance v18, Lcom/pareekiApps/markcalculator/Course1$6;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v6}, Lcom/pareekiApps/markcalculator/Course1$6;-><init>(Lcom/pareekiApps/markcalculator/Course1;Landroid/widget/TableRow;)V

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/widget/TableRow;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 751
    return-void

    .line 684
    .end local v3           #average:D
    .end local v8           #total:D
    .end local v10           #totalMarksCounter:D
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course1;->spinnerSelectCategory:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "Making Connections"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 686
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/pareekiApps/markcalculator/Course1;->totalMC:D

    move-wide/from16 v18, v0

    add-double v18, v18, v16

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/pareekiApps/markcalculator/Course1;->totalMC:D

    .line 687
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pareekiApps/markcalculator/Course1;->totalMCCount:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course1;->spinnerSelectWeight:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v20

    add-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pareekiApps/markcalculator/Course1;->totalMCCount:I

    goto/16 :goto_0

    .line 689
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course1;->spinnerSelectCategory:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "Thinking and Inquiry"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 691
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/pareekiApps/markcalculator/Course1;->totalTI:D

    move-wide/from16 v18, v0

    add-double v18, v18, v16

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/pareekiApps/markcalculator/Course1;->totalTI:D

    .line 692
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pareekiApps/markcalculator/Course1;->totalTICount:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course1;->spinnerSelectWeight:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v20

    add-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pareekiApps/markcalculator/Course1;->totalTICount:I

    goto/16 :goto_0

    .line 694
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course1;->spinnerSelectCategory:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "Communication"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 696
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/pareekiApps/markcalculator/Course1;->totalC:D

    move-wide/from16 v18, v0

    add-double v18, v18, v16

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/pareekiApps/markcalculator/Course1;->totalC:D

    .line 697
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pareekiApps/markcalculator/Course1;->totalCCount:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course1;->spinnerSelectWeight:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v20

    add-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pareekiApps/markcalculator/Course1;->totalCCount:I

    goto/16 :goto_0
.end method

.method private showPopupMenu(Landroid/view/View;Landroid/widget/TableRow;)V
    .locals 4
    .parameter "v"
    .parameter "row"

    .prologue
    .line 924
    new-instance v0, Landroid/widget/PopupMenu;

    invoke-direct {v0, p0, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 926
    .local v0, popupmenu:Landroid/widget/PopupMenu;
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const/high16 v2, 0x7f0c

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 927
    new-instance v1, Lcom/pareekiApps/markcalculator/Course1$7;

    invoke-direct {v1, p0, p2}, Lcom/pareekiApps/markcalculator/Course1$7;-><init>(Lcom/pareekiApps/markcalculator/Course1;Landroid/widget/TableRow;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 948
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 949
    return-void
.end method

.method private updateRow(I)V
    .locals 40
    .parameter "rowNum"

    .prologue
    .line 389
    sget-object v34, Lcom/pareekiApps/markcalculator/Course1;->getPrefs:Landroid/content/SharedPreferences;

    const-string v35, "Class1EntryCounter"

    const/16 v36, 0x0

    invoke-interface/range {v34 .. v36}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v34

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pareekiApps/markcalculator/Course1;->entryCounter:I

    .line 390
    sget-object v34, Lcom/pareekiApps/markcalculator/Course1;->getPrefs:Landroid/content/SharedPreferences;

    const-string v35, "Course1totalKUCount"

    const/16 v36, 0x0

    invoke-interface/range {v34 .. v36}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v34

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pareekiApps/markcalculator/Course1;->totalKUCount:I

    .line 391
    sget-object v34, Lcom/pareekiApps/markcalculator/Course1;->getPrefs:Landroid/content/SharedPreferences;

    const-string v35, "Course1totalMCCount"

    const/16 v36, 0x0

    invoke-interface/range {v34 .. v36}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v34

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pareekiApps/markcalculator/Course1;->totalMCCount:I

    .line 392
    sget-object v34, Lcom/pareekiApps/markcalculator/Course1;->getPrefs:Landroid/content/SharedPreferences;

    const-string v35, "Course1totalTICount"

    const/16 v36, 0x0

    invoke-interface/range {v34 .. v36}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v34

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pareekiApps/markcalculator/Course1;->totalTICount:I

    .line 393
    sget-object v34, Lcom/pareekiApps/markcalculator/Course1;->getPrefs:Landroid/content/SharedPreferences;

    const-string v35, "Course1totalCCount"

    const/16 v36, 0x0

    invoke-interface/range {v34 .. v36}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v34

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pareekiApps/markcalculator/Course1;->totalCCount:I

    .line 395
    const v34, 0x7f06001b

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/pareekiApps/markcalculator/Course1;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TableLayout;

    .line 396
    .local v15, table:Landroid/widget/TableLayout;
    invoke-virtual {v15}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v8

    .line 397
    .local v8, entered:I
    const/16 v34, 0x2

    add-int/lit8 v35, v8, -0x2

    move/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v15, v0, v1}, Landroid/widget/TableLayout;->removeViews(II)V

    .line 399
    const-wide/16 v20, 0x0

    .line 400
    .local v20, totalKUe:D
    const-wide/16 v22, 0x0

    .line 401
    .local v22, totalMCe:D
    const-wide/16 v25, 0x0

    .line 402
    .local v25, totalTIe:D
    const-wide/16 v18, 0x0

    .line 404
    .local v18, totalCe:D
    const-wide/16 v16, 0x0

    .line 405
    .local v16, total:D
    const/16 v24, 0x0

    .line 407
    .local v24, totalMarksCounter:I
    const/4 v10, 0x1

    .local v10, i:I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pareekiApps/markcalculator/Course1;->entryCounter:I

    move/from16 v34, v0

    move/from16 v0, v34

    if-le v10, v0, :cond_0

    .line 513
    return-void

    .line 410
    :cond_0
    new-instance v12, Landroid/widget/TableRow;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 412
    .local v12, row:Landroid/widget/TableRow;
    sget-object v34, Lcom/pareekiApps/markcalculator/Course1;->getPrefs:Landroid/content/SharedPreferences;

    new-instance v35, Ljava/lang/StringBuilder;

    const-string v36, "Entry"

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v35

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "Course1"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    const-string v36, "0"

    invoke-interface/range {v34 .. v36}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 414
    .local v11, input:Ljava/lang/String;
    const-string v34, ","

    move-object/from16 v0, v34

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 415
    .local v7, data:[Ljava/lang/String;
    const/16 v34, 0x0

    aget-object v34, v7, v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v13

    .line 416
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

    .line 418
    const/16 v34, 0x1

    aget-object v5, v7, v34

    .line 419
    .local v5, cate:Ljava/lang/String;
    const/16 v34, 0x2

    aget-object v34, v7, v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v31

    .line 420
    .local v31, wei:I
    move/from16 v0, v31

    int-to-double v0, v0

    move-wide/from16 v34, v0

    mul-double v34, v34, v13

    add-double v16, v16, v34

    .line 421
    add-int v24, v24, v31

    .line 422
    const/16 v34, 0x3

    aget-object v9, v7, v34

    .line 425
    .local v9, entryName:Ljava/lang/String;
    new-instance v27, Landroid/widget/TextView;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 426
    .local v27, tv1:Landroid/widget/TextView;
    const/16 v34, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 427
    new-instance v28, Landroid/widget/TextView;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 428
    .local v28, tv2:Landroid/widget/TextView;
    const/16 v34, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 429
    new-instance v29, Landroid/widget/TextView;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 430
    .local v29, tv3:Landroid/widget/TextView;
    const/16 v34, 0x1

    move-object/from16 v0, v29

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 431
    new-instance v30, Landroid/widget/TextView;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 432
    .local v30, tv4:Landroid/widget/TextView;
    const/16 v34, 0x1

    move-object/from16 v0, v30

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 434
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

    .line 435
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

    .line 437
    sget-object v34, Lcom/pareekiApps/markcalculator/Course1;->getPrefs:Landroid/content/SharedPreferences;

    new-instance v35, Ljava/lang/StringBuilder;

    const-string v36, "Course1"

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    const-string v36, ""

    invoke-interface/range {v34 .. v36}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 438
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

    .line 439
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

    .line 441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course1;->spinnerSelectCategory:Ljava/lang/String;

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

    .line 443
    add-double v20, v20, v32

    .line 444
    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/pareekiApps/markcalculator/Course1;->totalKU:D

    .line 445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course1;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    move-object/from16 v34, v0

    const-string v35, "Course1totalKU"

    new-instance v36, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/pareekiApps/markcalculator/Course1;->totalKU:D

    move-wide/from16 v37, v0

    invoke-static/range {v37 .. v38}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v37

    invoke-direct/range {v36 .. v37}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v34 .. v36}, Lcom/pareekiApps/markcalculator/Prefs;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course1;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    move-object/from16 v34, v0

    const-string v35, "Course1totalKUCount"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pareekiApps/markcalculator/Course1;->totalKUCount:I

    move/from16 v36, v0

    invoke-virtual/range {v34 .. v36}, Lcom/pareekiApps/markcalculator/Prefs;->setPreferenceInt(Ljava/lang/String;I)V

    .line 467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course1;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    move-object/from16 v34, v0

    const-string v35, "Course1totalMCCount"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pareekiApps/markcalculator/Course1;->totalMCCount:I

    move/from16 v36, v0

    invoke-virtual/range {v34 .. v36}, Lcom/pareekiApps/markcalculator/Prefs;->setPreferenceInt(Ljava/lang/String;I)V

    .line 468
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course1;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    move-object/from16 v34, v0

    const-string v35, "Course1totalTICount"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pareekiApps/markcalculator/Course1;->totalTICount:I

    move/from16 v36, v0

    invoke-virtual/range {v34 .. v36}, Lcom/pareekiApps/markcalculator/Prefs;->setPreferenceInt(Ljava/lang/String;I)V

    .line 469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course1;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    move-object/from16 v34, v0

    const-string v35, "Course1totalCCount"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pareekiApps/markcalculator/Course1;->totalCCount:I

    move/from16 v36, v0

    invoke-virtual/range {v34 .. v36}, Lcom/pareekiApps/markcalculator/Prefs;->setPreferenceInt(Ljava/lang/String;I)V

    .line 472
    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 473
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course1;->finalAverage:Landroid/widget/TextView;

    move-object/from16 v34, v0

    new-instance v35, Ljava/lang/StringBuilder;

    const-string v36, "Average:"

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/pareekiApps/markcalculator/Course1;->calculateMark()D

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

    .line 474
    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v34, v0

    div-double v3, v16, v34

    .line 475
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

    .line 476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course1;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    move-object/from16 v34, v0

    const-string v35, "Course1finalAverage"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v37

    invoke-direct/range {v36 .. v37}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v34 .. v36}, Lcom/pareekiApps/markcalculator/Prefs;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
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

    .line 481
    move-object/from16 v0, v27

    invoke-virtual {v12, v0}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 482
    move-object/from16 v0, v28

    invoke-virtual {v12, v0}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 483
    move-object/from16 v0, v29

    invoke-virtual {v12, v0}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 484
    move-object/from16 v0, v30

    invoke-virtual {v12, v0}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 486
    const/16 v34, 0x1

    move/from16 v0, v34

    invoke-virtual {v12, v0}, Landroid/widget/TableRow;->setLongClickable(Z)V

    .line 488
    new-instance v34, Landroid/widget/TableLayout$LayoutParams;

    const/16 v35, -0x2

    const/16 v36, -0x2

    invoke-direct/range {v34 .. v36}, Landroid/widget/TableLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v34

    invoke-virtual {v15, v12, v0}, Landroid/widget/TableLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 490
    new-instance v34, Lcom/pareekiApps/markcalculator/Course1$4;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v12}, Lcom/pareekiApps/markcalculator/Course1$4;-><init>(Lcom/pareekiApps/markcalculator/Course1;Landroid/widget/TableRow;)V

    move-object/from16 v0, v34

    invoke-virtual {v12, v0}, Landroid/widget/TableRow;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 407
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 447
    .end local v3           #average:D
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course1;->spinnerSelectCategory:Ljava/lang/String;

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

    .line 449
    add-double v22, v22, v32

    .line 450
    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/pareekiApps/markcalculator/Course1;->totalMC:D

    .line 451
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course1;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    move-object/from16 v34, v0

    const-string v35, "Course1totalMC"

    new-instance v36, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/pareekiApps/markcalculator/Course1;->totalMC:D

    move-wide/from16 v37, v0

    invoke-static/range {v37 .. v38}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v37

    invoke-direct/range {v36 .. v37}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v34 .. v36}, Lcom/pareekiApps/markcalculator/Prefs;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 453
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course1;->spinnerSelectCategory:Ljava/lang/String;

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

    .line 455
    add-double v25, v25, v32

    .line 456
    move-wide/from16 v0, v25

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/pareekiApps/markcalculator/Course1;->totalTI:D

    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course1;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    move-object/from16 v34, v0

    const-string v35, "Course1totalTI"

    new-instance v36, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/pareekiApps/markcalculator/Course1;->totalTI:D

    move-wide/from16 v37, v0

    invoke-static/range {v37 .. v38}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v37

    invoke-direct/range {v36 .. v37}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v34 .. v36}, Lcom/pareekiApps/markcalculator/Prefs;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 459
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course1;->spinnerSelectCategory:Ljava/lang/String;

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

    .line 461
    add-double v18, v18, v32

    .line 462
    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/pareekiApps/markcalculator/Course1;->totalC:D

    .line 463
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course1;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    move-object/from16 v34, v0

    const-string v35, "Course1totalC"

    new-instance v36, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/pareekiApps/markcalculator/Course1;->totalC:D

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

    .line 543
    new-instance v11, Landroid/app/Dialog;

    invoke-direct {v11, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v11, p0, Lcom/pareekiApps/markcalculator/Course1;->builder:Landroid/app/Dialog;

    .line 544
    iget-object v11, p0, Lcom/pareekiApps/markcalculator/Course1;->builder:Landroid/app/Dialog;

    const-string v12, "Add a new mark"

    invoke-virtual {v11, v12}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 546
    invoke-virtual {p0}, Lcom/pareekiApps/markcalculator/Course1;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    const-string v12, "layout_inflater"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 547
    .local v5, inflater:Landroid/view/LayoutInflater;
    const v11, 0x7f030002

    const/4 v12, 0x0

    invoke-virtual {v5, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 548
    .local v6, layout_spinners:Landroid/view/View;
    const v11, 0x7f060013

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Spinner;

    .line 549
    .local v9, spinner1:Landroid/widget/Spinner;
    const v11, 0x7f060014

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Spinner;

    .line 550
    .local v10, spinner2:Landroid/widget/Spinner;
    const v11, 0x7f060015

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    .line 551
    .local v8, saveMark:Landroid/widget/Button;
    const v11, 0x7f060011

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    .line 552
    .local v7, numMark:Landroid/widget/EditText;
    const v11, 0x7f060012

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 553
    .local v3, denMark:Landroid/widget/EditText;
    const v11, 0x7f060010

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 556
    .local v4, et:Landroid/widget/EditText;
    iget-object v11, p0, Lcom/pareekiApps/markcalculator/Course1;->builder:Landroid/app/Dialog;

    invoke-virtual {v11, v6}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 557
    iget-object v11, p0, Lcom/pareekiApps/markcalculator/Course1;->builder:Landroid/app/Dialog;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 558
    iget-object v11, p0, Lcom/pareekiApps/markcalculator/Course1;->builder:Landroid/app/Dialog;

    invoke-virtual {v11}, Landroid/app/Dialog;->show()V

    .line 560
    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v11, p0, Lcom/pareekiApps/markcalculator/Course1;->categories:[Ljava/lang/String;

    invoke-direct {v1, p0, v13, v11}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 561
    .local v1, adapter1:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v1, v14}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 562
    new-instance v11, Lcom/pareekiApps/markcalculator/CustomOnItemSelectedListener;

    invoke-direct {v11}, Lcom/pareekiApps/markcalculator/CustomOnItemSelectedListener;-><init>()V

    invoke-virtual {v9, v11}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 563
    invoke-virtual {v9, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 566
    new-instance v2, Landroid/widget/ArrayAdapter;

    iget-object v11, p0, Lcom/pareekiApps/markcalculator/Course1;->weights:[Ljava/lang/String;

    invoke-direct {v2, p0, v13, v11}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 567
    .local v2, adapter2:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v2, v14}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 568
    new-instance v11, Lcom/pareekiApps/markcalculator/CustomOnItemSelectedListener;

    invoke-direct {v11}, Lcom/pareekiApps/markcalculator/CustomOnItemSelectedListener;-><init>()V

    invoke-virtual {v10, v11}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 569
    invoke-virtual {v10, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 571
    new-instance v11, Lcom/pareekiApps/markcalculator/Course1$5;

    invoke-direct {v11, p0, v7, v3, v4}, Lcom/pareekiApps/markcalculator/Course1$5;-><init>(Lcom/pareekiApps/markcalculator/Course1;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v8, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 640
    iget-object v11, p0, Lcom/pareekiApps/markcalculator/Course1;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v11}, Lcom/google/android/gms/ads/InterstitialAd;->isLoaded()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 642
    iget-object v11, p0, Lcom/pareekiApps/markcalculator/Course1;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v11}, Lcom/google/android/gms/ads/InterstitialAd;->show()V

    .line 644
    new-instance v11, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v11}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    .line 645
    const-string v12, "00811854ce4d1200"

    invoke-virtual {v11, v12}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v11

    .line 646
    invoke-virtual {v11}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    .line 648
    .local v0, adRequest:Lcom/google/android/gms/ads/AdRequest;
    new-instance v11, Lcom/google/android/gms/ads/InterstitialAd;

    invoke-direct {v11, p0}, Lcom/google/android/gms/ads/InterstitialAd;-><init>(Landroid/content/Context;)V

    iput-object v11, p0, Lcom/pareekiApps/markcalculator/Course1;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    .line 649
    iget-object v11, p0, Lcom/pareekiApps/markcalculator/Course1;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    const-string v12, "ca-app-pub-4733259834848580/9185683751"

    invoke-virtual {v11, v12}, Lcom/google/android/gms/ads/InterstitialAd;->setAdUnitId(Ljava/lang/String;)V

    .line 652
    iget-object v11, p0, Lcom/pareekiApps/markcalculator/Course1;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v11, v0}, Lcom/google/android/gms/ads/InterstitialAd;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 654
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

    iput-object v0, v1, Lcom/pareekiApps/markcalculator/Course1;->context:Landroid/content/Context;

    .line 73
    invoke-virtual/range {p0 .. p0}, Lcom/pareekiApps/markcalculator/Course1;->getIntent()Landroid/content/Intent;

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

    iput-object v0, v1, Lcom/pareekiApps/markcalculator/Course1;->courseName:Ljava/lang/String;

    .line 75
    new-instance v30, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course1;->courseName:Ljava/lang/String;

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

    invoke-virtual {v0, v1}, Lcom/pareekiApps/markcalculator/Course1;->setTitle(Ljava/lang/CharSequence;)V

    .line 76
    invoke-virtual/range {p0 .. p0}, Lcom/pareekiApps/markcalculator/Course1;->getBaseContext()Landroid/content/Context;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v30

    sput-object v30, Lcom/pareekiApps/markcalculator/Course1;->getPrefs:Landroid/content/SharedPreferences;

    .line 78
    const v30, 0x7f030003

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/pareekiApps/markcalculator/Course1;->setContentView(I)V

    .line 80
    new-instance v30, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct/range {v30 .. v30}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    .line 81
    const-string v31, "00811854ce4d1200"

    invoke-virtual/range {v30 .. v31}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v30

    .line 82
    invoke-virtual/range {v30 .. v30}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v3

    .line 84
    .local v3, adRequest:Lcom/google/android/gms/ads/AdRequest;
    const v30, 0x7f06002c

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/pareekiApps/markcalculator/Course1;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/ads/AdView;

    .line 85
    .local v4, adView:Lcom/google/android/gms/ads/AdView;
    invoke-virtual {v4, v3}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 87
    new-instance v30, Lcom/google/android/gms/ads/InterstitialAd;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pareekiApps/markcalculator/Course1;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    .line 88
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course1;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    move-object/from16 v30, v0

    const-string v31, "ca-app-pub-4733259834848580/5313887353"

    invoke-virtual/range {v30 .. v31}, Lcom/google/android/gms/ads/InterstitialAd;->setAdUnitId(Ljava/lang/String;)V

    .line 90
    new-instance v30, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct/range {v30 .. v30}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    .line 91
    const-string v31, "00811854ce4d1200"

    invoke-virtual/range {v30 .. v31}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v30

    .line 92
    invoke-virtual/range {v30 .. v30}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v3

    .line 95
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course1;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Lcom/google/android/gms/ads/InterstitialAd;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 97
    const v30, 0x7f060018

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/pareekiApps/markcalculator/Course1;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 98
    .local v19, title:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course1;->courseName:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    const v30, -0xff0100

    move-object/from16 v0, v19

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 101
    const v30, 0x7f060016

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/pareekiApps/markcalculator/Course1;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/TextView;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pareekiApps/markcalculator/Course1;->finalAverage:Landroid/widget/TextView;

    .line 103
    const v30, 0x7f060017

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/pareekiApps/markcalculator/Course1;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    .line 104
    .local v8, button:Landroid/widget/Button;
    new-instance v30, Lcom/pareekiApps/markcalculator/Course1$1;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/pareekiApps/markcalculator/Course1$1;-><init>(Lcom/pareekiApps/markcalculator/Course1;)V

    move-object/from16 v0, v30

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    const-wide/16 v20, 0x0

    .line 147
    .local v20, total:D
    const/16 v22, 0x0

    .line 148
    .local v22, totalMarksCounter:I
    sget-object v30, Lcom/pareekiApps/markcalculator/Course1;->getPrefs:Landroid/content/SharedPreferences;

    const-string v31, "Class1EntryCounter"

    const/16 v32, 0x0

    invoke-interface/range {v30 .. v32}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pareekiApps/markcalculator/Course1;->entryCounter:I

    .line 150
    sget-object v30, Lcom/pareekiApps/markcalculator/Course1;->getPrefs:Landroid/content/SharedPreferences;

    const-string v31, "Course1totalKUCount"

    const/16 v32, 0x0

    invoke-interface/range {v30 .. v32}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pareekiApps/markcalculator/Course1;->totalKUCount:I

    .line 151
    sget-object v30, Lcom/pareekiApps/markcalculator/Course1;->getPrefs:Landroid/content/SharedPreferences;

    const-string v31, "Course1totalMCCount"

    const/16 v32, 0x0

    invoke-interface/range {v30 .. v32}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pareekiApps/markcalculator/Course1;->totalMCCount:I

    .line 152
    sget-object v30, Lcom/pareekiApps/markcalculator/Course1;->getPrefs:Landroid/content/SharedPreferences;

    const-string v31, "Course1totalTICount"

    const/16 v32, 0x0

    invoke-interface/range {v30 .. v32}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pareekiApps/markcalculator/Course1;->totalTICount:I

    .line 153
    sget-object v30, Lcom/pareekiApps/markcalculator/Course1;->getPrefs:Landroid/content/SharedPreferences;

    const-string v31, "Course1totalCCount"

    const/16 v32, 0x0

    invoke-interface/range {v30 .. v32}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pareekiApps/markcalculator/Course1;->totalCCount:I

    .line 155
    sget-object v30, Lcom/pareekiApps/markcalculator/Course1;->getPrefs:Landroid/content/SharedPreferences;

    const-string v31, "Course1totalKU"

    const-string v32, "0"

    invoke-interface/range {v30 .. v32}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v30

    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/pareekiApps/markcalculator/Course1;->totalKU:D

    .line 156
    sget-object v30, Lcom/pareekiApps/markcalculator/Course1;->getPrefs:Landroid/content/SharedPreferences;

    const-string v31, "Course1totalMC"

    const-string v32, "0"

    invoke-interface/range {v30 .. v32}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v30

    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/pareekiApps/markcalculator/Course1;->totalMC:D

    .line 157
    sget-object v30, Lcom/pareekiApps/markcalculator/Course1;->getPrefs:Landroid/content/SharedPreferences;

    const-string v31, "Course1totalTI"

    const-string v32, "0"

    invoke-interface/range {v30 .. v32}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v30

    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/pareekiApps/markcalculator/Course1;->totalTI:D

    .line 158
    sget-object v30, Lcom/pareekiApps/markcalculator/Course1;->getPrefs:Landroid/content/SharedPreferences;

    const-string v31, "Course1totalC"

    const-string v32, "0"

    invoke-interface/range {v30 .. v32}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v30

    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/pareekiApps/markcalculator/Course1;->totalC:D

    .line 160
    invoke-direct/range {p0 .. p0}, Lcom/pareekiApps/markcalculator/Course1;->putOveralMarks()V

    .line 162
    const/4 v13, 0x1

    .local v13, i:I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pareekiApps/markcalculator/Course1;->entryCounter:I

    move/from16 v30, v0

    move/from16 v0, v30

    if-le v13, v0, :cond_0

    .line 236
    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v30, v0

    div-double v5, v20, v30

    .line 237
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

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course1;->finalAverage:Landroid/widget/TextView;

    move-object/from16 v30, v0

    new-instance v31, Ljava/lang/StringBuilder;

    const-string v32, "Average:"

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/pareekiApps/markcalculator/Course1;->calculateMark()D

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

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course1;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    move-object/from16 v30, v0

    const-string v31, "Course1finalAverage"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v30 .. v32}, Lcom/pareekiApps/markcalculator/Prefs;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    return-void

    .line 165
    .end local v5           #average:D
    :cond_0
    const v30, 0x7f06001b

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/pareekiApps/markcalculator/Course1;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TableLayout;

    .line 168
    .local v18, table:Landroid/widget/TableLayout;
    new-instance v15, Landroid/widget/TableRow;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 170
    .local v15, row:Landroid/widget/TableRow;
    sget-object v30, Lcom/pareekiApps/markcalculator/Course1;->getPrefs:Landroid/content/SharedPreferences;

    new-instance v31, Ljava/lang/StringBuilder;

    const-string v32, "Entry"

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "Course1"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    const-string v32, "0"

    invoke-interface/range {v30 .. v32}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 172
    .local v14, input:Ljava/lang/String;
    const-string v30, ","

    move-object/from16 v0, v30

    invoke-virtual {v14, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 173
    .local v11, data:[Ljava/lang/String;
    const/16 v30, 0x0

    aget-object v30, v11, v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v16

    .line 174
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

    .line 176
    const/16 v30, 0x1

    aget-object v9, v11, v30

    .line 177
    .local v9, cate:Ljava/lang/String;
    const/16 v30, 0x2

    aget-object v30, v11, v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    .line 178
    .local v27, wei:I
    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v30, v0

    mul-double v30, v30, v16

    add-double v20, v20, v30

    .line 179
    add-int v22, v22, v27

    .line 180
    const/16 v30, 0x3

    aget-object v12, v11, v30

    .line 183
    .local v12, entryName:Ljava/lang/String;
    new-instance v23, Landroid/widget/TextView;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 184
    .local v23, tv1:Landroid/widget/TextView;
    const/16 v30, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 185
    new-instance v24, Landroid/widget/TextView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 186
    .local v24, tv2:Landroid/widget/TextView;
    const/16 v30, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 187
    new-instance v25, Landroid/widget/TextView;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 188
    .local v25, tv3:Landroid/widget/TextView;
    const/16 v30, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 189
    new-instance v26, Landroid/widget/TextView;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 190
    .local v26, tv4:Landroid/widget/TextView;
    const/16 v30, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 192
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

    .line 193
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

    .line 195
    sget-object v30, Lcom/pareekiApps/markcalculator/Course1;->getPrefs:Landroid/content/SharedPreferences;

    new-instance v31, Ljava/lang/StringBuilder;

    const-string v32, "Course1"

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    const-string v32, ""

    invoke-interface/range {v30 .. v32}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 196
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

    .line 197
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

    .line 198
    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v30, v0

    div-double v5, v20, v30

    .line 199
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

    .line 200
    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
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

    .line 203
    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 204
    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 205
    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 206
    move-object/from16 v0, v26

    invoke-virtual {v15, v0}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 208
    const/16 v30, 0x1

    move/from16 v0, v30

    invoke-virtual {v15, v0}, Landroid/widget/TableRow;->setLongClickable(Z)V

    .line 210
    new-instance v30, Landroid/widget/TableLayout$LayoutParams;

    const/16 v31, -0x2

    const/16 v32, -0x2

    invoke-direct/range {v30 .. v32}, Landroid/widget/TableLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v18

    move-object/from16 v1, v30

    invoke-virtual {v0, v15, v1}, Landroid/widget/TableLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 212
    new-instance v30, Lcom/pareekiApps/markcalculator/Course1$2;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v15}, Lcom/pareekiApps/markcalculator/Course1$2;-><init>(Lcom/pareekiApps/markcalculator/Course1;Landroid/widget/TableRow;)V

    move-object/from16 v0, v30

    invoke-virtual {v15, v0}, Landroid/widget/TableRow;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 162
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 889
    invoke-virtual {p0}, Lcom/pareekiApps/markcalculator/Course1;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0c0002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 890
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter "item"

    .prologue
    const/4 v5, 0x0

    .line 894
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    .line 895
    .local v2, itemId:I
    const v3, 0x7f06005d

    if-ne v2, v3, :cond_0

    .line 897
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 899
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const-string v3, "Please note that this is only a very close estimate that takes into consideration the weighting of the categories and the type of assessment. The average listed is accurate and should be accurate to 2 percent because of rounding errors. The program used my teachers, MarkBook, is very accurate and this is designed to immitate that"

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 900
    const-string v3, "Disclamer"

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 902
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 903
    .local v0, ad:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 905
    .end local v0           #ad:Landroid/app/AlertDialog;
    .end local v1           #builder:Landroid/app/AlertDialog$Builder;
    :cond_0
    const v3, 0x7f06005e

    if-ne v2, v3, :cond_2

    .line 907
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 909
    .restart local v1       #builder:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f070027

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 910
    const-string v3, "More Instructions"

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 912
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 913
    .restart local v0       #ad:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 920
    .end local v0           #ad:Landroid/app/AlertDialog;
    .end local v1           #builder:Landroid/app/AlertDialog$Builder;
    :cond_1
    :goto_0
    return v5

    .line 915
    :cond_2
    const v3, 0x7f06005f

    if-ne v2, v3, :cond_1

    .line 918
    invoke-virtual {p0}, Lcom/pareekiApps/markcalculator/Course1;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "The feature is currently unavailable"

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
