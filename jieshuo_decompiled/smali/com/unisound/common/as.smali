.class public Lcom/unisound/common/as;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static c:S

.field private static d:[C

.field private static e:[C

.field private static f:[C

.field private static g:I

.field private static h:S

.field private static i:[C


# instance fields
.field public a:S

.field public b:S


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v1, v0, [C

    fill-array-data v1, :array_0

    sput-object v1, Lcom/unisound/common/as;->d:[C

    new-array v1, v0, [C

    fill-array-data v1, :array_1

    sput-object v1, Lcom/unisound/common/as;->e:[C

    new-array v1, v0, [C

    fill-array-data v1, :array_2

    sput-object v1, Lcom/unisound/common/as;->f:[C

    const/16 v1, 0x10

    sput v1, Lcom/unisound/common/as;->g:I

    const/4 v2, 0x1

    sput-short v2, Lcom/unisound/common/as;->h:S

    sput-short v1, Lcom/unisound/common/as;->c:S

    new-array v0, v0, [C

    fill-array-data v0, :array_3

    sput-object v0, Lcom/unisound/common/as;->i:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x52s
        0x49s
        0x46s
        0x46s
    .end array-data

    :array_1
    .array-data 2
        0x57s
        0x41s
        0x56s
        0x45s
    .end array-data

    :array_2
    .array-data 2
        0x66s
        0x6ds
        0x74s
        0x20s
    .end array-data

    :array_3
    .array-data 2
        0x64s
        0x61s
        0x74s
        0x61s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-short v0, p0, Lcom/unisound/common/as;->a:S

    const/16 v0, 0x3e80

    iput-short v0, p0, Lcom/unisound/common/as;->b:S

    return-void
.end method

.method private static a(Ljava/io/ByteArrayOutputStream;I)V
    .locals 5

    shr-int/lit8 v0, p1, 0x18

    int-to-byte v0, v0

    shl-int/lit8 v1, p1, 0x8

    shr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    shl-int/lit8 v2, p1, 0x10

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    const/4 v3, 0x4

    new-array v3, v3, [B

    shl-int/lit8 p1, p1, 0x18

    shr-int/lit8 p1, p1, 0x18

    int-to-byte p1, p1

    const/4 v4, 0x0

    aput-byte p1, v3, v4

    const/4 p1, 0x1

    aput-byte v2, v3, p1

    const/4 p1, 0x2

    aput-byte v1, v3, p1

    const/4 p1, 0x3

    aput-byte v0, v3, p1

    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method private static a(Ljava/io/ByteArrayOutputStream;S)V
    .locals 3

    shr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    const/4 v1, 0x2

    new-array v1, v1, [B

    shl-int/lit8 p1, p1, 0x8

    shr-int/lit8 p1, p1, 0x8

    int-to-byte p1, p1

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    const/4 p1, 0x1

    aput-byte v0, v1, p1

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method private static a(Ljava/io/ByteArrayOutputStream;[C)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-char v1, p1, v0

    invoke-virtual {p0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static a(III)[B
    .locals 3

    :try_start_0
    sget-short v0, Lcom/unisound/common/as;->c:S

    mul-int v0, v0, p1

    div-int/lit8 v0, v0, 0x8

    int-to-short v0, v0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v2, Lcom/unisound/common/as;->d:[C

    invoke-static {v1, v2}, Lcom/unisound/common/as;->a(Ljava/io/ByteArrayOutputStream;[C)V

    add-int/lit8 v2, p0, 0x24

    invoke-static {v1, v2}, Lcom/unisound/common/as;->a(Ljava/io/ByteArrayOutputStream;I)V

    sget-object v2, Lcom/unisound/common/as;->e:[C

    invoke-static {v1, v2}, Lcom/unisound/common/as;->a(Ljava/io/ByteArrayOutputStream;[C)V

    sget-object v2, Lcom/unisound/common/as;->f:[C

    invoke-static {v1, v2}, Lcom/unisound/common/as;->a(Ljava/io/ByteArrayOutputStream;[C)V

    sget v2, Lcom/unisound/common/as;->g:I

    invoke-static {v1, v2}, Lcom/unisound/common/as;->a(Ljava/io/ByteArrayOutputStream;I)V

    sget-short v2, Lcom/unisound/common/as;->h:S

    invoke-static {v1, v2}, Lcom/unisound/common/as;->a(Ljava/io/ByteArrayOutputStream;S)V

    int-to-short p1, p1

    invoke-static {v1, p1}, Lcom/unisound/common/as;->a(Ljava/io/ByteArrayOutputStream;S)V

    invoke-static {v1, p2}, Lcom/unisound/common/as;->a(Ljava/io/ByteArrayOutputStream;I)V

    mul-int p2, p2, v0

    invoke-static {v1, p2}, Lcom/unisound/common/as;->a(Ljava/io/ByteArrayOutputStream;I)V

    invoke-static {v1, v0}, Lcom/unisound/common/as;->a(Ljava/io/ByteArrayOutputStream;S)V

    sget-short p1, Lcom/unisound/common/as;->c:S

    invoke-static {v1, p1}, Lcom/unisound/common/as;->a(Ljava/io/ByteArrayOutputStream;S)V

    sget-object p1, Lcom/unisound/common/as;->i:[C

    invoke-static {v1, p1}, Lcom/unisound/common/as;->a(Ljava/io/ByteArrayOutputStream;[C)V

    invoke-static {v1, p0}, Lcom/unisound/common/as;->a(Ljava/io/ByteArrayOutputStream;I)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p0

    move-object p1, p0

    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object p0
.end method
