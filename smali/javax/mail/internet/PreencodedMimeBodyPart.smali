.class public Ljavax/mail/internet/PreencodedMimeBodyPart;
.super Ljavax/mail/internet/MimeBodyPart;
.source "PreencodedMimeBodyPart.java"


# instance fields
.field private encoding:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "encoding"

    .prologue
    .line 71
    invoke-direct {p0}, Ljavax/mail/internet/MimeBodyPart;-><init>()V

    .line 72
    iput-object p1, p0, Ljavax/mail/internet/PreencodedMimeBodyPart;->encoding:Ljava/lang/String;

    .line 73
    return-void
.end method


# virtual methods
.method public getEncoding()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Ljavax/mail/internet/PreencodedMimeBodyPart;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method protected updateHeaders()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 121
    invoke-super {p0}, Ljavax/mail/internet/MimeBodyPart;->updateHeaders()V

    .line 122
    iget-object v0, p0, Ljavax/mail/internet/PreencodedMimeBodyPart;->encoding:Ljava/lang/String;

    invoke-static {p0, v0}, Ljavax/mail/internet/MimeBodyPart;->setEncoding(Ljavax/mail/internet/MimePart;Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 3
    .parameter "os"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 96
    const/4 v1, 0x0

    .line 97
    .local v1, los:Lcom/sun/mail/util/LineOutputStream;
    instance-of v2, p1, Lcom/sun/mail/util/LineOutputStream;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 98
    check-cast v1, Lcom/sun/mail/util/LineOutputStream;

    .line 104
    :goto_0
    invoke-virtual {p0}, Ljavax/mail/internet/PreencodedMimeBodyPart;->getAllHeaderLines()Ljava/util/Enumeration;

    move-result-object v0

    .line 105
    .local v0, hdrLines:Ljava/util/Enumeration;
    :goto_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_1

    .line 109
    invoke-virtual {v1}, Lcom/sun/mail/util/LineOutputStream;->writeln()V

    .line 112
    invoke-virtual {p0}, Ljavax/mail/internet/PreencodedMimeBodyPart;->getDataHandler()Ljavax/activation/DataHandler;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljavax/activation/DataHandler;->writeTo(Ljava/io/OutputStream;)V

    .line 113
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 114
    return-void

    .line 100
    .end local v0           #hdrLines:Ljava/util/Enumeration;
    :cond_0
    new-instance v1, Lcom/sun/mail/util/LineOutputStream;

    .end local v1           #los:Lcom/sun/mail/util/LineOutputStream;
    invoke-direct {v1, p1}, Lcom/sun/mail/util/LineOutputStream;-><init>(Ljava/io/OutputStream;)V

    .restart local v1       #los:Lcom/sun/mail/util/LineOutputStream;
    goto :goto_0

    .line 106
    .restart local v0       #hdrLines:Ljava/util/Enumeration;
    :cond_1
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sun/mail/util/LineOutputStream;->writeln(Ljava/lang/String;)V

    goto :goto_1
.end method
