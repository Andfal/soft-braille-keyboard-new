.class public Lu3/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field private static final b:[C

.field private static final c:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lu3/c;->a:Ljava/lang/String;

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lu3/c;->b:[C

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lu3/c;->c:[I

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
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data

    :array_1
    .array-data 4
        0x1c
        0x18
        0x14
        0x10
        0xc
        0x8
        0x4
        0x0
    .end array-data
.end method

.method public static a(B)Ljava/lang/String;
    .locals 2

    int-to-long v0, p0

    const/4 p0, 0x2

    invoke-static {v0, v1, p0}, Lu3/c;->b(JI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static b(JI)Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p2}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    sget-object v2, Lu3/c;->b:[C

    sget-object v3, Lu3/c;->c:[I

    rsub-int/lit8 v4, p2, 0x10

    add-int/2addr v4, v1

    aget v3, v3, v4

    shr-long v3, p0, v3

    const/16 v5, 0xf

    int-to-long v5, v5

    and-long/2addr v3, v5

    long-to-int v4, v3

    aget-char v2, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
