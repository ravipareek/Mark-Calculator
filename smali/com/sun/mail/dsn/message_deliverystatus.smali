.class public Lcom/sun/mail/dsn/message_deliverystatus;
.super Ljava/lang/Object;
.source "message_deliverystatus.java"

# interfaces
.implements Ljavax/activation/DataContentHandler;


# instance fields
.field ourDataFlavor:Ljavax/activation/ActivationDataFlavor;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljavax/activation/ActivationDataFlavor;

    .line 57
    const-class v1, Lcom/sun/mail/dsn/DeliveryStatus;

    .line 58
    const-string v2, "message/delivery-status"

    .line 59
    const-string v3, "Delivery Status"

    invoke-direct {v0, v1, v2, v3}, Ljavax/activation/ActivationDataFlavor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sun/mail/dsn/message_deliverystatus;->ourDataFlavor:Ljavax/activation/ActivationDataFlavor;

    .line 54
    return-void
.end method


# virtual methods
.method public getContent(Ljavax/activation/DataSource;)Ljava/lang/Object;
    .locals 4
    .parameter "ds"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    :try_start_0
    new-instance v1, Lcom/sun/mail/dsn/DeliveryStatus;

    invoke-interface {p1}, Ljavax/activation/DataSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sun/mail/dsn/DeliveryStatus;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, me:Ljavax/mail/MessagingException;
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception creating DeliveryStatus in message/devliery-status DataContentHandler: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v0}, Ljavax/mail/MessagingException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 107
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getTransferData(Lmyjava/awt/datatransfer/DataFlavor;Ljavax/activation/DataSource;)Ljava/lang/Object;
    .locals 1
    .parameter "df"
    .parameter "ds"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sun/mail/dsn/message_deliverystatus;->ourDataFlavor:Ljavax/activation/ActivationDataFlavor;

    invoke-virtual {v0, p1}, Ljavax/activation/ActivationDataFlavor;->equals(Lmyjava/awt/datatransfer/DataFlavor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {p0, p2}, Lcom/sun/mail/dsn/message_deliverystatus;->getContent(Ljavax/activation/DataSource;)Ljava/lang/Object;

    move-result-object v0

    .line 81
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTransferDataFlavors()[Lmyjava/awt/datatransfer/DataFlavor;
    .locals 3

    .prologue
    .line 66
    const/4 v0, 0x1

    new-array v0, v0, [Lmyjava/awt/datatransfer/DataFlavor;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sun/mail/dsn/message_deliverystatus;->ourDataFlavor:Ljavax/activation/ActivationDataFlavor;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public writeTo(Ljava/lang/Object;Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 4
    .parameter "obj"
    .parameter "mimeType"
    .parameter "os"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    instance-of v2, p1, Lcom/sun/mail/dsn/DeliveryStatus;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 119
    check-cast v0, Lcom/sun/mail/dsn/DeliveryStatus;

    .line 121
    .local v0, ds:Lcom/sun/mail/dsn/DeliveryStatus;
    :try_start_0
    invoke-virtual {v0, p3}, Lcom/sun/mail/dsn/DeliveryStatus;->writeTo(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    return-void

    .line 122
    :catch_0
    move-exception v1

    .line 123
    .local v1, me:Ljavax/mail/MessagingException;
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v1}, Ljavax/mail/MessagingException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 127
    .end local v0           #ds:Lcom/sun/mail/dsn/DeliveryStatus;
    .end local v1           #me:Ljavax/mail/MessagingException;
    :cond_0
    new-instance v2, Ljava/io/IOException;

    const-string v3, "unsupported object"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
