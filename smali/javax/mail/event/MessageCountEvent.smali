.class public Ljavax/mail/event/MessageCountEvent;
.super Ljavax/mail/event/MailEvent;
.source "MessageCountEvent.java"


# static fields
.field public static final ADDED:I = 0x1

.field public static final REMOVED:I = 0x2

.field private static final serialVersionUID:J = -0x6759235cec0a7499L


# instance fields
.field protected transient msgs:[Ljavax/mail/Message;

.field protected removed:Z

.field protected type:I


# direct methods
.method public constructor <init>(Ljavax/mail/Folder;IZ[Ljavax/mail/Message;)V
    .locals 0
    .parameter "folder"
    .parameter "type"
    .parameter "removed"
    .parameter "msgs"

    .prologue
    .line 108
    invoke-direct {p0, p1}, Ljavax/mail/event/MailEvent;-><init>(Ljava/lang/Object;)V

    .line 109
    iput p2, p0, Ljavax/mail/event/MessageCountEvent;->type:I

    .line 110
    iput-boolean p3, p0, Ljavax/mail/event/MessageCountEvent;->removed:Z

    .line 111
    iput-object p4, p0, Ljavax/mail/event/MessageCountEvent;->msgs:[Ljavax/mail/Message;

    .line 112
    return-void
.end method


# virtual methods
.method public dispatch(Ljava/lang/Object;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 149
    iget v0, p0, Ljavax/mail/event/MessageCountEvent;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 150
    check-cast p1, Ljavax/mail/event/MessageCountListener;

    .end local p1
    invoke-interface {p1, p0}, Ljavax/mail/event/MessageCountListener;->messagesAdded(Ljavax/mail/event/MessageCountEvent;)V

    .line 153
    :goto_0
    return-void

    .line 152
    .restart local p1
    :cond_0
    check-cast p1, Ljavax/mail/event/MessageCountListener;

    .end local p1
    invoke-interface {p1, p0}, Ljavax/mail/event/MessageCountListener;->messagesRemoved(Ljavax/mail/event/MessageCountEvent;)V

    goto :goto_0
.end method

.method public getMessages()[Ljavax/mail/Message;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Ljavax/mail/event/MessageCountEvent;->msgs:[Ljavax/mail/Message;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Ljavax/mail/event/MessageCountEvent;->type:I

    return v0
.end method

.method public isRemoved()Z
    .locals 1

    .prologue
    .line 134
    iget-boolean v0, p0, Ljavax/mail/event/MessageCountEvent;->removed:Z

    return v0
.end method
