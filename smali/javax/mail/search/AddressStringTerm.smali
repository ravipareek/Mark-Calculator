.class public abstract Ljavax/mail/search/AddressStringTerm;
.super Ljavax/mail/search/StringTerm;
.source "AddressStringTerm.java"


# static fields
.field private static final serialVersionUID:J = 0x2ad6978ecdebb490L


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "pattern"

    .prologue
    .line 68
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Ljavax/mail/search/StringTerm;-><init>(Ljava/lang/String;Z)V

    .line 69
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "obj"

    .prologue
    .line 99
    instance-of v0, p1, Ljavax/mail/search/AddressStringTerm;

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

.method protected match(Ljavax/mail/Address;)Z
    .locals 2
    .parameter "a"

    .prologue
    .line 84
    instance-of v1, p1, Ljavax/mail/internet/InternetAddress;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 85
    check-cast v0, Ljavax/mail/internet/InternetAddress;

    .line 90
    .local v0, ia:Ljavax/mail/internet/InternetAddress;
    invoke-virtual {v0}, Ljavax/mail/internet/InternetAddress;->toUnicodeString()Ljava/lang/String;

    move-result-object v1

    invoke-super {p0, v1}, Ljavax/mail/search/StringTerm;->match(Ljava/lang/String;)Z

    move-result v1

    .line 92
    .end local v0           #ia:Ljavax/mail/internet/InternetAddress;
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p1}, Ljavax/mail/Address;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-super {p0, v1}, Ljavax/mail/search/StringTerm;->match(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method
