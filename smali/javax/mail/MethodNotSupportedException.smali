.class public Ljavax/mail/MethodNotSupportedException;
.super Ljavax/mail/MessagingException;
.source "MethodNotSupportedException.java"


# static fields
.field private static final serialVersionUID:J = -0x3424eb38e4fa267aL


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljavax/mail/MessagingException;-><init>()V

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    .line 69
    return-void
.end method
