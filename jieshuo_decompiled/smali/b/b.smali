.class public Lb/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/b$a;
    }
.end annotation


# instance fields
.field private final a:Lai/onnxruntime/OrtEnvironment;

.field private final b:Landroid/content/res/AssetManager;

.field private final c:Ljava/lang/String;

.field private d:[Ljava/lang/String;

.field private volatile e:Lai/onnxruntime/OrtSession;

.field private final f:I

.field private final g:I


# direct methods
.method public constructor <init>(Lai/onnxruntime/OrtEnvironment;Landroid/content/res/AssetManager;Ljava/lang/String;[Ljava/lang/String;[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/b;->a:Lai/onnxruntime/OrtEnvironment;

    iput-object p2, p0, Lb/b;->b:Landroid/content/res/AssetManager;

    iput-object p3, p0, Lb/b;->c:Ljava/lang/String;

    array-length p1, p4

    const/4 p2, 0x0

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    aget-object p1, p4, p2

    invoke-virtual {p0, p1}, Lb/b;->j(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iput-object p4, p0, Lb/b;->d:[Ljava/lang/String;

    :goto_0
    aget p1, p5, p2

    iput p1, p0, Lb/b;->f:I

    aget p1, p5, p3

    iput p1, p0, Lb/b;->g:I

    return-void
.end method

.method public static synthetic a([FLjava/lang/Integer;Ljava/lang/Integer;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lb/b;->h([FLjava/lang/Integer;Ljava/lang/Integer;)I

    move-result p0

    return p0
.end method

.method private b(Landroid/graphics/Bitmap;)I
    .locals 11

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int v2, v0, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v4, v1, :cond_1

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v0, :cond_0

    invoke-virtual {p1, v8, v4}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v9

    invoke-static {v9}, Landroid/graphics/Color;->red(I)I

    move-result v10

    add-int/2addr v5, v10

    invoke-static {v9}, Landroid/graphics/Color;->green(I)I

    move-result v10

    add-int/2addr v6, v10

    invoke-static {v9}, Landroid/graphics/Color;->blue(I)I

    move-result v9

    add-int/2addr v7, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    div-int/2addr v5, v2

    div-int/2addr v6, v2

    div-int/2addr v7, v2

    invoke-static {v5, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    return p1
.end method

.method private c(I)I
    .locals 2

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    rsub-int v0, v0, 0xff

    rsub-int v1, v1, 0xff

    rsub-int p1, p1, 0xff

    invoke-static {v0, v1, p1}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    return p1
.end method

.method private e(Landroid/graphics/Bitmap;)I
    .locals 10

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    add-int/lit8 v2, v0, -0x1

    add-int/lit8 v3, v1, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v5, v0, :cond_0

    invoke-virtual {p1, v5, v4}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v9

    invoke-static {v9}, Landroid/graphics/Color;->red(I)I

    move-result v9

    add-int/2addr v6, v9

    invoke-virtual {p1, v5, v4}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v9

    invoke-static {v9}, Landroid/graphics/Color;->green(I)I

    move-result v9

    add-int/2addr v7, v9

    invoke-virtual {p1, v5, v4}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v9

    invoke-static {v9}, Landroid/graphics/Color;->blue(I)I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {p1, v5, v3}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v9

    invoke-static {v9}, Landroid/graphics/Color;->red(I)I

    move-result v9

    add-int/2addr v6, v9

    invoke-virtual {p1, v5, v3}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v9

    invoke-static {v9}, Landroid/graphics/Color;->green(I)I

    move-result v9

    add-int/2addr v7, v9

    invoke-virtual {p1, v5, v3}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v9

    invoke-static {v9}, Landroid/graphics/Color;->blue(I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_1

    invoke-virtual {p1, v4, v3}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v5

    invoke-static {v5}, Landroid/graphics/Color;->red(I)I

    move-result v5

    add-int/2addr v6, v5

    invoke-virtual {p1, v4, v3}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v5

    invoke-static {v5}, Landroid/graphics/Color;->green(I)I

    move-result v5

    add-int/2addr v7, v5

    invoke-virtual {p1, v4, v3}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v5

    invoke-static {v5}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    add-int/2addr v8, v5

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v5

    invoke-static {v5}, Landroid/graphics/Color;->red(I)I

    move-result v5

    add-int/2addr v6, v5

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v5

    invoke-static {v5}, Landroid/graphics/Color;->green(I)I

    move-result v5

    add-int/2addr v7, v5

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v5

    invoke-static {v5}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    add-int/2addr v8, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x4

    div-int/2addr v6, v0

    div-int/2addr v7, v0

    div-int/2addr v8, v0

    invoke-static {v6, v7, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    return p1
.end method

.method private f()Lai/onnxruntime/OrtSession;
    .locals 3

    iget-object v0, p0, Lb/b;->e:Lai/onnxruntime/OrtSession;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lb/b;->e:Lai/onnxruntime/OrtSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lb/b;->c:Ljava/lang/String;

    invoke-direct {p0, v0}, Lb/b;->i(Ljava/lang/String;)[B

    move-result-object v0

    new-instance v1, Lai/onnxruntime/OrtSession$SessionOptions;

    invoke-direct {v1}, Lai/onnxruntime/OrtSession$SessionOptions;-><init>()V

    sget-object v2, Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;->ALL_OPT:Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;

    invoke-virtual {v1, v2}, Lai/onnxruntime/OrtSession$SessionOptions;->setOptimizationLevel(Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Lai/onnxruntime/OrtSession$SessionOptions;->addNnapi()V
    :try_end_2
    .catch Lai/onnxruntime/OrtException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    const/4 v2, 0x1

    :try_start_3
    invoke-virtual {v1, v2}, Lai/onnxruntime/OrtSession$SessionOptions;->addCPU(Z)V

    :goto_0
    iget-object v2, p0, Lb/b;->a:Lai/onnxruntime/OrtEnvironment;

    invoke-virtual {v2, v0, v1}, Lai/onnxruntime/OrtEnvironment;->createSession([BLai/onnxruntime/OrtSession$SessionOptions;)Lai/onnxruntime/OrtSession;

    move-result-object v0

    iput-object v0, p0, Lb/b;->e:Lai/onnxruntime/OrtSession;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_4
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to create session"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    :goto_1
    monitor-exit p0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :cond_1
    :goto_2
    iget-object v0, p0, Lb/b;->e:Lai/onnxruntime/OrtSession;

    return-object v0
.end method

.method private static synthetic h([FLjava/lang/Integer;Ljava/lang/Integer;)I
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    aget p2, p0, p2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget p0, p0, p1

    invoke-static {p2, p0}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    return p0
.end method

.method private i(Ljava/lang/String;)[B
    .locals 6

    iget-object v0, p0, Lb/b;->b:Landroid/content/res/AssetManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object p1

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/16 v2, 0x2000

    :try_start_1
    new-array v3, v2, [B

    :goto_0
    invoke-virtual {p1, v3, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    invoke-virtual {v0, v3, v1, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    if-eqz p1, :cond_1

    :try_start_5
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p1

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    throw v0
.end method


# virtual methods
.method public d(Landroid/graphics/Bitmap;ZZ)[[[[F
    .locals 12

    iget v0, p0, Lb/b;->g:I

    iget v1, p0, Lb/b;->f:I

    const/4 v2, 0x4

    new-array v2, v2, [I

    const/4 v3, 0x3

    aput v1, v2, v3

    const/4 v1, 0x2

    aput v0, v2, v1

    const/4 v0, 0x1

    aput v3, v2, v0

    const/4 v3, 0x0

    aput v0, v2, v3

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[[[F

    const/4 v4, 0x0

    if-eqz p2, :cond_1

    :try_start_0
    iget p2, p0, Lb/b;->f:I

    int-to-float p2, p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr p2, v5

    iget v5, p0, Lb/b;->g:I

    int-to-float v5, v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-static {p2, v5}, Ljava/lang/Math;->min(FF)F

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, p2

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, p2

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result p2

    iget v6, p0, Lb/b;->f:I

    iget v7, p0, Lb/b;->g:I

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    if-eqz p3, :cond_0

    invoke-direct {p0, v6}, Lb/b;->e(Landroid/graphics/Bitmap;)I

    move-result p3

    invoke-direct {p0, p3}, Lb/b;->c(I)I

    move-result p3

    invoke-virtual {v7, p3}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_0

    :cond_0
    const/16 p3, 0x72

    invoke-virtual {v7, p3, p3, p3}, Landroid/graphics/Canvas;->drawRGB(III)V

    :goto_0
    iget p3, p0, Lb/b;->f:I

    sub-int/2addr p3, v5

    div-int/2addr p3, v1

    iget v8, p0, Lb/b;->g:I

    sub-int/2addr v8, p2

    div-int/2addr v8, v1

    new-instance v9, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-direct {v9, v3, v3, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v10, Landroid/graphics/Rect;

    add-int/2addr v5, p3

    add-int/2addr p2, v8

    invoke-direct {v10, p3, v8, v5, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v7, p1, v9, v10, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object p2, v6

    goto :goto_1

    :catchall_0
    move-exception p2

    move-object v4, v6

    goto/16 :goto_4

    :catchall_1
    move-exception p2

    goto/16 :goto_4

    :cond_1
    if-eqz p3, :cond_2

    :try_start_2
    invoke-direct {p0, p1}, Lb/b;->b(Landroid/graphics/Bitmap;)I

    move-result p2

    invoke-direct {p0, p2}, Lb/b;->c(I)I

    move-result p2

    iget p3, p0, Lb/b;->f:I

    iget v5, p0, Lb/b;->g:I

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, p3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v5, p2}, Landroid/graphics/Canvas;->drawColor(I)V

    iget p2, p0, Lb/b;->f:I

    iget v6, p0, Lb/b;->g:I

    invoke-static {p1, p2, v6, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p2

    const/4 v6, 0x0

    invoke-virtual {v5, p2, v6, v6, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object p2, p3

    goto :goto_1

    :catchall_2
    move-exception p2

    move-object v4, p3

    goto :goto_4

    :cond_2
    :try_start_4
    iget p2, p0, Lb/b;->f:I

    iget p3, p0, Lb/b;->g:I

    invoke-static {p1, p2, p3, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_1
    :try_start_5
    iget v10, p0, Lb/b;->f:I

    iget v11, p0, Lb/b;->g:I

    mul-int p3, v10, v11

    new-array p3, p3, [I

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p2

    move-object v5, p3

    move v7, v10

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 v4, 0x0

    :goto_2
    iget v5, p0, Lb/b;->g:I

    if-ge v4, v5, :cond_4

    const/4 v5, 0x0

    :goto_3
    iget v6, p0, Lb/b;->f:I

    if-ge v5, v6, :cond_3

    mul-int v6, v6, v4

    add-int/2addr v6, v5

    aget v6, p3, v6

    shr-int/lit8 v7, v6, 0x10

    and-int/lit16 v7, v7, 0xff

    int-to-float v7, v7

    const v8, 0x3b808081

    mul-float v7, v7, v8

    shr-int/lit8 v9, v6, 0x8

    and-int/lit16 v9, v9, 0xff

    int-to-float v9, v9

    mul-float v9, v9, v8

    and-int/lit16 v6, v6, 0xff

    int-to-float v6, v6

    mul-float v6, v6, v8

    aget-object v8, v2, v3

    aget-object v10, v8, v3

    aget-object v10, v10, v4

    aput v7, v10, v5

    aget-object v7, v8, v0

    aget-object v7, v7, v4

    aput v9, v7, v5

    aget-object v7, v8, v1

    aget-object v7, v7, v4

    aput v6, v7, v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    if-eq p2, p1, :cond_5

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_5
    return-object v2

    :catchall_3
    move-exception p3

    move-object v4, p2

    move-object p2, p3

    :goto_4
    if-eqz v4, :cond_6

    if-eq v4, p1, :cond_6

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    :cond_6
    throw p2
.end method

.method public g([[[[FI)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[[[FI)",
            "Ljava/util/ArrayList<",
            "Lb/b$a;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-gtz p2, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lb/b;->d:[Ljava/lang/String;

    array-length v2, v1

    if-le p2, v2, :cond_1

    array-length p2, v1

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object v2, p0, Lb/b;->a:Lai/onnxruntime/OrtEnvironment;

    invoke-static {v2, p1}, Lai/onnxruntime/OnnxTensor;->createTensor(Lai/onnxruntime/OrtEnvironment;Ljava/lang/Object;)Lai/onnxruntime/OnnxTensor;

    move-result-object p1

    invoke-direct {p0}, Lb/b;->f()Lai/onnxruntime/OrtSession;

    move-result-object v2

    invoke-virtual {v2}, Lai/onnxruntime/OrtSession;->getInputNames()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3, p1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2, v3}, Lai/onnxruntime/OrtSession;->run(Ljava/util/Map;)Lai/onnxruntime/OrtSession$Result;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lai/onnxruntime/OrtSession$Result;->get(I)Lai/onnxruntime/OnnxValue;

    move-result-object v4

    check-cast v4, Lai/onnxruntime/OnnxTensor;

    invoke-virtual {v4}, Lai/onnxruntime/OnnxTensor;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[F

    aget-object v5, v5, v3

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    :goto_0
    array-length v8, v5

    if-ge v7, v8, :cond_2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    new-instance v7, Lb/a;

    invoke-direct {v7, v5}, Lb/a;-><init>([F)V

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :goto_1
    if-ge v3, p2, :cond_3

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    new-instance v8, Lb/b$a;

    iget-object v9, p0, Lb/b;->d:[Ljava/lang/String;

    aget-object v9, v9, v7

    aget v7, v5, v7

    invoke-direct {v8, p0, v9, v7}, Lb/b$a;-><init>(Lb/b;Ljava/lang/String;F)V

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lai/onnxruntime/OnnxTensor;->close()V

    invoke-virtual {v4}, Lai/onnxruntime/OnnxTensor;->close()V

    invoke-virtual {v2}, Lai/onnxruntime/OrtSession$Result;->close()V
    :try_end_0
    .catch Lai/onnxruntime/OrtException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method public j(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0, p1}, Lb/b;->i(Ljava/lang/String;)[B

    move-result-object p1

    new-instance v0, Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lb/b;->d:[Ljava/lang/String;

    return-void
.end method
