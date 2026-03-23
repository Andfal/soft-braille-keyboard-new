.class public Ll2/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/util/regex/Pattern;

.field private static final b:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "(\\d+\\.\\d+|[a-zA-Z0-9]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ll2/a;->a:Ljava/util/regex/Pattern;

    const/4 v0, 0x6

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Ll2/a;->b:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x2bs
        0x23s
        0x26s
        0x2es
        0x5fs
        0x2ds
    .end array-data
.end method

.method public static a(C)Z
    .locals 2

    invoke-static {p0}, Ll2/a;->b(C)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {p0}, Ll2/a;->e(C)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-static {p0}, Ll2/a;->d(C)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    invoke-static {p0}, Ll2/a;->c(C)Z

    move-result p0

    if-eqz p0, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public static b(C)Z
    .locals 1

    const/16 v0, 0x4e00

    if-lt p0, v0, :cond_0

    const v0, 0x9fa5

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static c(C)Z
    .locals 5

    sget-object v0, Ll2/a;->b:[C

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-char v4, v0, v3

    if-ne p0, v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static d(C)Z
    .locals 1

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static e(C)Z
    .locals 1

    const/16 v0, 0x41

    if-lt p0, v0, :cond_0

    const/16 v0, 0x5a

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_2

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static f(C)C
    .locals 1

    const/16 v0, 0x3000

    if-ne p0, v0, :cond_0

    const/16 p0, 0x20

    return p0

    :cond_0
    const v0, 0xff00

    if-le p0, v0, :cond_1

    const v0, 0xff5f

    if-ge p0, v0, :cond_1

    const v0, 0xfee0

    sub-int/2addr p0, v0

    int-to-char p0, p0

    :cond_1
    return p0
.end method
