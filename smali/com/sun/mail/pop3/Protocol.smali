.class Lcom/sun/mail/pop3/Protocol;
.super Ljava/lang/Object;
.source "Protocol.java"


# static fields
.field private static final CRLF:Ljava/lang/String; = "\r\n"

.field private static final POP3_PORT:I = 0x6e

.field private static digits:[C


# instance fields
.field private apopChallenge:Ljava/lang/String;

.field private debug:Z

.field private input:Ljava/io/DataInputStream;

.field private out:Ljava/io/PrintStream;

.field private output:Ljava/io/PrintWriter;

.field private socket:Ljava/net/Socket;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 186
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sun/mail/pop3/Protocol;->digits:[C

    .line 66
    return-void

    .line 186
    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
    .end array-data
.end method

.method constructor <init>(Ljava/lang/String;IZLjava/io/PrintStream;Ljava/util/Properties;Ljava/lang/String;Z)V
    .locals 16
    .parameter "host"
    .parameter "port"
    .parameter "debug"
    .parameter "out"
    .parameter "props"
    .parameter "prefix"
    .parameter "isSSL"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/sun/mail/pop3/Protocol;->debug:Z

    .line 74
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/sun/mail/pop3/Protocol;->apopChallenge:Ljava/lang/String;

    .line 82
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sun/mail/pop3/Protocol;->debug:Z

    .line 83
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sun/mail/pop3/Protocol;->out:Ljava/io/PrintStream;

    .line 85
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static/range {p6 .. p6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, ".apop.enable"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p5

    invoke-virtual {v0, v11}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 86
    .local v5, apop:Ljava/lang/String;
    if-eqz v5, :cond_2

    const-string v11, "true"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    const/4 v8, 0x1

    .line 88
    .local v8, enableAPOP:Z
    :goto_0
    const/4 v11, -0x1

    move/from16 v0, p2

    if-ne v0, v11, :cond_0

    .line 89
    const/16 p2, 0x6e

    .line 90
    :cond_0
    if-eqz p3, :cond_1

    .line 91
    :try_start_0
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "DEBUG POP3: connecting to host \""

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 92
    const-string v12, "\", port "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", isSSL "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p7

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 91
    move-object/from16 v0, p4

    invoke-virtual {v0, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 94
    :cond_1
    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move/from16 v4, p7

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sun/mail/util/SocketFetcher;->getSocket(Ljava/lang/String;ILjava/util/Properties;Ljava/lang/String;Z)Ljava/net/Socket;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    .line 96
    new-instance v11, Ljava/io/DataInputStream;

    .line 97
    new-instance v12, Ljava/io/BufferedInputStream;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    invoke-virtual {v13}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v11, v12}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 96
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/sun/mail/pop3/Protocol;->input:Ljava/io/DataInputStream;

    .line 98
    new-instance v11, Ljava/io/PrintWriter;

    .line 99
    new-instance v12, Ljava/io/BufferedWriter;

    .line 100
    new-instance v13, Ljava/io/OutputStreamWriter;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    invoke-virtual {v14}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v14

    .line 101
    const-string v15, "iso-8859-1"

    .line 100
    invoke-direct {v13, v14, v15}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 99
    invoke-direct {v12, v13}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-direct {v11, v12}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 98
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/sun/mail/pop3/Protocol;->output:Ljava/io/PrintWriter;

    .line 104
    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/sun/mail/pop3/Protocol;->simpleCommand(Ljava/lang/String;)Lcom/sun/mail/pop3/Response;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 113
    .local v10, r:Lcom/sun/mail/pop3/Response;
    iget-boolean v11, v10, Lcom/sun/mail/pop3/Response;->ok:Z

    if-nez v11, :cond_3

    .line 115
    :try_start_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    invoke-virtual {v11}, Ljava/net/Socket;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    :goto_1
    new-instance v11, Ljava/io/IOException;

    const-string v12, "Connect failed"

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 86
    .end local v8           #enableAPOP:Z
    .end local v10           #r:Lcom/sun/mail/pop3/Response;
    :cond_2
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 105
    .restart local v8       #enableAPOP:Z
    :catch_0
    move-exception v9

    .line 107
    .local v9, ioe:Ljava/io/IOException;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    invoke-virtual {v11}, Ljava/net/Socket;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 109
    :goto_2
    throw v9

    .line 120
    .end local v9           #ioe:Ljava/io/IOException;
    .restart local v10       #r:Lcom/sun/mail/pop3/Response;
    :cond_3
    if-eqz v8, :cond_5

    .line 121
    iget-object v11, v10, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;

    const/16 v12, 0x3c

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 122
    .local v7, challStart:I
    iget-object v11, v10, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;

    const/16 v12, 0x3e

    invoke-virtual {v11, v12, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    .line 123
    .local v6, challEnd:I
    const/4 v11, -0x1

    if-eq v7, v11, :cond_4

    const/4 v11, -0x1

    if-eq v6, v11, :cond_4

    .line 124
    iget-object v11, v10, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;

    add-int/lit8 v12, v6, 0x1

    invoke-virtual {v11, v7, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/sun/mail/pop3/Protocol;->apopChallenge:Ljava/lang/String;

    .line 125
    :cond_4
    if-eqz p3, :cond_5

    .line 126
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "DEBUG POP3: APOP challenge: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sun/mail/pop3/Protocol;->apopChallenge:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p4

    invoke-virtual {v0, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 128
    .end local v6           #challEnd:I
    .end local v7           #challStart:I
    :cond_5
    return-void

    :catchall_0
    move-exception v11

    goto :goto_1

    .end local v10           #r:Lcom/sun/mail/pop3/Response;
    .restart local v9       #ioe:Ljava/io/IOException;
    :catchall_1
    move-exception v11

    goto :goto_2
.end method

.method private getDigest(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "password"

    .prologue
    const/4 v5, 0x0

    .line 173
    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/sun/mail/pop3/Protocol;->apopChallenge:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 176
    .local v1, key:Ljava/lang/String;
    :try_start_0
    const-string v6, "MD5"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 177
    .local v2, md:Ljava/security/MessageDigest;
    const-string v6, "iso-8859-1"

    invoke-virtual {v1, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 183
    .local v0, digest:[B
    invoke-static {v0}, Lcom/sun/mail/pop3/Protocol;->toHex([B)Ljava/lang/String;

    move-result-object v5

    .end local v0           #digest:[B
    .end local v2           #md:Ljava/security/MessageDigest;
    :goto_0
    return-object v5

    .line 178
    :catch_0
    move-exception v3

    .line 179
    .local v3, nsae:Ljava/security/NoSuchAlgorithmException;
    goto :goto_0

    .line 180
    .end local v3           #nsae:Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v4

    .line 181
    .local v4, uee:Ljava/io/UnsupportedEncodingException;
    goto :goto_0
.end method

.method private multilineCommand(Ljava/lang/String;I)Lcom/sun/mail/pop3/Response;
    .locals 6
    .parameter "cmd"
    .parameter "size"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 386
    invoke-direct {p0, p1}, Lcom/sun/mail/pop3/Protocol;->simpleCommand(Ljava/lang/String;)Lcom/sun/mail/pop3/Response;

    move-result-object v3

    .line 387
    .local v3, r:Lcom/sun/mail/pop3/Response;
    iget-boolean v4, v3, Lcom/sun/mail/pop3/Response;->ok:Z

    if-nez v4, :cond_0

    .line 415
    :goto_0
    return-object v3

    .line 390
    :cond_0
    new-instance v1, Lcom/sun/mail/pop3/SharedByteArrayOutputStream;

    invoke-direct {v1, p2}, Lcom/sun/mail/pop3/SharedByteArrayOutputStream;-><init>(I)V

    .line 391
    .local v1, buf:Lcom/sun/mail/pop3/SharedByteArrayOutputStream;
    const/16 v2, 0xa

    .line 392
    .local v2, lastb:I
    :goto_1
    iget-object v4, p0, Lcom/sun/mail/pop3/Protocol;->input:Ljava/io/DataInputStream;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->read()I

    move-result v0

    .local v0, b:I
    if-gez v0, :cond_2

    .line 412
    :cond_1
    :goto_2
    if-gez v0, :cond_7

    .line 413
    new-instance v4, Ljava/io/EOFException;

    const-string v5, "EOF on socket"

    invoke-direct {v4, v5}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 393
    :cond_2
    const/16 v4, 0xa

    if-ne v2, v4, :cond_5

    const/16 v4, 0x2e

    if-ne v0, v4, :cond_5

    .line 394
    iget-boolean v4, p0, Lcom/sun/mail/pop3/Protocol;->debug:Z

    if-eqz v4, :cond_3

    .line 395
    iget-object v4, p0, Lcom/sun/mail/pop3/Protocol;->out:Ljava/io/PrintStream;

    invoke-virtual {v4, v0}, Ljava/io/PrintStream;->write(I)V

    .line 396
    :cond_3
    iget-object v4, p0, Lcom/sun/mail/pop3/Protocol;->input:Ljava/io/DataInputStream;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->read()I

    move-result v0

    .line 397
    const/16 v4, 0xd

    if-ne v0, v4, :cond_5

    .line 398
    iget-boolean v4, p0, Lcom/sun/mail/pop3/Protocol;->debug:Z

    if-eqz v4, :cond_4

    .line 399
    iget-object v4, p0, Lcom/sun/mail/pop3/Protocol;->out:Ljava/io/PrintStream;

    invoke-virtual {v4, v0}, Ljava/io/PrintStream;->write(I)V

    .line 401
    :cond_4
    iget-object v4, p0, Lcom/sun/mail/pop3/Protocol;->input:Ljava/io/DataInputStream;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->read()I

    move-result v0

    .line 402
    iget-boolean v4, p0, Lcom/sun/mail/pop3/Protocol;->debug:Z

    if-eqz v4, :cond_1

    .line 403
    iget-object v4, p0, Lcom/sun/mail/pop3/Protocol;->out:Ljava/io/PrintStream;

    invoke-virtual {v4, v0}, Ljava/io/PrintStream;->write(I)V

    goto :goto_2

    .line 407
    :cond_5
    invoke-virtual {v1, v0}, Lcom/sun/mail/pop3/SharedByteArrayOutputStream;->write(I)V

    .line 408
    iget-boolean v4, p0, Lcom/sun/mail/pop3/Protocol;->debug:Z

    if-eqz v4, :cond_6

    .line 409
    iget-object v4, p0, Lcom/sun/mail/pop3/Protocol;->out:Ljava/io/PrintStream;

    invoke-virtual {v4, v0}, Ljava/io/PrintStream;->write(I)V

    .line 410
    :cond_6
    move v2, v0

    goto :goto_1

    .line 414
    :cond_7
    invoke-virtual {v1}, Lcom/sun/mail/pop3/SharedByteArrayOutputStream;->toStream()Ljava/io/InputStream;

    move-result-object v4

    iput-object v4, v3, Lcom/sun/mail/pop3/Response;->bytes:Ljava/io/InputStream;

    goto :goto_0
.end method

.method private simpleCommand(Ljava/lang/String;)Lcom/sun/mail/pop3/Response;
    .locals 6
    .parameter "cmd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 351
    iget-object v3, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    if-nez v3, :cond_0

    .line 352
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Folder is closed"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 353
    :cond_0
    if-eqz p1, :cond_2

    .line 354
    iget-boolean v3, p0, Lcom/sun/mail/pop3/Protocol;->debug:Z

    if-eqz v3, :cond_1

    .line 355
    iget-object v3, p0, Lcom/sun/mail/pop3/Protocol;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "C: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 356
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 357
    iget-object v3, p0, Lcom/sun/mail/pop3/Protocol;->output:Ljava/io/PrintWriter;

    invoke-virtual {v3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 358
    iget-object v3, p0, Lcom/sun/mail/pop3/Protocol;->output:Ljava/io/PrintWriter;

    invoke-virtual {v3}, Ljava/io/PrintWriter;->flush()V

    .line 360
    :cond_2
    iget-object v3, p0, Lcom/sun/mail/pop3/Protocol;->input:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 361
    .local v1, line:Ljava/lang/String;
    if-nez v1, :cond_4

    .line 362
    iget-boolean v3, p0, Lcom/sun/mail/pop3/Protocol;->debug:Z

    if-eqz v3, :cond_3

    .line 363
    iget-object v3, p0, Lcom/sun/mail/pop3/Protocol;->out:Ljava/io/PrintStream;

    const-string v4, "S: EOF"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 364
    :cond_3
    new-instance v3, Ljava/io/EOFException;

    const-string v4, "EOF on socket"

    invoke-direct {v3, v4}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 366
    :cond_4
    iget-boolean v3, p0, Lcom/sun/mail/pop3/Protocol;->debug:Z

    if-eqz v3, :cond_5

    .line 367
    iget-object v3, p0, Lcom/sun/mail/pop3/Protocol;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "S: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 368
    :cond_5
    new-instance v2, Lcom/sun/mail/pop3/Response;

    invoke-direct {v2}, Lcom/sun/mail/pop3/Response;-><init>()V

    .line 369
    .local v2, r:Lcom/sun/mail/pop3/Response;
    const-string v3, "+OK"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 370
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sun/mail/pop3/Response;->ok:Z

    .line 376
    :goto_0
    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .local v0, i:I
    if-ltz v0, :cond_6

    .line 377
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;

    .line 378
    :cond_6
    return-object v2

    .line 371
    .end local v0           #i:I
    :cond_7
    const-string v3, "-ERR"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 372
    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sun/mail/pop3/Response;->ok:Z

    goto :goto_0

    .line 374
    :cond_8
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unexpected response: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static toHex([B)Ljava/lang/String;
    .locals 7
    .parameter "bytes"

    .prologue
    .line 195
    array-length v5, p0

    mul-int/lit8 v5, v5, 0x2

    new-array v3, v5, [C

    .line 197
    .local v3, result:[C
    const/4 v2, 0x0

    .local v2, index:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v5, p0

    if-lt v2, v5, :cond_0

    .line 202
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3}, Ljava/lang/String;-><init>([C)V

    return-object v5

    .line 198
    :cond_0
    aget-byte v5, p0, v2

    and-int/lit16 v4, v5, 0xff

    .line 199
    .local v4, temp:I
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .local v1, i:I
    sget-object v5, Lcom/sun/mail/pop3/Protocol;->digits:[C

    shr-int/lit8 v6, v4, 0x4

    aget-char v5, v5, v6

    aput-char v5, v3, v0

    .line 200
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    sget-object v5, Lcom/sun/mail/pop3/Protocol;->digits:[C

    and-int/lit8 v6, v4, 0xf

    aget-char v5, v5, v6

    aput-char v5, v3, v1

    .line 197
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method declared-synchronized dele(I)Z
    .locals 3
    .parameter "msg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 292
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DELE "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sun/mail/pop3/Protocol;->simpleCommand(Ljava/lang/String;)Lcom/sun/mail/pop3/Response;

    move-result-object v0

    .line 293
    .local v0, r:Lcom/sun/mail/pop3/Response;
    iget-boolean v1, v0, Lcom/sun/mail/pop3/Response;->ok:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    .line 292
    .end local v0           #r:Lcom/sun/mail/pop3/Response;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 131
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 132
    iget-object v0, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {p0}, Lcom/sun/mail/pop3/Protocol;->quit()Z

    .line 135
    :cond_0
    return-void
.end method

.method declared-synchronized list(I)I
    .locals 5
    .parameter "msg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 248
    monitor-enter p0

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "LIST "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sun/mail/pop3/Protocol;->simpleCommand(Ljava/lang/String;)Lcom/sun/mail/pop3/Response;

    move-result-object v0

    .line 249
    .local v0, r:Lcom/sun/mail/pop3/Response;
    const/4 v1, -0x1

    .line 250
    .local v1, size:I
    iget-boolean v3, v0, Lcom/sun/mail/pop3/Response;->ok:Z

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 252
    :try_start_1
    new-instance v2, Ljava/util/StringTokenizer;

    iget-object v3, v0, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 253
    .local v2, st:Ljava/util/StringTokenizer;
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 254
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    .line 258
    .end local v2           #st:Ljava/util/StringTokenizer;
    :cond_0
    :goto_0
    monitor-exit p0

    return v1

    .line 248
    .end local v0           #r:Lcom/sun/mail/pop3/Response;
    .end local v1           #size:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 255
    .restart local v0       #r:Lcom/sun/mail/pop3/Response;
    .restart local v1       #size:I
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method declared-synchronized list()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 265
    monitor-enter p0

    :try_start_0
    const-string v1, "LIST"

    const/16 v2, 0x80

    invoke-direct {p0, v1, v2}, Lcom/sun/mail/pop3/Protocol;->multilineCommand(Ljava/lang/String;I)Lcom/sun/mail/pop3/Response;

    move-result-object v0

    .line 266
    .local v0, r:Lcom/sun/mail/pop3/Response;
    iget-object v1, v0, Lcom/sun/mail/pop3/Response;->bytes:Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 265
    .end local v0           #r:Lcom/sun/mail/pop3/Response;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized login(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "user"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 143
    monitor-enter p0

    const/4 v0, 0x0

    .line 144
    .local v0, dpw:Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/sun/mail/pop3/Protocol;->apopChallenge:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 145
    invoke-direct {p0, p2}, Lcom/sun/mail/pop3/Protocol;->getDigest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 146
    :cond_0
    iget-object v2, p0, Lcom/sun/mail/pop3/Protocol;->apopChallenge:Ljava/lang/String;

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    .line 147
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "APOP "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sun/mail/pop3/Protocol;->simpleCommand(Ljava/lang/String;)Lcom/sun/mail/pop3/Response;

    move-result-object v1

    .line 154
    .local v1, r:Lcom/sun/mail/pop3/Response;
    :goto_0
    iget-boolean v2, v1, Lcom/sun/mail/pop3/Response;->ok:Z

    if-nez v2, :cond_5

    .line 155
    iget-object v2, v1, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, v1, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    :goto_1
    monitor-exit p0

    return-object v2

    .line 149
    .end local v1           #r:Lcom/sun/mail/pop3/Response;
    :cond_1
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "USER "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sun/mail/pop3/Protocol;->simpleCommand(Ljava/lang/String;)Lcom/sun/mail/pop3/Response;

    move-result-object v1

    .line 150
    .restart local v1       #r:Lcom/sun/mail/pop3/Response;
    iget-boolean v2, v1, Lcom/sun/mail/pop3/Response;->ok:Z

    if-nez v2, :cond_3

    .line 151
    iget-object v2, v1, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string v2, "USER command failed"

    goto :goto_1

    .line 152
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "PASS "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sun/mail/pop3/Protocol;->simpleCommand(Ljava/lang/String;)Lcom/sun/mail/pop3/Response;

    move-result-object v1

    goto :goto_0

    .line 155
    :cond_4
    const-string v2, "login failed"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 156
    :cond_5
    const/4 v2, 0x0

    goto :goto_1

    .line 143
    .end local v1           #r:Lcom/sun/mail/pop3/Response;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized noop()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 335
    monitor-enter p0

    :try_start_0
    const-string v1, "NOOP"

    invoke-direct {p0, v1}, Lcom/sun/mail/pop3/Protocol;->simpleCommand(Ljava/lang/String;)Lcom/sun/mail/pop3/Response;

    move-result-object v0

    .line 336
    .local v0, r:Lcom/sun/mail/pop3/Response;
    iget-boolean v1, v0, Lcom/sun/mail/pop3/Response;->ok:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    .line 335
    .end local v0           #r:Lcom/sun/mail/pop3/Response;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized quit()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 210
    monitor-enter p0

    const/4 v0, 0x0

    .line 212
    .local v0, ok:Z
    :try_start_0
    const-string v2, "QUIT"

    invoke-direct {p0, v2}, Lcom/sun/mail/pop3/Protocol;->simpleCommand(Ljava/lang/String;)Lcom/sun/mail/pop3/Response;

    move-result-object v1

    .line 213
    .local v1, r:Lcom/sun/mail/pop3/Response;
    iget-boolean v0, v1, Lcom/sun/mail/pop3/Response;->ok:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    :try_start_1
    iget-object v2, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 218
    const/4 v2, 0x0

    :try_start_2
    iput-object v2, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    .line 219
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sun/mail/pop3/Protocol;->input:Ljava/io/DataInputStream;

    .line 220
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sun/mail/pop3/Protocol;->output:Ljava/io/PrintWriter;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 223
    monitor-exit p0

    return v0

    .line 214
    .end local v1           #r:Lcom/sun/mail/pop3/Response;
    :catchall_0
    move-exception v2

    .line 216
    :try_start_3
    iget-object v3, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 218
    const/4 v3, 0x0

    :try_start_4
    iput-object v3, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    .line 219
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sun/mail/pop3/Protocol;->input:Ljava/io/DataInputStream;

    .line 220
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sun/mail/pop3/Protocol;->output:Ljava/io/PrintWriter;

    .line 222
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 210
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2

    .line 217
    :catchall_2
    move-exception v2

    .line 218
    const/4 v3, 0x0

    :try_start_5
    iput-object v3, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    .line 219
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sun/mail/pop3/Protocol;->input:Ljava/io/DataInputStream;

    .line 220
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sun/mail/pop3/Protocol;->output:Ljava/io/PrintWriter;

    .line 221
    throw v2

    .line 217
    .restart local v1       #r:Lcom/sun/mail/pop3/Response;
    :catchall_3
    move-exception v2

    .line 218
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    .line 219
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sun/mail/pop3/Protocol;->input:Ljava/io/DataInputStream;

    .line 220
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sun/mail/pop3/Protocol;->output:Ljava/io/PrintWriter;

    .line 221
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
.end method

.method declared-synchronized retr(II)Ljava/io/InputStream;
    .locals 3
    .parameter "msg"
    .parameter "size"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 276
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RETR "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/sun/mail/pop3/Protocol;->multilineCommand(Ljava/lang/String;I)Lcom/sun/mail/pop3/Response;

    move-result-object v0

    .line 277
    .local v0, r:Lcom/sun/mail/pop3/Response;
    iget-object v1, v0, Lcom/sun/mail/pop3/Response;->bytes:Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 276
    .end local v0           #r:Lcom/sun/mail/pop3/Response;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized rset()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 343
    monitor-enter p0

    :try_start_0
    const-string v1, "RSET"

    invoke-direct {p0, v1}, Lcom/sun/mail/pop3/Protocol;->simpleCommand(Ljava/lang/String;)Lcom/sun/mail/pop3/Response;

    move-result-object v0

    .line 344
    .local v0, r:Lcom/sun/mail/pop3/Response;
    iget-boolean v1, v0, Lcom/sun/mail/pop3/Response;->ok:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    .line 343
    .end local v0           #r:Lcom/sun/mail/pop3/Response;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized stat()Lcom/sun/mail/pop3/Status;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 231
    monitor-enter p0

    :try_start_0
    const-string v3, "STAT"

    invoke-direct {p0, v3}, Lcom/sun/mail/pop3/Protocol;->simpleCommand(Ljava/lang/String;)Lcom/sun/mail/pop3/Response;

    move-result-object v0

    .line 232
    .local v0, r:Lcom/sun/mail/pop3/Response;
    new-instance v1, Lcom/sun/mail/pop3/Status;

    invoke-direct {v1}, Lcom/sun/mail/pop3/Status;-><init>()V

    .line 233
    .local v1, s:Lcom/sun/mail/pop3/Status;
    iget-boolean v3, v0, Lcom/sun/mail/pop3/Response;->ok:Z

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 235
    :try_start_1
    new-instance v2, Ljava/util/StringTokenizer;

    iget-object v3, v0, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 236
    .local v2, st:Ljava/util/StringTokenizer;
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/sun/mail/pop3/Status;->total:I

    .line 237
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/sun/mail/pop3/Status;->size:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 241
    .end local v2           #st:Ljava/util/StringTokenizer;
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v1

    .line 231
    .end local v0           #r:Lcom/sun/mail/pop3/Response;
    .end local v1           #s:Lcom/sun/mail/pop3/Status;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 238
    .restart local v0       #r:Lcom/sun/mail/pop3/Response;
    .restart local v1       #s:Lcom/sun/mail/pop3/Status;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method declared-synchronized top(II)Ljava/io/InputStream;
    .locals 3
    .parameter "msg"
    .parameter "n"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 284
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TOP "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/sun/mail/pop3/Protocol;->multilineCommand(Ljava/lang/String;I)Lcom/sun/mail/pop3/Response;

    move-result-object v0

    .line 285
    .local v0, r:Lcom/sun/mail/pop3/Response;
    iget-object v1, v0, Lcom/sun/mail/pop3/Response;->bytes:Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 284
    .end local v0           #r:Lcom/sun/mail/pop3/Response;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized uidl(I)Ljava/lang/String;
    .locals 5
    .parameter "msg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 300
    monitor-enter p0

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "UIDL "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sun/mail/pop3/Protocol;->simpleCommand(Ljava/lang/String;)Lcom/sun/mail/pop3/Response;

    move-result-object v1

    .line 301
    .local v1, r:Lcom/sun/mail/pop3/Response;
    iget-boolean v3, v1, Lcom/sun/mail/pop3/Response;->ok:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    .line 307
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v2

    .line 303
    :cond_1
    :try_start_1
    iget-object v3, v1, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 304
    .local v0, i:I
    if-lez v0, :cond_0

    .line 305
    iget-object v2, v1, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    goto :goto_0

    .line 300
    .end local v0           #i:I
    .end local v1           #r:Lcom/sun/mail/pop3/Response;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized uidl([Ljava/lang/String;)Z
    .locals 9
    .parameter "uids"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 315
    monitor-enter p0

    :try_start_0
    const-string v7, "UIDL"

    array-length v8, p1

    mul-int/lit8 v8, v8, 0xf

    invoke-direct {p0, v7, v8}, Lcom/sun/mail/pop3/Protocol;->multilineCommand(Ljava/lang/String;I)Lcom/sun/mail/pop3/Response;

    move-result-object v4

    .line 316
    .local v4, r:Lcom/sun/mail/pop3/Response;
    iget-boolean v7, v4, Lcom/sun/mail/pop3/Response;->ok:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v7, :cond_0

    .line 328
    :goto_0
    monitor-exit p0

    return v5

    .line 318
    :cond_0
    :try_start_1
    new-instance v2, Lcom/sun/mail/util/LineInputStream;

    iget-object v5, v4, Lcom/sun/mail/pop3/Response;->bytes:Ljava/io/InputStream;

    invoke-direct {v2, v5}, Lcom/sun/mail/util/LineInputStream;-><init>(Ljava/io/InputStream;)V

    .line 319
    .local v2, lis:Lcom/sun/mail/util/LineInputStream;
    const/4 v1, 0x0

    .line 320
    .local v1, line:Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-virtual {v2}, Lcom/sun/mail/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    move v5, v6

    .line 328
    goto :goto_0

    .line 321
    :cond_2
    const/16 v5, 0x20

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 322
    .local v0, i:I
    if-lt v0, v6, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 324
    const/4 v5, 0x0

    invoke-virtual {v1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 325
    .local v3, n:I
    if-lez v3, :cond_1

    array-length v5, p1

    if-gt v3, v5, :cond_1

    .line 326
    add-int/lit8 v5, v3, -0x1

    add-int/lit8 v7, v0, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, p1, v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 315
    .end local v0           #i:I
    .end local v1           #line:Ljava/lang/String;
    .end local v2           #lis:Lcom/sun/mail/util/LineInputStream;
    .end local v3           #n:I
    .end local v4           #r:Lcom/sun/mail/pop3/Response;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method
