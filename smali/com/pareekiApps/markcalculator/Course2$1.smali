.class Lcom/pareekiApps/markcalculator/Course2$1;
.super Ljava/lang/Object;
.source "Course2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pareekiApps/markcalculator/Course2;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pareekiApps/markcalculator/Course2;


# direct methods
.method constructor <init>(Lcom/pareekiApps/markcalculator/Course2;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pareekiApps/markcalculator/Course2$1;->this$0:Lcom/pareekiApps/markcalculator/Course2;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    .line 110
    const/4 v1, 0x0

    .line 111
    .local v1, KU:Z
    const/4 v2, 0x0

    .line 112
    .local v2, MC:Z
    const/4 v3, 0x0

    .line 113
    .local v3, TI:Z
    const/4 v0, 0x0

    .line 115
    .local v0, C:Z
    sget-object v5, Lcom/pareekiApps/markcalculator/Course2;->getPrefs:Landroid/content/SharedPreferences;

    const-string v6, "Course2KU"

    const-string v7, "0"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 117
    const/4 v1, 0x1

    .line 119
    :cond_0
    sget-object v5, Lcom/pareekiApps/markcalculator/Course2;->getPrefs:Landroid/content/SharedPreferences;

    const-string v6, "Course2MC"

    const-string v7, "0"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 121
    const/4 v2, 0x1

    .line 123
    :cond_1
    sget-object v5, Lcom/pareekiApps/markcalculator/Course2;->getPrefs:Landroid/content/SharedPreferences;

    const-string v6, "Course2TI"

    const-string v7, "0"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 125
    const/4 v3, 0x1

    .line 127
    :cond_2
    sget-object v5, Lcom/pareekiApps/markcalculator/Course2;->getPrefs:Landroid/content/SharedPreferences;

    const-string v6, "Course2C"

    const-string v7, "0"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 129
    const/4 v0, 0x1

    .line 132
    :cond_3
    if-eqz v1, :cond_4

    if-eqz v2, :cond_4

    if-eqz v3, :cond_4

    if-eqz v0, :cond_4

    .line 134
    iget-object v5, p0, Lcom/pareekiApps/markcalculator/Course2$1;->this$0:Lcom/pareekiApps/markcalculator/Course2;

    invoke-virtual {v5}, Lcom/pareekiApps/markcalculator/Course2;->addANewMark()V

    .line 145
    :goto_0
    return-void

    .line 138
    :cond_4
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/pareekiApps/markcalculator/Course2$1;->this$0:Lcom/pareekiApps/markcalculator/Course2;

    iget-object v5, v5, Lcom/pareekiApps/markcalculator/Course2;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 139
    .local v4, builder:Landroid/app/AlertDialog$Builder;
    const-string v5, "Please setup you classes in the \'Settings Menu\'"

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 140
    const-string v5, "Error"

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 142
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 143
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method
