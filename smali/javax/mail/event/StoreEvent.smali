.class public Ljavax/mail/event/StoreEvent;
.super Ljavax/mail/event/MailEvent;
.source "StoreEvent.java"


# static fields
.field public static final ALERT:I = 0x1

.field public static final NOTICE:I = 0x2

.field private static final serialVersionUID:J = 0x1ae7a9da6074bb02L


# instance fields
.field protected message:Ljava/lang/String;

.field protected type:I


# direct methods
.method public constructor <init>(Ljavax/mail/Store;ILjava/lang/String;)V
    .locals 0
    .parameter "store"
    .parameter "type"
    .parameter "message"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Ljavax/mail/event/MailEvent;-><init>(Ljava/lang/Object;)V

    .line 89
    iput p2, p0, Ljavax/mail/event/StoreEvent;->type:I

    .line 90
    iput-object p3, p0, Ljavax/mail/event/StoreEvent;->message:Ljava/lang/String;

    .line 91
    return-void
.end method


# virtual methods
.method public dispatch(Ljava/lang/Object;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 117
    check-cast p1, Ljavax/mail/event/StoreListener;

    .end local p1
    invoke-interface {p1, p0}, Ljavax/mail/event/StoreListener;->notification(Ljavax/mail/event/StoreEvent;)V

    .line 118
    return-void
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Ljavax/mail/event/StoreEvent;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageType()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Ljavax/mail/event/StoreEvent;->type:I

    return v0
.end method
