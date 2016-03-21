.class public Lcom/pareekiApps/markcalculator/CustomOnItemSelectedListener;
.super Ljava/lang/Object;
.source "CustomOnItemSelectedListener.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemSelectedListener;"
    }
.end annotation


# static fields
.field static spinnerCategory:Ljava/lang/String;

.field static spinnerMain:Ljava/lang/String;

.field static spinnerWeight:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/pareekiApps/markcalculator/CustomOnItemSelectedListener;->spinnerCategory:Ljava/lang/String;

    return-object v0
.end method

.method public static getMain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/pareekiApps/markcalculator/CustomOnItemSelectedListener;->spinnerMain:Ljava/lang/String;

    return-object v0
.end method

.method public static getWeight()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/pareekiApps/markcalculator/CustomOnItemSelectedListener;->spinnerWeight:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "pos"
    .parameter "arg"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 16
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getId()I

    move-result v0

    .line 17
    .local v0, id:I
    const v1, 0x7f06004f

    if-ne v0, v1, :cond_1

    .line 18
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/pareekiApps/markcalculator/CustomOnItemSelectedListener;->spinnerMain:Ljava/lang/String;

    .line 25
    :cond_0
    :goto_0
    return-void

    .line 19
    :cond_1
    const v1, 0x7f060013

    if-ne v0, v1, :cond_2

    .line 20
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/pareekiApps/markcalculator/CustomOnItemSelectedListener;->spinnerCategory:Ljava/lang/String;

    goto :goto_0

    .line 21
    :cond_2
    const v1, 0x7f060014

    if-ne v0, v1, :cond_0

    .line 22
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/pareekiApps/markcalculator/CustomOnItemSelectedListener;->spinnerWeight:Ljava/lang/String;

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
