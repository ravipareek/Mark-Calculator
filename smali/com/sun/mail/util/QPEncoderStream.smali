.class public Lcom/sun/mail/util/QPEncoderStream;
.super Ljava/io/FilterOutputStream;
.source "QPEncoderStream.java"


# static fields
.field private static final hex:[C


# instance fields
.field private bytesPerLine:I

.field private count:I

.field private gotCR:Z

.field private gotSpace:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 170
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sun/mail/util/QPEncoderStream;->hex:[C

    .line 54
    return-void

    .line 170
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
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .parameter "out"

    .prologue
    .line 80
    const/16 v0, 0x4c

    invoke-direct {p0, p1, v0}, Lcom/sun/mail/util/QPEncoderStream;-><init>(Ljava/io/OutputStream;I)V

    .line 81
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 1
    .parameter "out"
    .parameter "bytesPerLine"

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 55
    iput v0, p0, Lcom/sun/mail/util/QPEncoderStream;->count:I

    .line 57
    iput-boolean v0, p0, Lcom/sun/mail/util/QPEncoderStream;->gotSpace:Z

    .line 58
    iput-boolean v0, p0, Lcom/sun/mail/util/QPEncoderStream;->gotCR:Z

    .line 71
    add-int/lit8 v0, p2, -0x1

    iput v0, p0, Lcom/sun/mail/util/QPEncoderStream;->bytesPerLine:I

    .line 72
    return-void
.end method

.method private outputCRLF()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 164
    iget-object v0, p0, Lcom/sun/mail/util/QPEncoderStream;->out:Ljava/io/OutputStream;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 165
    iget-object v0, p0, Lcom/sun/mail/util/QPEncoderStream;->out:Ljava/io/OutputStream;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 166
    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/mail/util/QPEncoderStream;->count:I

    .line 167
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 160
    iget-object v0, p0, Lcom/sun/mail/util/QPEncoderStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 161
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 152
    iget-object v0, p0, Lcom/sun/mail/util/QPEncoderStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 153
    return-void
.end method

.method protected output(IZ)V
    .locals 5
    .parameter "c"
    .parameter "encode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0xd

    const/16 v3, 0xa

    const/16 v2, 0x3d

    .line 176
    if-eqz p2, :cond_1

    .line 177
    iget v0, p0, Lcom/sun/mail/util/QPEncoderStream;->count:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/sun/mail/util/QPEncoderStream;->count:I

    iget v1, p0, Lcom/sun/mail/util/QPEncoderStream;->bytesPerLine:I

    if-le v0, v1, :cond_0

    .line 178
    iget-object v0, p0, Lcom/sun/mail/util/QPEncoderStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 179
    iget-object v0, p0, Lcom/sun/mail/util/QPEncoderStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v4}, Ljava/io/OutputStream;->write(I)V

    .line 180
    iget-object v0, p0, Lcom/sun/mail/util/QPEncoderStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v3}, Ljava/io/OutputStream;->write(I)V

    .line 181
    const/4 v0, 0x3

    iput v0, p0, Lcom/sun/mail/util/QPEncoderStream;->count:I

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/util/QPEncoderStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 184
    iget-object v0, p0, Lcom/sun/mail/util/QPEncoderStream;->out:Ljava/io/OutputStream;

    sget-object v1, Lcom/sun/mail/util/QPEncoderStream;->hex:[C

    shr-int/lit8 v2, p1, 0x4

    aget-char v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 185
    iget-object v0, p0, Lcom/sun/mail/util/QPEncoderStream;->out:Ljava/io/OutputStream;

    sget-object v1, Lcom/sun/mail/util/QPEncoderStream;->hex:[C

    and-int/lit8 v2, p1, 0xf

    aget-char v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 195
    :goto_0
    return-void

    .line 187
    :cond_1
    iget v0, p0, Lcom/sun/mail/util/QPEncoderStream;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/mail/util/QPEncoderStream;->count:I

    iget v1, p0, Lcom/sun/mail/util/QPEncoderStream;->bytesPerLine:I

    if-le v0, v1, :cond_2

    .line 188
    iget-object v0, p0, Lcom/sun/mail/util/QPEncoderStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 189
    iget-object v0, p0, Lcom/sun/mail/util/QPEncoderStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v4}, Ljava/io/OutputStream;->write(I)V

    .line 190
    iget-object v0, p0, Lcom/sun/mail/util/QPEncoderStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v3}, Ljava/io/OutputStream;->write(I)V

    .line 191
    const/4 v0, 0x1

    iput v0, p0, Lcom/sun/mail/util/QPEncoderStream;->count:I

    .line 193
    :cond_2
    iget-object v0, p0, Lcom/sun/mail/util/QPEncoderStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0
.end method

.method public write(I)V
    .locals 6
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0xd

    const/16 v4, 0xa

    const/16 v3, 0x20

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 113
    and-int/lit16 p1, p1, 0xff

    .line 114
    iget-boolean v0, p0, Lcom/sun/mail/util/QPEncoderStream;->gotSpace:Z

    if-eqz v0, :cond_1

    .line 115
    if-eq p1, v5, :cond_0

    if-ne p1, v4, :cond_2

    .line 117
    :cond_0
    invoke-virtual {p0, v3, v2}, Lcom/sun/mail/util/QPEncoderStream;->output(IZ)V

    .line 120
    :goto_0
    iput-boolean v1, p0, Lcom/sun/mail/util/QPEncoderStream;->gotSpace:Z

    .line 123
    :cond_1
    if-ne p1, v5, :cond_3

    .line 124
    iput-boolean v2, p0, Lcom/sun/mail/util/QPEncoderStream;->gotCR:Z

    .line 125
    invoke-direct {p0}, Lcom/sun/mail/util/QPEncoderStream;->outputCRLF()V

    .line 144
    :goto_1
    return-void

    .line 119
    :cond_2
    invoke-virtual {p0, v3, v1}, Lcom/sun/mail/util/QPEncoderStream;->output(IZ)V

    goto :goto_0

    .line 127
    :cond_3
    if-ne p1, v4, :cond_5

    .line 128
    iget-boolean v0, p0, Lcom/sun/mail/util/QPEncoderStream;->gotCR:Z

    if-eqz v0, :cond_4

    .line 142
    :goto_2
    iput-boolean v1, p0, Lcom/sun/mail/util/QPEncoderStream;->gotCR:Z

    goto :goto_1

    .line 133
    :cond_4
    invoke-direct {p0}, Lcom/sun/mail/util/QPEncoderStream;->outputCRLF()V

    goto :goto_2

    .line 134
    :cond_5
    if-ne p1, v3, :cond_6

    .line 135
    iput-boolean v2, p0, Lcom/sun/mail/util/QPEncoderStream;->gotSpace:Z

    goto :goto_2

    .line 136
    :cond_6
    if-lt p1, v3, :cond_7

    const/16 v0, 0x7f

    if-ge p1, v0, :cond_7

    const/16 v0, 0x3d

    if-ne p1, v0, :cond_8

    .line 138
    :cond_7
    invoke-virtual {p0, p1, v2}, Lcom/sun/mail/util/QPEncoderStream;->output(IZ)V

    goto :goto_2

    .line 140
    :cond_8
    invoke-virtual {p0, p1, v1}, Lcom/sun/mail/util/QPEncoderStream;->output(IZ)V

    goto :goto_2
.end method

.method public write([B)V
    .locals 2
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sun/mail/util/QPEncoderStream;->write([BII)V

    .line 105
    return-void
.end method

.method public write([BII)V
    .locals 2
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, p3, :cond_0

    .line 96
    return-void

    .line 95
    :cond_0
    add-int v1, p2, v0

    aget-byte v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sun/mail/util/QPEncoderStream;->write(I)V

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
