.class public final Ljavax/mail/search/MessageIDTerm;
.super Ljavax/mail/search/StringTerm;
.source "MessageIDTerm.java"


# static fields
.field private static final serialVersionUID:J = -0x1d6fa5d7f4941c7bL


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "msgid"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Ljavax/mail/search/StringTerm;-><init>(Ljava/lang/String;)V

    .line 68
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "obj"

    .prologue
    .line 99
    instance-of v0, p1, Ljavax/mail/search/MessageIDTerm;

    if-nez v0, :cond_0

    .line 100
    const/4 v0, 0x0

    .line 101
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Ljavax/mail/search/StringTerm;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public match(Ljavax/mail/Message;)Z
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    .line 81
    :try_start_0
    const-string v4, "Message-ID"

    invoke-virtual {p1, v4}, Ljavax/mail/Message;->getHeader(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 86
    .local v2, s:[Ljava/lang/String;
    if-nez v2, :cond_1

    .line 92
    .end local v2           #s:[Ljava/lang/String;
    :cond_0
    :goto_0
    return v3

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, e:Ljava/lang/Exception;
    goto :goto_0

    .line 89
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v2       #s:[Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v4, v2

    if-ge v1, v4, :cond_0

    .line 90
    aget-object v4, v2, v1

    invoke-super {p0, v4}, Ljavax/mail/search/StringTerm;->match(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 91
    const/4 v3, 0x1

    goto :goto_0

    .line 89
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
