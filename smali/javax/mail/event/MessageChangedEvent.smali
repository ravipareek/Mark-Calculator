.class public Ljavax/mail/event/MessageChangedEvent;
.super Ljavax/mail/event/MailEvent;
.source "MessageChangedEvent.java"


# static fields
.field public static final ENVELOPE_CHANGED:I = 0x2

.field public static final FLAGS_CHANGED:I = 0x1

.field private static final serialVersionUID:J = -0x450aa78f41850e84L


# instance fields
.field protected transient msg:Ljavax/mail/Message;

.field protected type:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;ILjavax/mail/Message;)V
    .locals 0
    .parameter "source"
    .parameter "type"
    .parameter "msg"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Ljavax/mail/event/MailEvent;-><init>(Ljava/lang/Object;)V

    .line 81
    iput-object p3, p0, Ljavax/mail/event/MessageChangedEvent;->msg:Ljavax/mail/Message;

    .line 82
    iput p2, p0, Ljavax/mail/event/MessageChangedEvent;->type:I

    .line 83
    return-void
.end method


# virtual methods
.method public dispatch(Ljava/lang/Object;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 105
    check-cast p1, Ljavax/mail/event/MessageChangedListener;

    .end local p1
    invoke-interface {p1, p0}, Ljavax/mail/event/MessageChangedListener;->messageChanged(Ljavax/mail/event/MessageChangedEvent;)V

    .line 106
    return-void
.end method

.method public getMessage()Ljavax/mail/Message;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Ljavax/mail/event/MessageChangedEvent;->msg:Ljavax/mail/Message;

    return-object v0
.end method

.method public getMessageChangeType()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Ljavax/mail/event/MessageChangedEvent;->type:I

    return v0
.end method
