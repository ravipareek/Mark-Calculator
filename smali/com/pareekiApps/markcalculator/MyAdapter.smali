.class public Lcom/pareekiApps/markcalculator/MyAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "MyAdapter.java"


# static fields
.field private static context:Landroid/content/Context;

.field static parent:[Ljava/lang/String;


# instance fields
.field C:Z

.field KU:Z

.field MC:Z

.field TI:Z

.field allEdited:Z

.field child:[[Ljava/lang/String;

.field private counter:I

.field getPrefs:Landroid/content/SharedPreferences;

.field tv1:Landroid/widget/TextView;

.field tv2:Landroid/widget/TextView;

.field tv3:Landroid/widget/TextView;

.field tv4:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/pareekiApps/markcalculator/MyAdapter;->parent:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x4

    const/4 v2, 0x0

    .line 33
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 20
    filled-new-array {v0, v0}, [I

    move-result-object v0

    const-class v1, Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/String;

    iput-object v0, p0, Lcom/pareekiApps/markcalculator/MyAdapter;->child:[[Ljava/lang/String;

    .line 22
    iput-boolean v2, p0, Lcom/pareekiApps/markcalculator/MyAdapter;->KU:Z

    .line 23
    iput-boolean v2, p0, Lcom/pareekiApps/markcalculator/MyAdapter;->MC:Z

    .line 24
    iput-boolean v2, p0, Lcom/pareekiApps/markcalculator/MyAdapter;->TI:Z

    .line 25
    iput-boolean v2, p0, Lcom/pareekiApps/markcalculator/MyAdapter;->C:Z

    .line 26
    iput-boolean v2, p0, Lcom/pareekiApps/markcalculator/MyAdapter;->allEdited:Z

    .line 35
    sput-object p1, Lcom/pareekiApps/markcalculator/MyAdapter;->context:Landroid/content/Context;

    .line 36
    return-void
.end method

.method public static setDefaultGroupName(I)V
    .locals 4
    .parameter "groupPosition"

    .prologue
    const/16 v3, 0xa

    .line 174
    sget-object v1, Lcom/pareekiApps/markcalculator/MyAdapter;->parent:[Ljava/lang/String;

    const-string v2, "Set Course Name"

    aput-object v2, v1, p0

    .line 176
    new-instance v0, Landroid/widget/TextView;

    sget-object v1, Lcom/pareekiApps/markcalculator/MyAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 177
    .local v0, tvParent:Landroid/widget/TextView;
    sget-object v1, Lcom/pareekiApps/markcalculator/MyAdapter;->parent:[Ljava/lang/String;

    aget-object v1, v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    const/16 v1, 0x32

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 179
    const/high16 v1, 0x41a0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 180
    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 181
    return-void
.end method


# virtual methods
.method public getChild(II)Ljava/lang/Object;
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 40
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 45
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "isLastChild"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x0

    const/16 v6, 0xa

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 51
    iget v0, p0, Lcom/pareekiApps/markcalculator/MyAdapter;->counter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/pareekiApps/markcalculator/MyAdapter;->counter:I

    .line 53
    new-instance v0, Landroid/widget/TextView;

    sget-object v1, Lcom/pareekiApps/markcalculator/MyAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pareekiApps/markcalculator/MyAdapter;->tv1:Landroid/widget/TextView;

    .line 54
    new-instance v0, Landroid/widget/TextView;

    sget-object v1, Lcom/pareekiApps/markcalculator/MyAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pareekiApps/markcalculator/MyAdapter;->tv2:Landroid/widget/TextView;

    .line 55
    new-instance v0, Landroid/widget/TextView;

    sget-object v1, Lcom/pareekiApps/markcalculator/MyAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pareekiApps/markcalculator/MyAdapter;->tv3:Landroid/widget/TextView;

    .line 56
    new-instance v0, Landroid/widget/TextView;

    sget-object v1, Lcom/pareekiApps/markcalculator/MyAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pareekiApps/markcalculator/MyAdapter;->tv4:Landroid/widget/TextView;

    .line 59
    sget-object v0, Lcom/pareekiApps/markcalculator/MyAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/pareekiApps/markcalculator/MyAdapter;->getPrefs:Landroid/content/SharedPreferences;

    .line 61
    iget-object v0, p0, Lcom/pareekiApps/markcalculator/MyAdapter;->child:[[Ljava/lang/String;

    aget-object v0, v0, v7

    iget-object v1, p0, Lcom/pareekiApps/markcalculator/MyAdapter;->getPrefs:Landroid/content/SharedPreferences;

    const-string v2, "Course1KU"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    .line 62
    iget-object v0, p0, Lcom/pareekiApps/markcalculator/MyAdapter;->child:[[Ljava/lang/String;

    aget-object v0, v0, v7

    iget-object v1, p0, Lcom/pareekiApps/markcalculator/MyAdapter;->getPrefs:Landroid/content/SharedPreferences;

    const-string v2, "Course1MC"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 63
    iget-object v0, p0, Lcom/pareekiApps/markcalculator/MyAdapter;->child:[[Ljava/lang/String;

    aget-object v0, v0, v7

    iget-object v1, p0, Lcom/pareekiApps/markcalculator/MyAdapter;->getPrefs:Landroid/content/SharedPreferences;

    const-string v2, "Course1TI"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 64
    iget-object v0, p0, Lcom/pareekiApps/markcalculator/MyAdapter;->child:[[Ljava/lang/String;

    aget-object v0, v0, v7

    iget-object v1, p0, Lcom/pareekiApps/markcalculator/MyAdapter;->getPrefs:Landroid/content/SharedPreferences;

    const-string v2, "Course1C"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    .line 67
    iget-object v0, p0, Lcom/pareekiApps/markcalculator/MyAdapter;->child:[[Ljava/lang/String;

    aget-object v0, v0, v4

    iget-object v1, p0, Lcom/pareekiApps/markcalculator/MyAdapter;->getPrefs:Landroid/content/SharedPreferences;

    const-string v2, "Course2KU"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    .line 68
    iget-object v0, p0, Lcom/pareekiApps/markcalculator/MyAdapter;->child:[[Ljava/lang/String;

    aget-object v0, v0, v4

    iget-object v1, p0, Lcom/pareekiApps/markcalculator/MyAdapter;->getPrefs:Landroid/content/SharedPreferences;

    const-string v2, "Course2MC"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 69
    iget-object v0, p0, Lcom/pareekiApps/markcalculator/MyAdapter;->child:[[Ljava/lang/String;

    aget-object v0, v0, v4

    iget-object v1, p0, Lcom/pareekiApps/markcalculator/MyAdapter;->getPrefs:Landroid/content/SharedPreferences;

    const-string v2, "Course2TI"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 70
    iget-object v0, p0, Lcom/pareekiApps/markcalculator/MyAdapter;->child:[[Ljava/lang/String;

    aget-object v0, v0, v4

    iget-object v1, p0, Lcom/pareekiApps/markcalculator/MyAdapter;->getPrefs:Landroid/content/SharedPreferences;

    const-string v2, "Course2C"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    .line 73
    iget-object v0, p0, Lcom/pareekiApps/markcalculator/MyAdapter;->child:[[Ljava/lang/String;

    aget-object v0, v0, v5

    iget-object v1, p0, Lcom/pareekiApps/markcalculator/MyAdapter;->getPrefs:Landroid/content/SharedPreferences;

    const-string v2, "Course3KU"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    .line 74
    iget-object v0, p0, Lcom/pareekiApps/markcalculator/MyAdapter;->child:[[Ljava/lang/String;

    aget-object v0, v0, v5

    iget-object v1, p0, Lcom/pareekiApps/markcalculator/MyAdapter;->getPrefs:Landroid/content/SharedPreferences;

    const-string v2, "Course3MC"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 75
    iget-object v0, p0, Lcom/pareekiApps/markcalculator/MyAdapter;->child:[[Ljava/lang/String;

    aget-object v0, v0, v5

    iget-object v1, p0, Lcom/pareekiApps/markcalculator/MyAdapter;->getPrefs:Landroid/content/SharedPreferences;

    const-string v2, "Course3TI"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 76
    iget-object v0, p0, Lcom/pareekiApps/markcalculator/MyAdapter;->child:[[Ljava/lang/String;

    aget-object v0, v0, v5

    iget-object v1, p0, Lcom/pareekiApps/markcalculator/MyAdapter;->getPrefs:Landroid/content/SharedPreferences;

    const-string v2, "Course3C"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    .line 79
    iget-object v0, p0, Lcom/pareekiApps/markcalculator/MyAdapter;->child:[[Ljava/lang/String;

    aget-object v0, v0, v8

    iget-object v1, p0, Lcom/pareekiApps/markcalculator/MyAdapter;->getPrefs:Landroid/content/SharedPreferences;

    const-string v2, "Course4KU"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    .line 80
    iget-object v0, p0, Lcom/pareekiApps/markcalculator/MyAdapter;->child:[[Ljava/lang/String;

    aget-object v0, v0, v8

    iget-object v1, p0, Lcom/pareekiApps/markcalculator/MyAdapter;->getPrefs:Landroid/content/SharedPreferences;

    const-string v2, "Course4MC"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 81
    iget-object v0, p0, Lcom/pareekiApps/markcalculator/MyAdapter;->child:[[Ljava/lang/String;

    aget-object v0, v0, v8

    iget-object v1, p0, Lcom/pareekiApps/markcalculator/MyAdapter;->getPrefs:Landroid/content/SharedPreferences;

    const-string v2, "Course4TI"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 82
    iget-object v0, p0, Lcom/pareekiApps/markcalculator/MyAdapter;->child:[[Ljava/lang/String;

    aget-object v0, v0, v8

    iget-object v1, p0, Lcom/pareekiApps/markcalculator/MyAdapter;->getPrefs:Landroid/content/SharedPreferences;

    const-string v2, "Course4C"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    .line 84
    iget-object v0, p0, Lcom/pareekiApps/markcalculator/MyAdapter;->tv1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/pareekiApps/markcalculator/MyAdapter;->child:[[Ljava/lang/String;

    aget-object v1, v1, p1

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v0, p0, Lcom/pareekiApps/markcalculator/MyAdapter;->tv1:Landroid/widget/TextView;

    const/16 v1, 0x32

    invoke-virtual {v0, v1, v6, v6, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 86
    iget-object v0, p0, Lcom/pareekiApps/markcalculator/MyAdapter;->tv1:Landroid/widget/TextView;

    const/high16 v1, 0x4170

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 87
    iget-object v0, p0, Lcom/pareekiApps/markcalculator/MyAdapter;->tv1:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 88
    iget-object v0, p0, Lcom/pareekiApps/markcalculator/MyAdapter;->tv1:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 89
    iget-object v0, p0, Lcom/pareekiApps/markcalculator/MyAdapter;->tv1:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setInputType(I)V

    .line 91
    iget-object v0, p0, Lcom/pareekiApps/markcalculator/MyAdapter;->tv2:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/pareekiApps/markcalculator/MyAdapter;->child:[[Ljava/lang/String;

    aget-object v1, v1, p1

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v0, p0, Lcom/pareekiApps/markcalculator/MyAdapter;->tv2:Landroid/widget/TextView;

    const/16 v1, 0x32

    invoke-virtual {v0, v1, v6, v6, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 93
    iget-object v0, p0, Lcom/pareekiApps/markcalculator/MyAdapter;->tv2:Landroid/widget/TextView;

    const/high16 v1, 0x4170

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 94
    iget-object v0, p0, Lcom/pareekiApps/markcalculator/MyAdapter;->tv2:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 95
    iget-object v0, p0, Lcom/pareekiApps/markcalculator/MyAdapter;->tv2:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 96
    iget-object v0, p0, Lcom/pareekiApps/markcalculator/MyAdapter;->tv2:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setInputType(I)V

    .line 98
    iget-object v0, p0, Lcom/pareekiApps/markcalculator/MyAdapter;->tv3:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/pareekiApps/markcalculator/MyAdapter;->child:[[Ljava/lang/String;

    aget-object v1, v1, p1

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v0, p0, Lcom/pareekiApps/markcalculator/MyAdapter;->tv3:Landroid/widget/TextView;

    const/16 v1, 0x32

    invoke-virtual {v0, v1, v6, v6, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 100
    iget-object v0, p0, Lcom/pareekiApps/markcalculator/MyAdapter;->tv3:Landroid/widget/TextView;

    const/high16 v1, 0x4170

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 101
    iget-object v0, p0, Lcom/pareekiApps/markcalculator/MyAdapter;->tv3:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 102
    iget-object v0, p0, Lcom/pareekiApps/markcalculator/MyAdapter;->tv3:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 103
    iget-object v0, p0, Lcom/pareekiApps/markcalculator/MyAdapter;->tv3:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setInputType(I)V

    .line 105
    iget-object v0, p0, Lcom/pareekiApps/markcalculator/MyAdapter;->tv4:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/pareekiApps/markcalculator/MyAdapter;->child:[[Ljava/lang/String;

    aget-object v1, v1, p1

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v0, p0, Lcom/pareekiApps/markcalculator/MyAdapter;->tv4:Landroid/widget/TextView;

    const/16 v1, 0x32

    invoke-virtual {v0, v1, v6, v6, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 107
    iget-object v0, p0, Lcom/pareekiApps/markcalculator/MyAdapter;->tv4:Landroid/widget/TextView;

    const/high16 v1, 0x4170

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 108
    iget-object v0, p0, Lcom/pareekiApps/markcalculator/MyAdapter;->tv4:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 109
    iget-object v0, p0, Lcom/pareekiApps/markcalculator/MyAdapter;->tv4:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 110
    iget-object v0, p0, Lcom/pareekiApps/markcalculator/MyAdapter;->tv4:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setInputType(I)V

    .line 112
    iget v0, p0, Lcom/pareekiApps/markcalculator/MyAdapter;->counter:I

    if-ne v0, v4, :cond_0

    .line 113
    iget-object v0, p0, Lcom/pareekiApps/markcalculator/MyAdapter;->tv1:Landroid/widget/TextView;

    .line 122
    :goto_0
    return-object v0

    .line 114
    :cond_0
    iget v0, p0, Lcom/pareekiApps/markcalculator/MyAdapter;->counter:I

    if-ne v0, v5, :cond_1

    .line 115
    iget-object v0, p0, Lcom/pareekiApps/markcalculator/MyAdapter;->tv2:Landroid/widget/TextView;

    goto :goto_0

    .line 116
    :cond_1
    iget v0, p0, Lcom/pareekiApps/markcalculator/MyAdapter;->counter:I

    if-ne v0, v8, :cond_2

    .line 117
    iget-object v0, p0, Lcom/pareekiApps/markcalculator/MyAdapter;->tv3:Landroid/widget/TextView;

    goto :goto_0

    .line 118
    :cond_2
    iget v0, p0, Lcom/pareekiApps/markcalculator/MyAdapter;->counter:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 119
    iget-object v0, p0, Lcom/pareekiApps/markcalculator/MyAdapter;->tv4:Landroid/widget/TextView;

    goto :goto_0

    .line 121
    :cond_3
    iput v7, p0, Lcom/pareekiApps/markcalculator/MyAdapter;->counter:I

    .line 122
    iget-object v0, p0, Lcom/pareekiApps/markcalculator/MyAdapter;->tv1:Landroid/widget/TextView;

    goto :goto_0
.end method

.method public getChildrenCount(I)I
    .locals 1
    .parameter "groupPosition"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/pareekiApps/markcalculator/MyAdapter;->child:[[Ljava/lang/String;

    aget-object v0, v0, p1

    array-length v0, v0

    return v0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1
    .parameter "groupPosition"

    .prologue
    .line 132
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 137
    sget-object v0, Lcom/pareekiApps/markcalculator/MyAdapter;->parent:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2
    .parameter "groupPosition"

    .prologue
    .line 142
    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "groupPosition"
    .parameter "isExpanded"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v8, 0xa

    .line 148
    new-instance v4, Landroid/widget/TextView;

    sget-object v5, Lcom/pareekiApps/markcalculator/MyAdapter;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 149
    .local v4, tvParent:Landroid/widget/TextView;
    sget-object v5, Lcom/pareekiApps/markcalculator/MyAdapter;->context:Landroid/content/Context;

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    iput-object v5, p0, Lcom/pareekiApps/markcalculator/MyAdapter;->getPrefs:Landroid/content/SharedPreferences;

    .line 153
    iget-object v5, p0, Lcom/pareekiApps/markcalculator/MyAdapter;->getPrefs:Landroid/content/SharedPreferences;

    const-string v6, "course1"

    const-string v7, "Set Course Name"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, courseName1:Ljava/lang/String;
    iget-object v5, p0, Lcom/pareekiApps/markcalculator/MyAdapter;->getPrefs:Landroid/content/SharedPreferences;

    const-string v6, "course2"

    const-string v7, "Set Course Name"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 155
    .local v1, courseName2:Ljava/lang/String;
    iget-object v5, p0, Lcom/pareekiApps/markcalculator/MyAdapter;->getPrefs:Landroid/content/SharedPreferences;

    const-string v6, "course3"

    const-string v7, "Set Course Name"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 156
    .local v2, courseName3:Ljava/lang/String;
    iget-object v5, p0, Lcom/pareekiApps/markcalculator/MyAdapter;->getPrefs:Landroid/content/SharedPreferences;

    const-string v6, "course4"

    const-string v7, "Set Course Name"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 158
    .local v3, courseName4:Ljava/lang/String;
    sget-object v5, Lcom/pareekiApps/markcalculator/MyAdapter;->parent:[Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    .line 159
    sget-object v5, Lcom/pareekiApps/markcalculator/MyAdapter;->parent:[Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v1, v5, v6

    .line 160
    sget-object v5, Lcom/pareekiApps/markcalculator/MyAdapter;->parent:[Ljava/lang/String;

    const/4 v6, 0x2

    aput-object v2, v5, v6

    .line 161
    sget-object v5, Lcom/pareekiApps/markcalculator/MyAdapter;->parent:[Ljava/lang/String;

    const/4 v6, 0x3

    aput-object v3, v5, v6

    .line 163
    sget-object v5, Lcom/pareekiApps/markcalculator/MyAdapter;->parent:[Ljava/lang/String;

    aget-object v5, v5, p1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    const/16 v5, 0x32

    invoke-virtual {v4, v5, v8, v8, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 165
    const/high16 v5, 0x41a0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 166
    const v5, -0xff0100

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 168
    return-object v4
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 185
    const/4 v0, 0x0

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .parameter "groupPosition"
    .parameter "childPositoin"

    .prologue
    .line 190
    const/4 v0, 0x1

    return v0
.end method
