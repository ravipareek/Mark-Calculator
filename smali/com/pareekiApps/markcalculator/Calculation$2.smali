.class Lcom/pareekiApps/markcalculator/Calculation$2;
.super Ljava/lang/Object;
.source "Calculation.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pareekiApps/markcalculator/Calculation;->accessSpinner()V
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
    iput-object p1, p0, Lcom/pareekiApps/markcalculator/Calculation$2;->this$0:Lcom/pareekiApps/markcalculator/Calculation;

    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 312
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/pareekiApps/markcalculator/Calculation$2;->this$0:Lcom/pareekiApps/markcalculator/Calculation;

    invoke-virtual {v1}, Lcom/pareekiApps/markcalculator/Calculation;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/pareekiApps/markcalculator/SettingsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 313
    .local v0, i:Landroid/content/Intent;
    iget-object v1, p0, Lcom/pareekiApps/markcalculator/Calculation$2;->this$0:Lcom/pareekiApps/markcalculator/Calculation;

    invoke-virtual {v1, v0}, Lcom/pareekiApps/markcalculator/Calculation;->startActivity(Landroid/content/Intent;)V

    .line 314
    return-void
.end method
