.class Lcom/sun/mail/imap/LengthCounter;
.super Ljava/io/OutputStream;
.source "IMAPFolder.java"


# instance fields
.field private buf:[B

.field private maxsize:I

.field private size:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "maxsize"

    .prologue
    .line 2767
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 2763
    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/mail/imap/LengthCounter;->size:I

    .line 2768
    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B

    .line 2769
    iput p1, p0, Lcom/sun/mail/imap/LengthCounter;->maxsize:I

    .line 2770
    return-void
.end method


# virtual methods
.method public getBytes()[B
    .locals 1

    .prologue
    .line 2821
    iget-object v0, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 2817
    iget v0, p0, Lcom/sun/mail/imap/LengthCounter;->size:I

    return v0
.end method

.method public write(I)V
    .locals 5
    .parameter "b"

    .prologue
    const/4 v4, 0x0

    .line 2773
    iget v2, p0, Lcom/sun/mail/imap/LengthCounter;->size:I

    add-int/lit8 v1, v2, 0x1

    .line 2774
    .local v1, newsize:I
    iget-object v2, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B

    if-eqz v2, :cond_0

    .line 2775
    iget v2, p0, Lcom/sun/mail/imap/LengthCounter;->maxsize:I

    if-le v1, v2, :cond_1

    iget v2, p0, Lcom/sun/mail/imap/LengthCounter;->maxsize:I

    if-ltz v2, :cond_1

    .line 2776
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B

    .line 2786
    :cond_0
    :goto_0
    iput v1, p0, Lcom/sun/mail/imap/LengthCounter;->size:I

    .line 2787
    return-void

    .line 2777
    :cond_1
    iget-object v2, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B

    array-length v2, v2

    if-le v1, v2, :cond_2

    .line 2778
    iget-object v2, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B

    array-length v2, v2

    shl-int/lit8 v2, v2, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    new-array v0, v2, [B

    .line 2779
    .local v0, newbuf:[B
    iget-object v2, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B

    iget v3, p0, Lcom/sun/mail/imap/LengthCounter;->size:I

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2780
    iput-object v0, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B

    .line 2781
    iget-object v2, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B

    iget v3, p0, Lcom/sun/mail/imap/LengthCounter;->size:I

    int-to-byte v4, p1

    aput-byte v4, v2, v3

    goto :goto_0

    .line 2783
    .end local v0           #newbuf:[B
    :cond_2
    iget-object v2, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B

    iget v3, p0, Lcom/sun/mail/imap/LengthCounter;->size:I

    int-to-byte v4, p1

    aput-byte v4, v2, v3

    goto :goto_0
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
    .line 2813
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sun/mail/imap/LengthCounter;->write([BII)V

    .line 2814
    return-void
.end method

.method public write([BII)V
    .locals 5
    .parameter "b"
    .parameter "off"
    .parameter "len"

    .prologue
    const/4 v4, 0x0

    .line 2790
    if-ltz p2, :cond_0

    array-length v2, p1

    if-gt p2, v2, :cond_0

    if-ltz p3, :cond_0

    .line 2791
    add-int v2, p2, p3

    array-length v3, p1

    if-gt v2, v3, :cond_0

    add-int v2, p2, p3

    if-gez v2, :cond_1

    .line 2792
    :cond_0
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 2793
    :cond_1
    if-nez p3, :cond_2

    .line 2810
    :goto_0
    return-void

    .line 2796
    :cond_2
    iget v2, p0, Lcom/sun/mail/imap/LengthCounter;->size:I

    add-int v1, v2, p3

    .line 2797
    .local v1, newsize:I
    iget-object v2, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B

    if-eqz v2, :cond_3

    .line 2798
    iget v2, p0, Lcom/sun/mail/imap/LengthCounter;->maxsize:I

    if-le v1, v2, :cond_4

    iget v2, p0, Lcom/sun/mail/imap/LengthCounter;->maxsize:I

    if-ltz v2, :cond_4

    .line 2799
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B

    .line 2809
    :cond_3
    :goto_1
    iput v1, p0, Lcom/sun/mail/imap/LengthCounter;->size:I

    goto :goto_0

    .line 2800
    :cond_4
    iget-object v2, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B

    array-length v2, v2

    if-le v1, v2, :cond_5

    .line 2801
    iget-object v2, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B

    array-length v2, v2

    shl-int/lit8 v2, v2, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    new-array v0, v2, [B

    .line 2802
    .local v0, newbuf:[B
    iget-object v2, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B

    iget v3, p0, Lcom/sun/mail/imap/LengthCounter;->size:I

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2803
    iput-object v0, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B

    .line 2804
    iget-object v2, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B

    iget v3, p0, Lcom/sun/mail/imap/LengthCounter;->size:I

    invoke-static {p1, p2, v2, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 2806
    .end local v0           #newbuf:[B
    :cond_5
    iget-object v2, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B

    iget v3, p0, Lcom/sun/mail/imap/LengthCounter;->size:I

    invoke-static {p1, p2, v2, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1
.end method
