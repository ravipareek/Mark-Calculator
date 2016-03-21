.class Lcom/pareekiApps/markcalculator/Calculation$5;
.super Ljava/lang/Object;
.source "Calculation.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pareekiApps/markcalculator/Calculation;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pareekiApps/markcalculator/Calculation;


# direct methods
.method constructor <init>(Lcom/pareekiApps/markcalculator/Calculation;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pareekiApps/markcalculator/Calculation$5;->this$0:Lcom/pareekiApps/markcalculator/Calculation;

    .line 485
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 488
    iget-object v3, p0, Lcom/pareekiApps/markcalculator/Calculation$5;->this$0:Lcom/pareekiApps/markcalculator/Calculation;

    iget-object v3, v3, Lcom/pareekiApps/markcalculator/Calculation;->prefs:Lcom/pareekiApps/markcalculator/Prefs;

    invoke-virtual {v3}, Lcom/pareekiApps/markcalculator/Prefs;->clearAll()V

    .line 490
    const/4 v2, 0x1

    .local v2, i:I
    :goto_0
    const/4 v3, 0x4

    if-le v2, v3, :cond_0

    .line 498
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lcom/pareekiApps/markcalculator/Calculation$5;->this$0:Lcom/pareekiApps/markcalculator/Calculation;

    invoke-virtual {v3}, Lcom/pareekiApps/markcalculator/Calculation;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x109000a

    sget-object v5, Lcom/pareekiApps/markcalculator/Calculation;->list:Ljava/util/List;

    invoke-direct {v0, v3, v4, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 499
    .local v0, adapter1:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    sget-object v3, Lcom/pareekiApps/markcalculator/Calculation;->spinner1:Landroid/widget/Spinner;

    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 500
    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lcom/pareekiApps/markcalculator/Calculation$5;->this$0:Lcom/pareekiApps/markcalculator/Calculation;

    invoke-virtual {v3}, Lcom/pareekiApps/markcalculator/Calculation;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x1090008

    sget-object v5, Lcom/pareekiApps/markcalculator/Calculation;->courseNames:[Ljava/lang/String;

    invoke-direct {v1, v3, v4, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 501
    .local v1, adapter2:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v3, 0x1090009

    invoke-virtual {v1, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 502
    sget-object v3, Lcom/pareekiApps/markcalculator/Calculation;->spinner5:Landroid/widget/Spinner;

    invoke-virtual {v3, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 503
    return-void

    .line 492
    .end local v0           #adapter1:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v1           #adapter2:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :cond_0
    sget-object v3, Lcom/pareekiApps/markcalculator/Calculation;->courseNames:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Course "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 493
    sget-object v3, Lcom/pareekiApps/markcalculator/Calculation;->list:Ljava/util/List;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Course "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 495
    add-int/lit8 v3, v2, -0x1

    invoke-static {v3}, Lcom/pareekiApps/markcalculator/MyAdapter;->setDefaultGroupName(I)V

    .line 490
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
