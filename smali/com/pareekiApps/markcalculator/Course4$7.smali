.class Lcom/pareekiApps/markcalculator/Course4$7;
.super Ljava/lang/Object;
.source "Course4.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pareekiApps/markcalculator/Course4;->showPopupMenu(Landroid/view/View;Landroid/widget/TableRow;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pareekiApps/markcalculator/Course4;

.field private final synthetic val$row:Landroid/widget/TableRow;


# direct methods
.method constructor <init>(Lcom/pareekiApps/markcalculator/Course4;Landroid/widget/TableRow;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pareekiApps/markcalculator/Course4$7;->this$0:Lcom/pareekiApps/markcalculator/Course4;

    iput-object p2, p0, Lcom/pareekiApps/markcalculator/Course4$7;->val$row:Landroid/widget/TableRow;

    .line 927
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 11
    .parameter "item"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 933
    iget-object v7, p0, Lcom/pareekiApps/markcalculator/Course4$7;->val$row:Landroid/widget/TableRow;

    invoke-virtual {v7, v9}, Landroid/widget/TableRow;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v1

    .local v1, colu1:Landroid/view/View;
    move-object v2, v1

    .line 934
    check-cast v2, Landroid/widget/TextView;

    .line 935
    .local v2, column1:Landroid/widget/TextView;
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 936
    .local v0, col1Name:[Ljava/lang/String;
    aget-object v7, v0, v9

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v3

    .line 937
    .local v3, entryLength:I
    aget-object v7, v0, v9

    add-int/lit8 v8, v3, -0x1

    invoke-virtual {v7, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 938
    .local v6, rowS:Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 939
    .local v5, rowNum:I
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    .line 940
    .local v4, itemId:I
    const v7, 0x7f060056

    if-ne v4, v7, :cond_1

    .line 941
    iget-object v7, p0, Lcom/pareekiApps/markcalculator/Course4$7;->this$0:Lcom/pareekiApps/markcalculator/Course4;

    aget-object v8, v0, v10

    #calls: Lcom/pareekiApps/markcalculator/Course4;->editMark(Ljava/lang/String;I)V
    invoke-static {v7, v8, v5}, Lcom/pareekiApps/markcalculator/Course4;->access$1(Lcom/pareekiApps/markcalculator/Course4;Ljava/lang/String;I)V

    .line 945
    :cond_0
    :goto_0
    return v9

    .line 942
    :cond_1
    const v7, 0x7f060057

    if-ne v4, v7, :cond_0

    .line 943
    iget-object v7, p0, Lcom/pareekiApps/markcalculator/Course4$7;->this$0:Lcom/pareekiApps/markcalculator/Course4;

    aget-object v8, v0, v10

    #calls: Lcom/pareekiApps/markcalculator/Course4;->deleteMark(Ljava/lang/String;I)V
    invoke-static {v7, v8, v5}, Lcom/pareekiApps/markcalculator/Course4;->access$5(Lcom/pareekiApps/markcalculator/Course4;Ljava/lang/String;I)V

    goto :goto_0
.end method
