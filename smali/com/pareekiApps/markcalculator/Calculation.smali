.class public Lcom/pareekiApps/markcalculator/Calculation;
.super Landroid/app/Activity;
.source "Calculation.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "InterstitialSample"

.field static courseNames:[Ljava/lang/String;

.field static list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static saving:Z

.field static spinner1:Landroid/widget/Spinner;

.field static spinner5:Landroid/widget/Spinner;


# instance fields
.field C:D

.field KU:D

.field MC:D

.field TI:D

.field allInfo:Z

.field average:D

.field categories:[Ljava/lang/String;

.field den:Landroid/widget/EditText;

.field exv:Landroid/widget/ExpandableListView;

.field finalAnswer:Landroid/widget/TextView;

.field getPrefs:Landroid/content/SharedPreferences;

.field private interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

.field markValue:Landroid/widget/EditText;

.field num:Landroid/widget/EditText;

.field outOf:Landroid/widget/EditText;

.field percents:[D

.field prefs:Lcom/pareekiApps/markcalculator/Prefs;

.field spinner2:Landroid/widget/Spinner;

.field spinner3:Landroid/widget/Spinner;

.field spinner4:Landroid/widget/Spinner;

.field th:Landroid/widget/TabHost;

.field usingClass:Z

.field weights:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    sput-boolean v0, Lcom/pareekiApps/markcalculator/Calculation;->saving:Z

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/pareekiApps/markcalculator/Calculation;->list:Ljava/util/List;

    .line 72
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/pareekiApps/markcalculator/Calculation;->courseNames:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 42
    new-array v0, v3, [D

    iput-object v0, p0, Lcom/pareekiApps/markcalculator/Calculation;->percents:[D

    .line 46
    iput-boolean v2, p0, Lcom/pareekiApps/markcalculator/Calculation;->allInfo:Z

    .line 47
    iput-boolean v2, p0, Lcom/pareekiApps/markcalculator/Calculation;->usingClass:Z

    .line 73
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Categories"

    aput-object v1, v0, v2

    const-string v1, "Knowledge and Understanding"

    aput-object v1, v0, v4

    const-string v1, "Making Connections"

    aput-object v1, v0, v5

    const-string v1, "Thinking and Inquiry"

    aput-object v1, v0, v6

    const-string v1, "Communication"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/pareekiApps/markcalculator/Calculation;->categories:[Ljava/lang/String;

    .line 74
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Weights"

    aput-object v1, v0, v2

    const-string v1, "1"

    aput-object v1, v0, v4

    const-string v1, "2"

    aput-object v1, v0, v5

    const-string v1, "3"

    aput-object v1, v0, v6

    const-string v1, "4"

    aput-object v1, v0, v3

    const/4 v1, 0x5

    const-string v2, "5"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/pareekiApps/markcalculator/Calculation;->weights:[Ljava/lang/String;

    .line 75
    new-instance v0, Lcom/pareekiApps/markcalculator/Prefs;

    invoke-direct {v0, p0}, Lcom/pareekiApps/markcalculator/Prefs;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pareekiApps/markcalculator/Calculation;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    .line 31
    return-void
.end method

.method private addListenerOnSpinnerItemSelection()V
    .locals 2

    .prologue
    .line 298
    const v0, 0x7f06004f

    invoke-virtual {p0, v0}, Lcom/pareekiApps/markcalculator/Calculation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    sput-object v0, Lcom/pareekiApps/markcalculator/Calculation;->spinner1:Landroid/widget/Spinner;

    .line 299
    sget-object v0, Lcom/pareekiApps/markcalculator/Calculation;->spinner1:Landroid/widget/Spinner;

    new-instance v1, Lcom/pareekiApps/markcalculator/CustomOnItemSelectedListener;

    invoke-direct {v1}, Lcom/pareekiApps/markcalculator/CustomOnItemSelectedListener;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 300
    return-void
.end method


# virtual methods
.method public accessSpinner()V
    .locals 17

    .prologue
    .line 303
    invoke-static {}, Lcom/pareekiApps/markcalculator/CustomOnItemSelectedListener;->getMain()Ljava/lang/String;

    move-result-object v10

    .line 305
    .local v10, temp:Ljava/lang/String;
    const-string v11, "Course 1"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string v11, "Course 2"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string v11, "Course 3"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string v11, "Course 4"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 307
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 308
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const-string v11, "Need to set up the classes"

    invoke-virtual {v1, v11}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    .line 309
    const-string v12, "Setup"

    new-instance v13, Lcom/pareekiApps/markcalculator/Calculation$2;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/pareekiApps/markcalculator/Calculation$2;-><init>(Lcom/pareekiApps/markcalculator/Calculation;)V

    invoke-virtual {v11, v12, v13}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    .line 316
    const-string v12, "Cancel"

    new-instance v13, Lcom/pareekiApps/markcalculator/Calculation$3;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/pareekiApps/markcalculator/Calculation$3;-><init>(Lcom/pareekiApps/markcalculator/Calculation;)V

    invoke-virtual {v11, v12, v13}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 322
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 323
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 325
    .end local v1           #builder:Landroid/app/AlertDialog$Builder;
    :cond_1
    sget-object v11, Lcom/pareekiApps/markcalculator/Calculation;->list:Ljava/util/List;

    const/4 v12, 0x1

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    const-string v11, "Course 1"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 327
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/pareekiApps/markcalculator/Calculation;->percents:[D

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pareekiApps/markcalculator/Calculation;->getPrefs:Landroid/content/SharedPreferences;

    const-string v14, "Course1KU"

    const-string v15, ""

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v13

    const-wide/high16 v15, 0x4059

    div-double/2addr v13, v15

    aput-wide v13, v11, v12

    .line 328
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/pareekiApps/markcalculator/Calculation;->percents:[D

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pareekiApps/markcalculator/Calculation;->getPrefs:Landroid/content/SharedPreferences;

    const-string v14, "Course1MC"

    const-string v15, ""

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v13

    const-wide/high16 v15, 0x4059

    div-double/2addr v13, v15

    aput-wide v13, v11, v12

    .line 329
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/pareekiApps/markcalculator/Calculation;->percents:[D

    const/4 v12, 0x2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pareekiApps/markcalculator/Calculation;->getPrefs:Landroid/content/SharedPreferences;

    const-string v14, "Course1TI"

    const-string v15, ""

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v13

    const-wide/high16 v15, 0x4059

    div-double/2addr v13, v15

    aput-wide v13, v11, v12

    .line 330
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/pareekiApps/markcalculator/Calculation;->percents:[D

    const/4 v12, 0x3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pareekiApps/markcalculator/Calculation;->getPrefs:Landroid/content/SharedPreferences;

    const-string v14, "Course1C"

    const-string v15, ""

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v13

    const-wide/high16 v15, 0x4059

    div-double/2addr v13, v15

    aput-wide v13, v11, v12

    .line 331
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/pareekiApps/markcalculator/Calculation;->usingClass:Z

    .line 332
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/pareekiApps/markcalculator/Calculation;->allInfo:Z

    .line 396
    :cond_2
    :goto_0
    return-void

    .line 334
    :cond_3
    sget-object v11, Lcom/pareekiApps/markcalculator/Calculation;->list:Ljava/util/List;

    const/4 v12, 0x2

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    const-string v11, "Course 2"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 336
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/pareekiApps/markcalculator/Calculation;->percents:[D

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pareekiApps/markcalculator/Calculation;->getPrefs:Landroid/content/SharedPreferences;

    const-string v14, "Course2KU"

    const-string v15, ""

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v13

    const-wide/high16 v15, 0x4059

    div-double/2addr v13, v15

    aput-wide v13, v11, v12

    .line 337
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/pareekiApps/markcalculator/Calculation;->percents:[D

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pareekiApps/markcalculator/Calculation;->getPrefs:Landroid/content/SharedPreferences;

    const-string v14, "Course2MC"

    const-string v15, ""

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v13

    const-wide/high16 v15, 0x4059

    div-double/2addr v13, v15

    aput-wide v13, v11, v12

    .line 338
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/pareekiApps/markcalculator/Calculation;->percents:[D

    const/4 v12, 0x2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pareekiApps/markcalculator/Calculation;->getPrefs:Landroid/content/SharedPreferences;

    const-string v14, "Course2TI"

    const-string v15, ""

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v13

    const-wide/high16 v15, 0x4059

    div-double/2addr v13, v15

    aput-wide v13, v11, v12

    .line 339
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/pareekiApps/markcalculator/Calculation;->percents:[D

    const/4 v12, 0x3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pareekiApps/markcalculator/Calculation;->getPrefs:Landroid/content/SharedPreferences;

    const-string v14, "Course2C"

    const-string v15, ""

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v13

    const-wide/high16 v15, 0x4059

    div-double/2addr v13, v15

    aput-wide v13, v11, v12

    .line 340
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/pareekiApps/markcalculator/Calculation;->usingClass:Z

    .line 341
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/pareekiApps/markcalculator/Calculation;->allInfo:Z

    goto/16 :goto_0

    .line 343
    :cond_4
    sget-object v11, Lcom/pareekiApps/markcalculator/Calculation;->list:Ljava/util/List;

    const/4 v12, 0x3

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    const-string v11, "Course 3"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 345
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/pareekiApps/markcalculator/Calculation;->percents:[D

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pareekiApps/markcalculator/Calculation;->getPrefs:Landroid/content/SharedPreferences;

    const-string v14, "Course3KU"

    const-string v15, ""

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v13

    const-wide/high16 v15, 0x4059

    div-double/2addr v13, v15

    aput-wide v13, v11, v12

    .line 346
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/pareekiApps/markcalculator/Calculation;->percents:[D

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pareekiApps/markcalculator/Calculation;->getPrefs:Landroid/content/SharedPreferences;

    const-string v14, "Course3MC"

    const-string v15, ""

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v13

    const-wide/high16 v15, 0x4059

    div-double/2addr v13, v15

    aput-wide v13, v11, v12

    .line 347
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/pareekiApps/markcalculator/Calculation;->percents:[D

    const/4 v12, 0x2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pareekiApps/markcalculator/Calculation;->getPrefs:Landroid/content/SharedPreferences;

    const-string v14, "Course3TI"

    const-string v15, ""

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v13

    const-wide/high16 v15, 0x4059

    div-double/2addr v13, v15

    aput-wide v13, v11, v12

    .line 348
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/pareekiApps/markcalculator/Calculation;->percents:[D

    const/4 v12, 0x3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pareekiApps/markcalculator/Calculation;->getPrefs:Landroid/content/SharedPreferences;

    const-string v14, "Course3C"

    const-string v15, ""

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v13

    const-wide/high16 v15, 0x4059

    div-double/2addr v13, v15

    aput-wide v13, v11, v12

    .line 349
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/pareekiApps/markcalculator/Calculation;->usingClass:Z

    .line 350
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/pareekiApps/markcalculator/Calculation;->allInfo:Z

    goto/16 :goto_0

    .line 352
    :cond_5
    sget-object v11, Lcom/pareekiApps/markcalculator/Calculation;->list:Ljava/util/List;

    const/4 v12, 0x4

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    const-string v11, "Course 4"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 354
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/pareekiApps/markcalculator/Calculation;->percents:[D

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pareekiApps/markcalculator/Calculation;->getPrefs:Landroid/content/SharedPreferences;

    const-string v14, "Course4KU"

    const-string v15, ""

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v13

    const-wide/high16 v15, 0x4059

    div-double/2addr v13, v15

    aput-wide v13, v11, v12

    .line 355
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/pareekiApps/markcalculator/Calculation;->percents:[D

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pareekiApps/markcalculator/Calculation;->getPrefs:Landroid/content/SharedPreferences;

    const-string v14, "Course4MC"

    const-string v15, ""

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v13

    const-wide/high16 v15, 0x4059

    div-double/2addr v13, v15

    aput-wide v13, v11, v12

    .line 356
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/pareekiApps/markcalculator/Calculation;->percents:[D

    const/4 v12, 0x2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pareekiApps/markcalculator/Calculation;->getPrefs:Landroid/content/SharedPreferences;

    const-string v14, "Course4TI"

    const-string v15, ""

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v13

    const-wide/high16 v15, 0x4059

    div-double/2addr v13, v15

    aput-wide v13, v11, v12

    .line 357
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/pareekiApps/markcalculator/Calculation;->percents:[D

    const/4 v12, 0x3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pareekiApps/markcalculator/Calculation;->getPrefs:Landroid/content/SharedPreferences;

    const-string v14, "Course4C"

    const-string v15, ""

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v13

    const-wide/high16 v15, 0x4059

    div-double/2addr v13, v15

    aput-wide v13, v11, v12

    .line 358
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/pareekiApps/markcalculator/Calculation;->usingClass:Z

    .line 359
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/pareekiApps/markcalculator/Calculation;->allInfo:Z

    goto/16 :goto_0

    .line 364
    :cond_6
    const v11, 0x7f060047

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/pareekiApps/markcalculator/Calculation;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 365
    .local v2, editText1:Landroid/widget/EditText;
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-interface {v11}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    .line 366
    .local v6, input1:Ljava/lang/String;
    const-string v11, ".*\\d.*"

    invoke-virtual {v6, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 368
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/pareekiApps/markcalculator/Calculation;->percents:[D

    const/4 v12, 0x0

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v13

    aput-wide v13, v11, v12

    .line 369
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/pareekiApps/markcalculator/Calculation;->percents:[D

    const/4 v12, 0x0

    aget-wide v13, v11, v12

    const-wide/high16 v15, 0x4059

    div-double/2addr v13, v15

    aput-wide v13, v11, v12

    .line 372
    :cond_7
    const v11, 0x7f060049

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/pareekiApps/markcalculator/Calculation;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 373
    .local v3, editText2:Landroid/widget/EditText;
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-interface {v11}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v7

    .line 374
    .local v7, input2:Ljava/lang/String;
    const-string v11, ".*\\d.*"

    invoke-virtual {v7, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 376
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/pareekiApps/markcalculator/Calculation;->percents:[D

    const/4 v12, 0x1

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v13

    aput-wide v13, v11, v12

    .line 377
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/pareekiApps/markcalculator/Calculation;->percents:[D

    const/4 v12, 0x1

    aget-wide v13, v11, v12

    const-wide/high16 v15, 0x4059

    div-double/2addr v13, v15

    aput-wide v13, v11, v12

    .line 380
    :cond_8
    const v11, 0x7f06004b

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/pareekiApps/markcalculator/Calculation;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 381
    .local v4, editText3:Landroid/widget/EditText;
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-interface {v11}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v8

    .line 382
    .local v8, input3:Ljava/lang/String;
    const-string v11, ".*\\d.*"

    invoke-virtual {v8, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 384
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/pareekiApps/markcalculator/Calculation;->percents:[D

    const/4 v12, 0x2

    invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v13

    aput-wide v13, v11, v12

    .line 385
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/pareekiApps/markcalculator/Calculation;->percents:[D

    const/4 v12, 0x2

    aget-wide v13, v11, v12

    const-wide/high16 v15, 0x4059

    div-double/2addr v13, v15

    aput-wide v13, v11, v12

    .line 388
    :cond_9
    const v11, 0x7f06004d

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/pareekiApps/markcalculator/Calculation;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 389
    .local v5, editText4:Landroid/widget/EditText;
    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-interface {v11}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v9

    .line 390
    .local v9, input4:Ljava/lang/String;
    const-string v11, ".*\\d.*"

    invoke-virtual {v9, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 392
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/pareekiApps/markcalculator/Calculation;->percents:[D

    const/4 v12, 0x3

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v13

    aput-wide v13, v11, v12

    .line 393
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/pareekiApps/markcalculator/Calculation;->percents:[D

    const/4 v12, 0x3

    aget-wide v13, v11, v12

    const-wide/high16 v15, 0x4059

    div-double/2addr v13, v15

    aput-wide v13, v11, v12

    goto/16 :goto_0
.end method

.method public gatherInformation(Landroid/view/View;)V
    .locals 33
    .parameter "view"

    .prologue
    .line 514
    invoke-virtual/range {p0 .. p0}, Lcom/pareekiApps/markcalculator/Calculation;->accessSpinner()V

    .line 516
    const/16 v18, 0x0

    .line 517
    .local v18, hasKU:Z
    const/16 v19, 0x0

    .line 518
    .local v19, hasMC:Z
    const/16 v20, 0x0

    .line 519
    .local v20, hasTI:Z
    const/16 v17, 0x0

    .line 521
    .local v17, hasC:Z
    const-wide/16 v5, 0x0

    .line 522
    .local v5, KUMark:D
    const-wide/16 v7, 0x0

    .line 523
    .local v7, MCMark:D
    const-wide/16 v9, 0x0

    .line 524
    .local v9, TIMark:D
    const-wide/16 v3, 0x0

    .line 528
    .local v3, CMark:D
    const v29, 0x7f060046

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/pareekiApps/markcalculator/Calculation;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/EditText;

    .line 529
    .local v13, editText1:Landroid/widget/EditText;
    invoke-virtual {v13}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v21

    .line 530
    .local v21, input1:Ljava/lang/String;
    const-string v29, ".*\\d.*"

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_0

    .line 532
    invoke-static/range {v21 .. v21}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v29

    move-wide/from16 v0, v29

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/pareekiApps/markcalculator/Calculation;->KU:D

    .line 533
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/pareekiApps/markcalculator/Calculation;->KU:D

    move-wide/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Calculation;->percents:[D

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aget-wide v31, v31, v32

    mul-double v5, v29, v31

    .line 534
    const/16 v18, 0x1

    .line 537
    :cond_0
    const v29, 0x7f060048

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/pareekiApps/markcalculator/Calculation;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/EditText;

    .line 538
    .local v14, editText2:Landroid/widget/EditText;
    invoke-virtual {v14}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v22

    .line 539
    .local v22, input2:Ljava/lang/String;
    const-string v29, ".*\\d.*"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_1

    .line 541
    invoke-static/range {v22 .. v22}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v29

    move-wide/from16 v0, v29

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/pareekiApps/markcalculator/Calculation;->MC:D

    .line 542
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/pareekiApps/markcalculator/Calculation;->MC:D

    move-wide/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Calculation;->percents:[D

    move-object/from16 v31, v0

    const/16 v32, 0x1

    aget-wide v31, v31, v32

    mul-double v7, v29, v31

    .line 543
    const/16 v19, 0x1

    .line 546
    :cond_1
    const v29, 0x7f06004a

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/pareekiApps/markcalculator/Calculation;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/EditText;

    .line 547
    .local v15, editText3:Landroid/widget/EditText;
    invoke-virtual {v15}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v23

    .line 549
    .local v23, input3:Ljava/lang/String;
    const-string v29, ".*\\d.*"

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_2

    .line 551
    invoke-static/range {v23 .. v23}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v29

    move-wide/from16 v0, v29

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/pareekiApps/markcalculator/Calculation;->TI:D

    .line 552
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/pareekiApps/markcalculator/Calculation;->TI:D

    move-wide/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Calculation;->percents:[D

    move-object/from16 v31, v0

    const/16 v32, 0x2

    aget-wide v31, v31, v32

    mul-double v9, v29, v31

    .line 553
    const/16 v20, 0x1

    .line 556
    :cond_2
    const v29, 0x7f06004c

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/pareekiApps/markcalculator/Calculation;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/EditText;

    .line 557
    .local v16, editText4:Landroid/widget/EditText;
    invoke-virtual/range {v16 .. v16}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v24

    .line 559
    .local v24, input4:Ljava/lang/String;
    const-string v29, ".*\\d.*"

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_3

    .line 561
    invoke-static/range {v24 .. v24}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v29

    move-wide/from16 v0, v29

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/pareekiApps/markcalculator/Calculation;->C:D

    .line 562
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/pareekiApps/markcalculator/Calculation;->C:D

    move-wide/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Calculation;->percents:[D

    move-object/from16 v31, v0

    const/16 v32, 0x3

    aget-wide v31, v31, v32

    mul-double v3, v29, v31

    .line 563
    const/16 v17, 0x1

    .line 565
    :cond_3
    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/pareekiApps/markcalculator/Calculation;->allInfo:Z

    .line 566
    sget-object v29, Lcom/pareekiApps/markcalculator/Calculation;->spinner1:Landroid/widget/Spinner;

    invoke-virtual/range {v29 .. v29}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v29

    const-string v30, "Need to set your class"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_4

    sget-object v29, Lcom/pareekiApps/markcalculator/Calculation;->spinner1:Landroid/widget/Spinner;

    invoke-virtual/range {v29 .. v29}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v29

    if-nez v29, :cond_b

    :cond_4
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/pareekiApps/markcalculator/Calculation;->usingClass:Z

    .line 569
    :goto_0
    const/4 v12, 0x0

    .line 570
    .local v12, divider:I
    if-eqz v18, :cond_5

    .line 572
    add-int/lit8 v12, v12, 0x1

    .line 574
    :cond_5
    if-eqz v19, :cond_6

    .line 576
    add-int/lit8 v12, v12, 0x1

    .line 578
    :cond_6
    if-eqz v20, :cond_7

    .line 580
    add-int/lit8 v12, v12, 0x1

    .line 582
    :cond_7
    if-eqz v17, :cond_8

    .line 584
    add-int/lit8 v12, v12, 0x1

    .line 587
    :cond_8
    add-double v29, v5, v7

    add-double v29, v29, v9

    add-double v25, v29, v3

    .line 588
    .local v25, returning:D
    const/16 v29, 0x4

    move/from16 v0, v29

    if-ne v12, v0, :cond_c

    .line 590
    move-wide/from16 v0, v25

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/pareekiApps/markcalculator/Calculation;->average:D

    .line 672
    :cond_9
    :goto_1
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/pareekiApps/markcalculator/Calculation;->average:D

    move-wide/from16 v29, v0

    invoke-static/range {v29 .. v30}, Ljava/lang/Math;->round(D)J

    move-result-wide v29

    move-wide/from16 v0, v29

    long-to-double v0, v0

    move-wide/from16 v29, v0

    move-wide/from16 v0, v29

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/pareekiApps/markcalculator/Calculation;->average:D

    .line 674
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Calculation;->finalAnswer:Landroid/widget/TextView;

    move-object/from16 v29, v0

    new-instance v30, Ljava/lang/StringBuilder;

    const-string v31, "Your average is: "

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/pareekiApps/markcalculator/Calculation;->average:D

    move-wide/from16 v31, v0

    invoke-static/range {v31 .. v32}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 675
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/pareekiApps/markcalculator/Calculation;->average:D

    move-wide/from16 v29, v0

    const-wide v31, 0x4056800000000000L

    cmpl-double v29, v29, v31

    if-lez v29, :cond_a

    .line 677
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Calculation;->finalAnswer:Landroid/widget/TextView;

    move-object/from16 v29, v0

    new-instance v30, Ljava/lang/StringBuilder;

    const-string v31, "You are very smart! You average is "

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/pareekiApps/markcalculator/Calculation;->average:D

    move-wide/from16 v31, v0

    invoke-static/range {v31 .. v32}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 680
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Calculation;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/gms/ads/InterstitialAd;->isLoaded()Z

    move-result v29

    if-eqz v29, :cond_1a

    .line 682
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Calculation;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/gms/ads/InterstitialAd;->show()V

    .line 684
    new-instance v29, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct/range {v29 .. v29}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    .line 685
    const-string v30, "00811854ce4d1200"

    invoke-virtual/range {v29 .. v30}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v29

    .line 686
    invoke-virtual/range {v29 .. v29}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v11

    .line 688
    .local v11, adRequest:Lcom/google/android/gms/ads/AdRequest;
    new-instance v29, Lcom/google/android/gms/ads/InterstitialAd;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pareekiApps/markcalculator/Calculation;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    .line 689
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Calculation;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    move-object/from16 v29, v0

    const-string v30, "ca-app-pub-4733259834848580/5313887353"

    invoke-virtual/range {v29 .. v30}, Lcom/google/android/gms/ads/InterstitialAd;->setAdUnitId(Ljava/lang/String;)V

    .line 692
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Calculation;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Lcom/google/android/gms/ads/InterstitialAd;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 698
    .end local v11           #adRequest:Lcom/google/android/gms/ads/AdRequest;
    :goto_2
    return-void

    .line 567
    .end local v12           #divider:I
    .end local v25           #returning:D
    :cond_b
    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/pareekiApps/markcalculator/Calculation;->usingClass:Z

    goto/16 :goto_0

    .line 592
    .restart local v12       #divider:I
    .restart local v25       #returning:D
    :cond_c
    const/16 v29, 0x3

    move/from16 v0, v29

    if-ne v12, v0, :cond_10

    .line 594
    if-nez v18, :cond_d

    .line 596
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Calculation;->percents:[D

    move-object/from16 v29, v0

    const/16 v30, 0x1

    aget-wide v29, v29, v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Calculation;->percents:[D

    move-object/from16 v31, v0

    const/16 v32, 0x2

    aget-wide v31, v31, v32

    add-double v29, v29, v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Calculation;->percents:[D

    move-object/from16 v31, v0

    const/16 v32, 0x3

    aget-wide v31, v31, v32

    add-double v27, v29, v31

    .line 597
    .local v27, weightSum:D
    div-double v29, v25, v27

    move-wide/from16 v0, v29

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/pareekiApps/markcalculator/Calculation;->average:D

    goto/16 :goto_1

    .line 599
    .end local v27           #weightSum:D
    :cond_d
    if-nez v19, :cond_e

    .line 601
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Calculation;->percents:[D

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aget-wide v29, v29, v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Calculation;->percents:[D

    move-object/from16 v31, v0

    const/16 v32, 0x2

    aget-wide v31, v31, v32

    add-double v29, v29, v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Calculation;->percents:[D

    move-object/from16 v31, v0

    const/16 v32, 0x3

    aget-wide v31, v31, v32

    add-double v27, v29, v31

    .line 602
    .restart local v27       #weightSum:D
    div-double v29, v25, v27

    move-wide/from16 v0, v29

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/pareekiApps/markcalculator/Calculation;->average:D

    goto/16 :goto_1

    .line 604
    .end local v27           #weightSum:D
    :cond_e
    if-nez v20, :cond_f

    .line 606
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Calculation;->percents:[D

    move-object/from16 v29, v0

    const/16 v30, 0x1

    aget-wide v29, v29, v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Calculation;->percents:[D

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aget-wide v31, v31, v32

    add-double v29, v29, v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Calculation;->percents:[D

    move-object/from16 v31, v0

    const/16 v32, 0x3

    aget-wide v31, v31, v32

    add-double v27, v29, v31

    .line 607
    .restart local v27       #weightSum:D
    div-double v29, v25, v27

    move-wide/from16 v0, v29

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/pareekiApps/markcalculator/Calculation;->average:D

    goto/16 :goto_1

    .line 609
    .end local v27           #weightSum:D
    :cond_f
    if-nez v17, :cond_9

    .line 611
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Calculation;->percents:[D

    move-object/from16 v29, v0

    const/16 v30, 0x1

    aget-wide v29, v29, v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Calculation;->percents:[D

    move-object/from16 v31, v0

    const/16 v32, 0x2

    aget-wide v31, v31, v32

    add-double v29, v29, v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Calculation;->percents:[D

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aget-wide v31, v31, v32

    add-double v27, v29, v31

    .line 612
    .restart local v27       #weightSum:D
    div-double v29, v25, v27

    move-wide/from16 v0, v29

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/pareekiApps/markcalculator/Calculation;->average:D

    goto/16 :goto_1

    .line 615
    .end local v27           #weightSum:D
    :cond_10
    const/16 v29, 0x2

    move/from16 v0, v29

    if-ne v12, v0, :cond_16

    .line 617
    if-nez v18, :cond_11

    if-nez v19, :cond_11

    .line 619
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Calculation;->percents:[D

    move-object/from16 v29, v0

    const/16 v30, 0x2

    aget-wide v29, v29, v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Calculation;->percents:[D

    move-object/from16 v31, v0

    const/16 v32, 0x3

    aget-wide v31, v31, v32

    add-double v27, v29, v31

    .line 620
    .restart local v27       #weightSum:D
    div-double v29, v25, v27

    move-wide/from16 v0, v29

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/pareekiApps/markcalculator/Calculation;->average:D

    goto/16 :goto_1

    .line 622
    .end local v27           #weightSum:D
    :cond_11
    if-nez v18, :cond_12

    if-nez v20, :cond_12

    .line 624
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Calculation;->percents:[D

    move-object/from16 v29, v0

    const/16 v30, 0x1

    aget-wide v29, v29, v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Calculation;->percents:[D

    move-object/from16 v31, v0

    const/16 v32, 0x3

    aget-wide v31, v31, v32

    add-double v27, v29, v31

    .line 625
    .restart local v27       #weightSum:D
    div-double v29, v25, v27

    move-wide/from16 v0, v29

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/pareekiApps/markcalculator/Calculation;->average:D

    goto/16 :goto_1

    .line 627
    .end local v27           #weightSum:D
    :cond_12
    if-nez v18, :cond_13

    if-nez v17, :cond_13

    .line 629
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Calculation;->percents:[D

    move-object/from16 v29, v0

    const/16 v30, 0x2

    aget-wide v29, v29, v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Calculation;->percents:[D

    move-object/from16 v31, v0

    const/16 v32, 0x1

    aget-wide v31, v31, v32

    add-double v27, v29, v31

    .line 630
    .restart local v27       #weightSum:D
    div-double v29, v25, v27

    move-wide/from16 v0, v29

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/pareekiApps/markcalculator/Calculation;->average:D

    goto/16 :goto_1

    .line 632
    .end local v27           #weightSum:D
    :cond_13
    if-nez v19, :cond_14

    if-nez v20, :cond_14

    .line 634
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Calculation;->percents:[D

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aget-wide v29, v29, v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Calculation;->percents:[D

    move-object/from16 v31, v0

    const/16 v32, 0x3

    aget-wide v31, v31, v32

    add-double v27, v29, v31

    .line 635
    .restart local v27       #weightSum:D
    div-double v29, v25, v27

    move-wide/from16 v0, v29

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/pareekiApps/markcalculator/Calculation;->average:D

    goto/16 :goto_1

    .line 637
    .end local v27           #weightSum:D
    :cond_14
    if-nez v19, :cond_15

    if-nez v17, :cond_15

    .line 639
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Calculation;->percents:[D

    move-object/from16 v29, v0

    const/16 v30, 0x2

    aget-wide v29, v29, v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Calculation;->percents:[D

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aget-wide v31, v31, v32

    add-double v27, v29, v31

    .line 640
    .restart local v27       #weightSum:D
    div-double v29, v25, v27

    move-wide/from16 v0, v29

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/pareekiApps/markcalculator/Calculation;->average:D

    goto/16 :goto_1

    .line 642
    .end local v27           #weightSum:D
    :cond_15
    if-nez v20, :cond_9

    if-nez v17, :cond_9

    .line 644
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Calculation;->percents:[D

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aget-wide v29, v29, v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Calculation;->percents:[D

    move-object/from16 v31, v0

    const/16 v32, 0x1

    aget-wide v31, v31, v32

    add-double v27, v29, v31

    .line 645
    .restart local v27       #weightSum:D
    div-double v29, v25, v27

    move-wide/from16 v0, v29

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/pareekiApps/markcalculator/Calculation;->average:D

    goto/16 :goto_1

    .line 648
    .end local v27           #weightSum:D
    :cond_16
    const/16 v29, 0x1

    move/from16 v0, v29

    if-ne v12, v0, :cond_9

    .line 650
    if-eqz v18, :cond_17

    .line 652
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Calculation;->percents:[D

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aget-wide v27, v29, v30

    .line 653
    .restart local v27       #weightSum:D
    div-double v29, v25, v27

    move-wide/from16 v0, v29

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/pareekiApps/markcalculator/Calculation;->average:D

    goto/16 :goto_1

    .line 655
    .end local v27           #weightSum:D
    :cond_17
    if-eqz v19, :cond_18

    .line 657
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Calculation;->percents:[D

    move-object/from16 v29, v0

    const/16 v30, 0x1

    aget-wide v27, v29, v30

    .line 658
    .restart local v27       #weightSum:D
    div-double v29, v25, v27

    move-wide/from16 v0, v29

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/pareekiApps/markcalculator/Calculation;->average:D

    goto/16 :goto_1

    .line 660
    .end local v27           #weightSum:D
    :cond_18
    if-eqz v20, :cond_19

    .line 662
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Calculation;->percents:[D

    move-object/from16 v29, v0

    const/16 v30, 0x2

    aget-wide v27, v29, v30

    .line 663
    .restart local v27       #weightSum:D
    div-double v29, v25, v27

    move-wide/from16 v0, v29

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/pareekiApps/markcalculator/Calculation;->average:D

    goto/16 :goto_1

    .line 665
    .end local v27           #weightSum:D
    :cond_19
    if-eqz v17, :cond_9

    .line 667
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Calculation;->percents:[D

    move-object/from16 v29, v0

    const/16 v30, 0x3

    aget-wide v27, v29, v30

    .line 668
    .restart local v27       #weightSum:D
    div-double v29, v25, v27

    move-wide/from16 v0, v29

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/pareekiApps/markcalculator/Calculation;->average:D

    goto/16 :goto_1

    .line 696
    .end local v27           #weightSum:D
    :cond_1a
    const-string v29, "InterstitialSample"

    const-string v30, "Interstitial ad was not ready to be shown."

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    .line 80
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    const/high16 v9, 0x7f03

    invoke-virtual {p0, v9}, Lcom/pareekiApps/markcalculator/Calculation;->setContentView(I)V

    .line 85
    new-instance v9, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v9}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    .line 86
    const-string v10, "00811854ce4d1200"

    invoke-virtual {v9, v10}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v9

    .line 87
    invoke-virtual {v9}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v1

    .line 89
    .local v1, adRequest:Lcom/google/android/gms/ads/AdRequest;
    const v9, 0x7f060050

    invoke-virtual {p0, v9}, Lcom/pareekiApps/markcalculator/Calculation;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/ads/AdView;

    .line 90
    .local v2, adView:Lcom/google/android/gms/ads/AdView;
    invoke-virtual {v2, v1}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 91
    new-instance v9, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v9}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    .line 92
    const-string v10, "00811854ce4d1200"

    invoke-virtual {v9, v10}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v9

    .line 93
    invoke-virtual {v9}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v1

    .line 94
    const v9, 0x7f060053

    invoke-virtual {p0, v9}, Lcom/pareekiApps/markcalculator/Calculation;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #adView:Lcom/google/android/gms/ads/AdView;
    check-cast v2, Lcom/google/android/gms/ads/AdView;

    .line 95
    .restart local v2       #adView:Lcom/google/android/gms/ads/AdView;
    invoke-virtual {v2, v1}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 96
    new-instance v9, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v9}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    .line 97
    const-string v10, "00811854ce4d1200"

    invoke-virtual {v9, v10}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v9

    .line 98
    invoke-virtual {v9}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v1

    .line 99
    const v9, 0x7f060054

    invoke-virtual {p0, v9}, Lcom/pareekiApps/markcalculator/Calculation;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #adView:Lcom/google/android/gms/ads/AdView;
    check-cast v2, Lcom/google/android/gms/ads/AdView;

    .line 100
    .restart local v2       #adView:Lcom/google/android/gms/ads/AdView;
    invoke-virtual {v2, v1}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 103
    new-instance v9, Lcom/google/android/gms/ads/InterstitialAd;

    invoke-direct {v9, p0}, Lcom/google/android/gms/ads/InterstitialAd;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/pareekiApps/markcalculator/Calculation;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    .line 104
    iget-object v9, p0, Lcom/pareekiApps/markcalculator/Calculation;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    const-string v10, "ca-app-pub-4733259834848580/5313887353"

    invoke-virtual {v9, v10}, Lcom/google/android/gms/ads/InterstitialAd;->setAdUnitId(Ljava/lang/String;)V

    .line 106
    new-instance v9, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v9}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    .line 107
    const-string v10, "00811854ce4d1200"

    invoke-virtual {v9, v10}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v9

    .line 108
    invoke-virtual {v9}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v1

    .line 111
    iget-object v9, p0, Lcom/pareekiApps/markcalculator/Calculation;->interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v9, v1}, Lcom/google/android/gms/ads/InterstitialAd;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 115
    const v9, 0x7f060006

    invoke-virtual {p0, v9}, Lcom/pareekiApps/markcalculator/Calculation;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TabHost;

    iput-object v9, p0, Lcom/pareekiApps/markcalculator/Calculation;->th:Landroid/widget/TabHost;

    .line 116
    iget-object v9, p0, Lcom/pareekiApps/markcalculator/Calculation;->th:Landroid/widget/TabHost;

    invoke-virtual {v9}, Landroid/widget/TabHost;->setup()V

    .line 117
    iget-object v9, p0, Lcom/pareekiApps/markcalculator/Calculation;->th:Landroid/widget/TabHost;

    const-string v10, "tag1"

    invoke-virtual {v9, v10}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    .line 118
    .local v6, spec1:Landroid/widget/TabHost$TabSpec;
    iget-object v9, p0, Lcom/pareekiApps/markcalculator/Calculation;->th:Landroid/widget/TabHost;

    const-string v10, "tag2"

    invoke-virtual {v9, v10}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v7

    .line 119
    .local v7, spec2:Landroid/widget/TabHost$TabSpec;
    iget-object v9, p0, Lcom/pareekiApps/markcalculator/Calculation;->th:Landroid/widget/TabHost;

    const-string v10, "tag3"

    invoke-virtual {v9, v10}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v8

    .line 120
    .local v8, spec3:Landroid/widget/TabHost$TabSpec;
    const v9, 0x7f060007

    invoke-virtual {v6, v9}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    .line 121
    const-string v9, "Calculator"

    invoke-virtual {v6, v9}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    .line 122
    const v9, 0x7f060008

    invoke-virtual {v7, v9}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    .line 123
    const-string v9, "Classes"

    invoke-virtual {v7, v9}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    .line 124
    const v9, 0x7f060009

    invoke-virtual {v8, v9}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    .line 125
    const-string v9, "Catalog"

    invoke-virtual {v8, v9}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    .line 126
    iget-object v9, p0, Lcom/pareekiApps/markcalculator/Calculation;->th:Landroid/widget/TabHost;

    invoke-virtual {v9, v6}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 127
    iget-object v9, p0, Lcom/pareekiApps/markcalculator/Calculation;->th:Landroid/widget/TabHost;

    invoke-virtual {v9, v7}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 129
    iget-object v9, p0, Lcom/pareekiApps/markcalculator/Calculation;->th:Landroid/widget/TabHost;

    invoke-virtual {v9, v8}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 133
    invoke-virtual {p0}, Lcom/pareekiApps/markcalculator/Calculation;->getBaseContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    iput-object v9, p0, Lcom/pareekiApps/markcalculator/Calculation;->getPrefs:Landroid/content/SharedPreferences;

    .line 136
    sget-boolean v9, Lcom/pareekiApps/markcalculator/Calculation;->saving:Z

    if-nez v9, :cond_0

    .line 138
    sget-object v9, Lcom/pareekiApps/markcalculator/Calculation;->list:Ljava/util/List;

    const/4 v10, 0x0

    const-string v11, "Need to set your class"

    invoke-interface {v9, v10, v11}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 139
    sget-object v9, Lcom/pareekiApps/markcalculator/Calculation;->courseNames:[Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "Select your class"

    aput-object v11, v9, v10

    .line 140
    sget-object v9, Lcom/pareekiApps/markcalculator/Calculation;->list:Ljava/util/List;

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/pareekiApps/markcalculator/Calculation;->getPrefs:Landroid/content/SharedPreferences;

    const-string v12, "course1"

    const-string v13, "Course 1"

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 141
    sget-object v10, Lcom/pareekiApps/markcalculator/Calculation;->courseNames:[Ljava/lang/String;

    const/4 v11, 0x1

    sget-object v9, Lcom/pareekiApps/markcalculator/Calculation;->list:Ljava/util/List;

    const/4 v12, 0x1

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    aput-object v9, v10, v11

    .line 142
    sget-object v9, Lcom/pareekiApps/markcalculator/Calculation;->list:Ljava/util/List;

    const/4 v10, 0x2

    iget-object v11, p0, Lcom/pareekiApps/markcalculator/Calculation;->getPrefs:Landroid/content/SharedPreferences;

    const-string v12, "course2"

    const-string v13, "Course 2"

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 143
    sget-object v10, Lcom/pareekiApps/markcalculator/Calculation;->courseNames:[Ljava/lang/String;

    const/4 v11, 0x2

    sget-object v9, Lcom/pareekiApps/markcalculator/Calculation;->list:Ljava/util/List;

    const/4 v12, 0x2

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    aput-object v9, v10, v11

    .line 144
    sget-object v9, Lcom/pareekiApps/markcalculator/Calculation;->list:Ljava/util/List;

    const/4 v10, 0x3

    iget-object v11, p0, Lcom/pareekiApps/markcalculator/Calculation;->getPrefs:Landroid/content/SharedPreferences;

    const-string v12, "course3"

    const-string v13, "Course 3"

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 145
    sget-object v10, Lcom/pareekiApps/markcalculator/Calculation;->courseNames:[Ljava/lang/String;

    const/4 v11, 0x3

    sget-object v9, Lcom/pareekiApps/markcalculator/Calculation;->list:Ljava/util/List;

    const/4 v12, 0x3

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    aput-object v9, v10, v11

    .line 146
    sget-object v9, Lcom/pareekiApps/markcalculator/Calculation;->list:Ljava/util/List;

    const/4 v10, 0x4

    iget-object v11, p0, Lcom/pareekiApps/markcalculator/Calculation;->getPrefs:Landroid/content/SharedPreferences;

    const-string v12, "course4"

    const-string v13, "Course 4"

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 147
    sget-object v10, Lcom/pareekiApps/markcalculator/Calculation;->courseNames:[Ljava/lang/String;

    const/4 v11, 0x4

    sget-object v9, Lcom/pareekiApps/markcalculator/Calculation;->list:Ljava/util/List;

    const/4 v12, 0x4

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    aput-object v9, v10, v11

    .line 149
    iget-object v9, p0, Lcom/pareekiApps/markcalculator/Calculation;->th:Landroid/widget/TabHost;

    const-string v10, "tag1"

    invoke-virtual {v9, v10}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 152
    :cond_0
    iget-object v9, p0, Lcom/pareekiApps/markcalculator/Calculation;->getPrefs:Landroid/content/SharedPreferences;

    const-string v10, "firstTime"

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    if-nez v9, :cond_1

    .line 155
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 157
    .local v5, builder:Landroid/app/AlertDialog$Builder;
    const v9, 0x7f070028

    invoke-virtual {v5, v9}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 158
    const-string v9, "Welcome"

    invoke-virtual {v5, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 160
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 161
    .local v0, ad:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 163
    iget-object v9, p0, Lcom/pareekiApps/markcalculator/Calculation;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    const-string v10, "firstTime"

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Lcom/pareekiApps/markcalculator/Prefs;->setPreferenceInt(Ljava/lang/String;I)V

    .line 167
    .end local v0           #ad:Landroid/app/AlertDialog;
    .end local v5           #builder:Landroid/app/AlertDialog$Builder;
    :cond_1
    const v9, 0x7f06004f

    invoke-virtual {p0, v9}, Lcom/pareekiApps/markcalculator/Calculation;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Spinner;

    sput-object v9, Lcom/pareekiApps/markcalculator/Calculation;->spinner1:Landroid/widget/Spinner;

    .line 168
    const v9, 0x7f060013

    invoke-virtual {p0, v9}, Lcom/pareekiApps/markcalculator/Calculation;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Spinner;

    iput-object v9, p0, Lcom/pareekiApps/markcalculator/Calculation;->spinner3:Landroid/widget/Spinner;

    .line 169
    const v9, 0x7f060014

    invoke-virtual {p0, v9}, Lcom/pareekiApps/markcalculator/Calculation;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Spinner;

    iput-object v9, p0, Lcom/pareekiApps/markcalculator/Calculation;->spinner4:Landroid/widget/Spinner;

    .line 170
    const v9, 0x7f060055

    invoke-virtual {p0, v9}, Lcom/pareekiApps/markcalculator/Calculation;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Spinner;

    sput-object v9, Lcom/pareekiApps/markcalculator/Calculation;->spinner5:Landroid/widget/Spinner;

    .line 172
    const v9, 0x7f060042

    invoke-virtual {p0, v9}, Lcom/pareekiApps/markcalculator/Calculation;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    iput-object v9, p0, Lcom/pareekiApps/markcalculator/Calculation;->num:Landroid/widget/EditText;

    .line 173
    const v9, 0x7f060044

    invoke-virtual {p0, v9}, Lcom/pareekiApps/markcalculator/Calculation;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    iput-object v9, p0, Lcom/pareekiApps/markcalculator/Calculation;->den:Landroid/widget/EditText;

    .line 175
    const v9, 0x7f060011

    invoke-virtual {p0, v9}, Lcom/pareekiApps/markcalculator/Calculation;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    iput-object v9, p0, Lcom/pareekiApps/markcalculator/Calculation;->markValue:Landroid/widget/EditText;

    .line 176
    const v9, 0x7f060012

    invoke-virtual {p0, v9}, Lcom/pareekiApps/markcalculator/Calculation;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    iput-object v9, p0, Lcom/pareekiApps/markcalculator/Calculation;->outOf:Landroid/widget/EditText;

    .line 177
    new-instance v3, Landroid/widget/ArrayAdapter;

    const v9, 0x109000a

    sget-object v10, Lcom/pareekiApps/markcalculator/Calculation;->list:Ljava/util/List;

    invoke-direct {v3, p0, v9, v10}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 178
    .local v3, adapter1:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    sget-object v9, Lcom/pareekiApps/markcalculator/Calculation;->spinner1:Landroid/widget/Spinner;

    invoke-virtual {v9, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 180
    new-instance v4, Landroid/widget/ArrayAdapter;

    const v9, 0x1090008

    sget-object v10, Lcom/pareekiApps/markcalculator/Calculation;->courseNames:[Ljava/lang/String;

    invoke-direct {v4, p0, v9, v10}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 181
    .local v4, adapter2:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v9, 0x1090009

    invoke-virtual {v4, v9}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 182
    sget-object v9, Lcom/pareekiApps/markcalculator/Calculation;->spinner5:Landroid/widget/Spinner;

    invoke-virtual {v9, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 184
    sget-object v9, Lcom/pareekiApps/markcalculator/Calculation;->spinner5:Landroid/widget/Spinner;

    new-instance v10, Lcom/pareekiApps/markcalculator/Calculation$1;

    invoke-direct {v10, p0}, Lcom/pareekiApps/markcalculator/Calculation$1;-><init>(Lcom/pareekiApps/markcalculator/Calculation;)V

    invoke-virtual {v9, v10}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 234
    invoke-direct {p0}, Lcom/pareekiApps/markcalculator/Calculation;->addListenerOnSpinnerItemSelection()V

    .line 236
    const v9, 0x7f060052

    invoke-virtual {p0, v9}, Lcom/pareekiApps/markcalculator/Calculation;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ExpandableListView;

    iput-object v9, p0, Lcom/pareekiApps/markcalculator/Calculation;->exv:Landroid/widget/ExpandableListView;

    .line 237
    iget-object v9, p0, Lcom/pareekiApps/markcalculator/Calculation;->exv:Landroid/widget/ExpandableListView;

    new-instance v10, Lcom/pareekiApps/markcalculator/MyAdapter;

    invoke-direct {v10, p0}, Lcom/pareekiApps/markcalculator/MyAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v10}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 243
    sget-boolean v9, Lcom/pareekiApps/markcalculator/Calculation;->saving:Z

    if-eqz v9, :cond_2

    .line 245
    iget-object v9, p0, Lcom/pareekiApps/markcalculator/Calculation;->th:Landroid/widget/TabHost;

    const-string v10, "tag2"

    invoke-virtual {v9, v10}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 249
    :cond_2
    const v9, 0x7f06004e

    invoke-virtual {p0, v9}, Lcom/pareekiApps/markcalculator/Calculation;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/pareekiApps/markcalculator/Calculation;->finalAnswer:Landroid/widget/TextView;

    .line 250
    iget-object v9, p0, Lcom/pareekiApps/markcalculator/Calculation;->finalAnswer:Landroid/widget/TextView;

    const-string v10, "You mark will be posted here: "

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 433
    invoke-virtual {p0}, Lcom/pareekiApps/markcalculator/Calculation;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0c0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 434
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 9
    .parameter "item"

    .prologue
    const/4 v8, 0x0

    .line 438
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    .line 439
    .local v4, itemId:I
    const v5, 0x7f060058

    if-ne v4, v5, :cond_0

    .line 442
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 444
    .local v2, builder:Landroid/app/AlertDialog$Builder;
    const-string v5, "This app will allow you to calculate your real mark on any assessment factoring in the different weight categories. You can save the weights of all your classes for future use."

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 445
    const-string v5, "About"

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 447
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 448
    .local v1, ad:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 450
    .end local v1           #ad:Landroid/app/AlertDialog;
    .end local v2           #builder:Landroid/app/AlertDialog$Builder;
    :cond_0
    const v5, 0x7f060059

    if-ne v4, v5, :cond_1

    .line 453
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 455
    .restart local v2       #builder:Landroid/app/AlertDialog$Builder;
    const v5, 0x7f070026

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 456
    const-string v5, "Instructions"

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 458
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 459
    .restart local v1       #ad:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 461
    .end local v1           #ad:Landroid/app/AlertDialog;
    .end local v2           #builder:Landroid/app/AlertDialog$Builder;
    :cond_1
    const v5, 0x7f06005a

    if-ne v4, v5, :cond_3

    .line 463
    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/pareekiApps/markcalculator/Calculation;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    const-class v6, Lcom/pareekiApps/markcalculator/SettingsActivity;

    invoke-direct {v3, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 464
    .local v3, i:Landroid/content/Intent;
    invoke-virtual {p0, v3}, Lcom/pareekiApps/markcalculator/Calculation;->startActivity(Landroid/content/Intent;)V

    .line 510
    .end local v3           #i:Landroid/content/Intent;
    :cond_2
    :goto_0
    return v8

    .line 466
    :cond_3
    const v5, 0x7f06005b

    if-ne v4, v5, :cond_4

    .line 468
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.SEND"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 469
    .local v0, Email:Landroid/content/Intent;
    const-string v5, "text/email"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 470
    const-string v5, "android.intent.extra.EMAIL"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const-string v7, "pareekiapp@gmail.com"

    aput-object v7, v6, v8

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 471
    const-string v5, "android.intent.extra.SUBJECT"

    const-string v6, "Feedback"

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 472
    const-string v5, "android.intent.extra.TEXT"

    const-string v6, "Dear ...,"

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 473
    const-string v5, "Send Feedback:"

    invoke-static {v0, v5}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/pareekiApps/markcalculator/Calculation;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 475
    .end local v0           #Email:Landroid/content/Intent;
    :cond_4
    const v5, 0x7f06005c

    if-ne v4, v5, :cond_2

    .line 477
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 478
    .restart local v2       #builder:Landroid/app/AlertDialog$Builder;
    const-string v5, "Do you really want to reset all values"

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 479
    const-string v6, "Confirm"

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 480
    const-string v6, "Cancel"

    new-instance v7, Lcom/pareekiApps/markcalculator/Calculation$4;

    invoke-direct {v7, p0}, Lcom/pareekiApps/markcalculator/Calculation$4;-><init>(Lcom/pareekiApps/markcalculator/Calculation;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 485
    const-string v6, "Reset"

    new-instance v7, Lcom/pareekiApps/markcalculator/Calculation$5;

    invoke-direct {v7, p0}, Lcom/pareekiApps/markcalculator/Calculation$5;-><init>(Lcom/pareekiApps/markcalculator/Calculation;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 507
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 508
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 255
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 257
    new-instance v2, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v2}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    .line 258
    const-string v3, "00811854ce4d1200"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v2

    .line 259
    invoke-virtual {v2}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    .line 261
    .local v0, adRequest:Lcom/google/android/gms/ads/AdRequest;
    const v2, 0x7f060050

    invoke-virtual {p0, v2}, Lcom/pareekiApps/markcalculator/Calculation;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/ads/AdView;

    .line 262
    .local v1, adView:Lcom/google/android/gms/ads/AdView;
    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 263
    new-instance v2, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v2}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    .line 264
    const-string v3, "00811854ce4d1200"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v2

    .line 265
    invoke-virtual {v2}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    .line 266
    const v2, 0x7f060053

    invoke-virtual {p0, v2}, Lcom/pareekiApps/markcalculator/Calculation;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #adView:Lcom/google/android/gms/ads/AdView;
    check-cast v1, Lcom/google/android/gms/ads/AdView;

    .line 267
    .restart local v1       #adView:Lcom/google/android/gms/ads/AdView;
    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 268
    new-instance v2, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v2}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    .line 269
    const-string v3, "00811854ce4d1200"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v2

    .line 270
    invoke-virtual {v2}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    .line 271
    const v2, 0x7f060054

    invoke-virtual {p0, v2}, Lcom/pareekiApps/markcalculator/Calculation;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #adView:Lcom/google/android/gms/ads/AdView;
    check-cast v1, Lcom/google/android/gms/ads/AdView;

    .line 272
    .restart local v1       #adView:Lcom/google/android/gms/ads/AdView;
    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 273
    sget-object v2, Lcom/pareekiApps/markcalculator/Calculation;->spinner5:Landroid/widget/Spinner;

    sget-object v3, Lcom/pareekiApps/markcalculator/Calculation;->courseNames:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 274
    return-void
.end method

.method public quickCalc(Landroid/view/View;)V
    .locals 14
    .parameter "v"

    .prologue
    const/4 v13, 0x0

    .line 278
    iget-object v9, p0, Lcom/pareekiApps/markcalculator/Calculation;->num:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-interface {v9}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    .line 279
    .local v6, n:Ljava/lang/String;
    iget-object v9, p0, Lcom/pareekiApps/markcalculator/Calculation;->den:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-interface {v9}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    .line 281
    .local v3, d:Ljava/lang/String;
    const-wide/16 v7, 0x0

    .line 282
    .local v7, numerator:D
    const-wide/high16 v4, 0x4014

    .line 283
    .local v4, denominator:D
    const-string v9, ".*\\d.*"

    invoke-virtual {v6, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, ".*\\d.*"

    invoke-virtual {v3, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 285
    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    .line 286
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 287
    div-double v9, v7, v4

    const-wide/high16 v11, 0x4059

    mul-double v0, v9, v11

    .line 288
    .local v0, a:D
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 289
    .local v2, answer:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/pareekiApps/markcalculator/Calculation;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Your mark is: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 295
    .end local v0           #a:D
    .end local v2           #answer:Ljava/lang/String;
    :goto_0
    return-void

    .line 293
    :cond_0
    invoke-virtual {p0}, Lcom/pareekiApps/markcalculator/Calculation;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "You need to insert some numbers"

    invoke-static {v9, v10, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
