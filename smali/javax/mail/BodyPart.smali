.class public abstract Ljavax/mail/BodyPart;
.super Ljava/lang/Object;
.source "BodyPart.java"

# interfaces
.implements Ljavax/mail/Part;


# instance fields
.field protected parent:Ljavax/mail/Multipart;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getParent()Ljavax/mail/Multipart;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Ljavax/mail/BodyPart;->parent:Ljavax/mail/Multipart;

    return-object v0
.end method

.method setParent(Ljavax/mail/Multipart;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 80
    iput-object p1, p0, Ljavax/mail/BodyPart;->parent:Ljavax/mail/Multipart;

    .line 81
    return-void
.end method
