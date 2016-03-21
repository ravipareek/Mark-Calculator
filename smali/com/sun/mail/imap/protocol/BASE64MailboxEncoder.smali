.class public Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;
.super Ljava/lang/Object;
.source "BASE64MailboxEncoder.java"


# static fields
.field private static final pem_array:[C


# instance fields
.field protected buffer:[B

.field protected bufsize:I

.field protected out:Ljava/io/Writer;

.field protected started:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 251
    const/16 v0, 0x40

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->pem_array:[C

    .line 110
    return-void

    .line 251
    :array_0
    .array-data 0x2
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
        0x47t 0x0t
        0x48t 0x0t
        0x49t 0x0t
        0x4at 0x0t
        0x4bt 0x0t
        0x4ct 0x0t
        0x4dt 0x0t
        0x4et 0x0t
        0x4ft 0x0t
        0x50t 0x0t
        0x51t 0x0t
        0x52t 0x0t
        0x53t 0x0t
        0x54t 0x0t
        0x55t 0x0t
        0x56t 0x0t
        0x57t 0x0t
        0x58t 0x0t
        0x59t 0x0t
        0x5at 0x0t
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
        0x67t 0x0t
        0x68t 0x0t
        0x69t 0x0t
        0x6at 0x0t
        0x6bt 0x0t
        0x6ct 0x0t
        0x6dt 0x0t
        0x6et 0x0t
        0x6ft 0x0t
        0x70t 0x0t
        0x71t 0x0t
        0x72t 0x0t
        0x73t 0x0t
        0x74t 0x0t
        0x75t 0x0t
        0x76t 0x0t
        0x77t 0x0t
        0x78t 0x0t
        0x79t 0x0t
        0x7at 0x0t
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
        0x2bt 0x0t
        0x2ct 0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 2
    .parameter "what"

    .prologue
    const/4 v1, 0x0

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->buffer:[B

    .line 112
    iput v1, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->bufsize:I

    .line 113
    iput-boolean v1, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->started:Z

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->out:Ljava/io/Writer;

    .line 175
    iput-object p1, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->out:Ljava/io/Writer;

    .line 176
    return-void
.end method

.method public static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "original"

    .prologue
    const/16 v8, 0x26

    .line 118
    const/4 v0, 0x0

    .line 119
    .local v0, base64stream:Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    .line 120
    .local v5, origchars:[C
    array-length v4, v5

    .line 121
    .local v4, length:I
    const/4 v1, 0x0

    .line 122
    .local v1, changedString:Z
    new-instance v6, Ljava/io/CharArrayWriter;

    invoke-direct {v6, v4}, Ljava/io/CharArrayWriter;-><init>(I)V

    .line 125
    .local v6, writer:Ljava/io/CharArrayWriter;
    const/4 v3, 0x0

    .local v3, index:I
    :goto_0
    if-lt v3, v4, :cond_2

    .line 159
    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->flush()V

    .line 163
    :cond_0
    if-eqz v1, :cond_1

    .line 164
    invoke-virtual {v6}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object p0

    .line 166
    .end local p0
    :cond_1
    return-object p0

    .line 126
    .restart local p0
    :cond_2
    aget-char v2, v5, v3

    .line 130
    .local v2, current:C
    const/16 v7, 0x20

    if-lt v2, v7, :cond_5

    const/16 v7, 0x7e

    if-gt v2, v7, :cond_5

    .line 131
    if-eqz v0, :cond_3

    .line 132
    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->flush()V

    .line 135
    :cond_3
    if-ne v2, v8, :cond_4

    .line 136
    const/4 v1, 0x1

    .line 137
    invoke-virtual {v6, v8}, Ljava/io/CharArrayWriter;->write(I)V

    .line 138
    const/16 v7, 0x2d

    invoke-virtual {v6, v7}, Ljava/io/CharArrayWriter;->write(I)V

    .line 125
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 140
    :cond_4
    invoke-virtual {v6, v2}, Ljava/io/CharArrayWriter;->write(I)V

    goto :goto_1

    .line 149
    :cond_5
    if-nez v0, :cond_6

    .line 150
    new-instance v0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;

    .end local v0           #base64stream:Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;
    invoke-direct {v0, v6}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;-><init>(Ljava/io/Writer;)V

    .line 151
    .restart local v0       #base64stream:Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;
    const/4 v1, 0x1

    .line 154
    :cond_6
    invoke-virtual {v0, v2}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->write(I)V

    goto :goto_1
.end method


# virtual methods
.method protected encode()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 221
    iget v3, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->bufsize:I

    if-ne v3, v4, :cond_1

    .line 222
    iget-object v3, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->buffer:[B

    aget-byte v0, v3, v7

    .line 223
    .local v0, a:B
    const/4 v1, 0x0

    .line 224
    .local v1, b:B
    const/4 v2, 0x0

    .line 225
    .local v2, c:B
    iget-object v3, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->out:Ljava/io/Writer;

    sget-object v4, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->pem_array:[C

    ushr-int/lit8 v5, v0, 0x2

    and-int/lit8 v5, v5, 0x3f

    aget-char v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(I)V

    .line 226
    iget-object v3, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->out:Ljava/io/Writer;

    sget-object v4, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->pem_array:[C

    shl-int/lit8 v5, v0, 0x4

    and-int/lit8 v5, v5, 0x30

    add-int/lit8 v5, v5, 0x0

    aget-char v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(I)V

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 228
    .end local v0           #a:B
    .end local v1           #b:B
    .end local v2           #c:B
    :cond_1
    iget v3, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->bufsize:I

    if-ne v3, v5, :cond_2

    .line 229
    iget-object v3, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->buffer:[B

    aget-byte v0, v3, v7

    .line 230
    .restart local v0       #a:B
    iget-object v3, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->buffer:[B

    aget-byte v1, v3, v4

    .line 231
    .restart local v1       #b:B
    const/4 v2, 0x0

    .line 232
    .restart local v2       #c:B
    iget-object v3, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->out:Ljava/io/Writer;

    sget-object v4, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->pem_array:[C

    ushr-int/lit8 v5, v0, 0x2

    and-int/lit8 v5, v5, 0x3f

    aget-char v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(I)V

    .line 233
    iget-object v3, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->out:Ljava/io/Writer;

    sget-object v4, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->pem_array:[C

    shl-int/lit8 v5, v0, 0x4

    and-int/lit8 v5, v5, 0x30

    ushr-int/lit8 v6, v1, 0x4

    and-int/lit8 v6, v6, 0xf

    add-int/2addr v5, v6

    aget-char v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(I)V

    .line 234
    iget-object v3, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->out:Ljava/io/Writer;

    sget-object v4, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->pem_array:[C

    shl-int/lit8 v5, v1, 0x2

    and-int/lit8 v5, v5, 0x3c

    add-int/lit8 v5, v5, 0x0

    aget-char v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(I)V

    goto :goto_0

    .line 237
    .end local v0           #a:B
    .end local v1           #b:B
    .end local v2           #c:B
    :cond_2
    iget-object v3, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->buffer:[B

    aget-byte v0, v3, v7

    .line 238
    .restart local v0       #a:B
    iget-object v3, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->buffer:[B

    aget-byte v1, v3, v4

    .line 239
    .restart local v1       #b:B
    iget-object v3, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->buffer:[B

    aget-byte v2, v3, v5

    .line 240
    .restart local v2       #c:B
    iget-object v3, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->out:Ljava/io/Writer;

    sget-object v4, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->pem_array:[C

    ushr-int/lit8 v5, v0, 0x2

    and-int/lit8 v5, v5, 0x3f

    aget-char v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(I)V

    .line 241
    iget-object v3, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->out:Ljava/io/Writer;

    sget-object v4, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->pem_array:[C

    shl-int/lit8 v5, v0, 0x4

    and-int/lit8 v5, v5, 0x30

    ushr-int/lit8 v6, v1, 0x4

    and-int/lit8 v6, v6, 0xf

    add-int/2addr v5, v6

    aget-char v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(I)V

    .line 242
    iget-object v3, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->out:Ljava/io/Writer;

    sget-object v4, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->pem_array:[C

    shl-int/lit8 v5, v1, 0x2

    and-int/lit8 v5, v5, 0x3c

    ushr-int/lit8 v6, v2, 0x6

    and-int/lit8 v6, v6, 0x3

    add-int/2addr v5, v6

    aget-char v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(I)V

    .line 243
    iget-object v3, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->out:Ljava/io/Writer;

    sget-object v4, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->pem_array:[C

    and-int/lit8 v5, v2, 0x3f

    aget-char v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(I)V

    .line 246
    iget v3, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->bufsize:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 247
    iget-object v3, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->buffer:[B

    iget-object v4, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->buffer:[B

    const/4 v5, 0x3

    aget-byte v4, v4, v5

    aput-byte v4, v3, v7

    goto/16 :goto_0
.end method

.method public flush()V
    .locals 2

    .prologue
    .line 203
    :try_start_0
    iget v0, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->bufsize:I

    if-lez v0, :cond_0

    .line 204
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->encode()V

    .line 205
    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->bufsize:I

    .line 209
    :cond_0
    iget-boolean v0, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->started:Z

    if-eqz v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->out:Ljava/io/Writer;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 211
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->started:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    :cond_1
    :goto_0
    return-void

    .line 213
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public write(I)V
    .locals 3
    .parameter "c"

    .prologue
    .line 181
    :try_start_0
    iget-boolean v0, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->started:Z

    if-nez v0, :cond_0

    .line 182
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->started:Z

    .line 183
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->out:Ljava/io/Writer;

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->buffer:[B

    iget v1, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->bufsize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->bufsize:I

    shr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 188
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->buffer:[B

    iget v1, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->bufsize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->bufsize:I

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 190
    iget v0, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->bufsize:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    .line 191
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->encode()V

    .line 192
    iget v0, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->bufsize:I

    add-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->bufsize:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    :cond_1
    :goto_0
    return-void

    .line 194
    :catch_0
    move-exception v0

    goto :goto_0
.end method
