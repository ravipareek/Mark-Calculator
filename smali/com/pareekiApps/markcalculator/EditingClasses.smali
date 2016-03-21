.class public Lcom/pareekiApps/markcalculator/EditingClasses;
.super Landroid/app/Activity;
.source "EditingClasses.java"


# instance fields
.field C:D

.field KU:D

.field MC:D

.field TI:D

.field courseName:Landroid/widget/EditText;

.field courseNumber:I

.field et1:Landroid/widget/EditText;

.field et2:Landroid/widget/EditText;

.field et3:Landroid/widget/EditText;

.field et4:Landroid/widget/EditText;

.field prefs:Lcom/pareekiApps/markcalculator/Prefs;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 29
    new-instance v0, Lcom/pareekiApps/markcalculator/Prefs;

    invoke-direct {v0, p0}, Lcom/pareekiApps/markcalculator/Prefs;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pareekiApps/markcalculator/EditingClasses;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    .line 14
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, -0x1

    const/high16 v5, 0x4170

    .line 33
    invoke-virtual {p0}, Lcom/pareekiApps/markcalculator/EditingClasses;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 34
    .local v0, b:Landroid/os/Bundle;
    const-string v3, "class"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/pareekiApps/markcalculator/EditingClasses;->courseNumber:I

    .line 35
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Editing Class "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/pareekiApps/markcalculator/EditingClasses;->courseNumber:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/pareekiApps/markcalculator/EditingClasses;->setTitle(Ljava/lang/CharSequence;)V

    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const v3, 0x7f030001

    invoke-virtual {p0, v3}, Lcom/pareekiApps/markcalculator/EditingClasses;->setContentView(I)V

    .line 39
    invoke-virtual {p0}, Lcom/pareekiApps/markcalculator/EditingClasses;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 42
    .local v1, getPrefs:Landroid/content/SharedPreferences;
    const v3, 0x7f06000a

    invoke-virtual {p0, v3}, Lcom/pareekiApps/markcalculator/EditingClasses;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/pareekiApps/markcalculator/EditingClasses;->courseName:Landroid/widget/EditText;

    .line 43
    const v3, 0x7f06000b

    invoke-virtual {p0, v3}, Lcom/pareekiApps/markcalculator/EditingClasses;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/pareekiApps/markcalculator/EditingClasses;->et1:Landroid/widget/EditText;

    .line 44
    const v3, 0x7f06000c

    invoke-virtual {p0, v3}, Lcom/pareekiApps/markcalculator/EditingClasses;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/pareekiApps/markcalculator/EditingClasses;->et2:Landroid/widget/EditText;

    .line 45
    const v3, 0x7f06000d

    invoke-virtual {p0, v3}, Lcom/pareekiApps/markcalculator/EditingClasses;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/pareekiApps/markcalculator/EditingClasses;->et3:Landroid/widget/EditText;

    .line 46
    const v3, 0x7f06000e

    invoke-virtual {p0, v3}, Lcom/pareekiApps/markcalculator/EditingClasses;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/pareekiApps/markcalculator/EditingClasses;->et4:Landroid/widget/EditText;

    .line 48
    const-string v2, ""

    .line 50
    .local v2, temp:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "course"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/pareekiApps/markcalculator/EditingClasses;->courseNumber:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 51
    iget-object v3, p0, Lcom/pareekiApps/markcalculator/EditingClasses;->courseName:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 52
    sget-object v3, Lcom/pareekiApps/markcalculator/Calculation;->list:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 54
    sget-object v3, Lcom/pareekiApps/markcalculator/Calculation;->list:Ljava/util/List;

    iget v4, p0, Lcom/pareekiApps/markcalculator/EditingClasses;->courseNumber:I

    invoke-interface {v3, v4, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 58
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Course"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/pareekiApps/markcalculator/EditingClasses;->courseNumber:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "KU"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 59
    iget-object v3, p0, Lcom/pareekiApps/markcalculator/EditingClasses;->et1:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v3, p0, Lcom/pareekiApps/markcalculator/EditingClasses;->et1:Landroid/widget/EditText;

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setWidth(I)V

    .line 61
    iget-object v3, p0, Lcom/pareekiApps/markcalculator/EditingClasses;->et1:Landroid/widget/EditText;

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setTextSize(F)V

    .line 62
    iget-object v3, p0, Lcom/pareekiApps/markcalculator/EditingClasses;->et1:Landroid/widget/EditText;

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setTextColor(I)V

    .line 63
    iget-object v3, p0, Lcom/pareekiApps/markcalculator/EditingClasses;->et1:Landroid/widget/EditText;

    invoke-virtual {v3, v7}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 64
    iget-object v3, p0, Lcom/pareekiApps/markcalculator/EditingClasses;->et1:Landroid/widget/EditText;

    invoke-virtual {v3, v8}, Landroid/widget/EditText;->setInputType(I)V

    .line 66
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Course"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/pareekiApps/markcalculator/EditingClasses;->courseNumber:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "MC"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 67
    iget-object v3, p0, Lcom/pareekiApps/markcalculator/EditingClasses;->et2:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v3, p0, Lcom/pareekiApps/markcalculator/EditingClasses;->et2:Landroid/widget/EditText;

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setTextSize(F)V

    .line 69
    iget-object v3, p0, Lcom/pareekiApps/markcalculator/EditingClasses;->et2:Landroid/widget/EditText;

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setTextColor(I)V

    .line 70
    iget-object v3, p0, Lcom/pareekiApps/markcalculator/EditingClasses;->et2:Landroid/widget/EditText;

    invoke-virtual {v3, v7}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 71
    iget-object v3, p0, Lcom/pareekiApps/markcalculator/EditingClasses;->et2:Landroid/widget/EditText;

    invoke-virtual {v3, v8}, Landroid/widget/EditText;->setInputType(I)V

    .line 73
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Course"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/pareekiApps/markcalculator/EditingClasses;->courseNumber:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "TI"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 74
    iget-object v3, p0, Lcom/pareekiApps/markcalculator/EditingClasses;->et3:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v3, p0, Lcom/pareekiApps/markcalculator/EditingClasses;->et3:Landroid/widget/EditText;

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setTextSize(F)V

    .line 76
    iget-object v3, p0, Lcom/pareekiApps/markcalculator/EditingClasses;->et3:Landroid/widget/EditText;

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setTextColor(I)V

    .line 77
    iget-object v3, p0, Lcom/pareekiApps/markcalculator/EditingClasses;->et3:Landroid/widget/EditText;

    invoke-virtual {v3, v7}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 78
    iget-object v3, p0, Lcom/pareekiApps/markcalculator/EditingClasses;->et3:Landroid/widget/EditText;

    invoke-virtual {v3, v8}, Landroid/widget/EditText;->setInputType(I)V

    .line 80
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Course"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/pareekiApps/markcalculator/EditingClasses;->courseNumber:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "C"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 81
    iget-object v3, p0, Lcom/pareekiApps/markcalculator/EditingClasses;->et4:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v3, p0, Lcom/pareekiApps/markcalculator/EditingClasses;->et4:Landroid/widget/EditText;

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setTextSize(F)V

    .line 83
    iget-object v3, p0, Lcom/pareekiApps/markcalculator/EditingClasses;->et4:Landroid/widget/EditText;

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setTextColor(I)V

    .line 84
    iget-object v3, p0, Lcom/pareekiApps/markcalculator/EditingClasses;->et4:Landroid/widget/EditText;

    invoke-virtual {v3, v7}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 85
    iget-object v3, p0, Lcom/pareekiApps/markcalculator/EditingClasses;->et4:Landroid/widget/EditText;

    invoke-virtual {v3, v8}, Landroid/widget/EditText;->setInputType(I)V

    .line 86
    return-void
.end method

.method public saveInfo(Landroid/view/View;)V
    .locals 14
    .parameter "v"

    .prologue
    .line 89
    iget-object v10, p0, Lcom/pareekiApps/markcalculator/EditingClasses;->et1:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-interface {v10}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 90
    .local v2, KU:D
    iget-object v10, p0, Lcom/pareekiApps/markcalculator/EditingClasses;->et2:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-interface {v10}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 91
    .local v4, MC:D
    iget-object v10, p0, Lcom/pareekiApps/markcalculator/EditingClasses;->et3:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-interface {v10}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    .line 92
    .local v6, TI:D
    iget-object v10, p0, Lcom/pareekiApps/markcalculator/EditingClasses;->et4:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-interface {v10}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 94
    .local v0, C:D
    add-double v10, v2, v4

    add-double/2addr v10, v6

    add-double/2addr v10, v0

    const-wide/high16 v12, 0x4059

    cmpl-double v10, v10, v12

    if-nez v10, :cond_0

    .line 96
    const/4 v10, 0x1

    sput-boolean v10, Lcom/pareekiApps/markcalculator/Calculation;->saving:Z

    .line 98
    iget-object v10, p0, Lcom/pareekiApps/markcalculator/EditingClasses;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Course"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v12, p0, Lcom/pareekiApps/markcalculator/EditingClasses;->courseNumber:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "KU"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/pareekiApps/markcalculator/EditingClasses;->et1:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-interface {v12}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/pareekiApps/markcalculator/Prefs;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object v10, p0, Lcom/pareekiApps/markcalculator/EditingClasses;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Course"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v12, p0, Lcom/pareekiApps/markcalculator/EditingClasses;->courseNumber:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "MC"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/pareekiApps/markcalculator/EditingClasses;->et2:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-interface {v12}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/pareekiApps/markcalculator/Prefs;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v10, p0, Lcom/pareekiApps/markcalculator/EditingClasses;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Course"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v12, p0, Lcom/pareekiApps/markcalculator/EditingClasses;->courseNumber:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "TI"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/pareekiApps/markcalculator/EditingClasses;->et3:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-interface {v12}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/pareekiApps/markcalculator/Prefs;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v10, p0, Lcom/pareekiApps/markcalculator/EditingClasses;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Course"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v12, p0, Lcom/pareekiApps/markcalculator/EditingClasses;->courseNumber:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "C"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/pareekiApps/markcalculator/EditingClasses;->et4:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-interface {v12}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/pareekiApps/markcalculator/Prefs;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v10, p0, Lcom/pareekiApps/markcalculator/EditingClasses;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "course"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v12, p0, Lcom/pareekiApps/markcalculator/EditingClasses;->courseNumber:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/pareekiApps/markcalculator/EditingClasses;->courseName:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-interface {v12}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/pareekiApps/markcalculator/Prefs;->setPreferenceName(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    sget-object v10, Lcom/pareekiApps/markcalculator/Calculation;->list:Ljava/util/List;

    iget v11, p0, Lcom/pareekiApps/markcalculator/EditingClasses;->courseNumber:I

    iget-object v12, p0, Lcom/pareekiApps/markcalculator/EditingClasses;->courseName:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-interface {v12}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 107
    new-instance v8, Landroid/widget/ArrayAdapter;

    const v10, 0x109000a

    sget-object v11, Lcom/pareekiApps/markcalculator/Calculation;->list:Ljava/util/List;

    invoke-direct {v8, p0, v10, v11}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 108
    .local v8, adapter1:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    sget-object v10, Lcom/pareekiApps/markcalculator/Calculation;->spinner1:Landroid/widget/Spinner;

    invoke-virtual {v10, v8}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 110
    sget-object v10, Lcom/pareekiApps/markcalculator/Calculation;->courseNames:[Ljava/lang/String;

    iget v11, p0, Lcom/pareekiApps/markcalculator/EditingClasses;->courseNumber:I

    iget-object v12, p0, Lcom/pareekiApps/markcalculator/EditingClasses;->courseName:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-interface {v12}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    .line 111
    new-instance v9, Landroid/widget/ArrayAdapter;

    const v10, 0x1090008

    sget-object v11, Lcom/pareekiApps/markcalculator/Calculation;->courseNames:[Ljava/lang/String;

    invoke-direct {v9, p0, v10, v11}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 112
    .local v9, adapter2:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v10, 0x1090009

    invoke-virtual {v9, v10}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 113
    sget-object v10, Lcom/pareekiApps/markcalculator/Calculation;->spinner5:Landroid/widget/Spinner;

    invoke-virtual {v10, v9}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 115
    invoke-virtual {p0}, Lcom/pareekiApps/markcalculator/EditingClasses;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "Saved"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 117
    invoke-virtual {p0}, Lcom/pareekiApps/markcalculator/EditingClasses;->finish()V

    .line 123
    .end local v8           #adapter1:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v9           #adapter2:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :goto_0
    return-void

    .line 121
    :cond_0
    invoke-virtual {p0}, Lcom/pareekiApps/markcalculator/EditingClasses;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "Make Sure the Weights Add Up To 100%"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
