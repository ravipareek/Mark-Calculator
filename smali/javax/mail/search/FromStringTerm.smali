.class public final Ljavax/mail/search/FromStringTerm;
.super Ljavax/mail/search/AddressStringTerm;
.source "FromStringTerm.java"


# static fields
.field private static final serialVersionUID:J = 0x5081bebf4a6fab34L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "pattern"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Ljavax/mail/search/AddressStringTerm;-><init>(Ljava/lang/String;)V

    .line 68
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "obj"

    .prologue
    .line 100
    instance-of v0, p1, Ljavax/mail/search/FromStringTerm;

    if-nez v0, :cond_0

    .line 101
    const/4 v0, 0x0

    .line 102
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Ljavax/mail/search/AddressStringTerm;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public match(Ljavax/mail/Message;)Z
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    .line 82
    :try_start_0
    invoke-virtual {p1}, Ljavax/mail/Message;->getFrom()[Ljavax/mail/Address;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 87
    .local v1, from:[Ljavax/mail/Address;
    if-nez v1, :cond_1

    .line 93
    .end local v1           #from:[Ljavax/mail/Address;
    :cond_0
    :goto_0
    return v3

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, e:Ljava/lang/Exception;
    goto :goto_0

    .line 90
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #from:[Ljavax/mail/Address;
    :cond_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v4, v1

    if-ge v2, v4, :cond_0

    .line 91
    aget-object v4, v1, v2

    invoke-super {p0, v4}, Ljavax/mail/search/AddressStringTerm;->match(Ljavax/mail/Address;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 92
    const/4 v3, 0x1

    goto :goto_0

    .line 90
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method
