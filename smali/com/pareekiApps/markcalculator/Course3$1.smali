.class Lcom/pareekiApps/markcalculator/Course3$1;
.super Ljava/lang/Object;
.source "Course3.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pareekiApps/markcalculator/Course3;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pareekiApps/markcalculator/Course3;


# direct methods
.method constructor <init>(Lcom/pareekiApps/markcalculator/Course3;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pareekiApps/markcalculator/Course3$1;->this$0:Lcom/pareekiApps/markcalculator/Course3;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    .line 109
    const/4 v1, 0x0

    .line 110
    .local v1, KU:Z
    const/4 v2, 0x0

    .line 111
    .local v2, MC:Z
    const/4 v3, 0x0

    .line 112
    .local v3, TI:Z
    const/4 v0, 0x0

    .line 114
    .local v0, C:Z
    sget-object v5, Lcom/pareekiApps/markcalculator/Course3;->getPrefs:Landroid/content/SharedPreferences;

    const-string v6, "Course3KU"

    const-string v7, "0"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 116
    const/4 v1, 0x1

    .line 118
    :cond_0
    sget-object v5, Lcom/pareekiApps/markcalculator/Course3;->getPrefs:Landroid/content/SharedPreferences;

    const-string v6, "Course3MC"

    const-string v7, "0"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 120
    const/4 v2, 0x1

    .line 122
    :cond_1
    sget-object v5, Lcom/pareekiApps/markcalculator/Course3;->getPrefs:Landroid/content/SharedPreferences;

    const-string v6, "Course3TI"

    const-string v7, "0"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 124
    const/4 v3, 0x1

    .line 126
    :cond_2
    sget-object v5, Lcom/pareekiApps/markcalculator/Course3;->getPrefs:Landroid/content/SharedPreferences;

    const-string v6, "Course3C"

    const-string v7, "0"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 128
    const/4 v0, 0x1

    .line 131
    :cond_3
    if-eqz v1, :cond_4

    if-eqz v2, :cond_4

    if-eqz v3, :cond_4

    if-eqz v0, :cond_4

    .line 133
    iget-object v5, p0, Lcom/pareekiApps/markcalculator/Course3$1;->this$0:Lcom/pareekiApps/markcalculator/Course3;

    invoke-virtual {v5}, Lcom/pareekiApps/markcalculator/Course3;->addANewMark()V

    .line 144
    :goto_0
    return-void

    .line 137
    :cond_4
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/pareekiApps/markcalculator/Course3$1;->this$0:Lcom/pareekiApps/markcalculator/Course3;

    iget-object v5, v5, Lcom/pareekiApps/markcalculator/Course3;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 138
    .local v4, builder:Landroid/app/AlertDialog$Builder;
    const-string v5, "Please setup you classes in the \'Settings Menu\'"

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 139
    const-string v5, "Error"

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 141
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 142
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method
