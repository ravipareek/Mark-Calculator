.class Lcom/sun/mail/imap/IMAPFolder$5;
.super Ljava/lang/Object;
.source "IMAPFolder.java"

# interfaces
.implements Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/mail/imap/IMAPFolder;->setSubscribed(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/mail/imap/IMAPFolder;

.field private final synthetic val$subscribe:Z


# direct methods
.method constructor <init>(Lcom/sun/mail/imap/IMAPFolder;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sun/mail/imap/IMAPFolder$5;->this$0:Lcom/sun/mail/imap/IMAPFolder;

    iput-boolean p2, p0, Lcom/sun/mail/imap/IMAPFolder$5;->val$subscribe:Z

    .line 704
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doCommand(Lcom/sun/mail/imap/protocol/IMAPProtocol;)Ljava/lang/Object;
    .locals 1
    .parameter "p"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 706
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder$5;->val$subscribe:Z

    if-eqz v0, :cond_0

    .line 707
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder$5;->this$0:Lcom/sun/mail/imap/IMAPFolder;

    iget-object v0, v0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->subscribe(Ljava/lang/String;)V

    .line 710
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 709
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder$5;->this$0:Lcom/sun/mail/imap/IMAPFolder;

    iget-object v0, v0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->unsubscribe(Ljava/lang/String;)V

    goto :goto_0
.end method
