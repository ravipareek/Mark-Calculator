.class Lcom/pareekiApps/markcalculator/Course3$3;
.super Ljava/lang/Object;
.source "Course3.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pareekiApps/markcalculator/Course3;->editMark(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pareekiApps/markcalculator/Course3;

.field private final synthetic val$denMark:Landroid/widget/EditText;

.field private final synthetic val$et:Landroid/widget/EditText;

.field private final synthetic val$numMark:Landroid/widget/EditText;

.field private final synthetic val$rowNum:I


# direct methods
.method constructor <init>(Lcom/pareekiApps/markcalculator/Course3;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pareekiApps/markcalculator/Course3$3;->this$0:Lcom/pareekiApps/markcalculator/Course3;

    iput-object p2, p0, Lcom/pareekiApps/markcalculator/Course3$3;->val$numMark:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/pareekiApps/markcalculator/Course3$3;->val$denMark:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/pareekiApps/markcalculator/Course3$3;->val$et:Landroid/widget/EditText;

    iput p5, p0, Lcom/pareekiApps/markcalculator/Course3$3;->val$rowNum:I

    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 18
    .parameter "v"

    .prologue
    .line 307
    const/4 v6, 0x0

    .line 308
    .local v6, gotMark:Z
    const/4 v5, 0x0

    .line 309
    .local v5, gotCategory:Z
    const/4 v7, 0x0

    .line 310
    .local v7, gotWeight:Z
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/pareekiApps/markcalculator/Course3$3;->val$numMark:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-interface {v11}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v8

    .line 311
    .local v8, n:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/pareekiApps/markcalculator/Course3$3;->val$denMark:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-interface {v11}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 312
    .local v1, d:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/pareekiApps/markcalculator/Course3$3;->val$et:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-interface {v11}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    .line 313
    .local v4, entryName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/pareekiApps/markcalculator/Course3$3;->this$0:Lcom/pareekiApps/markcalculator/Course3;

    iput-object v4, v11, Lcom/pareekiApps/markcalculator/Course3;->name:Ljava/lang/String;

    .line 315
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/pareekiApps/markcalculator/Course3$3;->this$0:Lcom/pareekiApps/markcalculator/Course3;

    invoke-static {}, Lcom/pareekiApps/markcalculator/CustomOnItemSelectedListener;->getWeight()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/pareekiApps/markcalculator/Course3;->spinnerSelectWeight:Ljava/lang/String;

    .line 317
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/pareekiApps/markcalculator/Course3$3;->this$0:Lcom/pareekiApps/markcalculator/Course3;

    iget-object v11, v11, Lcom/pareekiApps/markcalculator/Course3;->spinnerSelectCategory:Ljava/lang/String;

    const-string v12, "Categories"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 319
    const/4 v5, 0x1

    .line 321
    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/pareekiApps/markcalculator/Course3$3;->this$0:Lcom/pareekiApps/markcalculator/Course3;

    iget-object v11, v11, Lcom/pareekiApps/markcalculator/Course3;->spinnerSelectWeight:Ljava/lang/String;

    const-string v12, "Weights"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 323
    const/4 v7, 0x1

    .line 326
    :cond_1
    const-string v11, ".*\\d.*"

    invoke-virtual {v8, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2

    const-string v11, ".*\\d.*"

    invoke-virtual {v1, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 328
    :cond_2
    invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    .line 329
    .local v9, numerator:D
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 330
    .local v2, denominator:D
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/pareekiApps/markcalculator/Course3$3;->this$0:Lcom/pareekiApps/markcalculator/Course3;

    div-double v12, v9, v2

    const-wide/high16 v14, 0x4059

    mul-double/2addr v12, v14

    iput-wide v12, v11, Lcom/pareekiApps/markcalculator/Course3;->answer:D

    .line 331
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/pareekiApps/markcalculator/Course3$3;->this$0:Lcom/pareekiApps/markcalculator/Course3;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pareekiApps/markcalculator/Course3$3;->this$0:Lcom/pareekiApps/markcalculator/Course3;

    iget-wide v12, v12, Lcom/pareekiApps/markcalculator/Course3;->answer:D

    const-wide/high16 v14, 0x4059

    mul-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    move-result-wide v12

    long-to-double v12, v12

    const-wide/high16 v14, 0x4059

    div-double/2addr v12, v14

    iput-wide v12, v11, Lcom/pareekiApps/markcalculator/Course3;->answer:D

    .line 332
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/pareekiApps/markcalculator/Course3$3;->this$0:Lcom/pareekiApps/markcalculator/Course3;

    iget-wide v12, v11, Lcom/pareekiApps/markcalculator/Course3;->totalMarks:D

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pareekiApps/markcalculator/Course3$3;->this$0:Lcom/pareekiApps/markcalculator/Course3;

    iget-wide v14, v14, Lcom/pareekiApps/markcalculator/Course3;->answer:D

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course3$3;->this$0:Lcom/pareekiApps/markcalculator/Course3;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/pareekiApps/markcalculator/Course3;->spinnerSelectWeight:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v16

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    iput-wide v12, v11, Lcom/pareekiApps/markcalculator/Course3;->totalMarks:D

    .line 333
    const/4 v6, 0x1

    .line 334
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/pareekiApps/markcalculator/Course3$3;->this$0:Lcom/pareekiApps/markcalculator/Course3;

    iget-object v11, v11, Lcom/pareekiApps/markcalculator/Course3;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Course3Entry"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v13, v0, Lcom/pareekiApps/markcalculator/Course3$3;->val$rowNum:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "values"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/pareekiApps/markcalculator/Prefs;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    .end local v2           #denominator:D
    .end local v9           #numerator:D
    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/pareekiApps/markcalculator/Course3$3;->this$0:Lcom/pareekiApps/markcalculator/Course3;

    invoke-static {}, Lcom/pareekiApps/markcalculator/CustomOnItemSelectedListener;->getCategory()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/pareekiApps/markcalculator/Course3;->spinnerSelectCategory:Ljava/lang/String;

    .line 339
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/pareekiApps/markcalculator/Course3$3;->this$0:Lcom/pareekiApps/markcalculator/Course3;

    iget-object v11, v11, Lcom/pareekiApps/markcalculator/Course3;->spinnerSelectCategory:Ljava/lang/String;

    const-string v12, "Knowledge and Understanding"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 341
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/pareekiApps/markcalculator/Course3$3;->this$0:Lcom/pareekiApps/markcalculator/Course3;

    const-string v12, "KU"

    iput-object v12, v11, Lcom/pareekiApps/markcalculator/Course3;->cat:Ljava/lang/String;

    .line 356
    :cond_4
    :goto_0
    if-eqz v6, :cond_8

    if-eqz v5, :cond_8

    if-eqz v7, :cond_8

    .line 358
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/pareekiApps/markcalculator/Course3$3;->this$0:Lcom/pareekiApps/markcalculator/Course3;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Entry"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v13, v0, Lcom/pareekiApps/markcalculator/Course3$3;->val$rowNum:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "Course3"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/pareekiApps/markcalculator/Course3;->saveName:Ljava/lang/String;

    .line 359
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/pareekiApps/markcalculator/Course3$3;->this$0:Lcom/pareekiApps/markcalculator/Course3;

    iget-object v11, v11, Lcom/pareekiApps/markcalculator/Course3;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pareekiApps/markcalculator/Course3$3;->this$0:Lcom/pareekiApps/markcalculator/Course3;

    iget-object v12, v12, Lcom/pareekiApps/markcalculator/Course3;->saveName:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pareekiApps/markcalculator/Course3$3;->this$0:Lcom/pareekiApps/markcalculator/Course3;

    iget-wide v14, v14, Lcom/pareekiApps/markcalculator/Course3;->answer:D

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pareekiApps/markcalculator/Course3$3;->this$0:Lcom/pareekiApps/markcalculator/Course3;

    iget-object v14, v14, Lcom/pareekiApps/markcalculator/Course3;->cat:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pareekiApps/markcalculator/Course3$3;->this$0:Lcom/pareekiApps/markcalculator/Course3;

    iget-object v14, v14, Lcom/pareekiApps/markcalculator/Course3;->spinnerSelectWeight:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pareekiApps/markcalculator/Course3$3;->this$0:Lcom/pareekiApps/markcalculator/Course3;

    iget-object v14, v14, Lcom/pareekiApps/markcalculator/Course3;->name:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/pareekiApps/markcalculator/Prefs;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/pareekiApps/markcalculator/Course3$3;->this$0:Lcom/pareekiApps/markcalculator/Course3;

    iget-object v11, v11, Lcom/pareekiApps/markcalculator/Course3;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    const-string v12, "Class3EntryCounter"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pareekiApps/markcalculator/Course3$3;->this$0:Lcom/pareekiApps/markcalculator/Course3;

    iget v13, v13, Lcom/pareekiApps/markcalculator/Course3;->entryCounter:I

    invoke-virtual {v11, v12, v13}, Lcom/pareekiApps/markcalculator/Prefs;->setPreferenceInt(Ljava/lang/String;I)V

    .line 361
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/pareekiApps/markcalculator/Course3$3;->this$0:Lcom/pareekiApps/markcalculator/Course3;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/pareekiApps/markcalculator/Course3$3;->val$rowNum:I

    #calls: Lcom/pareekiApps/markcalculator/Course3;->updateRow(I)V
    invoke-static {v11, v12}, Lcom/pareekiApps/markcalculator/Course3;->access$2(Lcom/pareekiApps/markcalculator/Course3;I)V

    .line 363
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/pareekiApps/markcalculator/Course3$3;->this$0:Lcom/pareekiApps/markcalculator/Course3;

    #calls: Lcom/pareekiApps/markcalculator/Course3;->putOveralMarks()V
    invoke-static {v11}, Lcom/pareekiApps/markcalculator/Course3;->access$3(Lcom/pareekiApps/markcalculator/Course3;)V

    .line 364
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/pareekiApps/markcalculator/Course3$3;->this$0:Lcom/pareekiApps/markcalculator/Course3;

    iget-object v11, v11, Lcom/pareekiApps/markcalculator/Course3;->builder:Landroid/app/Dialog;

    invoke-virtual {v11}, Landroid/app/Dialog;->dismiss()V

    .line 370
    :goto_1
    return-void

    .line 343
    :cond_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/pareekiApps/markcalculator/Course3$3;->this$0:Lcom/pareekiApps/markcalculator/Course3;

    iget-object v11, v11, Lcom/pareekiApps/markcalculator/Course3;->spinnerSelectCategory:Ljava/lang/String;

    const-string v12, "Making Connections"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 345
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/pareekiApps/markcalculator/Course3$3;->this$0:Lcom/pareekiApps/markcalculator/Course3;

    const-string v12, "MC"

    iput-object v12, v11, Lcom/pareekiApps/markcalculator/Course3;->cat:Ljava/lang/String;

    goto/16 :goto_0

    .line 347
    :cond_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/pareekiApps/markcalculator/Course3$3;->this$0:Lcom/pareekiApps/markcalculator/Course3;

    iget-object v11, v11, Lcom/pareekiApps/markcalculator/Course3;->spinnerSelectCategory:Ljava/lang/String;

    const-string v12, "Thinking and Inquiry"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 349
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/pareekiApps/markcalculator/Course3$3;->this$0:Lcom/pareekiApps/markcalculator/Course3;

    const-string v12, "TI"

    iput-object v12, v11, Lcom/pareekiApps/markcalculator/Course3;->cat:Ljava/lang/String;

    goto/16 :goto_0

    .line 351
    :cond_7
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/pareekiApps/markcalculator/Course3$3;->this$0:Lcom/pareekiApps/markcalculator/Course3;

    iget-object v11, v11, Lcom/pareekiApps/markcalculator/Course3;->spinnerSelectCategory:Ljava/lang/String;

    const-string v12, "Communication"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 353
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/pareekiApps/markcalculator/Course3$3;->this$0:Lcom/pareekiApps/markcalculator/Course3;

    const-string v12, "C"

    iput-object v12, v11, Lcom/pareekiApps/markcalculator/Course3;->cat:Ljava/lang/String;

    goto/16 :goto_0

    .line 368
    :cond_8
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/pareekiApps/markcalculator/Course3$3;->this$0:Lcom/pareekiApps/markcalculator/Course3;

    invoke-virtual {v11}, Lcom/pareekiApps/markcalculator/Course3;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    const-string v12, "Make sure all the informatoion is present"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
