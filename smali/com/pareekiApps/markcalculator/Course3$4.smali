.class Lcom/pareekiApps/markcalculator/Course3$4;
.super Ljava/lang/Object;
.source "Course3.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pareekiApps/markcalculator/Course3;->updateRow(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pareekiApps/markcalculator/Course3;

.field private final synthetic val$row:Landroid/widget/TableRow;


# direct methods
.method constructor <init>(Lcom/pareekiApps/markcalculator/Course3;Landroid/widget/TableRow;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pareekiApps/markcalculator/Course3$4;->this$0:Lcom/pareekiApps/markcalculator/Course3;

    iput-object p2, p0, Lcom/pareekiApps/markcalculator/Course3$4;->val$row:Landroid/widget/TableRow;

    .line 491
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 10
    .parameter "arg0"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 496
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xb

    if-lt v6, v7, :cond_0

    .line 498
    iget-object v6, p0, Lcom/pareekiApps/markcalculator/Course3$4;->this$0:Lcom/pareekiApps/markcalculator/Course3;

    iget-object v7, p0, Lcom/pareekiApps/markcalculator/Course3$4;->val$row:Landroid/widget/TableRow;

    #calls: Lcom/pareekiApps/markcalculator/Course3;->showPopupMenu(Landroid/view/View;Landroid/widget/TableRow;)V
    invoke-static {v6, p1, v7}, Lcom/pareekiApps/markcalculator/Course3;->access$0(Lcom/pareekiApps/markcalculator/Course3;Landroid/view/View;Landroid/widget/TableRow;)V

    .line 510
    :goto_0
    return v9

    .line 502
    :cond_0
    iget-object v6, p0, Lcom/pareekiApps/markcalculator/Course3$4;->val$row:Landroid/widget/TableRow;

    invoke-virtual {v6, v8}, Landroid/widget/TableRow;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v1

    .local v1, colu1:Landroid/view/View;
    move-object v2, v1

    .line 503
    check-cast v2, Landroid/widget/TextView;

    .line 504
    .local v2, column1:Landroid/widget/TextView;
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 505
    .local v0, col1Name:[Ljava/lang/String;
    aget-object v6, v0, v8

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3

    .line 506
    .local v3, entryLength:I
    aget-object v6, v0, v8

    add-int/lit8 v7, v3, -0x1

    invoke-virtual {v6, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 507
    .local v5, rowS:Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 508
    .local v4, rowNum:I
    iget-object v6, p0, Lcom/pareekiApps/markcalculator/Course3$4;->this$0:Lcom/pareekiApps/markcalculator/Course3;

    aget-object v7, v0, v9

    #calls: Lcom/pareekiApps/markcalculator/Course3;->editMark(Ljava/lang/String;I)V
    invoke-static {v6, v7, v4}, Lcom/pareekiApps/markcalculator/Course3;->access$1(Lcom/pareekiApps/markcalculator/Course3;Ljava/lang/String;I)V

    goto :goto_0
.end method
