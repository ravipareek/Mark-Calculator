.class public Lcom/pareekiApps/markcalculator/Course2;
.super Landroid/app/Activity;
.source "Course2.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "InterstitialSample"

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

    .line 41
    new-instance v0, Lcom/pareekiApps/markcalculator/Prefs;

    invoke-direct {v0, p0}, Lcom/pareekiApps/markcalculator/Prefs;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pareekiApps/markcalculator/Course2;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    .line 42
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

    iput-object v0, p0, Lcom/pareekiApps/markcalculator/Course2;->categories:[Ljava/lang/String;

    .line 43
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

    iput-object v0, p0, Lcom/pareekiApps/markcalculator/Course2;->cats:[Ljava/lang/String;

    .line 44
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

    iput-object v0, p0, Lcom/pareekiApps/markcalculator/Course2;->weights:[Ljava/lang/String;

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/pareekiApps/markcalculator/Course2;->spinnerSelectCategory:Ljava/lang/String;

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/pareekiApps/markcalculator/Course2;->spinnerSelectWeight:Ljava/lang/String;

    .line 48
    iput v3, p0, Lcom/pareekiApps/markcalculator/Course2;->entryCounter:I

    .line 49
    const-wide/high16 v0, -0x4010

    iput-wide v0, p0, Lcom/pareekiApps/markcalculator/Course2;->answer:D

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/pareekiApps/markcalculator/Course2;->cat:Ljava/lang/String;

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/pareekiApps/markcalculator/Course2;->name:Ljava/lang/String;

    .line 34
    return-void
.end method

.method static synthetic access$0(Lcom/pareekiApps/markcalculator/Course2;Landroid/view/View;Landroid/widget/TableRow;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 924
    invoke-direct {p0, p1, p2}, Lcom/pareekiApps/markcalculator/Course2;->showPopupMenu(Landroid/view/View;Landroid/widget/TableRow;)V

    return-void
.end method

.method static synthetic access$1(Lcom/pareekiApps/markcalculator/Course2;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 243
    invoke-direct {p0, p1, p2}, Lcom/pareekiApps/markcalculator/Course2;->editMark(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$2(Lcom/pareekiApps/markcalculator/Course2;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 389
    invoke-direct {p0, p1}, Lcom/pareekiApps/markcalculator/Course2;->updateRow(I)V

    return-void
.end method

.method static synthetic access$3(Lcom/pareekiApps/markcalculator/Course2;)V
    .locals 0
    .parameter

    .prologue
    .line 516
    invoke-direct {p0}, Lcom/pareekiApps/markcalculator/Course2;->putOveralMarks()V

    return-void
.end method

.method static synthetic access$4(Lcom/pareekiApps/markcalculator/Course2;)V
    .locals 0
    .parameter

    .prologue
    .line 657
    invoke-direct {p0}, Lcom/pareekiApps/markcalculator/Course2;->savetheNewMark()V

    return-void
.end method

.method static synthetic access$5(Lcom/pareekiApps/markcalculator/Course2;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 952
    invoke-direct {p0, p1, p2}, Lcom/pareekiApps/markcalculator/Course2;->deleteMark(Ljava/lang/String;I)V

    return-void
.end method

.method private calculateMark()D
    .locals 25

    .prologue
    .line 756
    const/4 v12, 0x0

    .line 757
    .local v12, hasKU:Z
    const/4 v13, 0x0

    .line 758
    .local v13, hasMC:Z
    const/4 v14, 0x0

    .line 759
    .local v14, hasTI:Z
    const/4 v11, 0x0

    .line 761
    .local v11, hasC:Z
    const-wide/16 v4, 0x0

    .line 762
    .local v4, KUMark:D
    const-wide/16 v6, 0x0

    .line 763
    .local v6, MCMark:D
    const-wide/16 v8, 0x0

    .line 764
    .local v8, TIMark:D
    const-wide/16 v2, 0x0

    .line 766
    .local v2, CMark:D
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pareekiApps/markcalculator/Course2;->totalKUCount:I

    move/from16 v19, v0

    if-lez v19, :cond_0

    .line 768
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/pareekiApps/markcalculator/Course2;->totalKU:D

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pareekiApps/markcalculator/Course2;->totalKUCount:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v21, v0

    div-double v4, v19, v21

    const/4 v12, 0x1

    .line 770
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pareekiApps/markcalculator/Course2;->totalMCCount:I

    move/from16 v19, v0

    if-lez v19, :cond_1

    .line 772
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/pareekiApps/markcalculator/Course2;->totalMC:D

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pareekiApps/markcalculator/Course2;->totalMCCount:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v21, v0

    div-double v6, v19, v21

    const/4 v13, 0x1

    .line 774
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pareekiApps/markcalculator/Course2;->totalTICount:I

    move/from16 v19, v0

    if-lez v19, :cond_2

    .line 776
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/pareekiApps/markcalculator/Course2;->totalTI:D

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pareekiApps/markcalculator/Course2;->totalTICount:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v21, v0

    div-double v8, v19, v21

    const/4 v14, 0x1

    .line 778
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pareekiApps/markcalculator/Course2;->totalCCount:I

    move/from16 v19, v0

    if-lez v19, :cond_3

    .line 780
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/pareekiApps/markcalculator/Course2;->totalC:D

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pareekiApps/markcalculator/Course2;->totalCCount:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v21, v0

    div-double v2, v19, v21

    const/4 v11, 0x1

    .line 783
    :cond_3
    const/4 v10, 0x0

    .line 784
    .local v10, divider:I
    if-eqz v12, :cond_4

    .line 786
    add-int/lit8 v10, v10, 0x1

    .line 788
    :cond_4
    if-eqz v13, :cond_5

    .line 790
    add-int/lit8 v10, v10, 0x1

    .line 792
    :cond_5
    if-eqz v14, :cond_6

    .line 794
    add-int/lit8 v10, v10, 0x1

    .line 796
    :cond_6
    if-eqz v11, :cond_7

    .line 798
    add-int/lit8 v10, v10, 0x1

    .line 801
    :cond_7
    add-double v19, v4, v6

    add-double v19, v19, v8

    add-double v15, v19, v2

    .line 802
    .local v15, returning:D
    const/16 v19, 0x4

    move/from16 v0, v19

    if-ne v10, v0, :cond_8

    .line 885
    .end local v15           #returning:D
    :goto_0
    return-wide v15

    .line 806
    .restart local v15       #returning:D
    :cond_8
    const/16 v19, 0x3

    move/from16 v0, v19

    if-ne v10, v0, :cond_c

    .line 808
    if-nez v12, :cond_9

    .line 810
    sget-object v19, Lcom/pareekiApps/markcalculator/Course2;->getPrefs:Landroid/content/SharedPreferences;

    const-string v20, "Course2MC"

    const-string v21, ""

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v19

    const-wide/high16 v21, 0x4059

    div-double v19, v19, v21

    sget-object v21, Lcom/pareekiApps/markcalculator/Course2;->getPrefs:Landroid/content/SharedPreferences;

    const-string v22, "Course2TI"

    const-string v23, ""

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v21

    const-wide/high16 v23, 0x4059

    div-double v21, v21, v23

    add-double v19, v19, v21

    sget-object v21, Lcom/pareekiApps/markcalculator/Course2;->getPrefs:Landroid/content/SharedPreferences;

    const-string v22, "Course2C"

    const-string v23, ""

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v21

    const-wide/high16 v23, 0x4059

    div-double v21, v21, v23

    add-double v17, v19, v21

    .line 811
    .local v17, weightSum:D
    div-double v15, v15, v17

    goto :goto_0

    .line 813
    .end local v17           #weightSum:D
    :cond_9
    if-nez v13, :cond_a

    .line 815
    sget-object v19, Lcom/pareekiApps/markcalculator/Course2;->getPrefs:Landroid/content/SharedPreferences;

    const-string v20, "Course2KU"

    const-string v21, ""

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v19

    const-wide/high16 v21, 0x4059

    div-double v19, v19, v21

    sget-object v21, Lcom/pareekiApps/markcalculator/Course2;->getPrefs:Landroid/content/SharedPreferences;

    const-string v22, "Course2TI"

    const-string v23, ""

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v21

    const-wide/high16 v23, 0x4059

    div-double v21, v21, v23

    add-double v19, v19, v21

    sget-object v21, Lcom/pareekiApps/markcalculator/Course2;->getPrefs:Landroid/content/SharedPreferences;

    const-string v22, "Course2C"

    const-string v23, ""

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v21

    const-wide/high16 v23, 0x4059

    div-double v21, v21, v23

    add-double v17, v19, v21

    .line 816
    .restart local v17       #weightSum:D
    div-double v15, v15, v17

    goto/16 :goto_0

    .line 818
    .end local v17           #weightSum:D
    :cond_a
    if-nez v14, :cond_b

    .line 820
    sget-object v19, Lcom/pareekiApps/markcalculator/Course2;->getPrefs:Landroid/content/SharedPreferences;

    const-string v20, "Course2MC"

    const-string v21, ""

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v19

    const-wide/high16 v21, 0x4059

    div-double v19, v19, v21

    sget-object v21, Lcom/pareekiApps/markcalculator/Course2;->getPrefs:Landroid/content/SharedPreferences;

    const-string v22, "Course2KU"

    const-string v23, ""

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v21

    const-wide/high16 v23, 0x4059

    div-double v21, v21, v23

    add-double v19, v19, v21

    sget-object v21, Lcom/pareekiApps/markcalculator/Course2;->getPrefs:Landroid/content/SharedPreferences;

    const-string v22, "Course2C"

    const-string v23, ""

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v21

    const-wide/high16 v23, 0x4059

    div-double v21, v21, v23

    add-double v17, v19, v21

    .line 821
    .restart local v17       #weightSum:D
    div-double v15, v15, v17

    goto/16 :goto_0

    .line 823
    .end local v17           #weightSum:D
    :cond_b
    if-nez v11, :cond_16

    .line 825
    sget-object v19, Lcom/pareekiApps/markcalculator/Course2;->getPrefs:Landroid/content/SharedPreferences;

    const-string v20, "Course2MC"

    const-string v21, ""

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v19

    const-wide/high16 v21, 0x4059

    div-double v19, v19, v21

    sget-object v21, Lcom/pareekiApps/markcalculator/Course2;->getPrefs:Landroid/content/SharedPreferences;

    const-string v22, "Course2TI"

    const-string v23, ""

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v21

    const-wide/high16 v23, 0x4059

    div-double v21, v21, v23

    add-double v19, v19, v21

    sget-object v21, Lcom/pareekiApps/markcalculator/Course2;->getPrefs:Landroid/content/SharedPreferences;

    const-string v22, "Course2KU"

    const-string v23, ""

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v21

    const-wide/high16 v23, 0x4059

    div-double v21, v21, v23

    add-double v17, v19, v21

    .line 826
    .restart local v17       #weightSum:D
    div-double v15, v15, v17

    goto/16 :goto_0

    .line 829
    .end local v17           #weightSum:D
    :cond_c
    const/16 v19, 0x2

    move/from16 v0, v19

    if-ne v10, v0, :cond_12

    .line 831
    if-nez v12, :cond_d

    if-nez v13, :cond_d

    .line 833
    sget-object v19, Lcom/pareekiApps/markcalculator/Course2;->getPrefs:Landroid/content/SharedPreferences;

    const-string v20, "Course2TI"

    const-string v21, ""

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v19

    const-wide/high16 v21, 0x4059

    div-double v19, v19, v21

    sget-object v21, Lcom/pareekiApps/markcalculator/Course2;->getPrefs:Landroid/content/SharedPreferences;

    const-string v22, "Course2C"

    const-string v23, ""

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v21

    const-wide/high16 v23, 0x4059

    div-double v21, v21, v23

    add-double v17, v19, v21

    .line 834
    .restart local v17       #weightSum:D
    div-double v15, v15, v17

    goto/16 :goto_0

    .line 836
    .end local v17           #weightSum:D
    :cond_d
    if-nez v12, :cond_e

    if-nez v14, :cond_e

    .line 838
    sget-object v19, Lcom/pareekiApps/markcalculator/Course2;->getPrefs:Landroid/content/SharedPreferences;

    const-string v20, "Course2MC"

    const-string v21, ""

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v19

    const-wide/high16 v21, 0x4059

    div-double v19, v19, v21

    sget-object v21, Lcom/pareekiApps/markcalculator/Course2;->getPrefs:Landroid/content/SharedPreferences;

    const-string v22, "Course2C"

    const-string v23, ""

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v21

    const-wide/high16 v23, 0x4059

    div-double v21, v21, v23

    add-double v17, v19, v21

    .line 839
    .restart local v17       #weightSum:D
    div-double v15, v15, v17

    goto/16 :goto_0

    .line 841
    .end local v17           #weightSum:D
    :cond_e
    if-nez v12, :cond_f

    if-nez v11, :cond_f

    .line 843
    sget-object v19, Lcom/pareekiApps/markcalculator/Course2;->getPrefs:Landroid/content/SharedPreferences;

    const-string v20, "Course2TI"

    const-string v21, ""

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v19

    const-wide/high16 v21, 0x4059

    div-double v19, v19, v21

    sget-object v21, Lcom/pareekiApps/markcalculator/Course2;->getPrefs:Landroid/content/SharedPreferences;

    const-string v22, "Course2MC"

    const-string v23, ""

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v21

    const-wide/high16 v23, 0x4059

    div-double v21, v21, v23

    add-double v17, v19, v21

    .line 844
    .restart local v17       #weightSum:D
    div-double v15, v15, v17

    goto/16 :goto_0

    .line 846
    .end local v17           #weightSum:D
    :cond_f
    if-nez v13, :cond_10

    if-nez v14, :cond_10

    .line 848
    sget-object v19, Lcom/pareekiApps/markcalculator/Course2;->getPrefs:Landroid/content/SharedPreferences;

    const-string v20, "Course2KU"

    const-string v21, ""

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v19

    const-wide/high16 v21, 0x4059

    div-double v19, v19, v21

    sget-object v21, Lcom/pareekiApps/markcalculator/Course2;->getPrefs:Landroid/content/SharedPreferences;

    const-string v22, "Course2C"

    const-string v23, ""

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v21

    const-wide/high16 v23, 0x4059

    div-double v21, v21, v23

    add-double v17, v19, v21

    .line 849
    .restart local v17       #weightSum:D
    div-double v15, v15, v17

    goto/16 :goto_0

    .line 851
    .end local v17           #weightSum:D
    :cond_10
    if-nez v13, :cond_11

    if-nez v11, :cond_11

    .line 853
    sget-object v19, Lcom/pareekiApps/markcalculator/Course2;->getPrefs:Landroid/content/SharedPreferences;

    const-string v20, "Course2TI"

    const-string v21, ""

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v19

    const-wide/high16 v21, 0x4059

    div-double v19, v19, v21

    sget-object v21, Lcom/pareekiApps/markcalculator/Course2;->getPrefs:Landroid/content/SharedPreferences;

    const-string v22, "Course2KU"

    const-string v23, ""

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v21

    const-wide/high16 v23, 0x4059

    div-double v21, v21, v23

    add-double v17, v19, v21

    .line 854
    .restart local v17       #weightSum:D
    div-double v15, v15, v17

    goto/16 :goto_0

    .line 856
    .end local v17           #weightSum:D
    :cond_11
    if-nez v14, :cond_16

    if-nez v11, :cond_16

    .line 858
    sget-object v19, Lcom/pareekiApps/markcalculator/Course2;->getPrefs:Landroid/content/SharedPreferences;

    const-string v20, "Course2KU"

    const-string v21, ""

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v19

    const-wide/high16 v21, 0x4059

    div-double v19, v19, v21

    sget-object v21, Lcom/pareekiApps/markcalculator/Course2;->getPrefs:Landroid/content/SharedPreferences;

    const-string v22, "Course2MC"

    const-string v23, ""

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v21

    const-wide/high16 v23, 0x4059

    div-double v21, v21, v23

    add-double v17, v19, v21

    .line 859
    .restart local v17       #weightSum:D
    div-double v15, v15, v17

    goto/16 :goto_0

    .line 862
    .end local v17           #weightSum:D
    :cond_12
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v10, v0, :cond_16

    .line 864
    if-eqz v12, :cond_13

    .line 866
    sget-object v19, Lcom/pareekiApps/markcalculator/Course2;->getPrefs:Landroid/content/SharedPreferences;

    const-string v20, "Course2KU"

    const-string v21, ""

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v19

    const-wide/high16 v21, 0x4059

    div-double v17, v19, v21

    .line 867
    .restart local v17       #weightSum:D
    div-double v15, v15, v17

    goto/16 :goto_0

    .line 869
    .end local v17           #weightSum:D
    :cond_13
    if-eqz v13, :cond_14

    .line 871
    sget-object v19, Lcom/pareekiApps/markcalculator/Course2;->getPrefs:Landroid/content/SharedPreferences;

    const-string v20, "Course2MC"

    const-string v21, ""

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v19

    const-wide/high16 v21, 0x4059

    div-double v17, v19, v21

    .line 872
    .restart local v17       #weightSum:D
    div-double v15, v15, v17

    goto/16 :goto_0

    .line 874
    .end local v17           #weightSum:D
    :cond_14
    if-eqz v14, :cond_15

    .line 876
    sget-object v19, Lcom/pareekiApps/markcalculator/Course2;->getPrefs:Landroid/content/SharedPreferences;

    const-string v20, "Course2TI"

    const-string v21, ""

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v19

    const-wide/high16 v21, 0x4059

    div-double v17, v19, v21

    .line 877
    .restart local v17       #weightSum:D
    div-double v15, v15, v17

    goto/16 :goto_0

    .line 879
    .end local v17           #weightSum:D
    :cond_15
    if-eqz v11, :cond_16

    .line 881
    sget-object v19, Lcom/pareekiApps/markcalculator/Course2;->getPrefs:Landroid/content/SharedPreferences;

    const-string v20, "Course2C"

    const-string v21, ""

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v19

    const-wide/high16 v21, 0x4059

    div-double v17, v19, v21

    .line 882
    .restart local v17       #weightSum:D
    div-double v15, v15, v17

    goto/16 :goto_0

    .line 885
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

    iget v12, v0, Lcom/pareekiApps/markcalculator/Course2;->entryCounter:I

    if-lt v1, v12, :cond_0

    .line 1112
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pareekiApps/markcalculator/Course2;->finalAverage:Landroid/widget/TextView;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Average:"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/pareekiApps/markcalculator/Course2;->calculateMark()D

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
    invoke-direct/range {p0 .. p0}, Lcom/pareekiApps/markcalculator/Course2;->putOveralMarks()V

    .line 1114
    return-void

    .line 1046
    :cond_0
    sget-object v12, Lcom/pareekiApps/markcalculator/Course2;->getPrefs:Landroid/content/SharedPreferences;

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
    sget-object v12, Lcom/pareekiApps/markcalculator/Course2;->getPrefs:Landroid/content/SharedPreferences;

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

    iget-wide v12, v0, Lcom/pareekiApps/markcalculator/Course2;->totalKU:D

    sub-double/2addr v12, v9

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/pareekiApps/markcalculator/Course2;->totalKU:D

    .line 1077
    move-object/from16 v0, p0

    iget v12, v0, Lcom/pareekiApps/markcalculator/Course2;->totalKUCount:I

    sub-int/2addr v12, v11

    move-object/from16 v0, p0

    iput v12, v0, Lcom/pareekiApps/markcalculator/Course2;->totalKUCount:I

    .line 1079
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pareekiApps/markcalculator/Course2;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    const-string v13, "Course1totalKU"

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/pareekiApps/markcalculator/Course2;->totalKU:D

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lcom/pareekiApps/markcalculator/Prefs;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 1080
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pareekiApps/markcalculator/Course2;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    const-string v13, "Course1totalKUCount"

    move-object/from16 v0, p0

    iget v14, v0, Lcom/pareekiApps/markcalculator/Course2;->totalKUCount:I

    invoke-virtual {v12, v13, v14}, Lcom/pareekiApps/markcalculator/Prefs;->setPreferenceInt(Ljava/lang/String;I)V

    .line 1107
    :cond_1
    :goto_5
    move-object/from16 v0, p0

    iget v12, v0, Lcom/pareekiApps/markcalculator/Course2;->entryCounter:I

    add-int/lit8 v12, v12, -0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/pareekiApps/markcalculator/Course2;->entryCounter:I

    .line 1108
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pareekiApps/markcalculator/Course2;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    const-string v13, "Class1EntryCounter"

    move-object/from16 v0, p0

    iget v14, v0, Lcom/pareekiApps/markcalculator/Course2;->entryCounter:I

    invoke-virtual {v12, v13, v14}, Lcom/pareekiApps/markcalculator/Prefs;->setPreferenceInt(Ljava/lang/String;I)V

    .line 1109
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/pareekiApps/markcalculator/Course2;->rearrangeData(I)V

    .line 1110
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/pareekiApps/markcalculator/Course2;->updateRow(I)V

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

    iget-object v13, v0, Lcom/pareekiApps/markcalculator/Course2;->weights:[Ljava/lang/String;

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

    iget-object v13, v0, Lcom/pareekiApps/markcalculator/Course2;->cats:[Ljava/lang/String;

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

    iget-wide v12, v0, Lcom/pareekiApps/markcalculator/Course2;->totalMC:D

    sub-double/2addr v12, v9

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/pareekiApps/markcalculator/Course2;->totalMC:D

    .line 1085
    move-object/from16 v0, p0

    iget v12, v0, Lcom/pareekiApps/markcalculator/Course2;->totalMCCount:I

    sub-int/2addr v12, v11

    move-object/from16 v0, p0

    iput v12, v0, Lcom/pareekiApps/markcalculator/Course2;->totalMCCount:I

    .line 1087
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pareekiApps/markcalculator/Course2;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    const-string v13, "Course1totalMC"

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/pareekiApps/markcalculator/Course2;->totalMC:D

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lcom/pareekiApps/markcalculator/Prefs;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 1088
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pareekiApps/markcalculator/Course2;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    const-string v13, "Course1totalMCCount"

    move-object/from16 v0, p0

    iget v14, v0, Lcom/pareekiApps/markcalculator/Course2;->totalMCCount:I

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

    iget-wide v12, v0, Lcom/pareekiApps/markcalculator/Course2;->totalTI:D

    sub-double/2addr v12, v9

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/pareekiApps/markcalculator/Course2;->totalTI:D

    .line 1093
    move-object/from16 v0, p0

    iget v12, v0, Lcom/pareekiApps/markcalculator/Course2;->totalTICount:I

    sub-int/2addr v12, v11

    move-object/from16 v0, p0

    iput v12, v0, Lcom/pareekiApps/markcalculator/Course2;->totalTICount:I

    .line 1095
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pareekiApps/markcalculator/Course2;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    const-string v13, "Course1totalTI"

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/pareekiApps/markcalculator/Course2;->totalTI:D

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lcom/pareekiApps/markcalculator/Prefs;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 1096
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pareekiApps/markcalculator/Course2;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    const-string v13, "Course1totalTICount"

    move-object/from16 v0, p0

    iget v14, v0, Lcom/pareekiApps/markcalculator/Course2;->totalTICount:I

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

    iget-wide v12, v0, Lcom/pareekiApps/markcalculator/Course2;->totalC:D

    sub-double/2addr v12, v9

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/pareekiApps/markcalculator/Course2;->totalC:D

    .line 1101
    move-object/from16 v0, p0

    iget v12, v0, Lcom/pareekiApps/markcalculator/Course2;->totalCCount:I

    sub-int/2addr v12, v11

    move-object/from16 v0, p0

    iput v12, v0, Lcom/pareekiApps/markcalculator/Course2;->totalCCount:I

    .line 1103
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pareekiApps/markcalculator/Course2;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    const-string v13, "Course1totalC"

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/pareekiApps/markcalculator/Course2;->totalC:D

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lcom/pareekiApps/markcalculator/Prefs;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 1104
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pareekiApps/markcalculator/Course2;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    const-string v13, "Course1totalCCount"

    move-object/from16 v0, p0

    iget v14, v0, Lcom/pareekiApps/markcalculator/Course2;->totalCCount:I

    invoke-virtual {v12, v13, v14}, Lcom/pareekiApps/markcalculator/Prefs;->setPreferenceInt(Ljava/lang/String;I)V

    goto/16 :goto_5
.end method

.method private deleteMark(Ljava/lang/String;I)V
    .locals 18
    .parameter "col1Name"
    .parameter "rowNum"

    .prologue
    .line 959
    sget-object v12, Lcom/pareekiApps/markcalculator/Course2;->getPrefs:Landroid/content/SharedPreferences;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Entry"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "Course2"

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
    sget-object v12, Lcom/pareekiApps/markcalculator/Course2;->getPrefs:Landroid/content/SharedPreferences;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Course2"

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

    iget-wide v12, v0, Lcom/pareekiApps/markcalculator/Course2;->totalKU:D

    sub-double/2addr v12, v9

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/pareekiApps/markcalculator/Course2;->totalKU:D

    .line 990
    move-object/from16 v0, p0

    iget v12, v0, Lcom/pareekiApps/markcalculator/Course2;->totalKUCount:I

    sub-int/2addr v12, v11

    move-object/from16 v0, p0

    iput v12, v0, Lcom/pareekiApps/markcalculator/Course2;->totalKUCount:I

    .line 992
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pareekiApps/markcalculator/Course2;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    const-string v13, "Course2totalKU"

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/pareekiApps/markcalculator/Course2;->totalKU:D

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lcom/pareekiApps/markcalculator/Prefs;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 993
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pareekiApps/markcalculator/Course2;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    const-string v13, "Course2totalKUCount"

    move-object/from16 v0, p0

    iget v14, v0, Lcom/pareekiApps/markcalculator/Course2;->totalKUCount:I

    invoke-virtual {v12, v13, v14}, Lcom/pareekiApps/markcalculator/Prefs;->setPreferenceInt(Ljava/lang/String;I)V

    .line 1020
    :cond_0
    :goto_4
    move-object/from16 v0, p0

    iget v12, v0, Lcom/pareekiApps/markcalculator/Course2;->entryCounter:I

    add-int/lit8 v12, v12, -0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/pareekiApps/markcalculator/Course2;->entryCounter:I

    .line 1021
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pareekiApps/markcalculator/Course2;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    const-string v13, "Class2EntryCounter"

    move-object/from16 v0, p0

    iget v14, v0, Lcom/pareekiApps/markcalculator/Course2;->entryCounter:I

    invoke-virtual {v12, v13, v14}, Lcom/pareekiApps/markcalculator/Prefs;->setPreferenceInt(Ljava/lang/String;I)V

    .line 1022
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/pareekiApps/markcalculator/Course2;->rearrangeData(I)V

    .line 1023
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/pareekiApps/markcalculator/Course2;->updateRow(I)V

    .line 1024
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pareekiApps/markcalculator/Course2;->finalAverage:Landroid/widget/TextView;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Average:"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/pareekiApps/markcalculator/Course2;->calculateMark()D

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
    invoke-direct/range {p0 .. p0}, Lcom/pareekiApps/markcalculator/Course2;->putOveralMarks()V

    .line 1026
    return-void

    .line 968
    .end local v4           #categoryWeight:Ljava/lang/String;
    .end local v9           #removing:D
    :cond_1
    const/4 v12, 0x2

    aget-object v12, v5, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pareekiApps/markcalculator/Course2;->weights:[Ljava/lang/String;

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

    iget-object v13, v0, Lcom/pareekiApps/markcalculator/Course2;->cats:[Ljava/lang/String;

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

    iget-wide v12, v0, Lcom/pareekiApps/markcalculator/Course2;->totalMC:D

    sub-double/2addr v12, v9

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/pareekiApps/markcalculator/Course2;->totalMC:D

    .line 998
    move-object/from16 v0, p0

    iget v12, v0, Lcom/pareekiApps/markcalculator/Course2;->totalMCCount:I

    sub-int/2addr v12, v11

    move-object/from16 v0, p0

    iput v12, v0, Lcom/pareekiApps/markcalculator/Course2;->totalMCCount:I

    .line 1000
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pareekiApps/markcalculator/Course2;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    const-string v13, "Course2totalMC"

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/pareekiApps/markcalculator/Course2;->totalMC:D

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lcom/pareekiApps/markcalculator/Prefs;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 1001
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pareekiApps/markcalculator/Course2;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    const-string v13, "Course2totalMCCount"

    move-object/from16 v0, p0

    iget v14, v0, Lcom/pareekiApps/markcalculator/Course2;->totalMCCount:I

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

    iget-wide v12, v0, Lcom/pareekiApps/markcalculator/Course2;->totalTI:D

    sub-double/2addr v12, v9

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/pareekiApps/markcalculator/Course2;->totalTI:D

    .line 1006
    move-object/from16 v0, p0

    iget v12, v0, Lcom/pareekiApps/markcalculator/Course2;->totalTICount:I

    sub-int/2addr v12, v11

    move-object/from16 v0, p0

    iput v12, v0, Lcom/pareekiApps/markcalculator/Course2;->totalTICount:I

    .line 1008
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pareekiApps/markcalculator/Course2;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    const-string v13, "Course2totalTI"

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/pareekiApps/markcalculator/Course2;->totalTI:D

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lcom/pareekiApps/markcalculator/Prefs;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 1009
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pareekiApps/markcalculator/Course2;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    const-string v13, "Course2totalTICount"

    move-object/from16 v0, p0

    iget v14, v0, Lcom/pareekiApps/markcalculator/Course2;->totalTICount:I

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

    iget-wide v12, v0, Lcom/pareekiApps/markcalculator/Course2;->totalC:D

    sub-double/2addr v12, v9

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/pareekiApps/markcalculator/Course2;->totalC:D

    .line 1014
    move-object/from16 v0, p0

    iget v12, v0, Lcom/pareekiApps/markcalculator/Course2;->totalCCount:I

    sub-int/2addr v12, v11

    move-object/from16 v0, p0

    iput v12, v0, Lcom/pareekiApps/markcalculator/Course2;->totalCCount:I

    .line 1016
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pareekiApps/markcalculator/Course2;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    const-string v13, "Course2totalC"

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/pareekiApps/markcalculator/Course2;->totalC:D

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lcom/pareekiApps/markcalculator/Prefs;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 1017
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pareekiApps/markcalculator/Course2;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    const-string v13, "Course2totalCCount"

    move-object/from16 v0, p0

    iget v14, v0, Lcom/pareekiApps/markcalculator/Course2;->totalCCount:I

    invoke-virtual {v12, v13, v14}, Lcom/pareekiApps/markcalculator/Prefs;->setPreferenceInt(Ljava/lang/String;I)V

    goto/16 :goto_4
.end method

.method private editMark(Ljava/lang/String;I)V
    .locals 20
    .parameter "col1Name"
    .parameter "rowNum"

    .prologue
    .line 245
    new-instance v1, Landroid/app/Dialog;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/pareekiApps/markcalculator/Course2;->builder:Landroid/app/Dialog;

    .line 246
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pareekiApps/markcalculator/Course2;->builder:Landroid/app/Dialog;

    const-string v2, "Editing a mark"

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 249
    invoke-virtual/range {p0 .. p0}, Lcom/pareekiApps/markcalculator/Course2;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/LayoutInflater;

    .line 250
    .local v14, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f030002

    const/4 v2, 0x0

    invoke-virtual {v14, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v15

    .line 251
    .local v15, layout_spinners:Landroid/view/View;
    const v1, 0x7f060013

    invoke-virtual {v15, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/Spinner;

    .line 252
    .local v17, spinner1:Landroid/widget/Spinner;
    const v1, 0x7f060014

    invoke-virtual {v15, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/Spinner;

    .line 253
    .local v18, spinner2:Landroid/widget/Spinner;
    const v1, 0x7f060015

    invoke-virtual {v15, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/Button;

    .line 254
    .local v16, saveMark:Landroid/widget/Button;
    const v1, 0x7f060011

    invoke-virtual {v15, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 255
    .local v3, numMark:Landroid/widget/EditText;
    const v1, 0x7f060012

    invoke-virtual {v15, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 256
    .local v4, denMark:Landroid/widget/EditText;
    const v1, 0x7f060010

    invoke-virtual {v15, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 259
    .local v5, et:Landroid/widget/EditText;
    sget-object v1, Lcom/pareekiApps/markcalculator/Course2;->getPrefs:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "Course2Entry"

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

    .line 260
    .local v12, get:Ljava/lang/String;
    const-string v1, ","

    invoke-virtual {v12, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 262
    .local v19, values:[Ljava/lang/String;
    sget-object v1, Lcom/pareekiApps/markcalculator/Course2;->getPrefs:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "Entry"

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "Course2"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, ",,"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 263
    .local v10, allData:Ljava/lang/String;
    const-string v1, ","

    invoke-virtual {v10, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 265
    .local v11, data:[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v19, v1

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 266
    const/4 v1, 0x1

    aget-object v1, v19, v1

    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 267
    const/4 v1, 0x3

    aget-object v1, v11, v1

    invoke-virtual {v5, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 269
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pareekiApps/markcalculator/Course2;->builder:Landroid/app/Dialog;

    invoke-virtual {v1, v15}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 270
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pareekiApps/markcalculator/Course2;->builder:Landroid/app/Dialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 272
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pareekiApps/markcalculator/Course2;->builder:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 276
    new-instance v8, Landroid/widget/ArrayAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/pareekiApps/markcalculator/Course2;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1090008

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/pareekiApps/markcalculator/Course2;->categories:[Ljava/lang/String;

    invoke-direct {v8, v1, v2, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 277
    .local v8, adapter1:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v1, 0x1090009

    invoke-virtual {v8, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 278
    new-instance v1, Lcom/pareekiApps/markcalculator/CustomOnItemSelectedListener;

    invoke-direct {v1}, Lcom/pareekiApps/markcalculator/CustomOnItemSelectedListener;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 279
    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 281
    new-instance v9, Landroid/widget/ArrayAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/pareekiApps/markcalculator/Course2;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1090008

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/pareekiApps/markcalculator/Course2;->weights:[Ljava/lang/String;

    invoke-direct {v9, v1, v2, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 282
    .local v9, adapter2:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v1, 0x1090009

    invoke-virtual {v9, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 283
    new-instance v1, Lcom/pareekiApps/markcalculator/CustomOnItemSelectedListener;

    invoke-direct {v1}, Lcom/pareekiApps/markcalculator/CustomOnItemSelectedListener;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 284
    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 287
    const/4 v13, 0x0

    .local v13, i:I
    :goto_0
    const/4 v1, 0x5

    if-lt v13, v1, :cond_1

    .line 295
    :goto_1
    const/4 v13, 0x0

    :goto_2
    const/4 v1, 0x6

    if-lt v13, v1, :cond_3

    .line 305
    :goto_3
    new-instance v1, Lcom/pareekiApps/markcalculator/Course2$3;

    move-object/from16 v2, p0

    move/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/pareekiApps/markcalculator/Course2$3;-><init>(Lcom/pareekiApps/markcalculator/Course2;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;I)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 374
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pareekiApps/markcalculator/Course2;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/InterstitialAd;->isLoaded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 376
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pareekiApps/markcalculator/Course2;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/InterstitialAd;->show()V

    .line 378
    new-instance v1, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    .line 379
    const-string v2, "00811854ce4d1200"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v1

    .line 380
    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v7

    .line 382
    .local v7, adRequest:Lcom/google/android/gms/ads/AdRequest;
    new-instance v1, Lcom/google/android/gms/ads/InterstitialAd;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/google/android/gms/ads/InterstitialAd;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/pareekiApps/markcalculator/Course2;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    .line 383
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pareekiApps/markcalculator/Course2;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    const-string v2, "ca-app-pub-4733259834848580/4615883357"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/InterstitialAd;->setAdUnitId(Ljava/lang/String;)V

    .line 386
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pareekiApps/markcalculator/Course2;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v1, v7}, Lcom/google/android/gms/ads/InterstitialAd;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 388
    .end local v7           #adRequest:Lcom/google/android/gms/ads/AdRequest;
    :cond_0
    return-void

    .line 289
    :cond_1
    const/4 v1, 0x1

    aget-object v1, v11, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pareekiApps/markcalculator/Course2;->cats:[Ljava/lang/String;

    aget-object v2, v2, v13

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 291
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_1

    .line 287
    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 297
    :cond_3
    const/4 v1, 0x2

    aget-object v1, v11, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pareekiApps/markcalculator/Course2;->weights:[Ljava/lang/String;

    aget-object v2, v2, v13

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 299
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_3

    .line 295
    :cond_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_2
.end method

.method private putOveralMarks()V
    .locals 19

    .prologue
    .line 518
    sget-object v14, Lcom/pareekiApps/markcalculator/Course2;->getPrefs:Landroid/content/SharedPreferences;

    const-string v15, "Course2KU"

    const-string v16, "0"

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 519
    .local v4, KUWeight:D
    sget-object v14, Lcom/pareekiApps/markcalculator/Course2;->getPrefs:Landroid/content/SharedPreferences;

    const-string v15, "Course2MC"

    const-string v16, "0"

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    .line 520
    .local v6, MCWeight:D
    sget-object v14, Lcom/pareekiApps/markcalculator/Course2;->getPrefs:Landroid/content/SharedPreferences;

    const-string v15, "Course2TI"

    const-string v16, "0"

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    .line 521
    .local v8, TIWeight:D
    sget-object v14, Lcom/pareekiApps/markcalculator/Course2;->getPrefs:Landroid/content/SharedPreferences;

    const-string v15, "Course2C"

    const-string v16, "0"

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 523
    .local v2, CWeight:D
    const v14, 0x7f060025

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/pareekiApps/markcalculator/Course2;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 524
    .local v11, ku:Landroid/widget/TextView;
    const v14, 0x7f060027

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/pareekiApps/markcalculator/Course2;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 525
    .local v12, mc:Landroid/widget/TextView;
    const v14, 0x7f060029

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/pareekiApps/markcalculator/Course2;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 526
    .local v13, ti:Landroid/widget/TextView;
    const v14, 0x7f06002b

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/pareekiApps/markcalculator/Course2;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 528
    .local v10, c:Landroid/widget/TextView;
    sget-object v14, Lcom/pareekiApps/markcalculator/Course2;->getPrefs:Landroid/content/SharedPreferences;

    const-string v15, "Course2totalKUCount"

    const/16 v16, 0x0

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/pareekiApps/markcalculator/Course2;->totalKUCount:I

    .line 529
    sget-object v14, Lcom/pareekiApps/markcalculator/Course2;->getPrefs:Landroid/content/SharedPreferences;

    const-string v15, "Course2totalMCCount"

    const/16 v16, 0x0

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/pareekiApps/markcalculator/Course2;->totalMCCount:I

    .line 530
    sget-object v14, Lcom/pareekiApps/markcalculator/Course2;->getPrefs:Landroid/content/SharedPreferences;

    const-string v15, "Course2totalTICount"

    const/16 v16, 0x0

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/pareekiApps/markcalculator/Course2;->totalTICount:I

    .line 531
    sget-object v14, Lcom/pareekiApps/markcalculator/Course2;->getPrefs:Landroid/content/SharedPreferences;

    const-string v15, "Course2totalCCount"

    const/16 v16, 0x0

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/pareekiApps/markcalculator/Course2;->totalCCount:I

    .line 533
    sget-object v14, Lcom/pareekiApps/markcalculator/Course2;->getPrefs:Landroid/content/SharedPreferences;

    const-string v15, "Course2totalKU"

    const-string v16, "0"

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/pareekiApps/markcalculator/Course2;->totalKU:D

    .line 534
    sget-object v14, Lcom/pareekiApps/markcalculator/Course2;->getPrefs:Landroid/content/SharedPreferences;

    const-string v15, "Course2totalMC"

    const-string v16, "0"

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/pareekiApps/markcalculator/Course2;->totalMC:D

    .line 535
    sget-object v14, Lcom/pareekiApps/markcalculator/Course2;->getPrefs:Landroid/content/SharedPreferences;

    const-string v15, "Course2totalTI"

    const-string v16, "0"

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/pareekiApps/markcalculator/Course2;->totalTI:D

    .line 536
    sget-object v14, Lcom/pareekiApps/markcalculator/Course2;->getPrefs:Landroid/content/SharedPreferences;

    const-string v15, "Course2totalC"

    const-string v16, "0"

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/pareekiApps/markcalculator/Course2;->totalC:D

    .line 538
    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/pareekiApps/markcalculator/Course2;->totalKU:D

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pareekiApps/markcalculator/Course2;->totalKUCount:I

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

    .line 539
    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/pareekiApps/markcalculator/Course2;->totalMC:D

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pareekiApps/markcalculator/Course2;->totalMCCount:I

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

    .line 540
    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/pareekiApps/markcalculator/Course2;->totalTI:D

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pareekiApps/markcalculator/Course2;->totalTICount:I

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

    .line 541
    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/pareekiApps/markcalculator/Course2;->totalC:D

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pareekiApps/markcalculator/Course2;->totalCCount:I

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

    .line 542
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
    iget v2, p0, Lcom/pareekiApps/markcalculator/Course2;->entryCounter:I

    add-int/lit8 v2, v2, 0x1

    if-le v0, v2, :cond_0

    .line 1036
    return-void

    .line 1032
    :cond_0
    sget-object v2, Lcom/pareekiApps/markcalculator/Course2;->getPrefs:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Entry"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Course2"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1033
    .local v1, next:Ljava/lang/String;
    iget-object v2, p0, Lcom/pareekiApps/markcalculator/Course2;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Entry"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Course2"

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
    .line 660
    const v18, 0x7f060030

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/pareekiApps/markcalculator/Course2;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TableLayout;

    .line 663
    .local v7, table:Landroid/widget/TableLayout;
    new-instance v6, Landroid/widget/TableRow;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 665
    .local v6, row:Landroid/widget/TableRow;
    new-instance v12, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 666
    .local v12, tv1:Landroid/widget/TextView;
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 667
    new-instance v13, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 668
    .local v13, tv2:Landroid/widget/TextView;
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 669
    new-instance v14, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 670
    .local v14, tv3:Landroid/widget/TextView;
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 671
    new-instance v15, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 672
    .local v15, tv4:Landroid/widget/TextView;
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 674
    new-instance v18, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pareekiApps/markcalculator/Course2;->entryCounter:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, ". "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course2;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 675
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/pareekiApps/markcalculator/Course2;->answer:D

    move-wide/from16 v19, v0

    invoke-virtual/range {v18 .. v20}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 677
    sget-object v18, Lcom/pareekiApps/markcalculator/Course2;->getPrefs:Landroid/content/SharedPreferences;

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "Course2"

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course2;->cat:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const-string v20, ""

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 678
    .local v5, categoryWeight:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/pareekiApps/markcalculator/Course2;->answer:D

    move-wide/from16 v18, v0

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v20

    mul-double v18, v18, v20

    const-wide/high16 v20, 0x4059

    div-double v18, v18, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course2;->spinnerSelectWeight:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v20

    mul-double v16, v18, v20

    .line 679
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

    .line 681
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course2;->spinnerSelectCategory:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "Knowledge and Understanding"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 683
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/pareekiApps/markcalculator/Course2;->totalKU:D

    move-wide/from16 v18, v0

    add-double v18, v18, v16

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/pareekiApps/markcalculator/Course2;->totalKU:D

    .line 684
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pareekiApps/markcalculator/Course2;->totalKUCount:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course2;->spinnerSelectWeight:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v20

    add-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pareekiApps/markcalculator/Course2;->totalKUCount:I

    .line 702
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course2;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    move-object/from16 v18, v0

    const-string v19, "Course2totalKUCount"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pareekiApps/markcalculator/Course2;->totalKUCount:I

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Lcom/pareekiApps/markcalculator/Prefs;->setPreferenceInt(Ljava/lang/String;I)V

    .line 703
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course2;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    move-object/from16 v18, v0

    const-string v19, "Course2totalMCCount"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pareekiApps/markcalculator/Course2;->totalMCCount:I

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Lcom/pareekiApps/markcalculator/Prefs;->setPreferenceInt(Ljava/lang/String;I)V

    .line 704
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course2;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    move-object/from16 v18, v0

    const-string v19, "Course2totalTICount"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pareekiApps/markcalculator/Course2;->totalTICount:I

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Lcom/pareekiApps/markcalculator/Prefs;->setPreferenceInt(Ljava/lang/String;I)V

    .line 705
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course2;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    move-object/from16 v18, v0

    const-string v19, "Course2totalCCount"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pareekiApps/markcalculator/Course2;->totalCCount:I

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Lcom/pareekiApps/markcalculator/Prefs;->setPreferenceInt(Ljava/lang/String;I)V

    .line 707
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course2;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    move-object/from16 v18, v0

    const-string v19, "Course2totalKU"

    new-instance v20, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/pareekiApps/markcalculator/Course2;->totalKU:D

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Lcom/pareekiApps/markcalculator/Prefs;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course2;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    move-object/from16 v18, v0

    const-string v19, "Course2totalMC"

    new-instance v20, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/pareekiApps/markcalculator/Course2;->totalMC:D

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Lcom/pareekiApps/markcalculator/Prefs;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course2;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    move-object/from16 v18, v0

    const-string v19, "Course2totalTI"

    new-instance v20, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/pareekiApps/markcalculator/Course2;->totalTI:D

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Lcom/pareekiApps/markcalculator/Prefs;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course2;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    move-object/from16 v18, v0

    const-string v19, "Course2totalC"

    new-instance v20, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/pareekiApps/markcalculator/Course2;->totalC:D

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Lcom/pareekiApps/markcalculator/Prefs;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/pareekiApps/markcalculator/Course2;->totalKU:D

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/pareekiApps/markcalculator/Course2;->totalC:D

    move-wide/from16 v20, v0

    add-double v18, v18, v20

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/pareekiApps/markcalculator/Course2;->totalMC:D

    move-wide/from16 v20, v0

    add-double v18, v18, v20

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/pareekiApps/markcalculator/Course2;->totalTI:D

    move-wide/from16 v20, v0

    add-double v8, v18, v20

    .line 713
    .local v8, total:D
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pareekiApps/markcalculator/Course2;->totalKUCount:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pareekiApps/markcalculator/Course2;->totalMCCount:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pareekiApps/markcalculator/Course2;->totalTICount:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pareekiApps/markcalculator/Course2;->totalCCount:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v18

    int-to-double v10, v0

    .line 714
    .local v10, totalMarksCounter:D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course2;->cat:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 715
    div-double v3, v8, v10

    .line 716
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

    .line 717
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 719
    invoke-virtual {v6, v12}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 720
    invoke-virtual {v6, v13}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 721
    invoke-virtual {v6, v14}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 722
    invoke-virtual {v6, v15}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 724
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/widget/TableRow;->setLongClickable(Z)V

    .line 725
    new-instance v18, Landroid/widget/TableLayout$LayoutParams;

    const/16 v19, -0x2

    const/16 v20, -0x2

    invoke-direct/range {v18 .. v20}, Landroid/widget/TableLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v18

    invoke-virtual {v7, v6, v0}, Landroid/widget/TableLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 726
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course2;->finalAverage:Landroid/widget/TextView;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "Average:"

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/pareekiApps/markcalculator/Course2;->calculateMark()D

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

    .line 727
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course2;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    move-object/from16 v18, v0

    const-string v19, "Course2finalAverage"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Lcom/pareekiApps/markcalculator/Prefs;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pareekiApps/markcalculator/Course2;->entryCounter:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/pareekiApps/markcalculator/Course2;->updateRow(I)V

    .line 730
    invoke-direct/range {p0 .. p0}, Lcom/pareekiApps/markcalculator/Course2;->putOveralMarks()V

    .line 732
    new-instance v18, Lcom/pareekiApps/markcalculator/Course2$6;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v6}, Lcom/pareekiApps/markcalculator/Course2$6;-><init>(Lcom/pareekiApps/markcalculator/Course2;Landroid/widget/TableRow;)V

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/widget/TableRow;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 753
    return-void

    .line 686
    .end local v3           #average:D
    .end local v8           #total:D
    .end local v10           #totalMarksCounter:D
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course2;->spinnerSelectCategory:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "Making Connections"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 688
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/pareekiApps/markcalculator/Course2;->totalMC:D

    move-wide/from16 v18, v0

    add-double v18, v18, v16

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/pareekiApps/markcalculator/Course2;->totalMC:D

    .line 689
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pareekiApps/markcalculator/Course2;->totalMCCount:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course2;->spinnerSelectWeight:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v20

    add-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pareekiApps/markcalculator/Course2;->totalMCCount:I

    goto/16 :goto_0

    .line 691
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course2;->spinnerSelectCategory:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "Thinking and Inquiry"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 693
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/pareekiApps/markcalculator/Course2;->totalTI:D

    move-wide/from16 v18, v0

    add-double v18, v18, v16

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/pareekiApps/markcalculator/Course2;->totalTI:D

    .line 694
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pareekiApps/markcalculator/Course2;->totalTICount:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course2;->spinnerSelectWeight:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v20

    add-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pareekiApps/markcalculator/Course2;->totalTICount:I

    goto/16 :goto_0

    .line 696
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course2;->spinnerSelectCategory:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "Communication"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 698
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/pareekiApps/markcalculator/Course2;->totalC:D

    move-wide/from16 v18, v0

    add-double v18, v18, v16

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/pareekiApps/markcalculator/Course2;->totalC:D

    .line 699
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pareekiApps/markcalculator/Course2;->totalCCount:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course2;->spinnerSelectWeight:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v20

    add-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pareekiApps/markcalculator/Course2;->totalCCount:I

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
    new-instance v1, Lcom/pareekiApps/markcalculator/Course2$7;

    invoke-direct {v1, p0, p2}, Lcom/pareekiApps/markcalculator/Course2$7;-><init>(Lcom/pareekiApps/markcalculator/Course2;Landroid/widget/TableRow;)V

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
    .line 391
    sget-object v34, Lcom/pareekiApps/markcalculator/Course2;->getPrefs:Landroid/content/SharedPreferences;

    const-string v35, "Class2EntryCounter"

    const/16 v36, 0x0

    invoke-interface/range {v34 .. v36}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v34

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pareekiApps/markcalculator/Course2;->entryCounter:I

    .line 392
    sget-object v34, Lcom/pareekiApps/markcalculator/Course2;->getPrefs:Landroid/content/SharedPreferences;

    const-string v35, "Course2totalKUCount"

    const/16 v36, 0x0

    invoke-interface/range {v34 .. v36}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v34

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pareekiApps/markcalculator/Course2;->totalKUCount:I

    .line 393
    sget-object v34, Lcom/pareekiApps/markcalculator/Course2;->getPrefs:Landroid/content/SharedPreferences;

    const-string v35, "Course2totalMCCount"

    const/16 v36, 0x0

    invoke-interface/range {v34 .. v36}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v34

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pareekiApps/markcalculator/Course2;->totalMCCount:I

    .line 394
    sget-object v34, Lcom/pareekiApps/markcalculator/Course2;->getPrefs:Landroid/content/SharedPreferences;

    const-string v35, "Course2totalTICount"

    const/16 v36, 0x0

    invoke-interface/range {v34 .. v36}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v34

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pareekiApps/markcalculator/Course2;->totalTICount:I

    .line 395
    sget-object v34, Lcom/pareekiApps/markcalculator/Course2;->getPrefs:Landroid/content/SharedPreferences;

    const-string v35, "Course2totalCCount"

    const/16 v36, 0x0

    invoke-interface/range {v34 .. v36}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v34

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pareekiApps/markcalculator/Course2;->totalCCount:I

    .line 397
    const v34, 0x7f060030

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/pareekiApps/markcalculator/Course2;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TableLayout;

    .line 398
    .local v15, table:Landroid/widget/TableLayout;
    invoke-virtual {v15}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v8

    .line 399
    .local v8, entered:I
    const/16 v34, 0x2

    add-int/lit8 v35, v8, -0x2

    move/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v15, v0, v1}, Landroid/widget/TableLayout;->removeViews(II)V

    .line 401
    const-wide/16 v20, 0x0

    .line 402
    .local v20, totalKUe:D
    const-wide/16 v22, 0x0

    .line 403
    .local v22, totalMCe:D
    const-wide/16 v25, 0x0

    .line 404
    .local v25, totalTIe:D
    const-wide/16 v18, 0x0

    .line 406
    .local v18, totalCe:D
    const-wide/16 v16, 0x0

    .line 407
    .local v16, total:D
    const/16 v24, 0x0

    .line 409
    .local v24, totalMarksCounter:I
    const/4 v10, 0x1

    .local v10, i:I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pareekiApps/markcalculator/Course2;->entryCounter:I

    move/from16 v34, v0

    move/from16 v0, v34

    if-le v10, v0, :cond_0

    .line 515
    return-void

    .line 412
    :cond_0
    new-instance v12, Landroid/widget/TableRow;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 414
    .local v12, row:Landroid/widget/TableRow;
    sget-object v34, Lcom/pareekiApps/markcalculator/Course2;->getPrefs:Landroid/content/SharedPreferences;

    new-instance v35, Ljava/lang/StringBuilder;

    const-string v36, "Entry"

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v35

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "Course2"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    const-string v36, "0"

    invoke-interface/range {v34 .. v36}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 416
    .local v11, input:Ljava/lang/String;
    const-string v34, ","

    move-object/from16 v0, v34

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 417
    .local v7, data:[Ljava/lang/String;
    const/16 v34, 0x0

    aget-object v34, v7, v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v13

    .line 418
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

    .line 420
    const/16 v34, 0x1

    aget-object v5, v7, v34

    .line 421
    .local v5, cate:Ljava/lang/String;
    const/16 v34, 0x2

    aget-object v34, v7, v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v31

    .line 422
    .local v31, wei:I
    move/from16 v0, v31

    int-to-double v0, v0

    move-wide/from16 v34, v0

    mul-double v34, v34, v13

    add-double v16, v16, v34

    .line 423
    add-int v24, v24, v31

    .line 424
    const/16 v34, 0x3

    aget-object v9, v7, v34

    .line 427
    .local v9, entryName:Ljava/lang/String;
    new-instance v27, Landroid/widget/TextView;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 428
    .local v27, tv1:Landroid/widget/TextView;
    const/16 v34, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 429
    new-instance v28, Landroid/widget/TextView;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 430
    .local v28, tv2:Landroid/widget/TextView;
    const/16 v34, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 431
    new-instance v29, Landroid/widget/TextView;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 432
    .local v29, tv3:Landroid/widget/TextView;
    const/16 v34, 0x1

    move-object/from16 v0, v29

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 433
    new-instance v30, Landroid/widget/TextView;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 434
    .local v30, tv4:Landroid/widget/TextView;
    const/16 v34, 0x1

    move-object/from16 v0, v30

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 436
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

    .line 437
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

    .line 439
    sget-object v34, Lcom/pareekiApps/markcalculator/Course2;->getPrefs:Landroid/content/SharedPreferences;

    new-instance v35, Ljava/lang/StringBuilder;

    const-string v36, "Course2"

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    const-string v36, ""

    invoke-interface/range {v34 .. v36}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 440
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

    .line 441
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

    .line 443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course2;->spinnerSelectCategory:Ljava/lang/String;

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

    .line 445
    add-double v20, v20, v32

    .line 446
    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/pareekiApps/markcalculator/Course2;->totalKU:D

    .line 447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course2;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    move-object/from16 v34, v0

    const-string v35, "Course2totalKU"

    new-instance v36, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/pareekiApps/markcalculator/Course2;->totalKU:D

    move-wide/from16 v37, v0

    invoke-static/range {v37 .. v38}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v37

    invoke-direct/range {v36 .. v37}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v34 .. v36}, Lcom/pareekiApps/markcalculator/Prefs;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course2;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    move-object/from16 v34, v0

    const-string v35, "Course2totalKUCount"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pareekiApps/markcalculator/Course2;->totalKUCount:I

    move/from16 v36, v0

    invoke-virtual/range {v34 .. v36}, Lcom/pareekiApps/markcalculator/Prefs;->setPreferenceInt(Ljava/lang/String;I)V

    .line 469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course2;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    move-object/from16 v34, v0

    const-string v35, "Course2totalMCCount"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pareekiApps/markcalculator/Course2;->totalMCCount:I

    move/from16 v36, v0

    invoke-virtual/range {v34 .. v36}, Lcom/pareekiApps/markcalculator/Prefs;->setPreferenceInt(Ljava/lang/String;I)V

    .line 470
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course2;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    move-object/from16 v34, v0

    const-string v35, "Course2totalTICount"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pareekiApps/markcalculator/Course2;->totalTICount:I

    move/from16 v36, v0

    invoke-virtual/range {v34 .. v36}, Lcom/pareekiApps/markcalculator/Prefs;->setPreferenceInt(Ljava/lang/String;I)V

    .line 471
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course2;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    move-object/from16 v34, v0

    const-string v35, "Course2totalCCount"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pareekiApps/markcalculator/Course2;->totalCCount:I

    move/from16 v36, v0

    invoke-virtual/range {v34 .. v36}, Lcom/pareekiApps/markcalculator/Prefs;->setPreferenceInt(Ljava/lang/String;I)V

    .line 474
    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course2;->finalAverage:Landroid/widget/TextView;

    move-object/from16 v34, v0

    new-instance v35, Ljava/lang/StringBuilder;

    const-string v36, "Average:"

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/pareekiApps/markcalculator/Course2;->calculateMark()D

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

    .line 476
    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v34, v0

    div-double v3, v16, v34

    .line 477
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

    .line 478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course2;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    move-object/from16 v34, v0

    const-string v35, "Course2finalAverage"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v37

    invoke-direct/range {v36 .. v37}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v34 .. v36}, Lcom/pareekiApps/markcalculator/Prefs;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
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

    .line 483
    move-object/from16 v0, v27

    invoke-virtual {v12, v0}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 484
    move-object/from16 v0, v28

    invoke-virtual {v12, v0}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 485
    move-object/from16 v0, v29

    invoke-virtual {v12, v0}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 486
    move-object/from16 v0, v30

    invoke-virtual {v12, v0}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 488
    const/16 v34, 0x1

    move/from16 v0, v34

    invoke-virtual {v12, v0}, Landroid/widget/TableRow;->setLongClickable(Z)V

    .line 490
    new-instance v34, Landroid/widget/TableLayout$LayoutParams;

    const/16 v35, -0x2

    const/16 v36, -0x2

    invoke-direct/range {v34 .. v36}, Landroid/widget/TableLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v34

    invoke-virtual {v15, v12, v0}, Landroid/widget/TableLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 492
    new-instance v34, Lcom/pareekiApps/markcalculator/Course2$4;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v12}, Lcom/pareekiApps/markcalculator/Course2$4;-><init>(Lcom/pareekiApps/markcalculator/Course2;Landroid/widget/TableRow;)V

    move-object/from16 v0, v34

    invoke-virtual {v12, v0}, Landroid/widget/TableRow;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 409
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 449
    .end local v3           #average:D
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course2;->spinnerSelectCategory:Ljava/lang/String;

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

    .line 451
    add-double v22, v22, v32

    .line 452
    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/pareekiApps/markcalculator/Course2;->totalMC:D

    .line 453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course2;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    move-object/from16 v34, v0

    const-string v35, "Course2totalMC"

    new-instance v36, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/pareekiApps/markcalculator/Course2;->totalMC:D

    move-wide/from16 v37, v0

    invoke-static/range {v37 .. v38}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v37

    invoke-direct/range {v36 .. v37}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v34 .. v36}, Lcom/pareekiApps/markcalculator/Prefs;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 455
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course2;->spinnerSelectCategory:Ljava/lang/String;

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

    .line 457
    add-double v25, v25, v32

    .line 458
    move-wide/from16 v0, v25

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/pareekiApps/markcalculator/Course2;->totalTI:D

    .line 459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course2;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    move-object/from16 v34, v0

    const-string v35, "Course2totalTI"

    new-instance v36, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/pareekiApps/markcalculator/Course2;->totalTI:D

    move-wide/from16 v37, v0

    invoke-static/range {v37 .. v38}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v37

    invoke-direct/range {v36 .. v37}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v34 .. v36}, Lcom/pareekiApps/markcalculator/Prefs;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 461
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course2;->spinnerSelectCategory:Ljava/lang/String;

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

    .line 463
    add-double v18, v18, v32

    .line 464
    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/pareekiApps/markcalculator/Course2;->totalC:D

    .line 465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course2;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    move-object/from16 v34, v0

    const-string v35, "Course2totalC"

    new-instance v36, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/pareekiApps/markcalculator/Course2;->totalC:D

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

    .line 545
    new-instance v11, Landroid/app/Dialog;

    invoke-direct {v11, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v11, p0, Lcom/pareekiApps/markcalculator/Course2;->builder:Landroid/app/Dialog;

    .line 546
    iget-object v11, p0, Lcom/pareekiApps/markcalculator/Course2;->builder:Landroid/app/Dialog;

    const-string v12, "Add a new mark"

    invoke-virtual {v11, v12}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 548
    invoke-virtual {p0}, Lcom/pareekiApps/markcalculator/Course2;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    const-string v12, "layout_inflater"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 549
    .local v5, inflater:Landroid/view/LayoutInflater;
    const v11, 0x7f030002

    const/4 v12, 0x0

    invoke-virtual {v5, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 550
    .local v6, layout_spinners:Landroid/view/View;
    const v11, 0x7f060013

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Spinner;

    .line 551
    .local v9, spinner1:Landroid/widget/Spinner;
    const v11, 0x7f060014

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Spinner;

    .line 552
    .local v10, spinner2:Landroid/widget/Spinner;
    const v11, 0x7f060015

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    .line 553
    .local v8, saveMark:Landroid/widget/Button;
    const v11, 0x7f060011

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    .line 554
    .local v7, numMark:Landroid/widget/EditText;
    const v11, 0x7f060012

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 555
    .local v3, denMark:Landroid/widget/EditText;
    const v11, 0x7f060010

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 558
    .local v4, et:Landroid/widget/EditText;
    iget-object v11, p0, Lcom/pareekiApps/markcalculator/Course2;->builder:Landroid/app/Dialog;

    invoke-virtual {v11, v6}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 559
    iget-object v11, p0, Lcom/pareekiApps/markcalculator/Course2;->builder:Landroid/app/Dialog;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 560
    iget-object v11, p0, Lcom/pareekiApps/markcalculator/Course2;->builder:Landroid/app/Dialog;

    invoke-virtual {v11}, Landroid/app/Dialog;->show()V

    .line 562
    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v11, p0, Lcom/pareekiApps/markcalculator/Course2;->categories:[Ljava/lang/String;

    invoke-direct {v1, p0, v13, v11}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 563
    .local v1, adapter1:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v1, v14}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 564
    new-instance v11, Lcom/pareekiApps/markcalculator/CustomOnItemSelectedListener;

    invoke-direct {v11}, Lcom/pareekiApps/markcalculator/CustomOnItemSelectedListener;-><init>()V

    invoke-virtual {v9, v11}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 565
    invoke-virtual {v9, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 568
    new-instance v2, Landroid/widget/ArrayAdapter;

    iget-object v11, p0, Lcom/pareekiApps/markcalculator/Course2;->weights:[Ljava/lang/String;

    invoke-direct {v2, p0, v13, v11}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 569
    .local v2, adapter2:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v2, v14}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 570
    new-instance v11, Lcom/pareekiApps/markcalculator/CustomOnItemSelectedListener;

    invoke-direct {v11}, Lcom/pareekiApps/markcalculator/CustomOnItemSelectedListener;-><init>()V

    invoke-virtual {v10, v11}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 571
    invoke-virtual {v10, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 573
    new-instance v11, Lcom/pareekiApps/markcalculator/Course2$5;

    invoke-direct {v11, p0, v7, v3, v4}, Lcom/pareekiApps/markcalculator/Course2$5;-><init>(Lcom/pareekiApps/markcalculator/Course2;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v8, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 642
    iget-object v11, p0, Lcom/pareekiApps/markcalculator/Course2;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v11}, Lcom/google/android/gms/ads/InterstitialAd;->isLoaded()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 644
    iget-object v11, p0, Lcom/pareekiApps/markcalculator/Course2;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v11}, Lcom/google/android/gms/ads/InterstitialAd;->show()V

    .line 646
    new-instance v11, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v11}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    .line 647
    const-string v12, "00811854ce4d1200"

    invoke-virtual {v11, v12}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v11

    .line 648
    invoke-virtual {v11}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    .line 650
    .local v0, adRequest:Lcom/google/android/gms/ads/AdRequest;
    new-instance v11, Lcom/google/android/gms/ads/InterstitialAd;

    invoke-direct {v11, p0}, Lcom/google/android/gms/ads/InterstitialAd;-><init>(Landroid/content/Context;)V

    iput-object v11, p0, Lcom/pareekiApps/markcalculator/Course2;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    .line 651
    iget-object v11, p0, Lcom/pareekiApps/markcalculator/Course2;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    const-string v12, "ca-app-pub-4733259834848580/4615883357"

    invoke-virtual {v11, v12}, Lcom/google/android/gms/ads/InterstitialAd;->setAdUnitId(Ljava/lang/String;)V

    .line 654
    iget-object v11, p0, Lcom/pareekiApps/markcalculator/Course2;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v11, v0}, Lcom/google/android/gms/ads/InterstitialAd;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 656
    .end local v0           #adRequest:Lcom/google/android/gms/ads/AdRequest;
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 36
    .parameter "savedInstanceState"

    .prologue
    .line 71
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pareekiApps/markcalculator/Course2;->context:Landroid/content/Context;

    .line 74
    invoke-virtual/range {p0 .. p0}, Lcom/pareekiApps/markcalculator/Course2;->getIntent()Landroid/content/Intent;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 75
    .local v7, b:Landroid/os/Bundle;
    const-string v30, "name"

    move-object/from16 v0, v30

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pareekiApps/markcalculator/Course2;->courseName:Ljava/lang/String;

    .line 76
    new-instance v30, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course2;->courseName:Ljava/lang/String;

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

    invoke-virtual {v0, v1}, Lcom/pareekiApps/markcalculator/Course2;->setTitle(Ljava/lang/CharSequence;)V

    .line 77
    invoke-virtual/range {p0 .. p0}, Lcom/pareekiApps/markcalculator/Course2;->getBaseContext()Landroid/content/Context;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v30

    sput-object v30, Lcom/pareekiApps/markcalculator/Course2;->getPrefs:Landroid/content/SharedPreferences;

    .line 80
    const v30, 0x7f030004

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/pareekiApps/markcalculator/Course2;->setContentView(I)V

    .line 82
    new-instance v30, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct/range {v30 .. v30}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    .line 83
    const-string v31, "00811854ce4d1200"

    invoke-virtual/range {v30 .. v31}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v30

    .line 84
    invoke-virtual/range {v30 .. v30}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v3

    .line 86
    .local v3, adRequest:Lcom/google/android/gms/ads/AdRequest;
    const v30, 0x7f060032

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/pareekiApps/markcalculator/Course2;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/ads/AdView;

    .line 87
    .local v4, adView:Lcom/google/android/gms/ads/AdView;
    invoke-virtual {v4, v3}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 89
    new-instance v30, Lcom/google/android/gms/ads/InterstitialAd;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pareekiApps/markcalculator/Course2;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    .line 90
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course2;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    move-object/from16 v30, v0

    const-string v31, "ca-app-pub-4733259834848580/5313887353"

    invoke-virtual/range {v30 .. v31}, Lcom/google/android/gms/ads/InterstitialAd;->setAdUnitId(Ljava/lang/String;)V

    .line 92
    new-instance v30, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct/range {v30 .. v30}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    .line 93
    const-string v31, "00811854ce4d1200"

    invoke-virtual/range {v30 .. v31}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v30

    .line 94
    invoke-virtual/range {v30 .. v30}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v3

    .line 97
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course2;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Lcom/google/android/gms/ads/InterstitialAd;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 99
    const v30, 0x7f06002e

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/pareekiApps/markcalculator/Course2;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 100
    .local v19, title:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course2;->courseName:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    const v30, -0xff0100

    move-object/from16 v0, v19

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 103
    const v30, 0x7f060016

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/pareekiApps/markcalculator/Course2;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/TextView;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pareekiApps/markcalculator/Course2;->finalAverage:Landroid/widget/TextView;

    .line 105
    const v30, 0x7f06002d

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/pareekiApps/markcalculator/Course2;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    .line 106
    .local v8, button:Landroid/widget/Button;
    new-instance v30, Lcom/pareekiApps/markcalculator/Course2$1;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/pareekiApps/markcalculator/Course2$1;-><init>(Lcom/pareekiApps/markcalculator/Course2;)V

    move-object/from16 v0, v30

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    const-wide/16 v20, 0x0

    .line 149
    .local v20, total:D
    const/16 v22, 0x0

    .line 150
    .local v22, totalMarksCounter:I
    sget-object v30, Lcom/pareekiApps/markcalculator/Course2;->getPrefs:Landroid/content/SharedPreferences;

    const-string v31, "Class2EntryCounter"

    const/16 v32, 0x0

    invoke-interface/range {v30 .. v32}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pareekiApps/markcalculator/Course2;->entryCounter:I

    .line 152
    sget-object v30, Lcom/pareekiApps/markcalculator/Course2;->getPrefs:Landroid/content/SharedPreferences;

    const-string v31, "Course2totalKUCount"

    const/16 v32, 0x0

    invoke-interface/range {v30 .. v32}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pareekiApps/markcalculator/Course2;->totalKUCount:I

    .line 153
    sget-object v30, Lcom/pareekiApps/markcalculator/Course2;->getPrefs:Landroid/content/SharedPreferences;

    const-string v31, "Course2totalMCCount"

    const/16 v32, 0x0

    invoke-interface/range {v30 .. v32}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pareekiApps/markcalculator/Course2;->totalMCCount:I

    .line 154
    sget-object v30, Lcom/pareekiApps/markcalculator/Course2;->getPrefs:Landroid/content/SharedPreferences;

    const-string v31, "Course2totalTICount"

    const/16 v32, 0x0

    invoke-interface/range {v30 .. v32}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pareekiApps/markcalculator/Course2;->totalTICount:I

    .line 155
    sget-object v30, Lcom/pareekiApps/markcalculator/Course2;->getPrefs:Landroid/content/SharedPreferences;

    const-string v31, "Course2totalCCount"

    const/16 v32, 0x0

    invoke-interface/range {v30 .. v32}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pareekiApps/markcalculator/Course2;->totalCCount:I

    .line 157
    sget-object v30, Lcom/pareekiApps/markcalculator/Course2;->getPrefs:Landroid/content/SharedPreferences;

    const-string v31, "Course2totalKU"

    const-string v32, "0"

    invoke-interface/range {v30 .. v32}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v30

    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/pareekiApps/markcalculator/Course2;->totalKU:D

    .line 158
    sget-object v30, Lcom/pareekiApps/markcalculator/Course2;->getPrefs:Landroid/content/SharedPreferences;

    const-string v31, "Course2totalMC"

    const-string v32, "0"

    invoke-interface/range {v30 .. v32}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v30

    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/pareekiApps/markcalculator/Course2;->totalMC:D

    .line 159
    sget-object v30, Lcom/pareekiApps/markcalculator/Course2;->getPrefs:Landroid/content/SharedPreferences;

    const-string v31, "Course2totalTI"

    const-string v32, "0"

    invoke-interface/range {v30 .. v32}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v30

    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/pareekiApps/markcalculator/Course2;->totalTI:D

    .line 160
    sget-object v30, Lcom/pareekiApps/markcalculator/Course2;->getPrefs:Landroid/content/SharedPreferences;

    const-string v31, "Course2totalC"

    const-string v32, "0"

    invoke-interface/range {v30 .. v32}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v30

    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/pareekiApps/markcalculator/Course2;->totalC:D

    .line 162
    invoke-direct/range {p0 .. p0}, Lcom/pareekiApps/markcalculator/Course2;->putOveralMarks()V

    .line 164
    const/4 v13, 0x1

    .local v13, i:I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pareekiApps/markcalculator/Course2;->entryCounter:I

    move/from16 v30, v0

    move/from16 v0, v30

    if-le v13, v0, :cond_0

    .line 238
    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v30, v0

    div-double v5, v20, v30

    .line 239
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

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course2;->finalAverage:Landroid/widget/TextView;

    move-object/from16 v30, v0

    new-instance v31, Ljava/lang/StringBuilder;

    const-string v32, "Average:"

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/pareekiApps/markcalculator/Course2;->calculateMark()D

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

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course2;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    move-object/from16 v30, v0

    const-string v31, "Course2finalAverage"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v30 .. v32}, Lcom/pareekiApps/markcalculator/Prefs;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    return-void

    .line 167
    .end local v5           #average:D
    :cond_0
    const v30, 0x7f060030

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/pareekiApps/markcalculator/Course2;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TableLayout;

    .line 170
    .local v18, table:Landroid/widget/TableLayout;
    new-instance v15, Landroid/widget/TableRow;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 172
    .local v15, row:Landroid/widget/TableRow;
    sget-object v30, Lcom/pareekiApps/markcalculator/Course2;->getPrefs:Landroid/content/SharedPreferences;

    new-instance v31, Ljava/lang/StringBuilder;

    const-string v32, "Entry"

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "Course2"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    const-string v32, "0"

    invoke-interface/range {v30 .. v32}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 174
    .local v14, input:Ljava/lang/String;
    const-string v30, ","

    move-object/from16 v0, v30

    invoke-virtual {v14, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 175
    .local v11, data:[Ljava/lang/String;
    const/16 v30, 0x0

    aget-object v30, v11, v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v16

    .line 176
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

    .line 178
    const/16 v30, 0x1

    aget-object v9, v11, v30

    .line 179
    .local v9, cate:Ljava/lang/String;
    const/16 v30, 0x2

    aget-object v30, v11, v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    .line 180
    .local v27, wei:I
    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v30, v0

    mul-double v30, v30, v16

    add-double v20, v20, v30

    .line 181
    add-int v22, v22, v27

    .line 182
    const/16 v30, 0x3

    aget-object v12, v11, v30

    .line 185
    .local v12, entryName:Ljava/lang/String;
    new-instance v23, Landroid/widget/TextView;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 186
    .local v23, tv1:Landroid/widget/TextView;
    const/16 v30, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 187
    new-instance v24, Landroid/widget/TextView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 188
    .local v24, tv2:Landroid/widget/TextView;
    const/16 v30, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 189
    new-instance v25, Landroid/widget/TextView;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 190
    .local v25, tv3:Landroid/widget/TextView;
    const/16 v30, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 191
    new-instance v26, Landroid/widget/TextView;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 192
    .local v26, tv4:Landroid/widget/TextView;
    const/16 v30, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 194
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

    .line 195
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

    .line 197
    sget-object v30, Lcom/pareekiApps/markcalculator/Course2;->getPrefs:Landroid/content/SharedPreferences;

    new-instance v31, Ljava/lang/StringBuilder;

    const-string v32, "Course2"

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    const-string v32, ""

    invoke-interface/range {v30 .. v32}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 198
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

    .line 199
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

    .line 200
    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v30, v0

    div-double v5, v20, v30

    .line 201
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

    .line 202
    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
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

    .line 205
    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 206
    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 207
    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 208
    move-object/from16 v0, v26

    invoke-virtual {v15, v0}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 210
    const/16 v30, 0x1

    move/from16 v0, v30

    invoke-virtual {v15, v0}, Landroid/widget/TableRow;->setLongClickable(Z)V

    .line 212
    new-instance v30, Landroid/widget/TableLayout$LayoutParams;

    const/16 v31, -0x2

    const/16 v32, -0x2

    invoke-direct/range {v30 .. v32}, Landroid/widget/TableLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v18

    move-object/from16 v1, v30

    invoke-virtual {v0, v15, v1}, Landroid/widget/TableLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 214
    new-instance v30, Lcom/pareekiApps/markcalculator/Course2$2;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v15}, Lcom/pareekiApps/markcalculator/Course2$2;-><init>(Lcom/pareekiApps/markcalculator/Course2;Landroid/widget/TableRow;)V

    move-object/from16 v0, v30

    invoke-virtual {v15, v0}, Landroid/widget/TableRow;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 164
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 891
    invoke-virtual {p0}, Lcom/pareekiApps/markcalculator/Course2;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0c0002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 892
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter "item"

    .prologue
    const/4 v5, 0x0

    .line 896
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    .line 897
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
    invoke-virtual {p0}, Lcom/pareekiApps/markcalculator/Course2;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "The feature is currently unavailable"

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
