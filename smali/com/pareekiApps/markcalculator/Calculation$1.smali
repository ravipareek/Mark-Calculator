.class Lcom/pareekiApps/markcalculator/Calculation$1;
.super Ljava/lang/Object;
.source "Calculation.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pareekiApps/markcalculator/Calculation;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemSelectedListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pareekiApps/markcalculator/Calculation;


# direct methods
.method constructor <init>(Lcom/pareekiApps/markcalculator/Calculation;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pareekiApps/markcalculator/Calculation$1;->this$0:Lcom/pareekiApps/markcalculator/Calculation;

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
    .parameter
    .parameter "view"
    .parameter "pos"
    .parameter "id"
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
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 188
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/pareekiApps/markcalculator/Calculation;->courseNames:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 190
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/pareekiApps/markcalculator/Calculation$1;->this$0:Lcom/pareekiApps/markcalculator/Calculation;

    invoke-virtual {v2}, Lcom/pareekiApps/markcalculator/Calculation;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/pareekiApps/markcalculator/Course1;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 191
    .local v1, i:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 192
    .local v0, b:Landroid/os/Bundle;
    const-string v2, "name"

    sget-object v3, Lcom/pareekiApps/markcalculator/Calculation;->courseNames:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    sget-object v2, Lcom/pareekiApps/markcalculator/Calculation;->spinner5:Landroid/widget/Spinner;

    invoke-virtual {v2, v4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 194
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 195
    iget-object v2, p0, Lcom/pareekiApps/markcalculator/Calculation$1;->this$0:Lcom/pareekiApps/markcalculator/Calculation;

    invoke-virtual {v2, v1}, Lcom/pareekiApps/markcalculator/Calculation;->startActivity(Landroid/content/Intent;)V

    .line 198
    .end local v0           #b:Landroid/os/Bundle;
    .end local v1           #i:Landroid/content/Intent;
    :cond_0
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/pareekiApps/markcalculator/Calculation;->courseNames:[Ljava/lang/String;

    aget-object v3, v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 200
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/pareekiApps/markcalculator/Calculation$1;->this$0:Lcom/pareekiApps/markcalculator/Calculation;

    invoke-virtual {v2}, Lcom/pareekiApps/markcalculator/Calculation;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/pareekiApps/markcalculator/Course2;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 201
    .restart local v1       #i:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 202
    .restart local v0       #b:Landroid/os/Bundle;
    const-string v2, "name"

    sget-object v3, Lcom/pareekiApps/markcalculator/Calculation;->courseNames:[Ljava/lang/String;

    aget-object v3, v3, v6

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    sget-object v2, Lcom/pareekiApps/markcalculator/Calculation;->spinner5:Landroid/widget/Spinner;

    invoke-virtual {v2, v4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 204
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 205
    iget-object v2, p0, Lcom/pareekiApps/markcalculator/Calculation$1;->this$0:Lcom/pareekiApps/markcalculator/Calculation;

    invoke-virtual {v2, v1}, Lcom/pareekiApps/markcalculator/Calculation;->startActivity(Landroid/content/Intent;)V

    .line 208
    .end local v0           #b:Landroid/os/Bundle;
    .end local v1           #i:Landroid/content/Intent;
    :cond_1
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/pareekiApps/markcalculator/Calculation;->courseNames:[Ljava/lang/String;

    aget-object v3, v3, v7

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 210
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/pareekiApps/markcalculator/Calculation$1;->this$0:Lcom/pareekiApps/markcalculator/Calculation;

    invoke-virtual {v2}, Lcom/pareekiApps/markcalculator/Calculation;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/pareekiApps/markcalculator/Course3;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 211
    .restart local v1       #i:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 212
    .restart local v0       #b:Landroid/os/Bundle;
    const-string v2, "name"

    sget-object v3, Lcom/pareekiApps/markcalculator/Calculation;->courseNames:[Ljava/lang/String;

    aget-object v3, v3, v7

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    sget-object v2, Lcom/pareekiApps/markcalculator/Calculation;->spinner5:Landroid/widget/Spinner;

    invoke-virtual {v2, v4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 214
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 215
    iget-object v2, p0, Lcom/pareekiApps/markcalculator/Calculation$1;->this$0:Lcom/pareekiApps/markcalculator/Calculation;

    invoke-virtual {v2, v1}, Lcom/pareekiApps/markcalculator/Calculation;->startActivity(Landroid/content/Intent;)V

    .line 218
    .end local v0           #b:Landroid/os/Bundle;
    .end local v1           #i:Landroid/content/Intent;
    :cond_2
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/pareekiApps/markcalculator/Calculation;->courseNames:[Ljava/lang/String;

    aget-object v3, v3, v8

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 220
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/pareekiApps/markcalculator/Calculation$1;->this$0:Lcom/pareekiApps/markcalculator/Calculation;

    invoke-virtual {v2}, Lcom/pareekiApps/markcalculator/Calculation;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/pareekiApps/markcalculator/Course4;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 221
    .restart local v1       #i:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 222
    .restart local v0       #b:Landroid/os/Bundle;
    const-string v2, "name"

    sget-object v3, Lcom/pareekiApps/markcalculator/Calculation;->courseNames:[Ljava/lang/String;

    aget-object v3, v3, v8

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    sget-object v2, Lcom/pareekiApps/markcalculator/Calculation;->spinner5:Landroid/widget/Spinner;

    invoke-virtual {v2, v4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 224
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 225
    iget-object v2, p0, Lcom/pareekiApps/markcalculator/Calculation$1;->this$0:Lcom/pareekiApps/markcalculator/Calculation;

    invoke-virtual {v2, v1}, Lcom/pareekiApps/markcalculator/Calculation;->startActivity(Landroid/content/Intent;)V

    .line 227
    .end local v0           #b:Landroid/os/Bundle;
    .end local v1           #i:Landroid/content/Intent;
    :cond_3
    sget-object v2, Lcom/pareekiApps/markcalculator/Calculation;->spinner5:Landroid/widget/Spinner;

    sget-object v3, Lcom/pareekiApps/markcalculator/Calculation;->courseNames:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 229
    return-void
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
    .line 231
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
