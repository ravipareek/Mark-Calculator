.class public final Lcom/sun/mail/imap/Rights$Right;
.super Ljava/lang/Object;
.source "Rights.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/mail/imap/Rights;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Right"
.end annotation


# static fields
.field public static final ADMINISTER:Lcom/sun/mail/imap/Rights$Right;

.field public static final CREATE:Lcom/sun/mail/imap/Rights$Right;

.field public static final DELETE:Lcom/sun/mail/imap/Rights$Right;

.field public static final INSERT:Lcom/sun/mail/imap/Rights$Right;

.field public static final KEEP_SEEN:Lcom/sun/mail/imap/Rights$Right;

.field public static final LOOKUP:Lcom/sun/mail/imap/Rights$Right;

.field public static final POST:Lcom/sun/mail/imap/Rights$Right;

.field public static final READ:Lcom/sun/mail/imap/Rights$Right;

.field public static final WRITE:Lcom/sun/mail/imap/Rights$Right;

.field private static cache:[Lcom/sun/mail/imap/Rights$Right;


# instance fields
.field right:C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 85
    const/16 v0, 0x80

    new-array v0, v0, [Lcom/sun/mail/imap/Rights$Right;

    sput-object v0, Lcom/sun/mail/imap/Rights$Right;->cache:[Lcom/sun/mail/imap/Rights$Right;

    .line 91
    const/16 v0, 0x6c

    invoke-static {v0}, Lcom/sun/mail/imap/Rights$Right;->getInstance(C)Lcom/sun/mail/imap/Rights$Right;

    move-result-object v0

    sput-object v0, Lcom/sun/mail/imap/Rights$Right;->LOOKUP:Lcom/sun/mail/imap/Rights$Right;

    .line 97
    const/16 v0, 0x72

    invoke-static {v0}, Lcom/sun/mail/imap/Rights$Right;->getInstance(C)Lcom/sun/mail/imap/Rights$Right;

    move-result-object v0

    sput-object v0, Lcom/sun/mail/imap/Rights$Right;->READ:Lcom/sun/mail/imap/Rights$Right;

    .line 102
    const/16 v0, 0x73

    invoke-static {v0}, Lcom/sun/mail/imap/Rights$Right;->getInstance(C)Lcom/sun/mail/imap/Rights$Right;

    move-result-object v0

    sput-object v0, Lcom/sun/mail/imap/Rights$Right;->KEEP_SEEN:Lcom/sun/mail/imap/Rights$Right;

    .line 107
    const/16 v0, 0x77

    invoke-static {v0}, Lcom/sun/mail/imap/Rights$Right;->getInstance(C)Lcom/sun/mail/imap/Rights$Right;

    move-result-object v0

    sput-object v0, Lcom/sun/mail/imap/Rights$Right;->WRITE:Lcom/sun/mail/imap/Rights$Right;

    .line 112
    const/16 v0, 0x69

    invoke-static {v0}, Lcom/sun/mail/imap/Rights$Right;->getInstance(C)Lcom/sun/mail/imap/Rights$Right;

    move-result-object v0

    sput-object v0, Lcom/sun/mail/imap/Rights$Right;->INSERT:Lcom/sun/mail/imap/Rights$Right;

    .line 118
    const/16 v0, 0x70

    invoke-static {v0}, Lcom/sun/mail/imap/Rights$Right;->getInstance(C)Lcom/sun/mail/imap/Rights$Right;

    move-result-object v0

    sput-object v0, Lcom/sun/mail/imap/Rights$Right;->POST:Lcom/sun/mail/imap/Rights$Right;

    .line 124
    const/16 v0, 0x63

    invoke-static {v0}, Lcom/sun/mail/imap/Rights$Right;->getInstance(C)Lcom/sun/mail/imap/Rights$Right;

    move-result-object v0

    sput-object v0, Lcom/sun/mail/imap/Rights$Right;->CREATE:Lcom/sun/mail/imap/Rights$Right;

    .line 129
    const/16 v0, 0x64

    invoke-static {v0}, Lcom/sun/mail/imap/Rights$Right;->getInstance(C)Lcom/sun/mail/imap/Rights$Right;

    move-result-object v0

    sput-object v0, Lcom/sun/mail/imap/Rights$Right;->DELETE:Lcom/sun/mail/imap/Rights$Right;

    .line 134
    const/16 v0, 0x61

    invoke-static {v0}, Lcom/sun/mail/imap/Rights$Right;->getInstance(C)Lcom/sun/mail/imap/Rights$Right;

    move-result-object v0

    sput-object v0, Lcom/sun/mail/imap/Rights$Right;->ADMINISTER:Lcom/sun/mail/imap/Rights$Right;

    .line 84
    return-void
.end method

.method private constructor <init>(C)V
    .locals 2
    .parameter "right"

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    const/16 v0, 0x80

    if-lt p1, v0, :cond_0

    .line 143
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Right must be ASCII"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_0
    iput-char p1, p0, Lcom/sun/mail/imap/Rights$Right;->right:C

    .line 145
    return-void
.end method

.method public static declared-synchronized getInstance(C)Lcom/sun/mail/imap/Rights$Right;
    .locals 3
    .parameter "right"

    .prologue
    .line 152
    const-class v1, Lcom/sun/mail/imap/Rights$Right;

    monitor-enter v1

    const/16 v0, 0x80

    if-lt p0, v0, :cond_0

    .line 153
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Right must be ASCII"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 154
    :cond_0
    :try_start_1
    sget-object v0, Lcom/sun/mail/imap/Rights$Right;->cache:[Lcom/sun/mail/imap/Rights$Right;

    aget-object v0, v0, p0

    if-nez v0, :cond_1

    .line 155
    sget-object v0, Lcom/sun/mail/imap/Rights$Right;->cache:[Lcom/sun/mail/imap/Rights$Right;

    new-instance v2, Lcom/sun/mail/imap/Rights$Right;

    invoke-direct {v2, p0}, Lcom/sun/mail/imap/Rights$Right;-><init>(C)V

    aput-object v2, v0, p0

    .line 156
    :cond_1
    sget-object v0, Lcom/sun/mail/imap/Rights$Right;->cache:[Lcom/sun/mail/imap/Rights$Right;

    aget-object v0, v0, p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-char v0, p0, Lcom/sun/mail/imap/Rights$Right;->right:C

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
