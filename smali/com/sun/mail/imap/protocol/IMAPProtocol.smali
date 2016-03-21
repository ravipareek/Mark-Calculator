.class public Lcom/sun/mail/imap/protocol/IMAPProtocol;
.super Lcom/sun/mail/iap/Protocol;
.source "IMAPProtocol.java"


# static fields
.field private static final CRLF:[B

.field private static final DONE:[B


# instance fields
.field private authenticated:Z

.field private authmechs:Ljava/util/List;

.field private ba:Lcom/sun/mail/iap/ByteArray;

.field private capabilities:Ljava/util/Map;

.field private connected:Z

.field private idleTag:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private rev1:Z

.field private saslAuthenticator:Lcom/sun/mail/imap/protocol/SaslAuthenticator;

.field private searchCharsets:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->CRLF:[B

    .line 2083
    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->DONE:[B

    .line 73
    return-void

    .line 90
    nop

    :array_0
    .array-data 0x1
        0xdt
        0xat
    .end array-data

    .line 2083
    nop

    :array_1
    .array-data 0x1
        0x44t
        0x4ft
        0x4et
        0x45t
        0xdt
        0xat
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IZLjava/io/PrintStream;Ljava/util/Properties;Z)V
    .locals 8
    .parameter "name"
    .parameter "host"
    .parameter "port"
    .parameter "debug"
    .parameter "out"
    .parameter "props"
    .parameter "isSSL"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mail."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    move v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/sun/mail/iap/Protocol;-><init>(Ljava/lang/String;IZLjava/io/PrintStream;Ljava/util/Properties;Ljava/lang/String;Z)V

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->connected:Z

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->rev1:Z

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->capabilities:Ljava/util/Map;

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->authmechs:Ljava/util/List;

    .line 107
    :try_start_0
    iput-object p1, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->name:Ljava/lang/String;

    .line 109
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->capabilities:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->capability()V

    .line 112
    :cond_0
    const-string v0, "IMAP4rev1"

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->rev1:Z

    .line 115
    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->searchCharsets:[Ljava/lang/String;

    .line 116
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->searchCharsets:[Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "UTF-8"

    aput-object v2, v0, v1

    .line 117
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->searchCharsets:[Ljava/lang/String;

    const/4 v1, 0x1

    .line 118
    invoke-static {}, Ljavax/mail/internet/MimeUtility;->getDefaultJavaCharset()Ljava/lang/String;

    move-result-object v2

    .line 117
    invoke-static {v2}, Ljavax/mail/internet/MimeUtility;->mimeCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->connected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    iget-boolean v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->connected:Z

    if-nez v0, :cond_2

    .line 130
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->disconnect()V

    .line 132
    :cond_2
    return-void

    .line 122
    :catchall_0
    move-exception v0

    .line 129
    iget-boolean v1, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->connected:Z

    if-nez v1, :cond_3

    .line 130
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->disconnect()V

    .line 131
    :cond_3
    throw v0
.end method

.method private copy(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "msgSequence"
    .parameter "mbox"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 1332
    invoke-static {p2}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1334
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 1335
    .local v0, args:Lcom/sun/mail/iap/Argument;
    invoke-virtual {v0, p1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    .line 1336
    invoke-virtual {v0, p2}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V

    .line 1338
    const-string v1, "COPY"

    invoke-virtual {p0, v1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->simpleCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)V

    .line 1339
    return-void
.end method

.method private createFlagList(Ljavax/mail/Flags;)Ljava/lang/String;
    .locals 9
    .parameter "flags"

    .prologue
    const/16 v8, 0x20

    .line 1379
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 1380
    .local v4, sb:Ljava/lang/StringBuffer;
    const-string v7, "("

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1382
    invoke-virtual {p1}, Ljavax/mail/Flags;->getSystemFlags()[Ljavax/mail/Flags$Flag;

    move-result-object v5

    .line 1383
    .local v5, sf:[Ljavax/mail/Flags$Flag;
    const/4 v1, 0x1

    .line 1384
    .local v1, first:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v7, v5

    if-lt v2, v7, :cond_0

    .line 1408
    invoke-virtual {p1}, Ljavax/mail/Flags;->getUserFlags()[Ljava/lang/String;

    move-result-object v6

    .line 1409
    .local v6, uf:[Ljava/lang/String;
    const/4 v2, 0x0

    :goto_1
    array-length v7, v6

    if-lt v2, v7, :cond_8

    .line 1417
    const-string v7, ")"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1418
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 1386
    .end local v6           #uf:[Ljava/lang/String;
    :cond_0
    aget-object v0, v5, v2

    .line 1387
    .local v0, f:Ljavax/mail/Flags$Flag;
    sget-object v7, Ljavax/mail/Flags$Flag;->ANSWERED:Ljavax/mail/Flags$Flag;

    if-ne v0, v7, :cond_2

    .line 1388
    const-string v3, "\\Answered"

    .line 1401
    .local v3, s:Ljava/lang/String;
    :goto_2
    if-eqz v1, :cond_7

    .line 1402
    const/4 v1, 0x0

    .line 1405
    :goto_3
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1384
    .end local v3           #s:Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1389
    :cond_2
    sget-object v7, Ljavax/mail/Flags$Flag;->DELETED:Ljavax/mail/Flags$Flag;

    if-ne v0, v7, :cond_3

    .line 1390
    const-string v3, "\\Deleted"

    .restart local v3       #s:Ljava/lang/String;
    goto :goto_2

    .line 1391
    .end local v3           #s:Ljava/lang/String;
    :cond_3
    sget-object v7, Ljavax/mail/Flags$Flag;->DRAFT:Ljavax/mail/Flags$Flag;

    if-ne v0, v7, :cond_4

    .line 1392
    const-string v3, "\\Draft"

    .restart local v3       #s:Ljava/lang/String;
    goto :goto_2

    .line 1393
    .end local v3           #s:Ljava/lang/String;
    :cond_4
    sget-object v7, Ljavax/mail/Flags$Flag;->FLAGGED:Ljavax/mail/Flags$Flag;

    if-ne v0, v7, :cond_5

    .line 1394
    const-string v3, "\\Flagged"

    .restart local v3       #s:Ljava/lang/String;
    goto :goto_2

    .line 1395
    .end local v3           #s:Ljava/lang/String;
    :cond_5
    sget-object v7, Ljavax/mail/Flags$Flag;->RECENT:Ljavax/mail/Flags$Flag;

    if-ne v0, v7, :cond_6

    .line 1396
    const-string v3, "\\Recent"

    .restart local v3       #s:Ljava/lang/String;
    goto :goto_2

    .line 1397
    .end local v3           #s:Ljava/lang/String;
    :cond_6
    sget-object v7, Ljavax/mail/Flags$Flag;->SEEN:Ljavax/mail/Flags$Flag;

    if-ne v0, v7, :cond_1

    .line 1398
    const-string v3, "\\Seen"

    .restart local v3       #s:Ljava/lang/String;
    goto :goto_2

    .line 1404
    :cond_7
    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 1410
    .end local v0           #f:Ljavax/mail/Flags$Flag;
    .end local v3           #s:Ljava/lang/String;
    .restart local v6       #uf:[Ljava/lang/String;
    :cond_8
    if-eqz v1, :cond_9

    .line 1411
    const/4 v1, 0x0

    .line 1414
    :goto_4
    aget-object v7, v6, v2

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1409
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1413
    :cond_9
    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4
.end method

.method private doList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Lcom/sun/mail/imap/protocol/ListInfo;
    .locals 10
    .parameter "cmd"
    .parameter "ref"
    .parameter "pat"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 837
    invoke-static {p2}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 838
    invoke-static {p3}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 840
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 841
    .local v0, args:Lcom/sun/mail/iap/Argument;
    invoke-virtual {v0, p2}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V

    .line 842
    invoke-virtual {v0, p3}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V

    .line 844
    invoke-virtual {p0, p1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v5

    .local v5, r:[Lcom/sun/mail/iap/Response;
    move-object v4, v8

    .line 846
    check-cast v4, [Lcom/sun/mail/imap/protocol/ListInfo;

    .line 847
    .local v4, linfo:[Lcom/sun/mail/imap/protocol/ListInfo;
    array-length v9, v5

    add-int/lit8 v9, v9, -0x1

    aget-object v6, v5, v9

    .line 849
    .local v6, response:Lcom/sun/mail/iap/Response;
    invoke-virtual {v6}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 850
    new-instance v7, Ljava/util/Vector;

    const/4 v9, 0x1

    invoke-direct {v7, v9}, Ljava/util/Vector;-><init>(I)V

    .line 851
    .local v7, v:Ljava/util/Vector;
    const/4 v1, 0x0

    .local v1, i:I
    array-length v3, v5

    .local v3, len:I
    :goto_0
    if-lt v1, v3, :cond_1

    .line 861
    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 862
    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v8

    new-array v4, v8, [Lcom/sun/mail/imap/protocol/ListInfo;

    .line 863
    invoke-virtual {v7, v4}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 868
    .end local v1           #i:I
    .end local v3           #len:I
    .end local v7           #v:Ljava/util/Vector;
    :cond_0
    invoke-virtual {p0, v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 869
    invoke-virtual {p0, v6}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 870
    return-object v4

    .line 852
    .restart local v1       #i:I
    .restart local v3       #len:I
    .restart local v7       #v:Ljava/util/Vector;
    :cond_1
    aget-object v9, v5, v1

    instance-of v9, v9, Lcom/sun/mail/imap/protocol/IMAPResponse;

    if-nez v9, :cond_3

    .line 851
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 855
    :cond_3
    aget-object v2, v5, v1

    check-cast v2, Lcom/sun/mail/imap/protocol/IMAPResponse;

    .line 856
    .local v2, ir:Lcom/sun/mail/imap/protocol/IMAPResponse;
    invoke-virtual {v2, p1}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 857
    new-instance v9, Lcom/sun/mail/imap/protocol/ListInfo;

    invoke-direct {v9, v2}, Lcom/sun/mail/imap/protocol/ListInfo;-><init>(Lcom/sun/mail/imap/protocol/IMAPResponse;)V

    invoke-virtual {v7, v9}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 858
    aput-object v8, v5, v1

    goto :goto_1
.end method

.method private fetch(Ljava/lang/String;Ljava/lang/String;Z)[Lcom/sun/mail/iap/Response;
    .locals 3
    .parameter "msgSequence"
    .parameter "what"
    .parameter "uid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1309
    if-eqz p3, :cond_0

    .line 1310
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UID FETCH "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v0

    .line 1312
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FETCH "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v0

    goto :goto_0
.end method

.method private getAppendUID(Lcom/sun/mail/iap/Response;)Lcom/sun/mail/imap/AppendUID;
    .locals 8
    .parameter "r"

    .prologue
    const/4 v6, 0x0

    .line 944
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v7

    if-nez v7, :cond_1

    .line 958
    :cond_0
    :goto_0
    return-object v6

    .line 947
    :cond_1
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readByte()B

    move-result v0

    .local v0, b:B
    if-lez v0, :cond_2

    const/16 v7, 0x5b

    if-ne v0, v7, :cond_1

    .line 949
    :cond_2
    if-eqz v0, :cond_0

    .line 952
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readAtom()Ljava/lang/String;

    move-result-object v1

    .line 953
    .local v1, s:Ljava/lang/String;
    const-string v7, "APPENDUID"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 956
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readLong()J

    move-result-wide v4

    .line 957
    .local v4, uidvalidity:J
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readLong()J

    move-result-wide v2

    .line 958
    .local v2, uid:J
    new-instance v6, Lcom/sun/mail/imap/AppendUID;

    invoke-direct {v6, v4, v5, v2, v3}, Lcom/sun/mail/imap/AppendUID;-><init>(JJ)V

    goto :goto_0
.end method

.method private issueSearch(Ljava/lang/String;Ljavax/mail/search/SearchTerm;Ljava/lang/String;)[I
    .locals 12
    .parameter "msgSequence"
    .parameter "term"
    .parameter "charset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;,
            Ljavax/mail/search/SearchException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1507
    .line 1508
    if-nez p3, :cond_1

    const/4 v10, 0x0

    .line 1507
    :goto_0
    invoke-static {p2, v10}, Lcom/sun/mail/imap/protocol/SearchSequence;->generateSequence(Ljavax/mail/search/SearchTerm;Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    move-result-object v0

    .line 1511
    .local v0, args:Lcom/sun/mail/iap/Argument;
    invoke-virtual {v0, p1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    .line 1515
    if-nez p3, :cond_2

    .line 1516
    const-string v10, "SEARCH"

    invoke-virtual {p0, v10, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v6

    .line 1520
    .local v6, r:[Lcom/sun/mail/iap/Response;
    :goto_1
    array-length v10, v6

    add-int/lit8 v10, v10, -0x1

    aget-object v7, v6, v10

    .line 1521
    .local v7, response:Lcom/sun/mail/iap/Response;
    const/4 v4, 0x0

    check-cast v4, [I

    .line 1524
    .local v4, matches:[I
    invoke-virtual {v7}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1525
    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    .line 1527
    .local v8, v:Ljava/util/Vector;
    const/4 v1, 0x0

    .local v1, i:I
    array-length v3, v6

    .local v3, len:I
    :goto_2
    if-lt v1, v3, :cond_3

    .line 1541
    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v9

    .line 1542
    .local v9, vsize:I
    new-array v4, v9, [I

    .line 1543
    const/4 v1, 0x0

    :goto_3
    if-lt v1, v9, :cond_7

    .line 1548
    .end local v1           #i:I
    .end local v3           #len:I
    .end local v8           #v:Ljava/util/Vector;
    .end local v9           #vsize:I
    :cond_0
    invoke-virtual {p0, v6}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 1549
    invoke-virtual {p0, v7}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 1550
    return-object v4

    .line 1509
    .end local v0           #args:Lcom/sun/mail/iap/Argument;
    .end local v4           #matches:[I
    .end local v6           #r:[Lcom/sun/mail/iap/Response;
    .end local v7           #response:Lcom/sun/mail/iap/Response;
    :cond_1
    invoke-static {p3}, Ljavax/mail/internet/MimeUtility;->javaCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    .line 1518
    .restart local v0       #args:Lcom/sun/mail/iap/Argument;
    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "SEARCH CHARSET "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v6

    .restart local v6       #r:[Lcom/sun/mail/iap/Response;
    goto :goto_1

    .line 1528
    .restart local v1       #i:I
    .restart local v3       #len:I
    .restart local v4       #matches:[I
    .restart local v7       #response:Lcom/sun/mail/iap/Response;
    .restart local v8       #v:Ljava/util/Vector;
    :cond_3
    aget-object v10, v6, v1

    instance-of v10, v10, Lcom/sun/mail/imap/protocol/IMAPResponse;

    if-nez v10, :cond_5

    .line 1527
    :cond_4
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1531
    :cond_5
    aget-object v2, v6, v1

    check-cast v2, Lcom/sun/mail/imap/protocol/IMAPResponse;

    .line 1533
    .local v2, ir:Lcom/sun/mail/imap/protocol/IMAPResponse;
    const-string v10, "SEARCH"

    invoke-virtual {v2, v10}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1534
    :goto_5
    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readNumber()I

    move-result v5

    .local v5, num:I
    const/4 v10, -0x1

    if-ne v5, v10, :cond_6

    .line 1536
    const/4 v10, 0x0

    aput-object v10, v6, v1

    goto :goto_4

    .line 1535
    :cond_6
    new-instance v10, Ljava/lang/Integer;

    invoke-direct {v10, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v8, v10}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_5

    .line 1544
    .end local v2           #ir:Lcom/sun/mail/imap/protocol/IMAPResponse;
    .end local v5           #num:I
    .restart local v9       #vsize:I
    :cond_7
    invoke-virtual {v8, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    aput v10, v4, v1

    .line 1543
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method private parseQuota(Lcom/sun/mail/iap/Response;)Ljavax/mail/Quota;
    .locals 11
    .parameter "r"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ParsingException;
        }
    .end annotation

    .prologue
    .line 1762
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readAtomString()Ljava/lang/String;

    move-result-object v7

    .line 1763
    .local v7, quotaRoot:Ljava/lang/String;
    new-instance v6, Ljavax/mail/Quota;

    invoke-direct {v6, v7}, Ljavax/mail/Quota;-><init>(Ljava/lang/String;)V

    .line 1764
    .local v6, q:Ljavax/mail/Quota;
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->skipSpaces()V

    .line 1766
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readByte()B

    move-result v9

    const/16 v10, 0x28

    if-eq v9, v10, :cond_0

    .line 1767
    new-instance v9, Lcom/sun/mail/iap/ParsingException;

    const-string v10, "parse error in QUOTA"

    invoke-direct {v9, v10}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1769
    :cond_0
    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    .line 1770
    .local v8, v:Ljava/util/Vector;
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->peekByte()B

    move-result v9

    const/16 v10, 0x29

    if-ne v9, v10, :cond_2

    .line 1780
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readByte()B

    .line 1781
    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v9

    new-array v9, v9, [Ljavax/mail/Quota$Resource;

    iput-object v9, v6, Ljavax/mail/Quota;->resources:[Ljavax/mail/Quota$Resource;

    .line 1782
    iget-object v9, v6, Ljavax/mail/Quota;->resources:[Ljavax/mail/Quota$Resource;

    invoke-virtual {v8, v9}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 1783
    return-object v6

    .line 1772
    :cond_2
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readAtom()Ljava/lang/String;

    move-result-object v1

    .line 1773
    .local v1, name:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 1774
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readLong()J

    move-result-wide v2

    .line 1775
    .local v2, usage:J
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readLong()J

    move-result-wide v4

    .line 1776
    .local v4, limit:J
    new-instance v0, Ljavax/mail/Quota$Resource;

    invoke-direct/range {v0 .. v5}, Ljavax/mail/Quota$Resource;-><init>(Ljava/lang/String;JJ)V

    .line 1777
    .local v0, res:Ljavax/mail/Quota$Resource;
    invoke-virtual {v8, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private search(Ljava/lang/String;Ljavax/mail/search/SearchTerm;)[I
    .locals 7
    .parameter "msgSequence"
    .parameter "term"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;,
            Ljavax/mail/search/SearchException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1455
    invoke-static {p2}, Lcom/sun/mail/imap/protocol/SearchSequence;->isAscii(Ljavax/mail/search/SearchTerm;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1457
    const/4 v5, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2, v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->issueSearch(Ljava/lang/String;Ljavax/mail/search/SearchTerm;Ljava/lang/String;)[I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 1474
    :goto_0
    return-object v5

    .line 1458
    :catch_0
    move-exception v5

    .line 1469
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v5, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->searchCharsets:[Ljava/lang/String;

    array-length v5, v5

    if-lt v1, v5, :cond_1

    .line 1494
    new-instance v5, Ljavax/mail/search/SearchException;

    const-string v6, "Search failed"

    invoke-direct {v5, v6}, Ljavax/mail/search/SearchException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1470
    :cond_1
    iget-object v5, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->searchCharsets:[Ljava/lang/String;

    aget-object v5, v5, v1

    if-nez v5, :cond_2

    .line 1469
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1474
    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->searchCharsets:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-direct {p0, p1, p2, v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->issueSearch(Ljava/lang/String;Ljavax/mail/search/SearchTerm;Ljava/lang/String;)[I
    :try_end_1
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljavax/mail/search/SearchException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v5

    goto :goto_0

    .line 1475
    :catch_1
    move-exception v0

    .line 1481
    .local v0, cfx:Lcom/sun/mail/iap/CommandFailedException;
    iget-object v5, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->searchCharsets:[Ljava/lang/String;

    aput-object v6, v5, v1

    goto :goto_2

    .line 1483
    .end local v0           #cfx:Lcom/sun/mail/iap/CommandFailedException;
    :catch_2
    move-exception v2

    .line 1485
    .local v2, ioex:Ljava/io/IOException;
    goto :goto_2

    .line 1486
    .end local v2           #ioex:Ljava/io/IOException;
    :catch_3
    move-exception v3

    .line 1487
    .local v3, pex:Lcom/sun/mail/iap/ProtocolException;
    throw v3

    .line 1488
    .end local v3           #pex:Lcom/sun/mail/iap/ProtocolException;
    :catch_4
    move-exception v4

    .line 1489
    .local v4, sex:Ljavax/mail/search/SearchException;
    throw v4
.end method

.method private storeFlags(Ljava/lang/String;Ljavax/mail/Flags;Z)V
    .locals 4
    .parameter "msgset"
    .parameter "flags"
    .parameter "set"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1363
    if-eqz p3, :cond_0

    .line 1364
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "STORE "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " +FLAGS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1365
    invoke-direct {p0, p2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->createFlagList(Ljavax/mail/Flags;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1364
    invoke-virtual {p0, v1, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v0

    .line 1371
    .local v0, r:[Lcom/sun/mail/iap/Response;
    :goto_0
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 1372
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 1373
    return-void

    .line 1367
    .end local v0           #r:[Lcom/sun/mail/iap/Response;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "STORE "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -FLAGS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1368
    invoke-direct {p0, p2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->createFlagList(Ljavax/mail/Flags;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1367
    invoke-virtual {p0, v1, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v0

    .restart local v0       #r:[Lcom/sun/mail/iap/Response;
    goto :goto_0
.end method


# virtual methods
.method public append(Ljava/lang/String;Ljavax/mail/Flags;Ljava/util/Date;Lcom/sun/mail/iap/Literal;)V
    .locals 6
    .parameter "mbox"
    .parameter "f"
    .parameter "d"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 880
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->appenduid(Ljava/lang/String;Ljavax/mail/Flags;Ljava/util/Date;Lcom/sun/mail/iap/Literal;Z)Lcom/sun/mail/imap/AppendUID;

    .line 881
    return-void
.end method

.method public appenduid(Ljava/lang/String;Ljavax/mail/Flags;Ljava/util/Date;Lcom/sun/mail/iap/Literal;)Lcom/sun/mail/imap/AppendUID;
    .locals 6
    .parameter "mbox"
    .parameter "f"
    .parameter "d"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 890
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->appenduid(Ljava/lang/String;Ljavax/mail/Flags;Ljava/util/Date;Lcom/sun/mail/iap/Literal;Z)Lcom/sun/mail/imap/AppendUID;

    move-result-object v0

    return-object v0
.end method

.method public appenduid(Ljava/lang/String;Ljavax/mail/Flags;Ljava/util/Date;Lcom/sun/mail/iap/Literal;Z)Lcom/sun/mail/imap/AppendUID;
    .locals 4
    .parameter "mbox"
    .parameter "f"
    .parameter "d"
    .parameter "data"
    .parameter "uid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 896
    invoke-static {p1}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 898
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 899
    .local v0, args:Lcom/sun/mail/iap/Argument;
    invoke-virtual {v0, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V

    .line 901
    if-eqz p2, :cond_1

    .line 903
    sget-object v3, Ljavax/mail/Flags$Flag;->RECENT:Ljavax/mail/Flags$Flag;

    invoke-virtual {p2, v3}, Ljavax/mail/Flags;->contains(Ljavax/mail/Flags$Flag;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 904
    new-instance v1, Ljavax/mail/Flags;

    invoke-direct {v1, p2}, Ljavax/mail/Flags;-><init>(Ljavax/mail/Flags;)V

    .line 905
    .end local p2
    .local v1, f:Ljavax/mail/Flags;
    sget-object v3, Ljavax/mail/Flags$Flag;->RECENT:Ljavax/mail/Flags$Flag;

    invoke-virtual {v1, v3}, Ljavax/mail/Flags;->remove(Ljavax/mail/Flags$Flag;)V

    move-object p2, v1

    .line 918
    .end local v1           #f:Ljavax/mail/Flags;
    .restart local p2
    :cond_0
    invoke-direct {p0, p2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->createFlagList(Ljavax/mail/Flags;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    .line 920
    :cond_1
    if-eqz p3, :cond_2

    .line 921
    invoke-static {p3}, Lcom/sun/mail/imap/protocol/INTERNALDATE;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V

    .line 923
    :cond_2
    invoke-virtual {v0, p4}, Lcom/sun/mail/iap/Argument;->writeBytes(Lcom/sun/mail/iap/Literal;)V

    .line 925
    const-string v3, "APPEND"

    invoke-virtual {p0, v3, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v2

    .line 928
    .local v2, r:[Lcom/sun/mail/iap/Response;
    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 931
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v2, v3

    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 933
    if-eqz p5, :cond_3

    .line 934
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v2, v3

    invoke-direct {p0, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getAppendUID(Lcom/sun/mail/iap/Response;)Lcom/sun/mail/imap/AppendUID;

    move-result-object v3

    .line 936
    :goto_0
    return-object v3

    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public declared-synchronized authlogin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 14
    .parameter "u"
    .parameter "p"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 350
    monitor-enter p0

    :try_start_0
    new-instance v11, Ljava/util/Vector;

    invoke-direct {v11}, Ljava/util/Vector;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 351
    .local v11, v:Ljava/util/Vector;
    const/4 v10, 0x0

    .line 352
    .local v10, tag:Ljava/lang/String;
    const/4 v7, 0x0

    .line 353
    .local v7, r:Lcom/sun/mail/iap/Response;
    const/4 v2, 0x0

    .line 356
    .local v2, done:Z
    :try_start_1
    const-string v12, "AUTHENTICATE LOGIN"

    const/4 v13, 0x0

    invoke-virtual {p0, v12, v13}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->writeCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v10

    .line 363
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    .line 381
    .local v6, os:Ljava/io/OutputStream;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 382
    .local v1, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v0, Lcom/sun/mail/util/BASE64EncoderStream;

    const v12, 0x7fffffff

    invoke-direct {v0, v1, v12}, Lcom/sun/mail/util/BASE64EncoderStream;-><init>(Ljava/io/OutputStream;I)V

    .line 383
    .local v0, b64os:Ljava/io/OutputStream;
    const/4 v4, 0x1

    .line 385
    .local v4, first:Z
    :goto_1
    if-eqz v2, :cond_0

    .line 425
    invoke-virtual {v11}, Ljava/util/Vector;->size()I

    move-result v12

    new-array v8, v12, [Lcom/sun/mail/iap/Response;

    .line 426
    .local v8, responses:[Lcom/sun/mail/iap/Response;
    invoke-virtual {v11, v8}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 427
    invoke-virtual {p0, v8}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 430
    invoke-virtual {p0, v7}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 432
    invoke-virtual {p0, v7}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->setCapabilities(Lcom/sun/mail/iap/Response;)V

    .line 434
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->authenticated:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 435
    monitor-exit p0

    return-void

    .line 357
    .end local v0           #b64os:Ljava/io/OutputStream;
    .end local v1           #bos:Ljava/io/ByteArrayOutputStream;
    .end local v4           #first:Z
    .end local v6           #os:Ljava/io/OutputStream;
    .end local v8           #responses:[Lcom/sun/mail/iap/Response;
    :catch_0
    move-exception v3

    .line 359
    .local v3, ex:Ljava/lang/Exception;
    :try_start_3
    invoke-static {v3}, Lcom/sun/mail/iap/Response;->byeResponse(Ljava/lang/Exception;)Lcom/sun/mail/iap/Response;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v7

    .line 360
    const/4 v2, 0x1

    goto :goto_0

    .line 387
    .end local v3           #ex:Ljava/lang/Exception;
    .restart local v0       #b64os:Ljava/io/OutputStream;
    .restart local v1       #bos:Ljava/io/ByteArrayOutputStream;
    .restart local v4       #first:Z
    .restart local v6       #os:Ljava/io/OutputStream;
    :cond_0
    :try_start_4
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->readResponse()Lcom/sun/mail/iap/Response;

    move-result-object v7

    .line 388
    invoke-virtual {v7}, Lcom/sun/mail/iap/Response;->isContinuation()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 391
    if-eqz v4, :cond_1

    .line 392
    move-object v9, p1

    .line 393
    .local v9, s:Ljava/lang/String;
    const/4 v4, 0x0

    .line 398
    :goto_2
    invoke-static {v9}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/io/OutputStream;->write([B)V

    .line 399
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 401
    sget-object v12, Lcom/sun/mail/imap/protocol/IMAPProtocol;->CRLF:[B

    invoke-virtual {v1, v12}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 402
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/io/OutputStream;->write([B)V

    .line 403
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    .line 404
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 412
    .end local v9           #s:Ljava/lang/String;
    :catch_1
    move-exception v5

    .line 414
    .local v5, ioex:Ljava/lang/Exception;
    :try_start_5
    invoke-static {v5}, Lcom/sun/mail/iap/Response;->byeResponse(Ljava/lang/Exception;)Lcom/sun/mail/iap/Response;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v7

    .line 415
    const/4 v2, 0x1

    goto :goto_1

    .line 395
    .end local v5           #ioex:Ljava/lang/Exception;
    :cond_1
    move-object/from16 v9, p2

    .restart local v9       #s:Ljava/lang/String;
    goto :goto_2

    .line 405
    .end local v9           #s:Ljava/lang/String;
    :cond_2
    :try_start_6
    invoke-virtual {v7}, Lcom/sun/mail/iap/Response;->isTagged()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-virtual {v7}, Lcom/sun/mail/iap/Response;->getTag()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 407
    const/4 v2, 0x1

    goto :goto_1

    .line 408
    :cond_3
    invoke-virtual {v7}, Lcom/sun/mail/iap/Response;->isBYE()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 409
    const/4 v2, 0x1

    goto :goto_1

    .line 411
    :cond_4
    invoke-virtual {v11, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 350
    .end local v0           #b64os:Ljava/io/OutputStream;
    .end local v1           #bos:Ljava/io/ByteArrayOutputStream;
    .end local v2           #done:Z
    .end local v4           #first:Z
    .end local v6           #os:Ljava/io/OutputStream;
    .end local v7           #r:Lcom/sun/mail/iap/Response;
    .end local v10           #tag:Ljava/lang/String;
    .end local v11           #v:Ljava/util/Vector;
    :catchall_0
    move-exception v12

    monitor-exit p0

    throw v12
.end method

.method public declared-synchronized authplain(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 15
    .parameter "authzid"
    .parameter "u"
    .parameter "p"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 452
    monitor-enter p0

    :try_start_0
    new-instance v12, Ljava/util/Vector;

    invoke-direct {v12}, Ljava/util/Vector;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 453
    .local v12, v:Ljava/util/Vector;
    const/4 v11, 0x0

    .line 454
    .local v11, tag:Ljava/lang/String;
    const/4 v8, 0x0

    .line 455
    .local v8, r:Lcom/sun/mail/iap/Response;
    const/4 v3, 0x0

    .line 458
    .local v3, done:Z
    :try_start_1
    const-string v13, "AUTHENTICATE PLAIN"

    const/4 v14, 0x0

    invoke-virtual {p0, v13, v14}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->writeCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v11

    .line 465
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    .line 483
    .local v7, os:Ljava/io/OutputStream;
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 484
    .local v2, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Lcom/sun/mail/util/BASE64EncoderStream;

    const v13, 0x7fffffff

    invoke-direct {v1, v2, v13}, Lcom/sun/mail/util/BASE64EncoderStream;-><init>(Ljava/io/OutputStream;I)V

    .line 486
    .local v1, b64os:Ljava/io/OutputStream;
    :goto_1
    if-eqz v3, :cond_0

    .line 522
    invoke-virtual {v12}, Ljava/util/Vector;->size()I

    move-result v13

    new-array v9, v13, [Lcom/sun/mail/iap/Response;

    .line 523
    .local v9, responses:[Lcom/sun/mail/iap/Response;
    invoke-virtual {v12, v9}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 524
    invoke-virtual {p0, v9}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 527
    invoke-virtual {p0, v8}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 529
    invoke-virtual {p0, v8}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->setCapabilities(Lcom/sun/mail/iap/Response;)V

    .line 531
    const/4 v13, 0x1

    iput-boolean v13, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->authenticated:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 532
    monitor-exit p0

    return-void

    .line 459
    .end local v1           #b64os:Ljava/io/OutputStream;
    .end local v2           #bos:Ljava/io/ByteArrayOutputStream;
    .end local v7           #os:Ljava/io/OutputStream;
    .end local v9           #responses:[Lcom/sun/mail/iap/Response;
    :catch_0
    move-exception v4

    .line 461
    .local v4, ex:Ljava/lang/Exception;
    :try_start_3
    invoke-static {v4}, Lcom/sun/mail/iap/Response;->byeResponse(Ljava/lang/Exception;)Lcom/sun/mail/iap/Response;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v8

    .line 462
    const/4 v3, 0x1

    goto :goto_0

    .line 488
    .end local v4           #ex:Ljava/lang/Exception;
    .restart local v1       #b64os:Ljava/io/OutputStream;
    .restart local v2       #bos:Ljava/io/ByteArrayOutputStream;
    .restart local v7       #os:Ljava/io/OutputStream;
    :cond_0
    :try_start_4
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->readResponse()Lcom/sun/mail/iap/Response;

    move-result-object v8

    .line 489
    invoke-virtual {v8}, Lcom/sun/mail/iap/Response;->isContinuation()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 491
    const-string v6, "\u0000"

    .line 492
    .local v6, nullByte:Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, "\u0000"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\u0000"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 495
    .local v10, s:Ljava/lang/String;
    invoke-static {v10}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/io/OutputStream;->write([B)V

    .line 496
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 498
    sget-object v13, Lcom/sun/mail/imap/protocol/IMAPProtocol;->CRLF:[B

    invoke-virtual {v2, v13}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 499
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/io/OutputStream;->write([B)V

    .line 500
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    .line 501
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 509
    .end local v6           #nullByte:Ljava/lang/String;
    .end local v10           #s:Ljava/lang/String;
    :catch_1
    move-exception v5

    .line 511
    .local v5, ioex:Ljava/lang/Exception;
    :try_start_5
    invoke-static {v5}, Lcom/sun/mail/iap/Response;->byeResponse(Ljava/lang/Exception;)Lcom/sun/mail/iap/Response;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v8

    .line 512
    const/4 v3, 0x1

    goto :goto_1

    .line 502
    .end local v5           #ioex:Ljava/lang/Exception;
    :cond_1
    :try_start_6
    invoke-virtual {v8}, Lcom/sun/mail/iap/Response;->isTagged()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-virtual {v8}, Lcom/sun/mail/iap/Response;->getTag()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 504
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 505
    :cond_2
    invoke-virtual {v8}, Lcom/sun/mail/iap/Response;->isBYE()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 506
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 508
    :cond_3
    invoke-virtual {v12, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_1

    .line 452
    .end local v1           #b64os:Ljava/io/OutputStream;
    .end local v2           #bos:Ljava/io/ByteArrayOutputStream;
    .end local v3           #done:Z
    .end local v7           #os:Ljava/io/OutputStream;
    .end local v8           #r:Lcom/sun/mail/iap/Response;
    .end local v11           #tag:Ljava/lang/String;
    .end local v12           #v:Ljava/util/Vector;
    :catchall_0
    move-exception v13

    monitor-exit p0

    throw v13
.end method

.method public capability()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 141
    const-string v4, "CAPABILITY"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v3

    .line 143
    .local v3, r:[Lcom/sun/mail/iap/Response;
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    aget-object v4, v3, v4

    invoke-virtual {v4}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v4

    if-nez v4, :cond_0

    .line 144
    new-instance v4, Lcom/sun/mail/iap/ProtocolException;

    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v3, v5

    invoke-virtual {v5}, Lcom/sun/mail/iap/Response;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/sun/mail/iap/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 146
    :cond_0
    new-instance v4, Ljava/util/HashMap;

    const/16 v5, 0xa

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(I)V

    iput-object v4, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->capabilities:Ljava/util/Map;

    .line 147
    new-instance v4, Ljava/util/ArrayList;

    const/4 v5, 0x5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->authmechs:Ljava/util/List;

    .line 148
    const/4 v0, 0x0

    .local v0, i:I
    array-length v2, v3

    .local v2, len:I
    :goto_0
    if-lt v0, v2, :cond_1

    .line 161
    return-void

    .line 149
    :cond_1
    aget-object v4, v3, v0

    instance-of v4, v4, Lcom/sun/mail/imap/protocol/IMAPResponse;

    if-nez v4, :cond_3

    .line 148
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 152
    :cond_3
    aget-object v1, v3, v0

    check-cast v1, Lcom/sun/mail/imap/protocol/IMAPResponse;

    .line 158
    .local v1, ir:Lcom/sun/mail/imap/protocol/IMAPResponse;
    const-string v4, "CAPABILITY"

    invoke-virtual {v1, v4}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 159
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->parseCapabilities(Lcom/sun/mail/iap/Response;)V

    goto :goto_1
.end method

.method public check()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 967
    const-string v0, "CHECK"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->simpleCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)V

    .line 968
    return-void
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 976
    const-string v0, "CLOSE"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->simpleCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)V

    .line 977
    return-void
.end method

.method public copy(IILjava/lang/String;)V
    .locals 2
    .parameter "start"
    .parameter "end"
    .parameter "mbox"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 1325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->copy(Ljava/lang/String;Ljava/lang/String;)V

    .line 1327
    return-void
.end method

.method public copy([Lcom/sun/mail/imap/protocol/MessageSet;Ljava/lang/String;)V
    .locals 1
    .parameter "msgsets"
    .parameter "mbox"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 1320
    invoke-static {p1}, Lcom/sun/mail/imap/protocol/MessageSet;->toString([Lcom/sun/mail/imap/protocol/MessageSet;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->copy(Ljava/lang/String;Ljava/lang/String;)V

    .line 1321
    return-void
.end method

.method public create(Ljava/lang/String;)V
    .locals 2
    .parameter "mbox"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 746
    invoke-static {p1}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 748
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 749
    .local v0, args:Lcom/sun/mail/iap/Argument;
    invoke-virtual {v0, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V

    .line 751
    const-string v1, "CREATE"

    invoke-virtual {p0, v1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->simpleCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)V

    .line 752
    return-void
.end method

.method public delete(Ljava/lang/String;)V
    .locals 2
    .parameter "mbox"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 761
    invoke-static {p1}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 763
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 764
    .local v0, args:Lcom/sun/mail/iap/Argument;
    invoke-virtual {v0, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V

    .line 766
    const-string v1, "DELETE"

    invoke-virtual {p0, v1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->simpleCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)V

    .line 767
    return-void
.end method

.method public deleteACL(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "mbox"
    .parameter "user"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 1822
    const-string v3, "ACL"

    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1823
    new-instance v3, Lcom/sun/mail/iap/BadCommandException;

    const-string v4, "ACL not supported"

    invoke-direct {v3, v4}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1826
    :cond_0
    invoke-static {p1}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1828
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 1829
    .local v0, args:Lcom/sun/mail/iap/Argument;
    invoke-virtual {v0, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V

    .line 1830
    invoke-virtual {v0, p2}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V

    .line 1832
    const-string v3, "DELETEACL"

    invoke-virtual {p0, v3, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v1

    .line 1833
    .local v1, r:[Lcom/sun/mail/iap/Response;
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v1, v3

    .line 1836
    .local v2, response:Lcom/sun/mail/iap/Response;
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 1837
    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 1838
    return-void
.end method

.method public disconnect()V
    .locals 1

    .prologue
    .line 289
    invoke-super {p0}, Lcom/sun/mail/iap/Protocol;->disconnect()V

    .line 290
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->authenticated:Z

    .line 291
    return-void
.end method

.method public examine(Ljava/lang/String;)Lcom/sun/mail/imap/protocol/MailboxInfo;
    .locals 4
    .parameter "mbox"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 666
    invoke-static {p1}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 668
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 669
    .local v0, args:Lcom/sun/mail/iap/Argument;
    invoke-virtual {v0, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V

    .line 671
    const-string v3, "EXAMINE"

    invoke-virtual {p0, v3, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v2

    .line 675
    .local v2, r:[Lcom/sun/mail/iap/Response;
    new-instance v1, Lcom/sun/mail/imap/protocol/MailboxInfo;

    invoke-direct {v1, v2}, Lcom/sun/mail/imap/protocol/MailboxInfo;-><init>([Lcom/sun/mail/iap/Response;)V

    .line 676
    .local v1, minfo:Lcom/sun/mail/imap/protocol/MailboxInfo;
    const/4 v3, 0x1

    iput v3, v1, Lcom/sun/mail/imap/protocol/MailboxInfo;->mode:I

    .line 679
    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 681
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v2, v3

    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 682
    return-object v1
.end method

.method public expunge()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 985
    const-string v0, "EXPUNGE"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->simpleCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)V

    .line 986
    return-void
.end method

.method public fetch(IILjava/lang/String;)[Lcom/sun/mail/iap/Response;
    .locals 2
    .parameter "start"
    .parameter "end"
    .parameter "what"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 1298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1299
    const/4 v1, 0x0

    .line 1298
    invoke-direct {p0, v0, p3, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetch(Ljava/lang/String;Ljava/lang/String;Z)[Lcom/sun/mail/iap/Response;

    move-result-object v0

    return-object v0
.end method

.method public fetch(ILjava/lang/String;)[Lcom/sun/mail/iap/Response;
    .locals 2
    .parameter "msg"
    .parameter "what"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 1304
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetch(Ljava/lang/String;Ljava/lang/String;Z)[Lcom/sun/mail/iap/Response;

    move-result-object v0

    return-object v0
.end method

.method public fetch([Lcom/sun/mail/imap/protocol/MessageSet;Ljava/lang/String;)[Lcom/sun/mail/iap/Response;
    .locals 2
    .parameter "msgsets"
    .parameter "what"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 1293
    invoke-static {p1}, Lcom/sun/mail/imap/protocol/MessageSet;->toString([Lcom/sun/mail/imap/protocol/MessageSet;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetch(Ljava/lang/String;Ljava/lang/String;Z)[Lcom/sun/mail/iap/Response;

    move-result-object v0

    return-object v0
.end method

.method public fetchBody(ILjava/lang/String;)Lcom/sun/mail/imap/protocol/BODY;
    .locals 1
    .parameter "msgno"
    .parameter "section"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 1033
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchBody(ILjava/lang/String;Z)Lcom/sun/mail/imap/protocol/BODY;

    move-result-object v0

    return-object v0
.end method

.method public fetchBody(ILjava/lang/String;II)Lcom/sun/mail/imap/protocol/BODY;
    .locals 7
    .parameter "msgno"
    .parameter "section"
    .parameter "start"
    .parameter "size"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 1073
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchBody(ILjava/lang/String;IIZLcom/sun/mail/iap/ByteArray;)Lcom/sun/mail/imap/protocol/BODY;

    move-result-object v0

    return-object v0
.end method

.method public fetchBody(ILjava/lang/String;IILcom/sun/mail/iap/ByteArray;)Lcom/sun/mail/imap/protocol/BODY;
    .locals 7
    .parameter "msgno"
    .parameter "section"
    .parameter "start"
    .parameter "size"
    .parameter "ba"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 1089
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchBody(ILjava/lang/String;IIZLcom/sun/mail/iap/ByteArray;)Lcom/sun/mail/imap/protocol/BODY;

    move-result-object v0

    return-object v0
.end method

.method protected fetchBody(ILjava/lang/String;IIZLcom/sun/mail/iap/ByteArray;)Lcom/sun/mail/imap/protocol/BODY;
    .locals 6
    .parameter "msgno"
    .parameter "section"
    .parameter "start"
    .parameter "size"
    .parameter "peek"
    .parameter "ba"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1094
    iput-object p6, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->ba:Lcom/sun/mail/iap/ByteArray;

    .line 1096
    new-instance v4, Ljava/lang/StringBuilder;

    if-eqz p5, :cond_0

    const-string v2, "BODY.PEEK["

    :goto_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1097
    if-nez p2, :cond_1

    const-string v2, "]<"

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1098
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1099
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ">"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1095
    invoke-virtual {p0, p1, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetch(ILjava/lang/String;)[Lcom/sun/mail/iap/Response;

    move-result-object v0

    .line 1102
    .local v0, r:[Lcom/sun/mail/iap/Response;
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 1104
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v0, v2

    .line 1105
    .local v1, response:Lcom/sun/mail/iap/Response;
    invoke-virtual {v1}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1106
    const-class v2, Lcom/sun/mail/imap/protocol/BODY;

    invoke-static {v0, p1, v2}, Lcom/sun/mail/imap/protocol/FetchResponse;->getItem([Lcom/sun/mail/iap/Response;ILjava/lang/Class;)Lcom/sun/mail/imap/protocol/Item;

    move-result-object v2

    check-cast v2, Lcom/sun/mail/imap/protocol/BODY;

    .line 1111
    :goto_2
    return-object v2

    .line 1096
    .end local v0           #r:[Lcom/sun/mail/iap/Response;
    .end local v1           #response:Lcom/sun/mail/iap/Response;
    :cond_0
    const-string v2, "BODY["

    goto :goto_0

    .line 1097
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "]<"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 1107
    .restart local v0       #r:[Lcom/sun/mail/iap/Response;
    .restart local v1       #response:Lcom/sun/mail/iap/Response;
    :cond_2
    invoke-virtual {v1}, Lcom/sun/mail/iap/Response;->isNO()Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v2, v3

    .line 1108
    goto :goto_2

    .line 1110
    :cond_3
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    move-object v2, v3

    .line 1111
    goto :goto_2
.end method

.method protected fetchBody(ILjava/lang/String;Z)Lcom/sun/mail/imap/protocol/BODY;
    .locals 6
    .parameter "msgno"
    .parameter "section"
    .parameter "peek"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1040
    if-eqz p3, :cond_1

    .line 1042
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v2, "BODY.PEEK["

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p2, :cond_0

    const-string v2, "]"

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1041
    invoke-virtual {p0, p1, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetch(ILjava/lang/String;)[Lcom/sun/mail/iap/Response;

    move-result-object v0

    .line 1047
    .local v0, r:[Lcom/sun/mail/iap/Response;
    :goto_1
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 1049
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v0, v2

    .line 1050
    .local v1, response:Lcom/sun/mail/iap/Response;
    invoke-virtual {v1}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1051
    const-class v2, Lcom/sun/mail/imap/protocol/BODY;

    invoke-static {v0, p1, v2}, Lcom/sun/mail/imap/protocol/FetchResponse;->getItem([Lcom/sun/mail/iap/Response;ILjava/lang/Class;)Lcom/sun/mail/imap/protocol/Item;

    move-result-object v2

    check-cast v2, Lcom/sun/mail/imap/protocol/BODY;

    .line 1056
    :goto_2
    return-object v2

    .line 1042
    .end local v0           #r:[Lcom/sun/mail/iap/Response;
    .end local v1           #response:Lcom/sun/mail/iap/Response;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "]"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1045
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v2, "BODY["

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p2, :cond_2

    const-string v2, "]"

    :goto_3
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1044
    invoke-virtual {p0, p1, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetch(ILjava/lang/String;)[Lcom/sun/mail/iap/Response;

    move-result-object v0

    .restart local v0       #r:[Lcom/sun/mail/iap/Response;
    goto :goto_1

    .line 1045
    .end local v0           #r:[Lcom/sun/mail/iap/Response;
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "]"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 1052
    .restart local v0       #r:[Lcom/sun/mail/iap/Response;
    .restart local v1       #response:Lcom/sun/mail/iap/Response;
    :cond_3
    invoke-virtual {v1}, Lcom/sun/mail/iap/Response;->isNO()Z

    move-result v2

    if-eqz v2, :cond_4

    move-object v2, v3

    .line 1053
    goto :goto_2

    .line 1055
    :cond_4
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    move-object v2, v3

    .line 1056
    goto :goto_2
.end method

.method public fetchBodyStructure(I)Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;
    .locals 4
    .parameter "msgno"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1004
    const-string v3, "BODYSTRUCTURE"

    invoke-virtual {p0, p1, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetch(ILjava/lang/String;)[Lcom/sun/mail/iap/Response;

    move-result-object v0

    .line 1005
    .local v0, r:[Lcom/sun/mail/iap/Response;
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 1007
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    aget-object v1, v0, v3

    .line 1008
    .local v1, response:Lcom/sun/mail/iap/Response;
    invoke-virtual {v1}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1010
    const-class v2, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    .line 1009
    invoke-static {v0, p1, v2}, Lcom/sun/mail/imap/protocol/FetchResponse;->getItem([Lcom/sun/mail/iap/Response;ILjava/lang/Class;)Lcom/sun/mail/imap/protocol/Item;

    move-result-object v2

    check-cast v2, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    .line 1015
    :cond_0
    :goto_0
    return-object v2

    .line 1011
    :cond_1
    invoke-virtual {v1}, Lcom/sun/mail/iap/Response;->isNO()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1014
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    goto :goto_0
.end method

.method public fetchFlags(I)Ljavax/mail/Flags;
    .locals 6
    .parameter "msgno"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 1156
    const/4 v0, 0x0

    .line 1157
    .local v0, flags:Ljavax/mail/Flags;
    const-string v5, "FLAGS"

    invoke-virtual {p0, p1, v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetch(ILjava/lang/String;)[Lcom/sun/mail/iap/Response;

    move-result-object v4

    .line 1160
    .local v4, r:[Lcom/sun/mail/iap/Response;
    const/4 v2, 0x0

    .local v2, i:I
    array-length v3, v4

    .local v3, len:I
    :goto_0
    if-lt v2, v3, :cond_0

    .line 1174
    :goto_1
    invoke-virtual {p0, v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 1175
    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v4, v5

    invoke-virtual {p0, v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 1176
    return-object v0

    .line 1161
    :cond_0
    aget-object v5, v4, v2

    if-eqz v5, :cond_1

    .line 1162
    aget-object v5, v4, v2

    instance-of v5, v5, Lcom/sun/mail/imap/protocol/FetchResponse;

    if-eqz v5, :cond_1

    .line 1163
    aget-object v5, v4, v2

    check-cast v5, Lcom/sun/mail/imap/protocol/FetchResponse;

    invoke-virtual {v5}, Lcom/sun/mail/imap/protocol/FetchResponse;->getNumber()I

    move-result v5

    if-eq v5, p1, :cond_2

    .line 1160
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1166
    :cond_2
    aget-object v1, v4, v2

    check-cast v1, Lcom/sun/mail/imap/protocol/FetchResponse;

    .line 1167
    .local v1, fr:Lcom/sun/mail/imap/protocol/FetchResponse;
    const-class v5, Ljavax/mail/Flags;

    invoke-virtual {v1, v5}, Lcom/sun/mail/imap/protocol/FetchResponse;->getItem(Ljava/lang/Class;)Lcom/sun/mail/imap/protocol/Item;

    move-result-object v0

    .end local v0           #flags:Ljavax/mail/Flags;
    check-cast v0, Ljavax/mail/Flags;

    .restart local v0       #flags:Ljavax/mail/Flags;
    if-eqz v0, :cond_1

    .line 1168
    const/4 v5, 0x0

    aput-object v5, v4, v2

    goto :goto_1
.end method

.method public fetchRFC822(ILjava/lang/String;)Lcom/sun/mail/imap/protocol/RFC822DATA;
    .locals 5
    .parameter "msgno"
    .parameter "what"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1133
    .line 1134
    if-nez p2, :cond_0

    const-string v2, "RFC822"

    .line 1133
    :goto_0
    invoke-virtual {p0, p1, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetch(ILjava/lang/String;)[Lcom/sun/mail/iap/Response;

    move-result-object v0

    .line 1138
    .local v0, r:[Lcom/sun/mail/iap/Response;
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 1140
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v0, v2

    .line 1141
    .local v1, response:Lcom/sun/mail/iap/Response;
    invoke-virtual {v1}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1143
    const-class v2, Lcom/sun/mail/imap/protocol/RFC822DATA;

    .line 1142
    invoke-static {v0, p1, v2}, Lcom/sun/mail/imap/protocol/FetchResponse;->getItem([Lcom/sun/mail/iap/Response;ILjava/lang/Class;)Lcom/sun/mail/imap/protocol/Item;

    move-result-object v2

    check-cast v2, Lcom/sun/mail/imap/protocol/RFC822DATA;

    .line 1148
    :goto_1
    return-object v2

    .line 1134
    .end local v0           #r:[Lcom/sun/mail/iap/Response;
    .end local v1           #response:Lcom/sun/mail/iap/Response;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "RFC822."

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1144
    .restart local v0       #r:[Lcom/sun/mail/iap/Response;
    .restart local v1       #response:Lcom/sun/mail/iap/Response;
    :cond_1
    invoke-virtual {v1}, Lcom/sun/mail/iap/Response;->isNO()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v2, v3

    .line 1145
    goto :goto_1

    .line 1147
    :cond_2
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    move-object v2, v3

    .line 1148
    goto :goto_1
.end method

.method public fetchSequenceNumber(J)Lcom/sun/mail/imap/protocol/UID;
    .locals 8
    .parameter "uid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 1205
    const/4 v4, 0x0

    .line 1206
    .local v4, u:Lcom/sun/mail/imap/protocol/UID;
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const-string v6, "UID"

    const/4 v7, 0x1

    invoke-direct {p0, v5, v6, v7}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetch(Ljava/lang/String;Ljava/lang/String;Z)[Lcom/sun/mail/iap/Response;

    move-result-object v3

    .line 1208
    .local v3, r:[Lcom/sun/mail/iap/Response;
    const/4 v1, 0x0

    .local v1, i:I
    array-length v2, v3

    .local v2, len:I
    :goto_0
    if-lt v1, v2, :cond_1

    .line 1221
    :cond_0
    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 1222
    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v3, v5

    invoke-virtual {p0, v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 1223
    return-object v4

    .line 1209
    :cond_1
    aget-object v5, v3, v1

    if-eqz v5, :cond_2

    aget-object v5, v3, v1

    instance-of v5, v5, Lcom/sun/mail/imap/protocol/FetchResponse;

    if-nez v5, :cond_3

    .line 1208
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1212
    :cond_3
    aget-object v0, v3, v1

    check-cast v0, Lcom/sun/mail/imap/protocol/FetchResponse;

    .line 1213
    .local v0, fr:Lcom/sun/mail/imap/protocol/FetchResponse;
    const-class v5, Lcom/sun/mail/imap/protocol/UID;

    invoke-virtual {v0, v5}, Lcom/sun/mail/imap/protocol/FetchResponse;->getItem(Ljava/lang/Class;)Lcom/sun/mail/imap/protocol/Item;

    move-result-object v4

    .end local v4           #u:Lcom/sun/mail/imap/protocol/UID;
    check-cast v4, Lcom/sun/mail/imap/protocol/UID;

    .restart local v4       #u:Lcom/sun/mail/imap/protocol/UID;
    if-eqz v4, :cond_2

    .line 1214
    iget-wide v5, v4, Lcom/sun/mail/imap/protocol/UID;->uid:J

    cmp-long v5, v5, p1

    if-eqz v5, :cond_0

    .line 1217
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public fetchSequenceNumbers(JJ)[Lcom/sun/mail/imap/protocol/UID;
    .locals 11
    .parameter "start"
    .parameter "end"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 1233
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1234
    const-wide/16 v9, -0x1

    cmp-long v7, p3, v9

    if-nez v7, :cond_0

    const-string v7, "*"

    :goto_0
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1236
    const-string v8, "UID"

    const/4 v9, 0x1

    .line 1233
    invoke-direct {p0, v7, v8, v9}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetch(Ljava/lang/String;Ljava/lang/String;Z)[Lcom/sun/mail/iap/Response;

    move-result-object v3

    .line 1239
    .local v3, r:[Lcom/sun/mail/iap/Response;
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 1240
    .local v6, v:Ljava/util/Vector;
    const/4 v1, 0x0

    .local v1, i:I
    array-length v2, v3

    .local v2, len:I
    :goto_1
    if-lt v1, v2, :cond_1

    .line 1249
    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 1250
    array-length v7, v3

    add-int/lit8 v7, v7, -0x1

    aget-object v7, v3, v7

    invoke-virtual {p0, v7}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 1252
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v7

    new-array v5, v7, [Lcom/sun/mail/imap/protocol/UID;

    .line 1253
    .local v5, ua:[Lcom/sun/mail/imap/protocol/UID;
    invoke-virtual {v6, v5}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 1254
    return-object v5

    .line 1235
    .end local v1           #i:I
    .end local v2           #len:I
    .end local v3           #r:[Lcom/sun/mail/iap/Response;
    .end local v5           #ua:[Lcom/sun/mail/imap/protocol/UID;
    .end local v6           #v:Ljava/util/Vector;
    :cond_0
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 1241
    .restart local v1       #i:I
    .restart local v2       #len:I
    .restart local v3       #r:[Lcom/sun/mail/iap/Response;
    .restart local v6       #v:Ljava/util/Vector;
    :cond_1
    aget-object v7, v3, v1

    if-eqz v7, :cond_2

    aget-object v7, v3, v1

    instance-of v7, v7, Lcom/sun/mail/imap/protocol/FetchResponse;

    if-nez v7, :cond_3

    .line 1240
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1244
    :cond_3
    aget-object v0, v3, v1

    check-cast v0, Lcom/sun/mail/imap/protocol/FetchResponse;

    .line 1245
    .local v0, fr:Lcom/sun/mail/imap/protocol/FetchResponse;
    const-class v7, Lcom/sun/mail/imap/protocol/UID;

    invoke-virtual {v0, v7}, Lcom/sun/mail/imap/protocol/FetchResponse;->getItem(Ljava/lang/Class;)Lcom/sun/mail/imap/protocol/Item;

    move-result-object v4

    check-cast v4, Lcom/sun/mail/imap/protocol/UID;

    .local v4, u:Lcom/sun/mail/imap/protocol/UID;
    if-eqz v4, :cond_2

    .line 1246
    invoke-virtual {v6, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public fetchSequenceNumbers([J)[Lcom/sun/mail/imap/protocol/UID;
    .locals 11
    .parameter "uids"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 1263
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 1264
    .local v4, sb:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v8, p1

    if-lt v1, v8, :cond_0

    .line 1270
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "UID"

    const/4 v10, 0x1

    invoke-direct {p0, v8, v9, v10}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetch(Ljava/lang/String;Ljava/lang/String;Z)[Lcom/sun/mail/iap/Response;

    move-result-object v3

    .line 1273
    .local v3, r:[Lcom/sun/mail/iap/Response;
    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    .line 1274
    .local v7, v:Ljava/util/Vector;
    const/4 v1, 0x0

    array-length v2, v3

    .local v2, len:I
    :goto_1
    if-lt v1, v2, :cond_2

    .line 1283
    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 1284
    array-length v8, v3

    add-int/lit8 v8, v8, -0x1

    aget-object v8, v3, v8

    invoke-virtual {p0, v8}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 1286
    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v8

    new-array v6, v8, [Lcom/sun/mail/imap/protocol/UID;

    .line 1287
    .local v6, ua:[Lcom/sun/mail/imap/protocol/UID;
    invoke-virtual {v7, v6}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 1288
    return-object v6

    .line 1265
    .end local v2           #len:I
    .end local v3           #r:[Lcom/sun/mail/iap/Response;
    .end local v6           #ua:[Lcom/sun/mail/imap/protocol/UID;
    .end local v7           #v:Ljava/util/Vector;
    :cond_0
    if-lez v1, :cond_1

    .line 1266
    const-string v8, ","

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1267
    :cond_1
    aget-wide v8, p1, v1

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1264
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1275
    .restart local v2       #len:I
    .restart local v3       #r:[Lcom/sun/mail/iap/Response;
    .restart local v7       #v:Ljava/util/Vector;
    :cond_2
    aget-object v8, v3, v1

    if-eqz v8, :cond_3

    aget-object v8, v3, v1

    instance-of v8, v8, Lcom/sun/mail/imap/protocol/FetchResponse;

    if-nez v8, :cond_4

    .line 1274
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1278
    :cond_4
    aget-object v0, v3, v1

    check-cast v0, Lcom/sun/mail/imap/protocol/FetchResponse;

    .line 1279
    .local v0, fr:Lcom/sun/mail/imap/protocol/FetchResponse;
    const-class v8, Lcom/sun/mail/imap/protocol/UID;

    invoke-virtual {v0, v8}, Lcom/sun/mail/imap/protocol/FetchResponse;->getItem(Ljava/lang/Class;)Lcom/sun/mail/imap/protocol/Item;

    move-result-object v5

    check-cast v5, Lcom/sun/mail/imap/protocol/UID;

    .local v5, u:Lcom/sun/mail/imap/protocol/UID;
    if-eqz v5, :cond_3

    .line 1280
    invoke-virtual {v7, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public fetchUID(I)Lcom/sun/mail/imap/protocol/UID;
    .locals 4
    .parameter "msgno"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1183
    const-string v3, "UID"

    invoke-virtual {p0, p1, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetch(ILjava/lang/String;)[Lcom/sun/mail/iap/Response;

    move-result-object v0

    .line 1186
    .local v0, r:[Lcom/sun/mail/iap/Response;
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 1188
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    aget-object v1, v0, v3

    .line 1189
    .local v1, response:Lcom/sun/mail/iap/Response;
    invoke-virtual {v1}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1190
    const-class v2, Lcom/sun/mail/imap/protocol/UID;

    invoke-static {v0, p1, v2}, Lcom/sun/mail/imap/protocol/FetchResponse;->getItem([Lcom/sun/mail/iap/Response;ILjava/lang/Class;)Lcom/sun/mail/imap/protocol/Item;

    move-result-object v2

    check-cast v2, Lcom/sun/mail/imap/protocol/UID;

    .line 1195
    :cond_0
    :goto_0
    return-object v2

    .line 1191
    :cond_1
    invoke-virtual {v1}, Lcom/sun/mail/iap/Response;->isNO()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1194
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    goto :goto_0
.end method

.method public getACL(Ljava/lang/String;)[Lcom/sun/mail/imap/ACL;
    .locals 13
    .parameter "mbox"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 1846
    const-string v11, "ACL"

    invoke-virtual {p0, v11}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 1847
    new-instance v11, Lcom/sun/mail/iap/BadCommandException;

    const-string v12, "ACL not supported"

    invoke-direct {v11, v12}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1850
    :cond_0
    invoke-static {p1}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1852
    new-instance v2, Lcom/sun/mail/iap/Argument;

    invoke-direct {v2}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 1853
    .local v2, args:Lcom/sun/mail/iap/Argument;
    invoke-virtual {v2, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V

    .line 1855
    const-string v11, "GETACL"

    invoke-virtual {p0, v11, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v7

    .line 1856
    .local v7, r:[Lcom/sun/mail/iap/Response;
    array-length v11, v7

    add-int/lit8 v11, v11, -0x1

    aget-object v8, v7, v11

    .line 1859
    .local v8, response:Lcom/sun/mail/iap/Response;
    new-instance v10, Ljava/util/Vector;

    invoke-direct {v10}, Ljava/util/Vector;-><init>()V

    .line 1860
    .local v10, v:Ljava/util/Vector;
    invoke-virtual {v8}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1861
    const/4 v3, 0x0

    .local v3, i:I
    array-length v5, v7

    .local v5, len:I
    :goto_0
    if-lt v3, v5, :cond_2

    .line 1885
    .end local v3           #i:I
    .end local v5           #len:I
    :cond_1
    invoke-virtual {p0, v7}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 1886
    invoke-virtual {p0, v8}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 1887
    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result v11

    new-array v0, v11, [Lcom/sun/mail/imap/ACL;

    .line 1888
    .local v0, aa:[Lcom/sun/mail/imap/ACL;
    invoke-virtual {v10, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 1889
    return-object v0

    .line 1862
    .end local v0           #aa:[Lcom/sun/mail/imap/ACL;
    .restart local v3       #i:I
    .restart local v5       #len:I
    :cond_2
    aget-object v11, v7, v3

    instance-of v11, v11, Lcom/sun/mail/imap/protocol/IMAPResponse;

    if-nez v11, :cond_4

    .line 1861
    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1865
    :cond_4
    aget-object v4, v7, v3

    check-cast v4, Lcom/sun/mail/imap/protocol/IMAPResponse;

    .line 1866
    .local v4, ir:Lcom/sun/mail/imap/protocol/IMAPResponse;
    const-string v11, "ACL"

    invoke-virtual {v4, v11}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1870
    invoke-virtual {v4}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readAtomString()Ljava/lang/String;

    .line 1871
    const/4 v6, 0x0

    .line 1872
    .local v6, name:Ljava/lang/String;
    :goto_2
    invoke-virtual {v4}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readAtomString()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_6

    .line 1879
    :cond_5
    const/4 v11, 0x0

    aput-object v11, v7, v3

    goto :goto_1

    .line 1873
    :cond_6
    invoke-virtual {v4}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readAtomString()Ljava/lang/String;

    move-result-object v9

    .line 1874
    .local v9, rights:Ljava/lang/String;
    if-eqz v9, :cond_5

    .line 1876
    new-instance v1, Lcom/sun/mail/imap/ACL;

    new-instance v11, Lcom/sun/mail/imap/Rights;

    invoke-direct {v11, v9}, Lcom/sun/mail/imap/Rights;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v6, v11}, Lcom/sun/mail/imap/ACL;-><init>(Ljava/lang/String;Lcom/sun/mail/imap/Rights;)V

    .line 1877
    .local v1, acl:Lcom/sun/mail/imap/ACL;
    invoke-virtual {v10, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public getCapabilities()Ljava/util/Map;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->capabilities:Ljava/util/Map;

    return-object v0
.end method

.method getIMAPOutputStream()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 588
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public getQuota(Ljava/lang/String;)[Ljavax/mail/Quota;
    .locals 11
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 1663
    const-string v9, "QUOTA"

    invoke-virtual {p0, v9}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 1664
    new-instance v9, Lcom/sun/mail/iap/BadCommandException;

    const-string v10, "QUOTA not supported"

    invoke-direct {v9, v10}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1666
    :cond_0
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 1667
    .local v0, args:Lcom/sun/mail/iap/Argument;
    invoke-virtual {v0, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V

    .line 1669
    const-string v9, "GETQUOTA"

    invoke-virtual {p0, v9, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v6

    .line 1671
    .local v6, r:[Lcom/sun/mail/iap/Response;
    const/4 v5, 0x0

    .line 1672
    .local v5, quota:Ljavax/mail/Quota;
    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    .line 1673
    .local v8, v:Ljava/util/Vector;
    array-length v9, v6

    add-int/lit8 v9, v9, -0x1

    aget-object v7, v6, v9

    .line 1676
    .local v7, response:Lcom/sun/mail/iap/Response;
    invoke-virtual {v7}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1677
    const/4 v1, 0x0

    .local v1, i:I
    array-length v3, v6

    .local v3, len:I
    :goto_0
    if-lt v1, v3, :cond_2

    .line 1691
    .end local v1           #i:I
    .end local v3           #len:I
    :cond_1
    invoke-virtual {p0, v6}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 1692
    invoke-virtual {p0, v7}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 1693
    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v9

    new-array v4, v9, [Ljavax/mail/Quota;

    .line 1694
    .local v4, qa:[Ljavax/mail/Quota;
    invoke-virtual {v8, v4}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 1695
    return-object v4

    .line 1678
    .end local v4           #qa:[Ljavax/mail/Quota;
    .restart local v1       #i:I
    .restart local v3       #len:I
    :cond_2
    aget-object v9, v6, v1

    instance-of v9, v9, Lcom/sun/mail/imap/protocol/IMAPResponse;

    if-nez v9, :cond_4

    .line 1677
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1681
    :cond_4
    aget-object v2, v6, v1

    check-cast v2, Lcom/sun/mail/imap/protocol/IMAPResponse;

    .line 1682
    .local v2, ir:Lcom/sun/mail/imap/protocol/IMAPResponse;
    const-string v9, "QUOTA"

    invoke-virtual {v2, v9}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1683
    invoke-direct {p0, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->parseQuota(Lcom/sun/mail/iap/Response;)Ljavax/mail/Quota;

    move-result-object v5

    .line 1684
    invoke-virtual {v8, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1685
    const/4 v9, 0x0

    aput-object v9, v6, v1

    goto :goto_1
.end method

.method public getQuotaRoot(Ljava/lang/String;)[Ljavax/mail/Quota;
    .locals 14
    .parameter "mbox"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x0

    .line 1598
    const-string v12, "QUOTA"

    invoke-virtual {p0, v12}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 1599
    new-instance v12, Lcom/sun/mail/iap/BadCommandException;

    const-string v13, "GETQUOTAROOT not supported"

    invoke-direct {v12, v13}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 1602
    :cond_0
    invoke-static {p1}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1604
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 1605
    .local v0, args:Lcom/sun/mail/iap/Argument;
    invoke-virtual {v0, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V

    .line 1607
    const-string v12, "GETQUOTAROOT"

    invoke-virtual {p0, v12, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v8

    .line 1609
    .local v8, r:[Lcom/sun/mail/iap/Response;
    array-length v12, v8

    add-int/lit8 v12, v12, -0x1

    aget-object v9, v8, v12

    .line 1611
    .local v9, response:Lcom/sun/mail/iap/Response;
    new-instance v11, Ljava/util/Hashtable;

    invoke-direct {v11}, Ljava/util/Hashtable;-><init>()V

    .line 1614
    .local v11, tab:Ljava/util/Hashtable;
    invoke-virtual {v9}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 1615
    const/4 v2, 0x0

    .local v2, i:I
    array-length v4, v8

    .local v4, len:I
    :goto_0
    if-lt v2, v4, :cond_2

    .line 1644
    .end local v2           #i:I
    .end local v4           #len:I
    :cond_1
    invoke-virtual {p0, v8}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 1645
    invoke-virtual {p0, v9}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 1647
    invoke-virtual {v11}, Ljava/util/Hashtable;->size()I

    move-result v12

    new-array v6, v12, [Ljavax/mail/Quota;

    .line 1648
    .local v6, qa:[Ljavax/mail/Quota;
    invoke-virtual {v11}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 1649
    .local v1, e:Ljava/util/Enumeration;
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v12

    if-nez v12, :cond_8

    .line 1651
    return-object v6

    .line 1616
    .end local v1           #e:Ljava/util/Enumeration;
    .end local v6           #qa:[Ljavax/mail/Quota;
    .restart local v4       #len:I
    :cond_2
    aget-object v12, v8, v2

    instance-of v12, v12, Lcom/sun/mail/imap/protocol/IMAPResponse;

    if-nez v12, :cond_4

    .line 1615
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1619
    :cond_4
    aget-object v3, v8, v2

    check-cast v3, Lcom/sun/mail/imap/protocol/IMAPResponse;

    .line 1620
    .local v3, ir:Lcom/sun/mail/imap/protocol/IMAPResponse;
    const-string v12, "QUOTAROOT"

    invoke-virtual {v3, v12}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 1625
    invoke-virtual {v3}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readAtomString()Ljava/lang/String;

    .line 1627
    const/4 v10, 0x0

    .line 1628
    .local v10, root:Ljava/lang/String;
    :goto_3
    invoke-virtual {v3}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readAtomString()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_5

    .line 1630
    aput-object v13, v8, v2

    goto :goto_2

    .line 1629
    :cond_5
    new-instance v12, Ljavax/mail/Quota;

    invoke-direct {v12, v10}, Ljavax/mail/Quota;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v10, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 1631
    .end local v10           #root:Ljava/lang/String;
    :cond_6
    const-string v12, "QUOTA"

    invoke-virtual {v3, v12}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 1632
    invoke-direct {p0, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->parseQuota(Lcom/sun/mail/iap/Response;)Ljavax/mail/Quota;

    move-result-object v7

    .line 1633
    .local v7, quota:Ljavax/mail/Quota;
    iget-object v12, v7, Ljavax/mail/Quota;->quotaRoot:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/mail/Quota;

    .line 1634
    .local v5, q:Ljavax/mail/Quota;
    if-eqz v5, :cond_7

    iget-object v12, v5, Ljavax/mail/Quota;->resources:[Ljavax/mail/Quota$Resource;

    .line 1637
    :cond_7
    iget-object v12, v7, Ljavax/mail/Quota;->quotaRoot:Ljava/lang/String;

    invoke-virtual {v11, v12, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1638
    aput-object v13, v8, v2

    goto :goto_2

    .line 1650
    .end local v3           #ir:Lcom/sun/mail/imap/protocol/IMAPResponse;
    .end local v4           #len:I
    .end local v5           #q:Ljavax/mail/Quota;
    .end local v7           #quota:Ljavax/mail/Quota;
    .restart local v1       #e:Ljava/util/Enumeration;
    .restart local v6       #qa:[Ljavax/mail/Quota;
    :cond_8
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljavax/mail/Quota;

    aput-object v12, v6, v2

    .line 1649
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method protected getResponseBuffer()Lcom/sun/mail/iap/ByteArray;
    .locals 2

    .prologue
    .line 1121
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->ba:Lcom/sun/mail/iap/ByteArray;

    .line 1122
    .local v0, ret:Lcom/sun/mail/iap/ByteArray;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->ba:Lcom/sun/mail/iap/ByteArray;

    .line 1123
    return-object v0
.end method

.method public hasCapability(Ljava/lang/String;)Z
    .locals 2
    .parameter "c"

    .prologue
    .line 270
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->capabilities:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public idleAbort()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 2096
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 2098
    .local v0, os:Ljava/io/OutputStream;
    :try_start_0
    sget-object v1, Lcom/sun/mail/imap/protocol/IMAPProtocol;->DONE:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 2099
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2103
    :goto_0
    return-void

    .line 2100
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public declared-synchronized idleStart()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 2011
    monitor-enter p0

    :try_start_0
    const-string v3, "IDLE"

    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2012
    new-instance v3, Lcom/sun/mail/iap/BadCommandException;

    const-string v4, "IDLE not supported"

    invoke-direct {v3, v4}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2011
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 2017
    :cond_0
    :try_start_1
    const-string v3, "IDLE"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->writeCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->idleTag:Ljava/lang/String;

    .line 2018
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->readResponse()Lcom/sun/mail/iap/Response;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/sun/mail/iap/LiteralException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 2026
    .local v2, r:Lcom/sun/mail/iap/Response;
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Lcom/sun/mail/iap/Response;->isContinuation()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2027
    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2028
    :cond_1
    monitor-exit p0

    return-void

    .line 2019
    .end local v2           #r:Lcom/sun/mail/iap/Response;
    :catch_0
    move-exception v1

    .line 2020
    .local v1, lex:Lcom/sun/mail/iap/LiteralException;
    :try_start_3
    invoke-virtual {v1}, Lcom/sun/mail/iap/LiteralException;->getResponse()Lcom/sun/mail/iap/Response;

    move-result-object v2

    .restart local v2       #r:Lcom/sun/mail/iap/Response;
    goto :goto_0

    .line 2021
    .end local v1           #lex:Lcom/sun/mail/iap/LiteralException;
    .end local v2           #r:Lcom/sun/mail/iap/Response;
    :catch_1
    move-exception v0

    .line 2023
    .local v0, ex:Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sun/mail/iap/Response;->byeResponse(Ljava/lang/Exception;)Lcom/sun/mail/iap/Response;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v2

    .restart local v2       #r:Lcom/sun/mail/iap/Response;
    goto :goto_0
.end method

.method public isAuthenticated()Z
    .locals 1

    .prologue
    .line 238
    iget-boolean v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->authenticated:Z

    return v0
.end method

.method public isREV1()Z
    .locals 1

    .prologue
    .line 245
    iget-boolean v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->rev1:Z

    return v0
.end method

.method public list(Ljava/lang/String;Ljava/lang/String;)[Lcom/sun/mail/imap/protocol/ListInfo;
    .locals 1
    .parameter "ref"
    .parameter "pattern"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 821
    const-string v0, "LIST"

    invoke-direct {p0, v0, p1, p2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->doList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Lcom/sun/mail/imap/protocol/ListInfo;

    move-result-object v0

    return-object v0
.end method

.method public listRights(Ljava/lang/String;Ljava/lang/String;)[Lcom/sun/mail/imap/Rights;
    .locals 11
    .parameter "mbox"
    .parameter "user"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 1899
    const-string v9, "ACL"

    invoke-virtual {p0, v9}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 1900
    new-instance v9, Lcom/sun/mail/iap/BadCommandException;

    const-string v10, "ACL not supported"

    invoke-direct {v9, v10}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1903
    :cond_0
    invoke-static {p1}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1905
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 1906
    .local v0, args:Lcom/sun/mail/iap/Argument;
    invoke-virtual {v0, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V

    .line 1907
    invoke-virtual {v0, p2}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V

    .line 1909
    const-string v9, "LISTRIGHTS"

    invoke-virtual {p0, v9, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v4

    .line 1910
    .local v4, r:[Lcom/sun/mail/iap/Response;
    array-length v9, v4

    add-int/lit8 v9, v9, -0x1

    aget-object v6, v4, v9

    .line 1913
    .local v6, response:Lcom/sun/mail/iap/Response;
    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    .line 1914
    .local v8, v:Ljava/util/Vector;
    invoke-virtual {v6}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1915
    const/4 v1, 0x0

    .local v1, i:I
    array-length v3, v4

    .local v3, len:I
    :goto_0
    if-lt v1, v3, :cond_2

    .line 1936
    .end local v1           #i:I
    .end local v3           #len:I
    :cond_1
    invoke-virtual {p0, v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 1937
    invoke-virtual {p0, v6}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 1938
    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v9

    new-array v5, v9, [Lcom/sun/mail/imap/Rights;

    .line 1939
    .local v5, ra:[Lcom/sun/mail/imap/Rights;
    invoke-virtual {v8, v5}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 1940
    return-object v5

    .line 1916
    .end local v5           #ra:[Lcom/sun/mail/imap/Rights;
    .restart local v1       #i:I
    .restart local v3       #len:I
    :cond_2
    aget-object v9, v4, v1

    instance-of v9, v9, Lcom/sun/mail/imap/protocol/IMAPResponse;

    if-nez v9, :cond_4

    .line 1915
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1919
    :cond_4
    aget-object v2, v4, v1

    check-cast v2, Lcom/sun/mail/imap/protocol/IMAPResponse;

    .line 1920
    .local v2, ir:Lcom/sun/mail/imap/protocol/IMAPResponse;
    const-string v9, "LISTRIGHTS"

    invoke-virtual {v2, v9}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1924
    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readAtomString()Ljava/lang/String;

    .line 1926
    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readAtomString()Ljava/lang/String;

    .line 1928
    :goto_2
    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readAtomString()Ljava/lang/String;

    move-result-object v7

    .local v7, rights:Ljava/lang/String;
    if-nez v7, :cond_5

    .line 1930
    const/4 v9, 0x0

    aput-object v9, v4, v1

    goto :goto_1

    .line 1929
    :cond_5
    new-instance v9, Lcom/sun/mail/imap/Rights;

    invoke-direct {v9, v7}, Lcom/sun/mail/imap/Rights;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public login(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "u"
    .parameter "p"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 326
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 327
    .local v0, args:Lcom/sun/mail/iap/Argument;
    invoke-virtual {v0, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V

    .line 328
    invoke-virtual {v0, p2}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V

    .line 330
    const-string v2, "LOGIN"

    invoke-virtual {p0, v2, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v1

    .line 333
    .local v1, r:[Lcom/sun/mail/iap/Response;
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 336
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v1, v2

    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 338
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v1, v2

    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->setCapabilities(Lcom/sun/mail/iap/Response;)V

    .line 340
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->authenticated:Z

    .line 341
    return-void
.end method

.method public logout()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 311
    const-string v1, "LOGOUT"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v0

    .line 313
    .local v0, r:[Lcom/sun/mail/iap/Response;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->authenticated:Z

    .line 316
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 317
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->disconnect()V

    .line 318
    return-void
.end method

.method public lsub(Ljava/lang/String;Ljava/lang/String;)[Lcom/sun/mail/imap/protocol/ListInfo;
    .locals 1
    .parameter "ref"
    .parameter "pattern"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 831
    const-string v0, "LSUB"

    invoke-direct {p0, v0, p1, p2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->doList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Lcom/sun/mail/imap/protocol/ListInfo;

    move-result-object v0

    return-object v0
.end method

.method public myRights(Ljava/lang/String;)Lcom/sun/mail/imap/Rights;
    .locals 10
    .parameter "mbox"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 1949
    const-string v8, "ACL"

    invoke-virtual {p0, v8}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1950
    new-instance v8, Lcom/sun/mail/iap/BadCommandException;

    const-string v9, "ACL not supported"

    invoke-direct {v8, v9}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1953
    :cond_0
    invoke-static {p1}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1955
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 1956
    .local v0, args:Lcom/sun/mail/iap/Argument;
    invoke-virtual {v0, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V

    .line 1958
    const-string v8, "MYRIGHTS"

    invoke-virtual {p0, v8, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v4

    .line 1959
    .local v4, r:[Lcom/sun/mail/iap/Response;
    array-length v8, v4

    add-int/lit8 v8, v8, -0x1

    aget-object v5, v4, v8

    .line 1962
    .local v5, response:Lcom/sun/mail/iap/Response;
    const/4 v6, 0x0

    .line 1963
    .local v6, rights:Lcom/sun/mail/imap/Rights;
    invoke-virtual {v5}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1964
    const/4 v1, 0x0

    .local v1, i:I
    array-length v3, v4

    .local v3, len:I
    :goto_0
    if-lt v1, v3, :cond_2

    .line 1982
    .end local v1           #i:I
    .end local v3           #len:I
    :cond_1
    invoke-virtual {p0, v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 1983
    invoke-virtual {p0, v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 1984
    return-object v6

    .line 1965
    .restart local v1       #i:I
    .restart local v3       #len:I
    :cond_2
    aget-object v8, v4, v1

    instance-of v8, v8, Lcom/sun/mail/imap/protocol/IMAPResponse;

    if-nez v8, :cond_4

    .line 1964
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1968
    :cond_4
    aget-object v2, v4, v1

    check-cast v2, Lcom/sun/mail/imap/protocol/IMAPResponse;

    .line 1969
    .local v2, ir:Lcom/sun/mail/imap/protocol/IMAPResponse;
    const-string v8, "MYRIGHTS"

    invoke-virtual {v2, v8}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1972
    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readAtomString()Ljava/lang/String;

    .line 1973
    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readAtomString()Ljava/lang/String;

    move-result-object v7

    .line 1974
    .local v7, rs:Ljava/lang/String;
    if-nez v6, :cond_5

    .line 1975
    new-instance v6, Lcom/sun/mail/imap/Rights;

    .end local v6           #rights:Lcom/sun/mail/imap/Rights;
    invoke-direct {v6, v7}, Lcom/sun/mail/imap/Rights;-><init>(Ljava/lang/String;)V

    .line 1976
    .restart local v6       #rights:Lcom/sun/mail/imap/Rights;
    :cond_5
    const/4 v8, 0x0

    aput-object v8, v4, v1

    goto :goto_1
.end method

.method public namespace()Lcom/sun/mail/imap/protocol/Namespaces;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 1559
    const-string v6, "NAMESPACE"

    invoke-virtual {p0, v6}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1560
    new-instance v6, Lcom/sun/mail/iap/BadCommandException;

    const-string v7, "NAMESPACE not supported"

    invoke-direct {v6, v7}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1562
    :cond_0
    const-string v6, "NAMESPACE"

    invoke-virtual {p0, v6, v7}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v4

    .line 1564
    .local v4, r:[Lcom/sun/mail/iap/Response;
    const/4 v3, 0x0

    .line 1565
    .local v3, namespace:Lcom/sun/mail/imap/protocol/Namespaces;
    array-length v6, v4

    add-int/lit8 v6, v6, -0x1

    aget-object v5, v4, v6

    .line 1568
    .local v5, response:Lcom/sun/mail/iap/Response;
    invoke-virtual {v5}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1569
    const/4 v0, 0x0

    .local v0, i:I
    array-length v2, v4

    .local v2, len:I
    :goto_0
    if-lt v0, v2, :cond_2

    .line 1583
    .end local v0           #i:I
    .end local v2           #len:I
    :cond_1
    invoke-virtual {p0, v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 1584
    invoke-virtual {p0, v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 1585
    return-object v3

    .line 1570
    .restart local v0       #i:I
    .restart local v2       #len:I
    :cond_2
    aget-object v6, v4, v0

    instance-of v6, v6, Lcom/sun/mail/imap/protocol/IMAPResponse;

    if-nez v6, :cond_4

    .line 1569
    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1573
    :cond_4
    aget-object v1, v4, v0

    check-cast v1, Lcom/sun/mail/imap/protocol/IMAPResponse;

    .line 1574
    .local v1, ir:Lcom/sun/mail/imap/protocol/IMAPResponse;
    const-string v6, "NAMESPACE"

    invoke-virtual {v1, v6}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1575
    if-nez v3, :cond_5

    .line 1576
    new-instance v3, Lcom/sun/mail/imap/protocol/Namespaces;

    .end local v3           #namespace:Lcom/sun/mail/imap/protocol/Namespaces;
    invoke-direct {v3, v1}, Lcom/sun/mail/imap/protocol/Namespaces;-><init>(Lcom/sun/mail/iap/Response;)V

    .line 1577
    .restart local v3       #namespace:Lcom/sun/mail/imap/protocol/Namespaces;
    :cond_5
    aput-object v7, v4, v0

    goto :goto_1
.end method

.method public noop()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 299
    iget-boolean v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->debug:Z

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->out:Ljava/io/PrintStream;

    const-string v1, "IMAP DEBUG: IMAPProtocol noop"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 301
    :cond_0
    const-string v0, "NOOP"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->simpleCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)V

    .line 302
    return-void
.end method

.method protected parseCapabilities(Lcom/sun/mail/iap/Response;)V
    .locals 7
    .parameter "r"

    .prologue
    const/16 v6, 0x5d

    const/4 v2, 0x0

    const/4 v5, 0x5

    .line 188
    :cond_0
    :goto_0
    invoke-virtual {p1, v6}, Lcom/sun/mail/iap/Response;->readAtom(C)Ljava/lang/String;

    move-result-object v0

    .local v0, s:Ljava/lang/String;
    if-nez v0, :cond_2

    .line 213
    :cond_1
    return-void

    .line 189
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 190
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->peekByte()B

    move-result v1

    if-eq v1, v6, :cond_1

    .line 203
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->skipToken()V

    goto :goto_0

    .line 205
    :cond_3
    iget-object v1, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->capabilities:Ljava/util/Map;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    const/4 v1, 0x1

    const-string v3, "AUTH="

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 207
    iget-object v1, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->authmechs:Ljava/util/List;

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    iget-boolean v1, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->debug:Z

    if-eqz v1, :cond_0

    .line 209
    iget-object v1, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "IMAP DEBUG: AUTH: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public peekBody(ILjava/lang/String;)Lcom/sun/mail/imap/protocol/BODY;
    .locals 1
    .parameter "msgno"
    .parameter "section"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 1025
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchBody(ILjava/lang/String;Z)Lcom/sun/mail/imap/protocol/BODY;

    move-result-object v0

    return-object v0
.end method

.method public peekBody(ILjava/lang/String;II)Lcom/sun/mail/imap/protocol/BODY;
    .locals 7
    .parameter "msgno"
    .parameter "section"
    .parameter "start"
    .parameter "size"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 1065
    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchBody(ILjava/lang/String;IIZLcom/sun/mail/iap/ByteArray;)Lcom/sun/mail/imap/protocol/BODY;

    move-result-object v0

    return-object v0
.end method

.method public peekBody(ILjava/lang/String;IILcom/sun/mail/iap/ByteArray;)Lcom/sun/mail/imap/protocol/BODY;
    .locals 7
    .parameter "msgno"
    .parameter "section"
    .parameter "start"
    .parameter "size"
    .parameter "ba"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 1081
    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchBody(ILjava/lang/String;IIZLcom/sun/mail/iap/ByteArray;)Lcom/sun/mail/imap/protocol/BODY;

    move-result-object v0

    return-object v0
.end method

.method protected processGreeting(Lcom/sun/mail/iap/Response;)V
    .locals 2
    .parameter "r"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 219
    invoke-super {p0, p1}, Lcom/sun/mail/iap/Protocol;->processGreeting(Lcom/sun/mail/iap/Response;)V

    .line 220
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 221
    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->setCapabilities(Lcom/sun/mail/iap/Response;)V

    .line 231
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 225
    check-cast v0, Lcom/sun/mail/imap/protocol/IMAPResponse;

    .line 226
    .local v0, ir:Lcom/sun/mail/imap/protocol/IMAPResponse;
    const-string v1, "PREAUTH"

    invoke-virtual {v0, v1}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 227
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->authenticated:Z

    .line 228
    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->setCapabilities(Lcom/sun/mail/iap/Response;)V

    goto :goto_0

    .line 230
    :cond_1
    new-instance v1, Lcom/sun/mail/iap/ConnectionException;

    invoke-direct {v1, p0, p1}, Lcom/sun/mail/iap/ConnectionException;-><init>(Lcom/sun/mail/iap/Protocol;Lcom/sun/mail/iap/Response;)V

    throw v1
.end method

.method public processIdleResponse(Lcom/sun/mail/iap/Response;)Z
    .locals 6
    .parameter "r"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2063
    new-array v1, v3, [Lcom/sun/mail/iap/Response;

    .line 2064
    .local v1, responses:[Lcom/sun/mail/iap/Response;
    aput-object p1, v1, v2

    .line 2065
    const/4 v0, 0x0

    .line 2066
    .local v0, done:Z
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 2068
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isBYE()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2069
    const/4 v0, 0x1

    .line 2072
    :cond_0
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isTagged()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->getTag()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->idleTag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2073
    const/4 v0, 0x1

    .line 2075
    :cond_1
    if-eqz v0, :cond_2

    .line 2076
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->idleTag:Ljava/lang/String;

    .line 2078
    :cond_2
    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 2079
    if-eqz v0, :cond_3

    :goto_0
    return v2

    :cond_3
    move v2, v3

    goto :goto_0
.end method

.method public proxyauth(Ljava/lang/String;)V
    .locals 2
    .parameter "u"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 597
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 598
    .local v0, args:Lcom/sun/mail/iap/Argument;
    invoke-virtual {v0, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V

    .line 600
    const-string v1, "PROXYAUTH"

    invoke-virtual {p0, v1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->simpleCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)V

    .line 601
    return-void
.end method

.method public declared-synchronized readIdleResponse()Lcom/sun/mail/iap/Response;
    .locals 4

    .prologue
    .line 2040
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->idleTag:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    .line 2041
    const/4 v2, 0x0

    .line 2052
    :goto_0
    monitor-exit p0

    return-object v2

    .line 2044
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->readResponse()Lcom/sun/mail/iap/Response;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .local v2, r:Lcom/sun/mail/iap/Response;
    goto :goto_0

    .line 2045
    .end local v2           #r:Lcom/sun/mail/iap/Response;
    :catch_0
    move-exception v0

    .line 2047
    .local v0, ioex:Ljava/io/IOException;
    :try_start_2
    invoke-static {v0}, Lcom/sun/mail/iap/Response;->byeResponse(Ljava/lang/Exception;)Lcom/sun/mail/iap/Response;

    move-result-object v2

    .restart local v2       #r:Lcom/sun/mail/iap/Response;
    goto :goto_0

    .line 2048
    .end local v0           #ioex:Ljava/io/IOException;
    .end local v2           #r:Lcom/sun/mail/iap/Response;
    :catch_1
    move-exception v1

    .line 2050
    .local v1, pex:Lcom/sun/mail/iap/ProtocolException;
    invoke-static {v1}, Lcom/sun/mail/iap/Response;->byeResponse(Ljava/lang/Exception;)Lcom/sun/mail/iap/Response;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    .restart local v2       #r:Lcom/sun/mail/iap/Response;
    goto :goto_0

    .line 2040
    .end local v1           #pex:Lcom/sun/mail/iap/ProtocolException;
    .end local v2           #r:Lcom/sun/mail/iap/Response;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public readResponse()Lcom/sun/mail/iap/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 261
    invoke-static {p0}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readResponse(Lcom/sun/mail/iap/Protocol;)Lcom/sun/mail/imap/protocol/IMAPResponse;

    move-result-object v0

    return-object v0
.end method

.method public rename(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "o"
    .parameter "n"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 776
    invoke-static {p1}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 777
    invoke-static {p2}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 779
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 780
    .local v0, args:Lcom/sun/mail/iap/Argument;
    invoke-virtual {v0, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V

    .line 781
    invoke-virtual {v0, p2}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V

    .line 783
    const-string v1, "RENAME"

    invoke-virtual {p0, v1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->simpleCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)V

    .line 784
    return-void
.end method

.method public sasllogin([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .parameter "allowed"
    .parameter "realm"
    .parameter "authzid"
    .parameter "u"
    .parameter "p"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 539
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->saslAuthenticator:Lcom/sun/mail/imap/protocol/SaslAuthenticator;

    if-nez v0, :cond_0

    .line 542
    :try_start_0
    const-string v0, "com.sun.mail.imap.protocol.IMAPSaslAuthenticator"

    .line 541
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    .line 543
    .local v9, sac:Ljava/lang/Class;
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v2, 0x0

    .line 544
    const-class v3, Lcom/sun/mail/imap/protocol/IMAPProtocol;

    aput-object v3, v0, v2

    const/4 v2, 0x1

    .line 545
    const-class v3, Ljava/lang/String;

    aput-object v3, v0, v2

    const/4 v2, 0x2

    .line 546
    const-class v3, Ljava/util/Properties;

    aput-object v3, v0, v2

    const/4 v2, 0x3

    .line 547
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v0, v2

    const/4 v2, 0x4

    .line 548
    const-class v3, Ljava/io/PrintStream;

    aput-object v3, v0, v2

    const/4 v2, 0x5

    .line 549
    const-class v3, Ljava/lang/String;

    aput-object v3, v0, v2

    .line 543
    invoke-virtual {v9, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    .line 552
    .local v6, c:Ljava/lang/reflect/Constructor;
    const/4 v0, 0x6

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 553
    aput-object p0, v2, v0

    const/4 v0, 0x1

    .line 554
    iget-object v3, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->name:Ljava/lang/String;

    aput-object v3, v2, v0

    const/4 v0, 0x2

    .line 555
    iget-object v3, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->props:Ljava/util/Properties;

    aput-object v3, v2, v0

    const/4 v3, 0x3

    .line 556
    iget-boolean v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->debug:Z

    if-eqz v0, :cond_2

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    aput-object v0, v2, v3

    const/4 v0, 0x4

    .line 557
    iget-object v3, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->out:Ljava/io/PrintStream;

    aput-object v3, v2, v0

    const/4 v0, 0x5

    .line 558
    iget-object v3, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->host:Ljava/lang/String;

    aput-object v3, v2, v0

    .line 551
    invoke-virtual {v6, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/mail/imap/protocol/SaslAuthenticator;

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->saslAuthenticator:Lcom/sun/mail/imap/protocol/SaslAuthenticator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 571
    .end local v6           #c:Ljava/lang/reflect/Constructor;
    .end local v9           #sac:Ljava/lang/Class;
    :cond_0
    if-eqz p1, :cond_5

    array-length v0, p1

    if-lez v0, :cond_5

    .line 573
    new-instance v10, Ljava/util/ArrayList;

    array-length v0, p1

    invoke-direct {v10, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 574
    .local v10, v:Ljava/util/List;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    array-length v0, p1

    if-lt v8, v0, :cond_3

    .line 581
    .end local v8           #i:I
    :goto_2
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v10, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 582
    .local v1, mechs:[Ljava/lang/String;
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->saslAuthenticator:Lcom/sun/mail/imap/protocol/SaslAuthenticator;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/sun/mail/imap/protocol/SaslAuthenticator;->authenticate([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 583
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->authenticated:Z

    .line 584
    .end local v1           #mechs:[Ljava/lang/String;
    .end local v10           #v:Ljava/util/List;
    :cond_1
    :goto_3
    return-void

    .line 556
    .restart local v6       #c:Ljava/lang/reflect/Constructor;
    .restart local v9       #sac:Ljava/lang/Class;
    :cond_2
    :try_start_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 560
    .end local v6           #c:Ljava/lang/reflect/Constructor;
    .end local v9           #sac:Ljava/lang/Class;
    :catch_0
    move-exception v7

    .line 561
    .local v7, ex:Ljava/lang/Exception;
    iget-boolean v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->debug:Z

    if-eqz v0, :cond_1

    .line 562
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "IMAP DEBUG: Can\'t load SASL authenticator: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 563
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 562
    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 575
    .end local v7           #ex:Ljava/lang/Exception;
    .restart local v8       #i:I
    .restart local v10       #v:Ljava/util/List;
    :cond_3
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->authmechs:Ljava/util/List;

    aget-object v2, p1, v8

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 576
    aget-object v0, p1, v8

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 574
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 579
    .end local v8           #i:I
    .end local v10           #v:Ljava/util/List;
    :cond_5
    iget-object v10, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->authmechs:Ljava/util/List;

    .restart local v10       #v:Ljava/util/List;
    goto :goto_2
.end method

.method public search(Ljavax/mail/search/SearchTerm;)[I
    .locals 1
    .parameter "term"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;,
            Ljavax/mail/search/SearchException;
        }
    .end annotation

    .prologue
    .line 1445
    const-string v0, "ALL"

    invoke-direct {p0, v0, p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->search(Ljava/lang/String;Ljavax/mail/search/SearchTerm;)[I

    move-result-object v0

    return-object v0
.end method

.method public search([Lcom/sun/mail/imap/protocol/MessageSet;Ljavax/mail/search/SearchTerm;)[I
    .locals 1
    .parameter "msgsets"
    .parameter "term"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;,
            Ljavax/mail/search/SearchException;
        }
    .end annotation

    .prologue
    .line 1432
    invoke-static {p1}, Lcom/sun/mail/imap/protocol/MessageSet;->toString([Lcom/sun/mail/imap/protocol/MessageSet;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->search(Ljava/lang/String;Ljavax/mail/search/SearchTerm;)[I

    move-result-object v0

    return-object v0
.end method

.method public select(Ljava/lang/String;)Lcom/sun/mail/imap/protocol/MailboxInfo;
    .locals 6
    .parameter "mbox"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 632
    invoke-static {p1}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 634
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 635
    .local v0, args:Lcom/sun/mail/iap/Argument;
    invoke-virtual {v0, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V

    .line 637
    const-string v4, "SELECT"

    invoke-virtual {p0, v4, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v2

    .line 641
    .local v2, r:[Lcom/sun/mail/iap/Response;
    new-instance v1, Lcom/sun/mail/imap/protocol/MailboxInfo;

    invoke-direct {v1, v2}, Lcom/sun/mail/imap/protocol/MailboxInfo;-><init>([Lcom/sun/mail/iap/Response;)V

    .line 644
    .local v1, minfo:Lcom/sun/mail/imap/protocol/MailboxInfo;
    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 646
    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v2, v4

    .line 648
    .local v3, response:Lcom/sun/mail/iap/Response;
    invoke-virtual {v3}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 649
    invoke-virtual {v3}, Lcom/sun/mail/iap/Response;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "READ-ONLY"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 650
    const/4 v4, 0x1

    iput v4, v1, Lcom/sun/mail/imap/protocol/MailboxInfo;->mode:I

    .line 655
    :cond_0
    :goto_0
    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 656
    return-object v1

    .line 652
    :cond_1
    const/4 v4, 0x2

    iput v4, v1, Lcom/sun/mail/imap/protocol/MailboxInfo;->mode:I

    goto :goto_0
.end method

.method public setACL(Ljava/lang/String;CLcom/sun/mail/imap/ACL;)V
    .locals 6
    .parameter "mbox"
    .parameter "modifier"
    .parameter "acl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 1794
    const-string v4, "ACL"

    invoke-virtual {p0, v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1795
    new-instance v4, Lcom/sun/mail/iap/BadCommandException;

    const-string v5, "ACL not supported"

    invoke-direct {v4, v5}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1798
    :cond_0
    invoke-static {p1}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1800
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 1801
    .local v0, args:Lcom/sun/mail/iap/Argument;
    invoke-virtual {v0, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V

    .line 1802
    invoke-virtual {p3}, Lcom/sun/mail/imap/ACL;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V

    .line 1803
    invoke-virtual {p3}, Lcom/sun/mail/imap/ACL;->getRights()Lcom/sun/mail/imap/Rights;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/mail/imap/Rights;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1804
    .local v3, rights:Ljava/lang/String;
    const/16 v4, 0x2b

    if-eq p2, v4, :cond_1

    const/16 v4, 0x2d

    if-ne p2, v4, :cond_2

    .line 1805
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1806
    :cond_2
    invoke-virtual {v0, v3}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V

    .line 1808
    const-string v4, "SETACL"

    invoke-virtual {p0, v4, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v1

    .line 1809
    .local v1, r:[Lcom/sun/mail/iap/Response;
    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    aget-object v2, v1, v4

    .line 1812
    .local v2, response:Lcom/sun/mail/iap/Response;
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 1813
    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 1814
    return-void
.end method

.method protected setCapabilities(Lcom/sun/mail/iap/Response;)V
    .locals 4
    .parameter "r"

    .prologue
    .line 169
    :cond_0
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readByte()B

    move-result v0

    .local v0, b:B
    if-lez v0, :cond_1

    const/16 v2, 0x5b

    if-ne v0, v2, :cond_0

    .line 171
    :cond_1
    if-nez v0, :cond_3

    .line 180
    :cond_2
    :goto_0
    return-void

    .line 174
    :cond_3
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readAtom()Ljava/lang/String;

    move-result-object v1

    .line 175
    .local v1, s:Ljava/lang/String;
    const-string v2, "CAPABILITY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 177
    new-instance v2, Ljava/util/HashMap;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->capabilities:Ljava/util/Map;

    .line 178
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/sun/mail/imap/protocol/IMAPProtocol;->authmechs:Ljava/util/List;

    .line 179
    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->parseCapabilities(Lcom/sun/mail/iap/Response;)V

    goto :goto_0
.end method

.method public setQuota(Ljavax/mail/Quota;)V
    .locals 7
    .parameter "quota"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 1706
    const-string v5, "QUOTA"

    invoke-virtual {p0, v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1707
    new-instance v5, Lcom/sun/mail/iap/BadCommandException;

    const-string v6, "QUOTA not supported"

    invoke-direct {v5, v6}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1709
    :cond_0
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 1710
    .local v0, args:Lcom/sun/mail/iap/Argument;
    iget-object v5, p1, Ljavax/mail/Quota;->quotaRoot:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V

    .line 1711
    new-instance v2, Lcom/sun/mail/iap/Argument;

    invoke-direct {v2}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 1712
    .local v2, qargs:Lcom/sun/mail/iap/Argument;
    iget-object v5, p1, Ljavax/mail/Quota;->resources:[Ljavax/mail/Quota$Resource;

    if-eqz v5, :cond_1

    .line 1713
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v5, p1, Ljavax/mail/Quota;->resources:[Ljavax/mail/Quota$Resource;

    array-length v5, v5

    if-lt v1, v5, :cond_2

    .line 1718
    .end local v1           #i:I
    :cond_1
    invoke-virtual {v0, v2}, Lcom/sun/mail/iap/Argument;->writeArgument(Lcom/sun/mail/iap/Argument;)V

    .line 1720
    const-string v5, "SETQUOTA"

    invoke-virtual {p0, v5, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v3

    .line 1721
    .local v3, r:[Lcom/sun/mail/iap/Response;
    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    aget-object v4, v3, v5

    .line 1748
    .local v4, response:Lcom/sun/mail/iap/Response;
    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 1749
    invoke-virtual {p0, v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 1755
    return-void

    .line 1714
    .end local v3           #r:[Lcom/sun/mail/iap/Response;
    .end local v4           #response:Lcom/sun/mail/iap/Response;
    .restart local v1       #i:I
    :cond_2
    iget-object v5, p1, Ljavax/mail/Quota;->resources:[Ljavax/mail/Quota$Resource;

    aget-object v5, v5, v1

    iget-object v5, v5, Ljavax/mail/Quota$Resource;->name:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    .line 1715
    iget-object v5, p1, Ljavax/mail/Quota;->resources:[Ljavax/mail/Quota$Resource;

    aget-object v5, v5, v1

    iget-wide v5, v5, Ljavax/mail/Quota$Resource;->limit:J

    invoke-virtual {v2, v5, v6}, Lcom/sun/mail/iap/Argument;->writeNumber(J)V

    .line 1713
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public startTLS()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 610
    :try_start_0
    const-string v3, "STARTTLS"

    invoke-super {p0, v3}, Lcom/sun/mail/iap/Protocol;->startTLS(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 623
    :goto_0
    return-void

    .line 611
    :catch_0
    move-exception v1

    .line 615
    .local v1, pex:Lcom/sun/mail/iap/ProtocolException;
    throw v1

    .line 616
    .end local v1           #pex:Lcom/sun/mail/iap/ProtocolException;
    :catch_1
    move-exception v0

    .line 619
    .local v0, ex:Ljava/lang/Exception;
    const/4 v3, 0x1

    new-array v2, v3, [Lcom/sun/mail/iap/Response;

    const/4 v3, 0x0

    invoke-static {v0}, Lcom/sun/mail/iap/Response;->byeResponse(Ljava/lang/Exception;)Lcom/sun/mail/iap/Response;

    move-result-object v4

    aput-object v4, v2, v3

    .line 620
    .local v2, r:[Lcom/sun/mail/iap/Response;
    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 621
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->disconnect()V

    goto :goto_0
.end method

.method public status(Ljava/lang/String;[Ljava/lang/String;)Lcom/sun/mail/imap/protocol/Status;
    .locals 10
    .parameter "mbox"
    .parameter "items"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 692
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isREV1()Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "IMAP4SUNVERSION"

    invoke-virtual {p0, v8}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 695
    new-instance v8, Lcom/sun/mail/iap/BadCommandException;

    const-string v9, "STATUS not supported"

    invoke-direct {v8, v9}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 698
    :cond_0
    invoke-static {p1}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 700
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 701
    .local v0, args:Lcom/sun/mail/iap/Argument;
    invoke-virtual {v0, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V

    .line 703
    new-instance v3, Lcom/sun/mail/iap/Argument;

    invoke-direct {v3}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 704
    .local v3, itemArgs:Lcom/sun/mail/iap/Argument;
    if-nez p2, :cond_1

    .line 705
    sget-object p2, Lcom/sun/mail/imap/protocol/Status;->standardItems:[Ljava/lang/String;

    .line 707
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    array-length v4, p2

    .local v4, len:I
    :goto_0
    if-lt v1, v4, :cond_3

    .line 709
    invoke-virtual {v0, v3}, Lcom/sun/mail/iap/Argument;->writeArgument(Lcom/sun/mail/iap/Argument;)V

    .line 711
    const-string v8, "STATUS"

    invoke-virtual {p0, v8, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->command(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)[Lcom/sun/mail/iap/Response;

    move-result-object v5

    .line 713
    .local v5, r:[Lcom/sun/mail/iap/Response;
    const/4 v7, 0x0

    .line 714
    .local v7, status:Lcom/sun/mail/imap/protocol/Status;
    array-length v8, v5

    add-int/lit8 v8, v8, -0x1

    aget-object v6, v5, v8

    .line 717
    .local v6, response:Lcom/sun/mail/iap/Response;
    invoke-virtual {v6}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 718
    const/4 v1, 0x0

    array-length v4, v5

    :goto_1
    if-lt v1, v4, :cond_4

    .line 734
    :cond_2
    invoke-virtual {p0, v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->notifyResponseHandlers([Lcom/sun/mail/iap/Response;)V

    .line 735
    invoke-virtual {p0, v6}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->handleResult(Lcom/sun/mail/iap/Response;)V

    .line 736
    return-object v7

    .line 708
    .end local v5           #r:[Lcom/sun/mail/iap/Response;
    .end local v6           #response:Lcom/sun/mail/iap/Response;
    .end local v7           #status:Lcom/sun/mail/imap/protocol/Status;
    :cond_3
    aget-object v8, p2, v1

    invoke-virtual {v3, v8}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)V

    .line 707
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 719
    .restart local v5       #r:[Lcom/sun/mail/iap/Response;
    .restart local v6       #response:Lcom/sun/mail/iap/Response;
    .restart local v7       #status:Lcom/sun/mail/imap/protocol/Status;
    :cond_4
    aget-object v8, v5, v1

    instance-of v8, v8, Lcom/sun/mail/imap/protocol/IMAPResponse;

    if-nez v8, :cond_6

    .line 718
    :cond_5
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 722
    :cond_6
    aget-object v2, v5, v1

    check-cast v2, Lcom/sun/mail/imap/protocol/IMAPResponse;

    .line 723
    .local v2, ir:Lcom/sun/mail/imap/protocol/IMAPResponse;
    const-string v8, "STATUS"

    invoke-virtual {v2, v8}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 724
    if-nez v7, :cond_7

    .line 725
    new-instance v7, Lcom/sun/mail/imap/protocol/Status;

    .end local v7           #status:Lcom/sun/mail/imap/protocol/Status;
    invoke-direct {v7, v2}, Lcom/sun/mail/imap/protocol/Status;-><init>(Lcom/sun/mail/iap/Response;)V

    .line 728
    .restart local v7       #status:Lcom/sun/mail/imap/protocol/Status;
    :goto_3
    const/4 v8, 0x0

    aput-object v8, v5, v1

    goto :goto_2

    .line 727
    :cond_7
    new-instance v8, Lcom/sun/mail/imap/protocol/Status;

    invoke-direct {v8, v2}, Lcom/sun/mail/imap/protocol/Status;-><init>(Lcom/sun/mail/iap/Response;)V

    invoke-static {v7, v8}, Lcom/sun/mail/imap/protocol/Status;->add(Lcom/sun/mail/imap/protocol/Status;Lcom/sun/mail/imap/protocol/Status;)V

    goto :goto_3
.end method

.method public storeFlags(IILjavax/mail/Flags;Z)V
    .locals 2
    .parameter "start"
    .parameter "end"
    .parameter "flags"
    .parameter "set"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 1348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3, p4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->storeFlags(Ljava/lang/String;Ljavax/mail/Flags;Z)V

    .line 1350
    return-void
.end method

.method public storeFlags(ILjavax/mail/Flags;Z)V
    .locals 1
    .parameter "msg"
    .parameter "flags"
    .parameter "set"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 1357
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->storeFlags(Ljava/lang/String;Ljavax/mail/Flags;Z)V

    .line 1358
    return-void
.end method

.method public storeFlags([Lcom/sun/mail/imap/protocol/MessageSet;Ljavax/mail/Flags;Z)V
    .locals 1
    .parameter "msgsets"
    .parameter "flags"
    .parameter "set"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 1343
    invoke-static {p1}, Lcom/sun/mail/imap/protocol/MessageSet;->toString([Lcom/sun/mail/imap/protocol/MessageSet;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->storeFlags(Ljava/lang/String;Ljavax/mail/Flags;Z)V

    .line 1344
    return-void
.end method

.method public subscribe(Ljava/lang/String;)V
    .locals 2
    .parameter "mbox"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 792
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 794
    .local v0, args:Lcom/sun/mail/iap/Argument;
    invoke-static {p1}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 795
    invoke-virtual {v0, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V

    .line 797
    const-string v1, "SUBSCRIBE"

    invoke-virtual {p0, v1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->simpleCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)V

    .line 798
    return-void
.end method

.method protected supportsNonSyncLiterals()Z
    .locals 1

    .prologue
    .line 252
    const-string v0, "LITERAL+"

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public uidexpunge([Lcom/sun/mail/imap/protocol/UIDSet;)V
    .locals 2
    .parameter "set"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 994
    const-string v0, "UIDPLUS"

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 995
    new-instance v0, Lcom/sun/mail/iap/BadCommandException;

    const-string v1, "UID EXPUNGE not supported"

    invoke-direct {v0, v1}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 996
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UID EXPUNGE "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/sun/mail/imap/protocol/UIDSet;->toString([Lcom/sun/mail/imap/protocol/UIDSet;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->simpleCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)V

    .line 997
    return-void
.end method

.method public unsubscribe(Ljava/lang/String;)V
    .locals 2
    .parameter "mbox"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    .line 806
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 808
    .local v0, args:Lcom/sun/mail/iap/Argument;
    invoke-static {p1}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 809
    invoke-virtual {v0, p1}, Lcom/sun/mail/iap/Argument;->writeString(Ljava/lang/String;)V

    .line 811
    const-string v1, "UNSUBSCRIBE"

    invoke-virtual {p0, v1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->simpleCommand(Ljava/lang/String;Lcom/sun/mail/iap/Argument;)V

    .line 812
    return-void
.end method
