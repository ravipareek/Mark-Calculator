.class public final Ljavax/mail/search/FlagTerm;
.super Ljavax/mail/search/SearchTerm;
.source "FlagTerm.java"


# static fields
.field private static final serialVersionUID:J = -0x1fc02030d671737L


# instance fields
.field protected flags:Ljavax/mail/Flags;

.field protected set:Z


# direct methods
.method public constructor <init>(Ljavax/mail/Flags;Z)V
    .locals 0
    .parameter "flags"
    .parameter "set"

    .prologue
    .line 78
    invoke-direct {p0}, Ljavax/mail/search/SearchTerm;-><init>()V

    .line 79
    iput-object p1, p0, Ljavax/mail/search/FlagTerm;->flags:Ljavax/mail/Flags;

    .line 80
    iput-boolean p2, p0, Ljavax/mail/search/FlagTerm;->set:Z

    .line 81
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "obj"

    .prologue
    const/4 v1, 0x0

    .line 147
    instance-of v2, p1, Ljavax/mail/search/FlagTerm;

    if-nez v2, :cond_1

    .line 150
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 149
    check-cast v0, Ljavax/mail/search/FlagTerm;

    .line 150
    .local v0, ft:Ljavax/mail/search/FlagTerm;
    iget-boolean v2, v0, Ljavax/mail/search/FlagTerm;->set:Z

    iget-boolean v3, p0, Ljavax/mail/search/FlagTerm;->set:Z

    if-ne v2, v3, :cond_0

    iget-object v2, v0, Ljavax/mail/search/FlagTerm;->flags:Ljavax/mail/Flags;

    iget-object v3, p0, Ljavax/mail/search/FlagTerm;->flags:Ljavax/mail/Flags;

    invoke-virtual {v2, v3}, Ljavax/mail/Flags;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getFlags()Ljavax/mail/Flags;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Ljavax/mail/search/FlagTerm;->flags:Ljavax/mail/Flags;

    invoke-virtual {v0}, Ljavax/mail/Flags;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/mail/Flags;

    return-object v0
.end method

.method public getTestSet()Z
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Ljavax/mail/search/FlagTerm;->set:Z

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 157
    iget-boolean v0, p0, Ljavax/mail/search/FlagTerm;->set:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/mail/search/FlagTerm;->flags:Ljavax/mail/Flags;

    invoke-virtual {v0}, Ljavax/mail/Flags;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ljavax/mail/search/FlagTerm;->flags:Ljavax/mail/Flags;

    invoke-virtual {v0}, Ljavax/mail/Flags;->hashCode()I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public match(Ljavax/mail/Message;)Z
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 106
    :try_start_0
    invoke-virtual {p1}, Ljavax/mail/Message;->getFlags()Ljavax/mail/Flags;

    move-result-object v1

    .line 107
    .local v1, f:Ljavax/mail/Flags;
    iget-boolean v7, p0, Ljavax/mail/search/FlagTerm;->set:Z

    if-eqz v7, :cond_2

    .line 108
    iget-object v7, p0, Ljavax/mail/search/FlagTerm;->flags:Ljavax/mail/Flags;

    invoke-virtual {v1, v7}, Ljavax/mail/Flags;->contains(Ljavax/mail/Flags;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 139
    .end local v1           #f:Ljavax/mail/Flags;
    :cond_0
    :goto_0
    return v5

    .restart local v1       #f:Ljavax/mail/Flags;
    :cond_1
    move v5, v6

    .line 111
    goto :goto_0

    .line 118
    :cond_2
    iget-object v7, p0, Ljavax/mail/search/FlagTerm;->flags:Ljavax/mail/Flags;

    invoke-virtual {v7}, Ljavax/mail/Flags;->getSystemFlags()[Ljavax/mail/Flags$Flag;

    move-result-object v4

    .line 121
    .local v4, sf:[Ljavax/mail/Flags$Flag;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v7, v4

    if-lt v2, v7, :cond_3

    .line 127
    iget-object v7, p0, Ljavax/mail/search/FlagTerm;->flags:Ljavax/mail/Flags;

    invoke-virtual {v7}, Ljavax/mail/Flags;->getUserFlags()[Ljava/lang/String;

    move-result-object v3

    .line 130
    .local v3, s:[Ljava/lang/String;
    const/4 v2, 0x0

    :goto_2
    array-length v7, v3

    if-ge v2, v7, :cond_0

    .line 131
    aget-object v7, v3, v2

    invoke-virtual {v1, v7}, Ljavax/mail/Flags;->contains(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    move v5, v6

    .line 133
    goto :goto_0

    .line 122
    .end local v3           #s:[Ljava/lang/String;
    :cond_3
    aget-object v7, v4, v2

    invoke-virtual {v1, v7}, Ljavax/mail/Flags;->contains(Ljavax/mail/Flags$Flag;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_4

    move v5, v6

    .line 124
    goto :goto_0

    .line 121
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 130
    .restart local v3       #s:[Ljava/lang/String;
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 138
    .end local v1           #f:Ljavax/mail/Flags;
    .end local v2           #i:I
    .end local v3           #s:[Ljava/lang/String;
    .end local v4           #sf:[Ljavax/mail/Flags$Flag;
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    move v5, v6

    .line 139
    goto :goto_0
.end method
