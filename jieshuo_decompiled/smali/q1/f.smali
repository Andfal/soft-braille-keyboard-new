.class public Lq1/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile b:Lq1/f;


# instance fields
.field private a:[C


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    iput-object v0, p0, Lq1/f;->a:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method private a([B)Ljava/lang/String;
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lq1/f;->b([BII)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private b([BII)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    mul-int/lit8 v1, p3, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    add-int/2addr p3, p2

    :goto_0
    if-ge p2, p3, :cond_0

    aget-byte v1, p1, p2

    invoke-direct {p0, v1, v0}, Lq1/f;->c(BLjava/lang/StringBuffer;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private c(BLjava/lang/StringBuffer;)V
    .locals 2

    iget-object v0, p0, Lq1/f;->a:[C

    and-int/lit16 v1, p1, 0xf0

    shr-int/lit8 v1, v1, 0x4

    aget-char v1, v0, v1

    and-int/lit8 p1, p1, 0xf

    aget-char p1, v0, p1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void
.end method

.method public static e()Lq1/f;
    .locals 2

    sget-object v0, Lq1/f;->b:Lq1/f;

    if-nez v0, :cond_1

    const-class v0, Lq1/f;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lq1/f;->b:Lq1/f;

    if-nez v1, :cond_0

    new-instance v1, Lq1/f;

    invoke-direct {v1}, Lq1/f;-><init>()V

    sput-object v1, Lq1/f;->b:Lq1/f;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lq1/f;->b:Lq1/f;

    return-object v0
.end method


# virtual methods
.method public d(Ljava/io/File;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    :try_start_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 p1, 0x2000

    :try_start_1
    new-array p1, p1, [B

    :goto_0
    invoke-virtual {v2, p1}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v1, p1, v4, v3}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lq1/f;->a([B)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-object p1

    :catchall_0
    move-exception p1

    move-object v0, v2

    goto :goto_2

    :catchall_1
    move-exception p1

    :goto_2
    if-eqz v0, :cond_1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_3
    throw p1

    :catch_2
    move-object v2, v0

    :catch_3
    if-eqz v2, :cond_2

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_4
    return-object v0
.end method
