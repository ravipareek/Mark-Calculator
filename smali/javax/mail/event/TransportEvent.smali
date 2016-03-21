.class public Ljavax/mail/event/TransportEvent;
.super Ljavax/mail/event/MailEvent;
.source "TransportEvent.java"


# static fields
.field public static final MESSAGE_DELIVERED:I = 0x1

.field public static final MESSAGE_NOT_DELIVERED:I = 0x2

.field public static final MESSAGE_PARTIALLY_DELIVERED:I = 0x3

.field private static final serialVersionUID:J = -0x41a3cfaa750c25b1L


# instance fields
.field protected transient invalid:[Ljavax/mail/Address;

.field protected transient msg:Ljavax/mail/Message;

.field protected type:I

.field protected transient validSent:[Ljavax/mail/Address;

.field protected transient validUnsent:[Ljavax/mail/Address;


# direct methods
.method public constructor <init>(Ljavax/mail/Transport;I[Ljavax/mail/Address;[Ljavax/mail/Address;[Ljavax/mail/Address;Ljavax/mail/Message;)V
    .locals 0
    .parameter "transport"
    .parameter "type"
    .parameter "validSent"
    .parameter "validUnsent"
    .parameter "invalid"
    .parameter "msg"

    .prologue
    .line 103
    invoke-direct {p0, p1}, Ljavax/mail/event/MailEvent;-><init>(Ljava/lang/Object;)V

    .line 104
    iput p2, p0, Ljavax/mail/event/TransportEvent;->type:I

    .line 105
    iput-object p3, p0, Ljavax/mail/event/TransportEvent;->validSent:[Ljavax/mail/Address;

    .line 106
    iput-object p4, p0, Ljavax/mail/event/TransportEvent;->validUnsent:[Ljavax/mail/Address;

    .line 107
    iput-object p5, p0, Ljavax/mail/event/TransportEvent;->invalid:[Ljavax/mail/Address;

    .line 108
    iput-object p6, p0, Ljavax/mail/event/TransportEvent;->msg:Ljavax/mail/Message;

    .line 109
    return-void
.end method


# virtual methods
.method public dispatch(Ljava/lang/Object;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 159
    iget v0, p0, Ljavax/mail/event/TransportEvent;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 160
    check-cast p1, Ljavax/mail/event/TransportListener;

    .end local p1
    invoke-interface {p1, p0}, Ljavax/mail/event/TransportListener;->messageDelivered(Ljavax/mail/event/TransportEvent;)V

    .line 165
    :goto_0
    return-void

    .line 161
    .restart local p1
    :cond_0
    iget v0, p0, Ljavax/mail/event/TransportEvent;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 162
    check-cast p1, Ljavax/mail/event/TransportListener;

    .end local p1
    invoke-interface {p1, p0}, Ljavax/mail/event/TransportListener;->messageNotDelivered(Ljavax/mail/event/TransportEvent;)V

    goto :goto_0

    .line 164
    .restart local p1
    :cond_1
    check-cast p1, Ljavax/mail/event/TransportListener;

    .end local p1
    invoke-interface {p1, p0}, Ljavax/mail/event/TransportListener;->messagePartiallyDelivered(Ljavax/mail/event/TransportEvent;)V

    goto :goto_0
.end method

.method public getInvalidAddresses()[Ljavax/mail/Address;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Ljavax/mail/event/TransportEvent;->invalid:[Ljavax/mail/Address;

    return-object v0
.end method

.method public getMessage()Ljavax/mail/Message;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Ljavax/mail/event/TransportEvent;->msg:Ljavax/mail/Message;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Ljavax/mail/event/TransportEvent;->type:I

    return v0
.end method

.method public getValidSentAddresses()[Ljavax/mail/Address;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Ljavax/mail/event/TransportEvent;->validSent:[Ljavax/mail/Address;

    return-object v0
.end method

.method public getValidUnsentAddresses()[Ljavax/mail/Address;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Ljavax/mail/event/TransportEvent;->validUnsent:[Ljavax/mail/Address;

    return-object v0
.end method
