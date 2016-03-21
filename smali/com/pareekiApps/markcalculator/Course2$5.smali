.class Lcom/pareekiApps/markcalculator/Course2$5;
.super Ljava/lang/Object;
.source "Course2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pareekiApps/markcalculator/Course2;->addANewMark()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pareekiApps/markcalculator/Course2;

.field private final synthetic val$denMark:Landroid/widget/EditText;

.field private final synthetic val$et:Landroid/widget/EditText;

.field private final synthetic val$numMark:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/pareekiApps/markcalculator/Course2;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pareekiApps/markcalculator/Course2$5;->this$0:Lcom/pareekiApps/markcalculator/Course2;

    iput-object p2, p0, Lcom/pareekiApps/markcalculator/Course2$5;->val$numMark:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/pareekiApps/markcalculator/Course2$5;->val$denMark:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/pareekiApps/markcalculator/Course2$5;->val$et:Landroid/widget/EditText;

    .line 573
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 19
    .parameter "v"

    .prologue
    .line 576
    const/4 v6, 0x0

    .line 577
    .local v6, gotMark:Z
    const/4 v5, 0x0

    .line 578
    .local v5, gotCategory:Z
    const/4 v8, 0x0

    .line 579
    .local v8, gotWeight:Z
    const/4 v7, 0x0

    .line 580
    .local v7, gotName:Z
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pareekiApps/markcalculator/Course2$5;->val$numMark:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-interface {v12}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v9

    .line 581
    .local v9, n:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pareekiApps/markcalculator/Course2$5;->val$denMark:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-interface {v12}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 582
    .local v1, d:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pareekiApps/markcalculator/Course2$5;->val$et:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-interface {v12}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    .line 583
    .local v4, entryName:Ljava/lang/String;
    const-string v12, ""

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 584
    const/4 v7, 0x1

    .line 585
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pareekiApps/markcalculator/Course2$5;->this$0:Lcom/pareekiApps/markcalculator/Course2;

    iput-object v4, v12, Lcom/pareekiApps/markcalculator/Course2;->name:Ljava/lang/String;

    .line 587
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pareekiApps/markcalculator/Course2$5;->this$0:Lcom/pareekiApps/markcalculator/Course2;

    invoke-static {}, Lcom/pareekiApps/markcalculator/CustomOnItemSelectedListener;->getWeight()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/pareekiApps/markcalculator/Course2;->spinnerSelectWeight:Ljava/lang/String;

    .line 590
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pareekiApps/markcalculator/Course2$5;->this$0:Lcom/pareekiApps/markcalculator/Course2;

    iget-object v12, v12, Lcom/pareekiApps/markcalculator/Course2;->spinnerSelectWeight:Ljava/lang/String;

    const-string v13, "Weights"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 592
    const/4 v8, 0x1

    .line 594
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pareekiApps/markcalculator/Course2$5;->this$0:Lcom/pareekiApps/markcalculator/Course2;

    invoke-static {}, Lcom/pareekiApps/markcalculator/CustomOnItemSelectedListener;->getCategory()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/pareekiApps/markcalculator/Course2;->spinnerSelectCategory:Ljava/lang/String;

    .line 596
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pareekiApps/markcalculator/Course2$5;->this$0:Lcom/pareekiApps/markcalculator/Course2;

    iget-object v12, v12, Lcom/pareekiApps/markcalculator/Course2;->spinnerSelectCategory:Ljava/lang/String;

    const-string v13, "Categories"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 598
    const/4 v5, 0x1

    .line 601
    :cond_2
    const-string v12, ".*\\d.*"

    invoke-virtual {v9, v12}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    const-string v12, ".*\\d.*"

    invoke-virtual {v1, v12}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    if-eqz v8, :cond_3

    .line 603
    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    .line 604
    .local v10, numerator:D
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 605
    .local v2, denominator:D
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pareekiApps/markcalculator/Course2$5;->this$0:Lcom/pareekiApps/markcalculator/Course2;

    div-double v13, v10, v2

    const-wide/high16 v15, 0x4059

    mul-double/2addr v13, v15

    iput-wide v13, v12, Lcom/pareekiApps/markcalculator/Course2;->answer:D

    .line 606
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pareekiApps/markcalculator/Course2$5;->this$0:Lcom/pareekiApps/markcalculator/Course2;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pareekiApps/markcalculator/Course2$5;->this$0:Lcom/pareekiApps/markcalculator/Course2;

    iget-wide v13, v13, Lcom/pareekiApps/markcalculator/Course2;->answer:D

    const-wide/high16 v15, 0x4059

    mul-double/2addr v13, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->round(D)J

    move-result-wide v13

    long-to-double v13, v13

    const-wide/high16 v15, 0x4059

    div-double/2addr v13, v15

    iput-wide v13, v12, Lcom/pareekiApps/markcalculator/Course2;->answer:D

    .line 607
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pareekiApps/markcalculator/Course2$5;->this$0:Lcom/pareekiApps/markcalculator/Course2;

    iget-wide v13, v12, Lcom/pareekiApps/markcalculator/Course2;->totalMarks:D

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/pareekiApps/markcalculator/Course2$5;->this$0:Lcom/pareekiApps/markcalculator/Course2;

    iget-wide v15, v15, Lcom/pareekiApps/markcalculator/Course2;->answer:D

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course2$5;->this$0:Lcom/pareekiApps/markcalculator/Course2;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course2;->spinnerSelectWeight:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v17

    mul-double v15, v15, v17

    add-double/2addr v13, v15

    iput-wide v13, v12, Lcom/pareekiApps/markcalculator/Course2;->totalMarks:D

    .line 608
    const/4 v6, 0x1

    .line 609
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pareekiApps/markcalculator/Course2$5;->this$0:Lcom/pareekiApps/markcalculator/Course2;

    sget-object v13, Lcom/pareekiApps/markcalculator/Course2;->getPrefs:Landroid/content/SharedPreferences;

    const-string v14, "Class2EntryCounter"

    const/4 v15, 0x0

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v13

    iput v13, v12, Lcom/pareekiApps/markcalculator/Course2;->entryCounter:I

    .line 610
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pareekiApps/markcalculator/Course2$5;->this$0:Lcom/pareekiApps/markcalculator/Course2;

    iget-object v12, v12, Lcom/pareekiApps/markcalculator/Course2;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Course2Entry"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pareekiApps/markcalculator/Course2$5;->this$0:Lcom/pareekiApps/markcalculator/Course2;

    iget v14, v14, Lcom/pareekiApps/markcalculator/Course2;->entryCounter:I

    add-int/lit8 v14, v14, 0x1

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "values"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lcom/pareekiApps/markcalculator/Prefs;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    .end local v2           #denominator:D
    .end local v10           #numerator:D
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pareekiApps/markcalculator/Course2$5;->this$0:Lcom/pareekiApps/markcalculator/Course2;

    iget-object v12, v12, Lcom/pareekiApps/markcalculator/Course2;->spinnerSelectCategory:Ljava/lang/String;

    const-string v13, "Knowledge and Understanding"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 614
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pareekiApps/markcalculator/Course2$5;->this$0:Lcom/pareekiApps/markcalculator/Course2;

    const-string v13, "KU"

    iput-object v13, v12, Lcom/pareekiApps/markcalculator/Course2;->cat:Ljava/lang/String;

    .line 622
    :cond_4
    :goto_0
    if-eqz v6, :cond_8

    if-eqz v5, :cond_8

    if-eqz v8, :cond_8

    if-eqz v7, :cond_8

    .line 624
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pareekiApps/markcalculator/Course2$5;->this$0:Lcom/pareekiApps/markcalculator/Course2;

    sget-object v13, Lcom/pareekiApps/markcalculator/Course2;->getPrefs:Landroid/content/SharedPreferences;

    const-string v14, "Class2EntryCounter"

    const/4 v15, 0x0

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v13

    iput v13, v12, Lcom/pareekiApps/markcalculator/Course2;->entryCounter:I

    .line 625
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pareekiApps/markcalculator/Course2$5;->this$0:Lcom/pareekiApps/markcalculator/Course2;

    iget v13, v12, Lcom/pareekiApps/markcalculator/Course2;->entryCounter:I

    add-int/lit8 v13, v13, 0x1

    iput v13, v12, Lcom/pareekiApps/markcalculator/Course2;->entryCounter:I

    .line 626
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pareekiApps/markcalculator/Course2$5;->this$0:Lcom/pareekiApps/markcalculator/Course2;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Entry"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pareekiApps/markcalculator/Course2$5;->this$0:Lcom/pareekiApps/markcalculator/Course2;

    iget v14, v14, Lcom/pareekiApps/markcalculator/Course2;->entryCounter:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "Course2"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/pareekiApps/markcalculator/Course2;->saveName:Ljava/lang/String;

    .line 627
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pareekiApps/markcalculator/Course2$5;->this$0:Lcom/pareekiApps/markcalculator/Course2;

    iget-object v12, v12, Lcom/pareekiApps/markcalculator/Course2;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pareekiApps/markcalculator/Course2$5;->this$0:Lcom/pareekiApps/markcalculator/Course2;

    iget-object v13, v13, Lcom/pareekiApps/markcalculator/Course2;->saveName:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/pareekiApps/markcalculator/Course2$5;->this$0:Lcom/pareekiApps/markcalculator/Course2;

    iget-wide v15, v15, Lcom/pareekiApps/markcalculator/Course2;->answer:D

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/pareekiApps/markcalculator/Course2$5;->this$0:Lcom/pareekiApps/markcalculator/Course2;

    iget-object v15, v15, Lcom/pareekiApps/markcalculator/Course2;->cat:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/pareekiApps/markcalculator/Course2$5;->this$0:Lcom/pareekiApps/markcalculator/Course2;

    iget-object v15, v15, Lcom/pareekiApps/markcalculator/Course2;->spinnerSelectWeight:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/pareekiApps/markcalculator/Course2$5;->this$0:Lcom/pareekiApps/markcalculator/Course2;

    iget-object v15, v15, Lcom/pareekiApps/markcalculator/Course2;->name:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lcom/pareekiApps/markcalculator/Prefs;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pareekiApps/markcalculator/Course2$5;->this$0:Lcom/pareekiApps/markcalculator/Course2;

    iget-object v12, v12, Lcom/pareekiApps/markcalculator/Course2;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    const-string v13, "Class2EntryCounter"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pareekiApps/markcalculator/Course2$5;->this$0:Lcom/pareekiApps/markcalculator/Course2;

    iget v14, v14, Lcom/pareekiApps/markcalculator/Course2;->entryCounter:I

    invoke-virtual {v12, v13, v14}, Lcom/pareekiApps/markcalculator/Prefs;->setPreferenceInt(Ljava/lang/String;I)V

    .line 630
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pareekiApps/markcalculator/Course2$5;->this$0:Lcom/pareekiApps/markcalculator/Course2;

    invoke-virtual {v12}, Lcom/pareekiApps/markcalculator/Course2;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    const-string v13, "Saved"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    .line 631
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pareekiApps/markcalculator/Course2$5;->this$0:Lcom/pareekiApps/markcalculator/Course2;

    #calls: Lcom/pareekiApps/markcalculator/Course2;->savetheNewMark()V
    invoke-static {v12}, Lcom/pareekiApps/markcalculator/Course2;->access$4(Lcom/pareekiApps/markcalculator/Course2;)V

    .line 632
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pareekiApps/markcalculator/Course2$5;->this$0:Lcom/pareekiApps/markcalculator/Course2;

    iget-object v12, v12, Lcom/pareekiApps/markcalculator/Course2;->builder:Landroid/app/Dialog;

    invoke-virtual {v12}, Landroid/app/Dialog;->dismiss()V

    .line 639
    :goto_1
    return-void

    .line 615
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pareekiApps/markcalculator/Course2$5;->this$0:Lcom/pareekiApps/markcalculator/Course2;

    iget-object v12, v12, Lcom/pareekiApps/markcalculator/Course2;->spinnerSelectCategory:Ljava/lang/String;

    const-string v13, "Making Connections"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 616
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pareekiApps/markcalculator/Course2$5;->this$0:Lcom/pareekiApps/markcalculator/Course2;

    const-string v13, "MC"

    iput-object v13, v12, Lcom/pareekiApps/markcalculator/Course2;->cat:Ljava/lang/String;

    goto/16 :goto_0

    .line 617
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pareekiApps/markcalculator/Course2$5;->this$0:Lcom/pareekiApps/markcalculator/Course2;

    iget-object v12, v12, Lcom/pareekiApps/markcalculator/Course2;->spinnerSelectCategory:Ljava/lang/String;

    const-string v13, "Thinking and Inquiry"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 618
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pareekiApps/markcalculator/Course2$5;->this$0:Lcom/pareekiApps/markcalculator/Course2;

    const-string v13, "TI"

    iput-object v13, v12, Lcom/pareekiApps/markcalculator/Course2;->cat:Ljava/lang/String;

    goto/16 :goto_0

    .line 619
    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pareekiApps/markcalculator/Course2$5;->this$0:Lcom/pareekiApps/markcalculator/Course2;

    iget-object v12, v12, Lcom/pareekiApps/markcalculator/Course2;->spinnerSelectCategory:Ljava/lang/String;

    const-string v13, "Communication"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 620
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pareekiApps/markcalculator/Course2$5;->this$0:Lcom/pareekiApps/markcalculator/Course2;

    const-string v13, "C"

    iput-object v13, v12, Lcom/pareekiApps/markcalculator/Course2;->cat:Ljava/lang/String;

    goto/16 :goto_0

    .line 637
    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pareekiApps/markcalculator/Course2$5;->this$0:Lcom/pareekiApps/markcalculator/Course2;

    invoke-virtual {v12}, Lcom/pareekiApps/markcalculator/Course2;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    const-string v13, "Make sure all the informatoion is present"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
