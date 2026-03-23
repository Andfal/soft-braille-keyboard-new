.class public Lcom/androlua/GifDecoder;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androlua/GifDecoder$GifAction;,
        Lcom/androlua/GifDecoder$GifFrame;
    }
.end annotation


# static fields
.field private static final MaxStackSize:I = 0x1000

.field public static final STATUS_FINISH:I = -0x1

.field public static final STATUS_FORMAT_ERROR:I = 0x1

.field public static final STATUS_OPEN_ERROR:I = 0x2

.field public static final STATUS_PARSING:I


# instance fields
.field private act:[I

.field private action:Lcom/androlua/GifDecoder$GifAction;

.field private bgColor:I

.field private bgIndex:I

.field private block:[B

.field private blockSize:I

.field private currentFrame:Lcom/androlua/GifDecoder$GifFrame;

.field private delay:I

.field private dispose:I

.field private frameCount:I

.field private gct:[I

.field private gctFlag:Z

.field private gctSize:I

.field private gifData:[B

.field private gifFrame:Lcom/androlua/GifDecoder$GifFrame;

.field public height:I

.field private ih:I

.field private image:Landroid/graphics/Bitmap;

.field private in:Ljava/io/InputStream;

.field private interlace:Z

.field private isShow:Z

.field private iw:I

.field private ix:I

.field private iy:I

.field private lastBgColor:I

.field private lastDispose:I

.field private lastImage:Landroid/graphics/Bitmap;

.field private lct:[I

.field private lctFlag:Z

.field private lctSize:I

.field private loopCount:I

.field private lrh:I

.field private lrw:I

.field private lrx:I

.field private lry:I

.field private pixelAspect:I

.field private pixelStack:[B

.field private pixels:[B

.field private prefix:[S

.field private status:I

.field private suffix:[B

.field private transIndex:I

.field private transparency:Z

.field public width:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/androlua/GifDecoder$GifAction;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/androlua/GifDecoder;->loopCount:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/androlua/GifDecoder;->currentFrame:Lcom/androlua/GifDecoder$GifFrame;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/androlua/GifDecoder;->isShow:Z

    const/16 v2, 0x100

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/androlua/GifDecoder;->block:[B

    iput v1, p0, Lcom/androlua/GifDecoder;->blockSize:I

    iput v1, p0, Lcom/androlua/GifDecoder;->dispose:I

    iput v1, p0, Lcom/androlua/GifDecoder;->lastDispose:I

    iput-boolean v1, p0, Lcom/androlua/GifDecoder;->transparency:Z

    iput v1, p0, Lcom/androlua/GifDecoder;->delay:I

    iput-object v0, p0, Lcom/androlua/GifDecoder;->gifData:[B

    iput-object p1, p0, Lcom/androlua/GifDecoder;->in:Ljava/io/InputStream;

    iput-object p2, p0, Lcom/androlua/GifDecoder;->action:Lcom/androlua/GifDecoder$GifAction;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/androlua/GifDecoder$GifAction;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/androlua/GifDecoder;->loopCount:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/androlua/GifDecoder;->currentFrame:Lcom/androlua/GifDecoder$GifFrame;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/androlua/GifDecoder;->isShow:Z

    const/16 v2, 0x100

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/androlua/GifDecoder;->block:[B

    iput v1, p0, Lcom/androlua/GifDecoder;->blockSize:I

    iput v1, p0, Lcom/androlua/GifDecoder;->dispose:I

    iput v1, p0, Lcom/androlua/GifDecoder;->lastDispose:I

    iput-boolean v1, p0, Lcom/androlua/GifDecoder;->transparency:Z

    iput v1, p0, Lcom/androlua/GifDecoder;->delay:I

    iput-object v0, p0, Lcom/androlua/GifDecoder;->action:Lcom/androlua/GifDecoder$GifAction;

    iput-object v0, p0, Lcom/androlua/GifDecoder;->gifData:[B

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/androlua/GifDecoder;->in:Ljava/io/InputStream;

    iput-object p2, p0, Lcom/androlua/GifDecoder;->action:Lcom/androlua/GifDecoder$GifAction;

    return-void
.end method

.method public constructor <init>([BLcom/androlua/GifDecoder$GifAction;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/androlua/GifDecoder;->loopCount:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/androlua/GifDecoder;->currentFrame:Lcom/androlua/GifDecoder$GifFrame;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/androlua/GifDecoder;->isShow:Z

    const/16 v1, 0x100

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/androlua/GifDecoder;->block:[B

    iput v0, p0, Lcom/androlua/GifDecoder;->blockSize:I

    iput v0, p0, Lcom/androlua/GifDecoder;->dispose:I

    iput v0, p0, Lcom/androlua/GifDecoder;->lastDispose:I

    iput-boolean v0, p0, Lcom/androlua/GifDecoder;->transparency:Z

    iput v0, p0, Lcom/androlua/GifDecoder;->delay:I

    iput-object p1, p0, Lcom/androlua/GifDecoder;->gifData:[B

    iput-object p2, p0, Lcom/androlua/GifDecoder;->action:Lcom/androlua/GifDecoder$GifAction;

    return-void
.end method

.method private decodeImageData()V
    .locals 24

    move-object/from16 v0, p0

    iget v1, v0, Lcom/androlua/GifDecoder;->iw:I

    iget v2, v0, Lcom/androlua/GifDecoder;->ih:I

    mul-int v1, v1, v2

    iget-object v2, v0, Lcom/androlua/GifDecoder;->pixels:[B

    if-eqz v2, :cond_0

    array-length v2, v2

    if-ge v2, v1, :cond_1

    :cond_0
    new-array v2, v1, [B

    iput-object v2, v0, Lcom/androlua/GifDecoder;->pixels:[B

    :cond_1
    iget-object v2, v0, Lcom/androlua/GifDecoder;->prefix:[S

    const/16 v3, 0x1000

    if-nez v2, :cond_2

    new-array v2, v3, [S

    iput-object v2, v0, Lcom/androlua/GifDecoder;->prefix:[S

    :cond_2
    iget-object v2, v0, Lcom/androlua/GifDecoder;->suffix:[B

    if-nez v2, :cond_3

    new-array v2, v3, [B

    iput-object v2, v0, Lcom/androlua/GifDecoder;->suffix:[B

    :cond_3
    iget-object v2, v0, Lcom/androlua/GifDecoder;->pixelStack:[B

    if-nez v2, :cond_4

    const/16 v2, 0x1001

    new-array v2, v2, [B

    iput-object v2, v0, Lcom/androlua/GifDecoder;->pixelStack:[B

    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/androlua/GifDecoder;->read()I

    move-result v2

    const/4 v4, 0x1

    shl-int v5, v4, v2

    add-int/lit8 v6, v5, 0x1

    add-int/lit8 v7, v5, 0x2

    add-int/2addr v2, v4

    shl-int v8, v4, v2

    sub-int/2addr v8, v4

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v5, :cond_5

    iget-object v11, v0, Lcom/androlua/GifDecoder;->prefix:[S

    aput-short v9, v11, v10

    iget-object v11, v0, Lcom/androlua/GifDecoder;->suffix:[B

    int-to-byte v12, v10

    aput-byte v12, v11, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_5
    move v14, v2

    move v9, v7

    move/from16 v16, v8

    const/4 v3, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    :goto_1
    if-ge v11, v1, :cond_11

    if-nez v12, :cond_10

    if-ge v13, v14, :cond_8

    if-nez v17, :cond_7

    invoke-direct/range {p0 .. p0}, Lcom/androlua/GifDecoder;->readBlock()I

    move-result v17

    if-gtz v17, :cond_6

    goto/16 :goto_5

    :cond_6
    const/16 v18, 0x0

    :cond_7
    iget-object v10, v0, Lcom/androlua/GifDecoder;->block:[B

    aget-byte v10, v10, v18

    and-int/lit16 v10, v10, 0xff

    shl-int/2addr v10, v13

    add-int/2addr v15, v10

    add-int/lit8 v13, v13, 0x8

    add-int/lit8 v18, v18, 0x1

    const/4 v10, -0x1

    add-int/lit8 v17, v17, -0x1

    goto :goto_1

    :cond_8
    const/4 v10, -0x1

    and-int v4, v15, v16

    shr-int/2addr v15, v14

    sub-int/2addr v13, v14

    if-gt v4, v9, :cond_11

    if-ne v4, v6, :cond_9

    goto/16 :goto_5

    :cond_9
    if-ne v4, v5, :cond_a

    move v14, v2

    move v9, v7

    move/from16 v16, v8

    const/4 v3, -0x1

    :goto_2
    const/4 v4, 0x1

    goto :goto_1

    :cond_a
    if-ne v3, v10, :cond_b

    iget-object v3, v0, Lcom/androlua/GifDecoder;->pixelStack:[B

    add-int/lit8 v10, v12, 0x1

    move/from16 v21, v2

    iget-object v2, v0, Lcom/androlua/GifDecoder;->suffix:[B

    aget-byte v2, v2, v4

    aput-byte v2, v3, v12

    move v3, v4

    move/from16 v19, v3

    move v12, v10

    move/from16 v2, v21

    goto :goto_2

    :cond_b
    move/from16 v21, v2

    if-ne v4, v9, :cond_c

    iget-object v2, v0, Lcom/androlua/GifDecoder;->pixelStack:[B

    add-int/lit8 v10, v12, 0x1

    move/from16 v22, v4

    move/from16 v4, v19

    int-to-byte v4, v4

    aput-byte v4, v2, v12

    move v2, v3

    move v12, v10

    goto :goto_3

    :cond_c
    move/from16 v22, v4

    move/from16 v2, v22

    :goto_3
    if-le v2, v5, :cond_d

    iget-object v4, v0, Lcom/androlua/GifDecoder;->pixelStack:[B

    add-int/lit8 v10, v12, 0x1

    move/from16 v19, v5

    iget-object v5, v0, Lcom/androlua/GifDecoder;->suffix:[B

    aget-byte v5, v5, v2

    aput-byte v5, v4, v12

    iget-object v4, v0, Lcom/androlua/GifDecoder;->prefix:[S

    aget-short v2, v4, v2

    move v12, v10

    move/from16 v5, v19

    goto :goto_3

    :cond_d
    move/from16 v19, v5

    iget-object v4, v0, Lcom/androlua/GifDecoder;->suffix:[B

    aget-byte v2, v4, v2

    and-int/lit16 v2, v2, 0xff

    const/16 v5, 0x1000

    if-lt v9, v5, :cond_e

    goto :goto_5

    :cond_e
    iget-object v5, v0, Lcom/androlua/GifDecoder;->pixelStack:[B

    add-int/lit8 v10, v12, 0x1

    move/from16 v23, v6

    int-to-byte v6, v2

    aput-byte v6, v5, v12

    iget-object v5, v0, Lcom/androlua/GifDecoder;->prefix:[S

    int-to-short v3, v3

    aput-short v3, v5, v9

    aput-byte v6, v4, v9

    add-int/lit8 v9, v9, 0x1

    and-int v3, v9, v16

    const/16 v5, 0x1000

    if-nez v3, :cond_f

    if-ge v9, v5, :cond_f

    add-int/lit8 v14, v14, 0x1

    add-int v16, v16, v9

    :cond_f
    move v12, v10

    move/from16 v3, v22

    goto :goto_4

    :cond_10
    move/from16 v21, v2

    move/from16 v23, v6

    move/from16 v4, v19

    move/from16 v19, v5

    const/16 v5, 0x1000

    move v2, v4

    :goto_4
    const/4 v4, -0x1

    add-int/2addr v12, v4

    iget-object v6, v0, Lcom/androlua/GifDecoder;->pixels:[B

    add-int/lit8 v10, v20, 0x1

    iget-object v4, v0, Lcom/androlua/GifDecoder;->pixelStack:[B

    aget-byte v4, v4, v12

    aput-byte v4, v6, v20

    add-int/lit8 v11, v11, 0x1

    move/from16 v20, v10

    move/from16 v5, v19

    move/from16 v6, v23

    const/4 v4, 0x1

    move/from16 v19, v2

    move/from16 v2, v21

    goto/16 :goto_1

    :cond_11
    :goto_5
    move/from16 v2, v20

    :goto_6
    if-ge v2, v1, :cond_12

    iget-object v3, v0, Lcom/androlua/GifDecoder;->pixels:[B

    const/4 v4, 0x0

    aput-byte v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_12
    return-void
.end method

.method private err()Z
    .locals 1

    iget v0, p0, Lcom/androlua/GifDecoder;->status:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private init()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/androlua/GifDecoder;->status:I

    iput v0, p0, Lcom/androlua/GifDecoder;->frameCount:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/androlua/GifDecoder;->gifFrame:Lcom/androlua/GifDecoder$GifFrame;

    iput-object v0, p0, Lcom/androlua/GifDecoder;->gct:[I

    iput-object v0, p0, Lcom/androlua/GifDecoder;->lct:[I

    return-void
.end method

.method private read()I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/androlua/GifDecoder;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/androlua/GifDecoder;->status:I

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private readBlock()I
    .locals 4

    invoke-direct {p0}, Lcom/androlua/GifDecoder;->read()I

    move-result v0

    iput v0, p0, Lcom/androlua/GifDecoder;->blockSize:I

    const/4 v1, 0x0

    if-lez v0, :cond_2

    :goto_0
    :try_start_0
    iget v0, p0, Lcom/androlua/GifDecoder;->blockSize:I

    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/androlua/GifDecoder;->in:Ljava/io/InputStream;

    iget-object v3, p0, Lcom/androlua/GifDecoder;->block:[B

    sub-int/2addr v0, v1

    invoke-virtual {v2, v3, v1, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/2addr v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_1
    iget v0, p0, Lcom/androlua/GifDecoder;->blockSize:I

    if-ge v1, v0, :cond_2

    const/4 v0, 0x1

    iput v0, p0, Lcom/androlua/GifDecoder;->status:I

    :cond_2
    return v1
.end method

.method private readByte()I
    .locals 2

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/androlua/GifDecoder;->gifData:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lcom/androlua/GifDecoder;->in:Ljava/io/InputStream;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/androlua/GifDecoder;->gifData:[B

    invoke-direct {p0}, Lcom/androlua/GifDecoder;->readStream()I

    move-result v0

    return v0
.end method

.method private readColorTable(I)[I
    .locals 9

    mul-int/lit8 v0, p1, 0x3

    new-array v1, v0, [B

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/androlua/GifDecoder;->in:Ljava/io/InputStream;

    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    const/4 p1, 0x1

    iput p1, p0, Lcom/androlua/GifDecoder;->status:I

    const/4 p1, 0x0

    goto :goto_2

    :cond_0
    const/16 v0, 0x100

    new-array v0, v0, [I

    const/4 v3, 0x0

    :goto_1
    if-ge v2, p1, :cond_1

    add-int/lit8 v4, v3, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v6, v5, 0x1

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v7, v2, 0x1

    shl-int/lit8 v3, v3, 0x10

    const/high16 v8, -0x1000000

    or-int/2addr v3, v8

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    or-int/2addr v3, v5

    aput v3, v0, v2

    move v3, v6

    move v2, v7

    goto :goto_1

    :cond_1
    move-object p1, v0

    :goto_2
    return-object p1
.end method

.method private readContents()V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_8

    invoke-direct {p0}, Lcom/androlua/GifDecoder;->err()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-direct {p0}, Lcom/androlua/GifDecoder;->read()I

    move-result v2

    if-eqz v2, :cond_0

    const/16 v3, 0x21

    if-eq v2, v3, :cond_3

    const/16 v3, 0x2c

    if-eq v2, v3, :cond_2

    const/16 v3, 0x3b

    const/4 v4, 0x1

    if-eq v2, v3, :cond_1

    iput v4, p0, Lcom/androlua/GifDecoder;->status:I

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/androlua/GifDecoder;->readImage()V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/androlua/GifDecoder;->read()I

    move-result v2

    const/16 v3, 0xf9

    if-eq v2, v3, :cond_7

    const/16 v3, 0xff

    if-eq v2, v3, :cond_5

    :cond_4
    invoke-direct {p0}, Lcom/androlua/GifDecoder;->skip()V

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/androlua/GifDecoder;->readBlock()I

    const-string v2, ""

    const/4 v3, 0x0

    :goto_1
    const/16 v4, 0xb

    if-ge v3, v4, :cond_6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/androlua/GifDecoder;->block:[B

    aget-byte v2, v2, v3

    int-to-char v2, v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    const-string v3, "NETSCAPE2.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0}, Lcom/androlua/GifDecoder;->readNetscapeExt()V

    goto :goto_0

    :cond_7
    invoke-direct {p0}, Lcom/androlua/GifDecoder;->readGraphicControlExt()V

    goto :goto_0

    :cond_8
    return-void
.end method

.method private readGraphicControlExt()V
    .locals 3

    invoke-direct {p0}, Lcom/androlua/GifDecoder;->read()I

    invoke-direct {p0}, Lcom/androlua/GifDecoder;->read()I

    move-result v0

    and-int/lit8 v1, v0, 0x1c

    shr-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/androlua/GifDecoder;->dispose:I

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iput v2, p0, Lcom/androlua/GifDecoder;->dispose:I

    :cond_0
    and-int/2addr v0, v2

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/androlua/GifDecoder;->transparency:Z

    invoke-direct {p0}, Lcom/androlua/GifDecoder;->readShort()I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/androlua/GifDecoder;->delay:I

    invoke-direct {p0}, Lcom/androlua/GifDecoder;->read()I

    move-result v0

    iput v0, p0, Lcom/androlua/GifDecoder;->transIndex:I

    invoke-direct {p0}, Lcom/androlua/GifDecoder;->read()I

    return-void
.end method

.method private readHeader()V
    .locals 3

    const-string v0, ""

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/androlua/GifDecoder;->read()I

    move-result v0

    int-to-char v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "GIF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput v0, p0, Lcom/androlua/GifDecoder;->status:I

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/androlua/GifDecoder;->readLSD()V

    iget-boolean v0, p0, Lcom/androlua/GifDecoder;->gctFlag:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/androlua/GifDecoder;->err()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/androlua/GifDecoder;->gctSize:I

    invoke-direct {p0, v0}, Lcom/androlua/GifDecoder;->readColorTable(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/androlua/GifDecoder;->gct:[I

    iget v1, p0, Lcom/androlua/GifDecoder;->bgIndex:I

    aget v0, v0, v1

    iput v0, p0, Lcom/androlua/GifDecoder;->bgColor:I

    :cond_2
    return-void
.end method

.method private readImage()V
    .locals 6

    invoke-direct {p0}, Lcom/androlua/GifDecoder;->readShort()I

    move-result v0

    iput v0, p0, Lcom/androlua/GifDecoder;->ix:I

    invoke-direct {p0}, Lcom/androlua/GifDecoder;->readShort()I

    move-result v0

    iput v0, p0, Lcom/androlua/GifDecoder;->iy:I

    invoke-direct {p0}, Lcom/androlua/GifDecoder;->readShort()I

    move-result v0

    iput v0, p0, Lcom/androlua/GifDecoder;->iw:I

    invoke-direct {p0}, Lcom/androlua/GifDecoder;->readShort()I

    move-result v0

    iput v0, p0, Lcom/androlua/GifDecoder;->ih:I

    invoke-direct {p0}, Lcom/androlua/GifDecoder;->read()I

    move-result v0

    and-int/lit16 v1, v0, 0x80

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/androlua/GifDecoder;->lctFlag:Z

    and-int/lit8 v4, v0, 0x40

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    iput-boolean v4, p0, Lcom/androlua/GifDecoder;->interlace:Z

    and-int/lit8 v0, v0, 0x7

    const/4 v4, 0x2

    shl-int v0, v4, v0

    iput v0, p0, Lcom/androlua/GifDecoder;->lctSize:I

    if-eqz v1, :cond_2

    invoke-direct {p0, v0}, Lcom/androlua/GifDecoder;->readColorTable(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/androlua/GifDecoder;->lct:[I

    iput-object v0, p0, Lcom/androlua/GifDecoder;->act:[I

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/androlua/GifDecoder;->gct:[I

    iput-object v0, p0, Lcom/androlua/GifDecoder;->act:[I

    iget v0, p0, Lcom/androlua/GifDecoder;->bgIndex:I

    iget v1, p0, Lcom/androlua/GifDecoder;->transIndex:I

    if-ne v0, v1, :cond_3

    iput v3, p0, Lcom/androlua/GifDecoder;->bgColor:I

    :cond_3
    :goto_2
    iget-boolean v0, p0, Lcom/androlua/GifDecoder;->transparency:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/androlua/GifDecoder;->act:[I

    iget v1, p0, Lcom/androlua/GifDecoder;->transIndex:I

    aget v4, v0, v1

    aput v3, v0, v1

    move v3, v4

    :cond_4
    iget-object v0, p0, Lcom/androlua/GifDecoder;->act:[I

    if-nez v0, :cond_5

    iput v2, p0, Lcom/androlua/GifDecoder;->status:I

    :cond_5
    invoke-direct {p0}, Lcom/androlua/GifDecoder;->err()Z

    move-result v0

    if-eqz v0, :cond_6

    return-void

    :cond_6
    invoke-direct {p0}, Lcom/androlua/GifDecoder;->decodeImageData()V

    invoke-direct {p0}, Lcom/androlua/GifDecoder;->skip()V

    invoke-direct {p0}, Lcom/androlua/GifDecoder;->err()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget v0, p0, Lcom/androlua/GifDecoder;->frameCount:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/androlua/GifDecoder;->frameCount:I

    iget v0, p0, Lcom/androlua/GifDecoder;->width:I

    iget v1, p0, Lcom/androlua/GifDecoder;->height:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/androlua/GifDecoder;->image:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Lcom/androlua/GifDecoder;->setPixels()V

    iget-object v0, p0, Lcom/androlua/GifDecoder;->gifFrame:Lcom/androlua/GifDecoder$GifFrame;

    if-nez v0, :cond_8

    new-instance v0, Lcom/androlua/GifDecoder$GifFrame;

    iget-object v1, p0, Lcom/androlua/GifDecoder;->image:Landroid/graphics/Bitmap;

    iget v4, p0, Lcom/androlua/GifDecoder;->delay:I

    invoke-direct {v0, v1, v4}, Lcom/androlua/GifDecoder$GifFrame;-><init>(Landroid/graphics/Bitmap;I)V

    iput-object v0, p0, Lcom/androlua/GifDecoder;->gifFrame:Lcom/androlua/GifDecoder$GifFrame;

    iput-object v0, p0, Lcom/androlua/GifDecoder;->currentFrame:Lcom/androlua/GifDecoder$GifFrame;

    goto :goto_4

    :cond_8
    :goto_3
    iget-object v1, v0, Lcom/androlua/GifDecoder$GifFrame;->nextFrame:Lcom/androlua/GifDecoder$GifFrame;

    if-eqz v1, :cond_9

    move-object v0, v1

    goto :goto_3

    :cond_9
    new-instance v1, Lcom/androlua/GifDecoder$GifFrame;

    iget-object v4, p0, Lcom/androlua/GifDecoder;->image:Landroid/graphics/Bitmap;

    iget v5, p0, Lcom/androlua/GifDecoder;->delay:I

    invoke-direct {v1, v4, v5}, Lcom/androlua/GifDecoder$GifFrame;-><init>(Landroid/graphics/Bitmap;I)V

    iput-object v1, v0, Lcom/androlua/GifDecoder$GifFrame;->nextFrame:Lcom/androlua/GifDecoder$GifFrame;

    :goto_4
    iget-boolean v0, p0, Lcom/androlua/GifDecoder;->transparency:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/androlua/GifDecoder;->act:[I

    iget v1, p0, Lcom/androlua/GifDecoder;->transIndex:I

    aput v3, v0, v1

    :cond_a
    invoke-direct {p0}, Lcom/androlua/GifDecoder;->resetFrame()V

    iget-object v0, p0, Lcom/androlua/GifDecoder;->action:Lcom/androlua/GifDecoder$GifAction;

    iget v1, p0, Lcom/androlua/GifDecoder;->frameCount:I

    invoke-interface {v0, v2, v1}, Lcom/androlua/GifDecoder$GifAction;->parseOk(ZI)V

    return-void
.end method

.method private readLSD()V
    .locals 2

    invoke-direct {p0}, Lcom/androlua/GifDecoder;->readShort()I

    move-result v0

    iput v0, p0, Lcom/androlua/GifDecoder;->width:I

    invoke-direct {p0}, Lcom/androlua/GifDecoder;->readShort()I

    move-result v0

    iput v0, p0, Lcom/androlua/GifDecoder;->height:I

    invoke-direct {p0}, Lcom/androlua/GifDecoder;->read()I

    move-result v0

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/androlua/GifDecoder;->gctFlag:Z

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x2

    shl-int v0, v1, v0

    iput v0, p0, Lcom/androlua/GifDecoder;->gctSize:I

    invoke-direct {p0}, Lcom/androlua/GifDecoder;->read()I

    move-result v0

    iput v0, p0, Lcom/androlua/GifDecoder;->bgIndex:I

    invoke-direct {p0}, Lcom/androlua/GifDecoder;->read()I

    move-result v0

    iput v0, p0, Lcom/androlua/GifDecoder;->pixelAspect:I

    return-void
.end method

.method private readNetscapeExt()V
    .locals 3

    :cond_0
    invoke-direct {p0}, Lcom/androlua/GifDecoder;->readBlock()I

    iget-object v0, p0, Lcom/androlua/GifDecoder;->block:[B

    const/4 v1, 0x0

    aget-byte v1, v0, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    aget-byte v1, v0, v2

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x2

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    iput v0, p0, Lcom/androlua/GifDecoder;->loopCount:I

    :cond_1
    iget v0, p0, Lcom/androlua/GifDecoder;->blockSize:I

    if-lez v0, :cond_2

    invoke-direct {p0}, Lcom/androlua/GifDecoder;->err()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    return-void
.end method

.method private readShort()I
    .locals 2

    invoke-direct {p0}, Lcom/androlua/GifDecoder;->read()I

    move-result v0

    invoke-direct {p0}, Lcom/androlua/GifDecoder;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method private readStream()I
    .locals 4

    invoke-direct {p0}, Lcom/androlua/GifDecoder;->init()V

    iget-object v0, p0, Lcom/androlua/GifDecoder;->in:Ljava/io/InputStream;

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/androlua/GifDecoder;->readHeader()V

    invoke-direct {p0}, Lcom/androlua/GifDecoder;->err()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/androlua/GifDecoder;->readContents()V

    iget v0, p0, Lcom/androlua/GifDecoder;->frameCount:I

    const/4 v3, 0x1

    if-gez v0, :cond_0

    iput v3, p0, Lcom/androlua/GifDecoder;->status:I

    goto :goto_0

    :cond_0
    iput v2, p0, Lcom/androlua/GifDecoder;->status:I

    iget-object v0, p0, Lcom/androlua/GifDecoder;->action:Lcom/androlua/GifDecoder$GifAction;

    invoke-interface {v0, v3, v2}, Lcom/androlua/GifDecoder$GifAction;->parseOk(ZI)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/androlua/GifDecoder;->action:Lcom/androlua/GifDecoder$GifAction;

    invoke-interface {v0, v1, v2}, Lcom/androlua/GifDecoder$GifAction;->parseOk(ZI)V

    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/androlua/GifDecoder;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :cond_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/androlua/GifDecoder;->status:I

    iget-object v0, p0, Lcom/androlua/GifDecoder;->action:Lcom/androlua/GifDecoder$GifAction;

    invoke-interface {v0, v1, v2}, Lcom/androlua/GifDecoder$GifAction;->parseOk(ZI)V

    :goto_2
    iget v0, p0, Lcom/androlua/GifDecoder;->status:I

    return v0
.end method

.method private resetFrame()V
    .locals 1

    iget v0, p0, Lcom/androlua/GifDecoder;->dispose:I

    iput v0, p0, Lcom/androlua/GifDecoder;->lastDispose:I

    iget v0, p0, Lcom/androlua/GifDecoder;->ix:I

    iput v0, p0, Lcom/androlua/GifDecoder;->lrx:I

    iget v0, p0, Lcom/androlua/GifDecoder;->iy:I

    iput v0, p0, Lcom/androlua/GifDecoder;->lry:I

    iget v0, p0, Lcom/androlua/GifDecoder;->iw:I

    iput v0, p0, Lcom/androlua/GifDecoder;->lrw:I

    iget v0, p0, Lcom/androlua/GifDecoder;->ih:I

    iput v0, p0, Lcom/androlua/GifDecoder;->lrh:I

    iget-object v0, p0, Lcom/androlua/GifDecoder;->image:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/androlua/GifDecoder;->lastImage:Landroid/graphics/Bitmap;

    iget v0, p0, Lcom/androlua/GifDecoder;->bgColor:I

    iput v0, p0, Lcom/androlua/GifDecoder;->lastBgColor:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/androlua/GifDecoder;->dispose:I

    iput-boolean v0, p0, Lcom/androlua/GifDecoder;->transparency:Z

    iput v0, p0, Lcom/androlua/GifDecoder;->delay:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/androlua/GifDecoder;->lct:[I

    return-void
.end method

.method private setPixels()V
    .locals 14

    iget v0, p0, Lcom/androlua/GifDecoder;->width:I

    iget v1, p0, Lcom/androlua/GifDecoder;->height:I

    mul-int v0, v0, v1

    new-array v0, v0, [I

    iget v1, p0, Lcom/androlua/GifDecoder;->lastDispose:I

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-lez v1, :cond_4

    if-ne v1, v9, :cond_1

    iget v1, p0, Lcom/androlua/GifDecoder;->frameCount:I

    sub-int/2addr v1, v11

    if-lez v1, :cond_0

    sub-int/2addr v1, v12

    invoke-virtual {p0, v1}, Lcom/androlua/GifDecoder;->getFrameImage(I)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lcom/androlua/GifDecoder;->lastImage:Landroid/graphics/Bitmap;

    :cond_1
    iget-object v1, p0, Lcom/androlua/GifDecoder;->lastImage:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4

    const/4 v3, 0x0

    iget v7, p0, Lcom/androlua/GifDecoder;->width:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v8, p0, Lcom/androlua/GifDecoder;->height:I

    move-object v2, v0

    move v4, v7

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    iget v1, p0, Lcom/androlua/GifDecoder;->lastDispose:I

    if-ne v1, v11, :cond_4

    iget-boolean v1, p0, Lcom/androlua/GifDecoder;->transparency:Z

    if-nez v1, :cond_2

    iget v1, p0, Lcom/androlua/GifDecoder;->lastBgColor:I

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    const/4 v2, 0x0

    :goto_2
    iget v3, p0, Lcom/androlua/GifDecoder;->lrh:I

    if-ge v2, v3, :cond_4

    iget v3, p0, Lcom/androlua/GifDecoder;->lry:I

    add-int/2addr v3, v2

    iget v4, p0, Lcom/androlua/GifDecoder;->width:I

    mul-int v3, v3, v4

    iget v4, p0, Lcom/androlua/GifDecoder;->lrx:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/androlua/GifDecoder;->lrw:I

    add-int/2addr v4, v3

    :goto_3
    if-ge v3, v4, :cond_3

    aput v1, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    :goto_4
    iget v4, p0, Lcom/androlua/GifDecoder;->ih:I

    if-ge v10, v4, :cond_d

    iget-boolean v5, p0, Lcom/androlua/GifDecoder;->interlace:Z

    if-eqz v5, :cond_9

    if-lt v2, v4, :cond_8

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x4

    if-eq v3, v11, :cond_7

    if-eq v3, v9, :cond_6

    if-eq v3, v4, :cond_5

    goto :goto_5

    :cond_5
    const/4 v1, 0x2

    const/4 v2, 0x1

    goto :goto_5

    :cond_6
    const/4 v1, 0x4

    const/4 v2, 0x2

    goto :goto_5

    :cond_7
    const/4 v2, 0x4

    :cond_8
    :goto_5
    add-int v4, v2, v1

    goto :goto_6

    :cond_9
    move v4, v2

    move v2, v10

    :goto_6
    iget v5, p0, Lcom/androlua/GifDecoder;->iy:I

    add-int/2addr v2, v5

    iget v5, p0, Lcom/androlua/GifDecoder;->height:I

    if-ge v2, v5, :cond_c

    iget v5, p0, Lcom/androlua/GifDecoder;->width:I

    mul-int v2, v2, v5

    iget v6, p0, Lcom/androlua/GifDecoder;->ix:I

    add-int/2addr v6, v2

    iget v7, p0, Lcom/androlua/GifDecoder;->iw:I

    add-int v8, v6, v7

    add-int v13, v2, v5

    if-ge v13, v8, :cond_a

    add-int v8, v2, v5

    :cond_a
    mul-int v7, v7, v10

    :goto_7
    if-ge v6, v8, :cond_c

    iget-object v2, p0, Lcom/androlua/GifDecoder;->pixels:[B

    add-int/lit8 v5, v7, 0x1

    aget-byte v2, v2, v7

    and-int/lit16 v2, v2, 0xff

    iget-object v7, p0, Lcom/androlua/GifDecoder;->act:[I

    aget v2, v7, v2

    if-eqz v2, :cond_b

    aput v2, v0, v6

    :cond_b
    add-int/lit8 v6, v6, 0x1

    move v7, v5

    goto :goto_7

    :cond_c
    add-int/lit8 v10, v10, 0x1

    move v2, v4

    goto :goto_4

    :cond_d
    iget v1, p0, Lcom/androlua/GifDecoder;->width:I

    iget v2, p0, Lcom/androlua/GifDecoder;->height:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/androlua/GifDecoder;->image:Landroid/graphics/Bitmap;

    return-void
.end method

.method private skip()V
    .locals 1

    :cond_0
    invoke-direct {p0}, Lcom/androlua/GifDecoder;->readBlock()I

    iget v0, p0, Lcom/androlua/GifDecoder;->blockSize:I

    if-lez v0, :cond_1

    invoke-direct {p0}, Lcom/androlua/GifDecoder;->err()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    return-void
.end method


# virtual methods
.method public free()V
    .locals 2

    iget-object v0, p0, Lcom/androlua/GifDecoder;->gifFrame:Lcom/androlua/GifDecoder$GifFrame;

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-object v1, v0, Lcom/androlua/GifDecoder$GifFrame;->image:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/androlua/GifDecoder;->gifFrame:Lcom/androlua/GifDecoder$GifFrame;

    iget-object v0, v0, Lcom/androlua/GifDecoder$GifFrame;->nextFrame:Lcom/androlua/GifDecoder$GifFrame;

    iput-object v0, p0, Lcom/androlua/GifDecoder;->gifFrame:Lcom/androlua/GifDecoder$GifFrame;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/androlua/GifDecoder;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iput-object v1, p0, Lcom/androlua/GifDecoder;->in:Ljava/io/InputStream;

    :cond_1
    iput-object v1, p0, Lcom/androlua/GifDecoder;->gifData:[B

    return-void
.end method

.method public getCurrentFrame()Lcom/androlua/GifDecoder$GifFrame;
    .locals 1

    iget-object v0, p0, Lcom/androlua/GifDecoder;->currentFrame:Lcom/androlua/GifDecoder$GifFrame;

    return-object v0
.end method

.method public getDelay(I)I
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/androlua/GifDecoder;->delay:I

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/androlua/GifDecoder;->frameCount:I

    if-ge p1, v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/androlua/GifDecoder;->getFrame(I)Lcom/androlua/GifDecoder$GifFrame;

    move-result-object p1

    if-eqz p1, :cond_0

    iget p1, p1, Lcom/androlua/GifDecoder$GifFrame;->delay:I

    iput p1, p0, Lcom/androlua/GifDecoder;->delay:I

    :cond_0
    iget p1, p0, Lcom/androlua/GifDecoder;->delay:I

    return p1
.end method

.method public getDelays()[I
    .locals 4

    iget-object v0, p0, Lcom/androlua/GifDecoder;->gifFrame:Lcom/androlua/GifDecoder$GifFrame;

    iget v1, p0, Lcom/androlua/GifDecoder;->frameCount:I

    new-array v1, v1, [I

    const/4 v2, 0x0

    :goto_0
    if-eqz v0, :cond_0

    iget v3, p0, Lcom/androlua/GifDecoder;->frameCount:I

    if-ge v2, v3, :cond_0

    iget v3, v0, Lcom/androlua/GifDecoder$GifFrame;->delay:I

    aput v3, v1, v2

    iget-object v0, v0, Lcom/androlua/GifDecoder$GifFrame;->nextFrame:Lcom/androlua/GifDecoder$GifFrame;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getFrame(I)Lcom/androlua/GifDecoder$GifFrame;
    .locals 2

    iget-object v0, p0, Lcom/androlua/GifDecoder;->gifFrame:Lcom/androlua/GifDecoder$GifFrame;

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_1

    if-ne v1, p1, :cond_0

    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/androlua/GifDecoder$GifFrame;->nextFrame:Lcom/androlua/GifDecoder$GifFrame;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getFrameCount()I
    .locals 1

    iget v0, p0, Lcom/androlua/GifDecoder;->frameCount:I

    return v0
.end method

.method public getFrameImage(I)Landroid/graphics/Bitmap;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/androlua/GifDecoder;->getFrame(I)Lcom/androlua/GifDecoder$GifFrame;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object p1, p1, Lcom/androlua/GifDecoder$GifFrame;->image:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public getImage()Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/androlua/GifDecoder;->getFrameImage(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getLoopCount()I
    .locals 1

    iget v0, p0, Lcom/androlua/GifDecoder;->loopCount:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    iget v0, p0, Lcom/androlua/GifDecoder;->status:I

    return v0
.end method

.method public next()Lcom/androlua/GifDecoder$GifFrame;
    .locals 1

    iget-boolean v0, p0, Lcom/androlua/GifDecoder;->isShow:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/androlua/GifDecoder;->isShow:Z

    iget-object v0, p0, Lcom/androlua/GifDecoder;->gifFrame:Lcom/androlua/GifDecoder$GifFrame;

    return-object v0

    :cond_0
    iget v0, p0, Lcom/androlua/GifDecoder;->status:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/androlua/GifDecoder;->currentFrame:Lcom/androlua/GifDecoder$GifFrame;

    iget-object v0, v0, Lcom/androlua/GifDecoder$GifFrame;->nextFrame:Lcom/androlua/GifDecoder$GifFrame;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/androlua/GifDecoder;->currentFrame:Lcom/androlua/GifDecoder$GifFrame;

    iget-object v0, v0, Lcom/androlua/GifDecoder$GifFrame;->nextFrame:Lcom/androlua/GifDecoder$GifFrame;

    iput-object v0, p0, Lcom/androlua/GifDecoder;->currentFrame:Lcom/androlua/GifDecoder$GifFrame;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/androlua/GifDecoder;->gifFrame:Lcom/androlua/GifDecoder$GifFrame;

    :goto_0
    iput-object v0, p0, Lcom/androlua/GifDecoder;->currentFrame:Lcom/androlua/GifDecoder$GifFrame;

    :cond_2
    iget-object v0, p0, Lcom/androlua/GifDecoder;->currentFrame:Lcom/androlua/GifDecoder$GifFrame;

    return-object v0
.end method

.method public parseOk()Z
    .locals 2

    iget v0, p0, Lcom/androlua/GifDecoder;->status:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lcom/androlua/GifDecoder;->gifFrame:Lcom/androlua/GifDecoder$GifFrame;

    iput-object v0, p0, Lcom/androlua/GifDecoder;->currentFrame:Lcom/androlua/GifDecoder$GifFrame;

    return-void
.end method

.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/androlua/GifDecoder;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/androlua/GifDecoder;->readStream()I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/androlua/GifDecoder;->gifData:[B

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/androlua/GifDecoder;->readByte()I

    :cond_1
    :goto_0
    return-void
.end method
