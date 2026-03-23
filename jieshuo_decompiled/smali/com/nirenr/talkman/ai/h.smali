.class public Lcom/nirenr/talkman/ai/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static d:Ljava/lang/String;

.field private static e:I

.field private static f:Ljava/lang/String;

.field private static g:J

.field private static h:I

.field private static final i:[Ljava/lang/String;

.field private static j:Ljava/lang/String;

.field private static final k:[Ljava/lang/String;


# instance fields
.field private final a:Lcom/nirenr/talkman/TalkManAccessibilityService;

.field private b:Lcom/androlua/util/AsyncTaskX;

.field private c:Lcom/androlua/util/AsyncTaskX;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const-string v0, "https://api.youtu.qq.com/youtu/imageapi/imagetag"

    const-string v1, "https://api.youtu.qq.com/youtu/imageapi/imagetag"

    const-string v2, "https://api.youtu.qq.com/youtu/ocrapi/generalocr"

    const-string v3, "https://api.youtu.qq.com/youtu/api/detectface"

    const-string v4, "https://openai.qq.com/api/json/ai/GetMultiAI"

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    const-string v8, ""

    const-string v9, "https://api.youtu.qq.com/youtu/ocrapi/arithmeticocr"

    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nirenr/talkman/ai/h;->i:[Ljava/lang/String;

    const-string v0, "https://api.youtu.qq.com/youtu/ocrapi/generalocr"

    const-string v1, "https://api.youtu.qq.com/youtu/ocrapi/fastocr"

    const-string v2, ""

    filled-new-array {v2, v2, v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nirenr/talkman/ai/h;->k:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nirenr/talkman/ai/h;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    return-void
.end method

.method public static B([BLcom/nirenr/talkman/ai/OcrResult$OCRListener;)Lcom/androlua/util/AsyncTaskX;
    .locals 3

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v0

    const v1, 0x7f0704d3

    const-string v2, "0"

    invoke-static {v0, v1, v2}, Lk2/b0;->h(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x7

    invoke-static {v0, p0, p1}, Lcom/nirenr/talkman/ai/BaiduAI;->d(I[BLcom/nirenr/talkman/ai/OcrResult$OCRListener;)Lcom/androlua/util/AsyncTaskX;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0, p1}, Lcom/nirenr/talkman/ai/f;->i([BLcom/nirenr/talkman/ai/OcrResult$OCRListener;)Lcom/androlua/util/AsyncTaskX;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic a(Lcom/nirenr/talkman/ai/h;)Lcom/androlua/util/AsyncTaskX;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/ai/h;->b:Lcom/androlua/util/AsyncTaskX;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/nirenr/talkman/ai/h;)Lcom/androlua/util/AsyncTaskX;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/ai/h;->c:Lcom/androlua/util/AsyncTaskX;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/nirenr/talkman/ai/h;)Lcom/nirenr/talkman/TalkManAccessibilityService;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/ai/h;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    return-object p0
.end method

.method static bridge synthetic d(Lcom/nirenr/talkman/ai/h;Lcom/androlua/util/AsyncTaskX;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/ai/h;->b:Lcom/androlua/util/AsyncTaskX;

    return-void
.end method

.method static bridge synthetic e(Lcom/nirenr/talkman/ai/h;Lcom/androlua/util/AsyncTaskX;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/ai/h;->c:Lcom/androlua/util/AsyncTaskX;

    return-void
.end method

.method static bridge synthetic f()I
    .locals 1

    sget v0, Lcom/nirenr/talkman/ai/h;->e:I

    return v0
.end method

.method static bridge synthetic g()I
    .locals 1

    sget v0, Lcom/nirenr/talkman/ai/h;->h:I

    return v0
.end method

.method static bridge synthetic h(I)V
    .locals 0

    sput p0, Lcom/nirenr/talkman/ai/h;->e:I

    return-void
.end method

.method static bridge synthetic i(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/nirenr/talkman/ai/h;->s(Ljava/lang/String;)V

    return-void
.end method

.method public static j(ILandroid/graphics/Bitmap;Lcom/nirenr/talkman/ai/OcrResult$OCRListener;)Lcom/androlua/util/AsyncTaskX;
    .locals 3

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/nirenr/talkman/ai/h;->k(I[BLcom/nirenr/talkman/ai/OcrResult$OCRListener;)Lcom/androlua/util/AsyncTaskX;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static k(I[BLcom/nirenr/talkman/ai/OcrResult$OCRListener;)Lcom/androlua/util/AsyncTaskX;
    .locals 25

    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_6

    const/4 v4, 0x2

    if-eq v0, v4, :cond_5

    const/4 v5, 0x3

    if-eq v0, v5, :cond_4

    const/4 v6, 0x4

    if-eq v0, v6, :cond_3

    const/4 v6, 0x0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    new-instance v3, Lcom/nirenr/talkman/ai/h$j;

    invoke-direct {v3, v0, v1, v2}, Lcom/nirenr/talkman/ai/h$j;-><init>(I[BLcom/nirenr/talkman/ai/OcrResult$OCRListener;)V

    invoke-static {v1, v3}, Lcom/nirenr/talkman/ai/h;->B([BLcom/nirenr/talkman/ai/OcrResult$OCRListener;)Lcom/androlua/util/AsyncTaskX;

    move-result-object v0

    return-object v0

    :pswitch_0
    invoke-static/range {p1 .. p2}, Lcom/day/BigModelNew;->mainall([BLcom/nirenr/talkman/ai/OcrResult$OCRListener;)Lcom/androlua/util/AsyncTaskX;

    move-result-object v0

    return-object v0

    :pswitch_1
    new-instance v0, Lcom/nirenr/talkman/ai/h$i;

    invoke-direct {v0, v2}, Lcom/nirenr/talkman/ai/h$i;-><init>(Lcom/nirenr/talkman/ai/OcrResult$OCRListener;)V

    const/16 v2, 0x9

    invoke-static {v2, v1, v0}, Lcom/nirenr/talkman/ai/BaiduAI;->f(I[BLcom/nirenr/talkman/ai/BaiduAI$AipTaskCallback;)Lcom/nirenr/talkman/ai/BaiduAI$b;

    move-result-object v0

    return-object v0

    :pswitch_2
    invoke-static {v6, v1, v2}, Lcom/nirenr/talkman/ai/e;->a(Lcom/nirenr/talkman/TalkManAccessibilityService;[BLcom/nirenr/talkman/ai/OcrResult$OCRListener;)V

    return-object v6

    :pswitch_3
    invoke-static/range {p1 .. p2}, Lcom/day/BigModelNew;->main([BLcom/nirenr/talkman/ai/OcrResult$OCRListener;)Lcom/androlua/util/AsyncTaskX;

    move-result-object v0

    return-object v0

    :pswitch_4
    invoke-static/range {p1 .. p2}, Lg2/a;->a([BLcom/nirenr/talkman/ai/OcrResult$OCRListener;)Lcom/androlua/util/AsyncTaskX;

    move-result-object v0

    return-object v0

    :pswitch_5
    invoke-static/range {p1 .. p2}, Lcom/nirenr/talkman/ai/f;->g([BLcom/nirenr/talkman/ai/OcrResult$OCRListener;)Lcom/nirenr/talkman/util/HttpUtil$d;

    move-result-object v0

    return-object v0

    :pswitch_6
    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getPackageName(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/4 v10, 0x0

    if-eqz v7, :cond_0

    sget-object v11, Lcom/nirenr/talkman/ai/h;->f:Ljava/lang/String;

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    sget-wide v11, Lcom/nirenr/talkman/ai/h;->g:J

    sub-long v11, v8, v11

    const-wide/16 v13, 0x7530

    cmp-long v15, v11, v13

    if-gez v15, :cond_0

    sget v11, Lcom/nirenr/talkman/ai/h;->h:I

    add-int/2addr v11, v3

    sput v11, Lcom/nirenr/talkman/ai/h;->h:I

    goto :goto_0

    :cond_0
    sput v10, Lcom/nirenr/talkman/ai/h;->h:I

    :goto_0
    sget v11, Lcom/nirenr/talkman/ai/h;->h:I

    const/16 v12, 0xa

    if-le v11, v12, :cond_1

    sput v12, Lcom/nirenr/talkman/ai/h;->h:I

    :cond_1
    sput-object v7, Lcom/nirenr/talkman/ai/h;->f:Ljava/lang/String;

    sput-wide v8, Lcom/nirenr/talkman/ai/h;->g:J

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v7

    const-string v8, "cn.gov.tax.its"

    invoke-virtual {v0, v7, v8}, Lcom/nirenr/talkman/TalkManAccessibilityService;->checkPackageName(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "*\u8bf7\u6309\u4f4f\u6ed1\u5757\uff0c\u62d6\u52a8\u5230\u6700\u53f3\u8fb9*"

    const/4 v8, -0x1

    invoke-virtual {v0, v7, v8}, Lcom/nirenr/talkman/TalkManAccessibilityService;->findAccessibilityNodeInfoByText(Ljava/lang/String;I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v7

    const-string v8, "huakuai"

    invoke-virtual {v0, v8, v7}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz v7, :cond_2

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v7, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    new-array v1, v5, [Lcom/nirenr/talkman/ai/OcrResult$OcrItem;

    new-instance v5, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;

    const-string v12, "huakuai"

    iget v13, v0, Landroid/graphics/Rect;->left:I

    iget v14, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v15

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v16

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v17

    move-object v11, v5

    invoke-direct/range {v11 .. v17}, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;-><init>(Ljava/lang/String;IIIII)V

    aput-object v5, v1, v4

    new-instance v4, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;

    const-string v19, "kaishi"

    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget v7, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v22

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v23

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v24

    move-object/from16 v18, v4

    move/from16 v20, v5

    move/from16 v21, v7

    invoke-direct/range {v18 .. v24}, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;-><init>(Ljava/lang/String;IIIII)V

    aput-object v4, v1, v3

    new-instance v3, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;

    const-string v12, "jieshu"

    iget v13, v0, Landroid/graphics/Rect;->right:I

    iget v14, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v15

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v16

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v17

    move-object v11, v3

    invoke-direct/range {v11 .. v17}, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;-><init>(Ljava/lang/String;IIIII)V

    aput-object v3, v1, v10

    new-instance v0, Lcom/nirenr/talkman/ai/OcrResult;

    const/16 v3, 0xc

    invoke-direct {v0, v3, v1}, Lcom/nirenr/talkman/ai/OcrResult;-><init>(I[Lcom/nirenr/talkman/ai/OcrResult$OcrItem;)V

    invoke-interface {v2, v0}, Lcom/nirenr/talkman/ai/OcrResult$OCRListener;->onDone(Lcom/nirenr/talkman/ai/OcrResult;)V

    return-object v6

    :cond_2
    new-instance v0, Lcom/nirenr/talkman/ai/h$h;

    invoke-direct {v0, v2}, Lcom/nirenr/talkman/ai/h$h;-><init>(Lcom/nirenr/talkman/ai/OcrResult$OCRListener;)V

    const/4 v2, 0x6

    invoke-static {v2, v1, v0}, Lcom/nirenr/talkman/ai/BaiduAI;->f(I[BLcom/nirenr/talkman/ai/BaiduAI$AipTaskCallback;)Lcom/nirenr/talkman/ai/BaiduAI$b;

    move-result-object v0

    return-object v0

    :pswitch_7
    new-instance v0, Lcom/nirenr/talkman/ai/h$g;

    invoke-direct {v0, v2}, Lcom/nirenr/talkman/ai/h$g;-><init>(Lcom/nirenr/talkman/ai/OcrResult$OCRListener;)V

    invoke-static {v3, v1, v0}, Lcom/nirenr/talkman/ai/BaiduAI;->l(I[BLcom/nirenr/talkman/ai/BaiduAI$AipTaskCallback;)Lcom/nirenr/talkman/ai/BaiduAI$b;

    move-result-object v0

    return-object v0

    :pswitch_8
    invoke-static/range {p1 .. p2}, Lcom/nirenr/talkman/ai/f;->d([BLcom/nirenr/talkman/ai/OcrResult$OCRListener;)Lcom/androlua/util/AsyncTaskX;

    move-result-object v0

    return-object v0

    :pswitch_9
    invoke-static/range {p1 .. p2}, Lcom/nirenr/talkman/ai/f;->a([BLcom/nirenr/talkman/ai/OcrResult$OCRListener;)Lcom/androlua/util/AsyncTaskX;

    move-result-object v0

    return-object v0

    :cond_3
    invoke-static/range {p1 .. p2}, Lcom/nirenr/talkman/ai/d;->a([BLcom/nirenr/talkman/ai/OcrResult$OCRListener;)Lcom/androlua/util/AsyncTaskX;

    move-result-object v0

    return-object v0

    :cond_4
    invoke-static/range {p1 .. p2}, Lcom/nirenr/talkman/ai/h;->o([BLcom/nirenr/talkman/ai/OcrResult$OCRListener;)Lcom/androlua/util/AsyncTaskX;

    move-result-object v0

    return-object v0

    :cond_5
    invoke-static/range {p1 .. p2}, Lcom/nirenr/talkman/ai/h;->w([BLcom/nirenr/talkman/ai/OcrResult$OCRListener;)Lcom/androlua/util/AsyncTaskX;

    move-result-object v0

    return-object v0

    :cond_6
    invoke-static/range {p1 .. p2}, Lcom/nirenr/talkman/ai/h;->B([BLcom/nirenr/talkman/ai/OcrResult$OCRListener;)Lcom/androlua/util/AsyncTaskX;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x14
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static o([BLcom/nirenr/talkman/ai/OcrResult$OCRListener;)Lcom/androlua/util/AsyncTaskX;
    .locals 4

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p0

    const/16 v0, 0x2d0

    const/16 v1, 0x20

    const/16 v2, 0x500

    invoke-static {p0, v2, v0, v1}, Lcom/baidu/paddle/lite/ocr/Utils;->resizeWithStep(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x32

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    :try_start_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-static {p0, p1}, Lcom/nirenr/talkman/ai/f;->b([BLcom/nirenr/talkman/ai/OcrResult$OCRListener;)Lcom/androlua/util/AsyncTaskX;

    move-result-object p0

    return-object p0
.end method

.method public static p(I)F
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    neg-int v1, p0

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    sub-int/2addr p0, v1

    int-to-float p0, p0

    mul-float v0, v0, p0

    int-to-float p0, v1

    add-float/2addr v0, p0

    return v0
.end method

.method public static q()Z
    .locals 3

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v0

    const-string v1, "_OpenAi_Key"

    invoke-virtual {v0, v1}, Lcom/androlua/LuaApplication;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nirenr/talkman/ai/h;->d:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sput-object v1, Lcom/nirenr/talkman/ai/h;->d:Ljava/lang/String;

    :goto_0
    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v0

    const-string v2, "_YouTu_Key"

    invoke-virtual {v0, v2}, Lcom/androlua/LuaApplication;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nirenr/talkman/ai/h;->j:Ljava/lang/String;

    const/4 v0, 0x1

    return v0

    :cond_1
    sput-object v1, Lcom/nirenr/talkman/ai/h;->j:Ljava/lang/String;

    const/4 v0, 0x0

    return v0
.end method

.method public static r()Z
    .locals 1

    sget-object v0, Lcom/nirenr/talkman/ai/h;->j:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static s(Ljava/lang/String;)V
    .locals 1

    const-string v0, "YouTu"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static t(Landroid/graphics/Bitmap;Lcom/nirenr/talkman/ai/OcrResult$OCRListener;)Lcom/androlua/util/AsyncTaskX;
    .locals 4

    const-string v0, "lua"

    const/4 v1, 0x0

    sput v1, Lcom/nirenr/talkman/ai/h;->e:I

    :try_start_0
    const-string v1, "ocr: start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ocr: end "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-static {p0, p1}, Lcom/nirenr/talkman/ai/h;->w([BLcom/nirenr/talkman/ai/OcrResult$OCRListener;)Lcom/androlua/util/AsyncTaskX;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static u(Ljava/io/File;Lcom/nirenr/talkman/ai/OcrResult$OCRListener;)Lcom/androlua/util/AsyncTaskX;
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/nirenr/talkman/ai/h;->e:I

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lcom/androlua/LuaUtil;->readAll(Ljava/io/InputStream;)[B

    move-result-object p0

    invoke-static {p0, p1}, Lcom/nirenr/talkman/ai/h;->w([BLcom/nirenr/talkman/ai/OcrResult$OCRListener;)Lcom/androlua/util/AsyncTaskX;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static v(Ljava/lang/String;Lcom/nirenr/talkman/ai/OcrResult$OCRListener;)Lcom/androlua/util/AsyncTaskX;
    .locals 1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/nirenr/talkman/ai/h;->u(Ljava/io/File;Lcom/nirenr/talkman/ai/OcrResult$OCRListener;)Lcom/androlua/util/AsyncTaskX;

    move-result-object p0

    return-object p0
.end method

.method public static w([BLcom/nirenr/talkman/ai/OcrResult$OCRListener;)Lcom/androlua/util/AsyncTaskX;
    .locals 8

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v0

    const v1, 0x7f0704d3

    const-string v2, "0"

    invoke-static {v0, v1, v2}, Lk2/b0;->h(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    new-instance v0, Lcom/nirenr/talkman/ai/h$k;

    invoke-direct {v0, p1}, Lcom/nirenr/talkman/ai/h$k;-><init>(Lcom/nirenr/talkman/ai/OcrResult$OCRListener;)V

    invoke-static {v1, p0, v0}, Lcom/nirenr/talkman/ai/BaiduAI;->l(I[BLcom/nirenr/talkman/ai/BaiduAI$AipTaskCallback;)Lcom/nirenr/talkman/ai/BaiduAI$b;

    move-result-object p0

    return-object p0

    :cond_0
    if-nez v0, :cond_1

    invoke-static {p0, p1}, Lcom/nirenr/talkman/ai/f;->e([BLcom/nirenr/talkman/ai/OcrResult$OCRListener;)Lcom/nirenr/talkman/util/HttpUtil$d;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    invoke-static {p0, p1}, Lg2/a;->a([BLcom/nirenr/talkman/ai/OcrResult$OCRListener;)Lcom/androlua/util/AsyncTaskX;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 v2, 0x5

    const/4 v3, 0x0

    if-ne v0, v2, :cond_3

    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/nirenr/talkman/ai/e;->c(Lcom/nirenr/talkman/TalkManAccessibilityService;[BLcom/nirenr/talkman/ai/OcrResult$OCRListener;)V

    return-object v3

    :cond_3
    const/4 v2, 0x6

    if-ne v0, v2, :cond_4

    invoke-static {p0, p1}, Lcom/nirenr/talkman/ai/g;->f([BLcom/nirenr/talkman/ai/OcrResult$OCRListener;)Lcom/nirenr/talkman/util/HttpUtil$d;

    move-result-object p0

    return-object p0

    :cond_4
    const-string v2, "ocr"

    invoke-static {v2}, Lcom/nirenr/talkman/ai/h;->s(Ljava/lang/String;)V

    sget-object v2, Lcom/nirenr/talkman/ai/h;->k:[Ljava/lang/String;

    aget-object v0, v2, v0

    sget-object v2, Lcom/nirenr/talkman/ai/h;->j:Ljava/lang/String;

    if-nez v2, :cond_5

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object p0

    const v0, 0x7f07037f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/nirenr/talkman/ai/OcrResult$OCRListener;->onError(Ljava/lang/String;)V

    return-object v3

    :cond_5
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v6, "Host"

    const-string v7, "api.youtu.qq.com"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "Authorization"

    invoke-virtual {v5, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "Content-Type"

    const-string v6, "application/json"

    invoke-virtual {v5, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_1
    const-string v2, "app_id"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v7, 0x99ee69

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "image"

    invoke-static {p0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/nirenr/talkman/ai/h$l;

    invoke-direct {v2, p1, p0}, Lcom/nirenr/talkman/ai/h$l;-><init>(Lcom/nirenr/talkman/ai/OcrResult$OCRListener;[B)V

    invoke-static {v0, v1, v5, v2}, Lcom/nirenr/talkman/util/HttpUtil;->h(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/nirenr/talkman/util/HttpUtil$HttpCallback;)Lcom/nirenr/talkman/util/HttpUtil$d;

    move-result-object p0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/nirenr/talkman/ai/OcrResult$OCRListener;->onError(Ljava/lang/String;)V

    return-object v3
.end method


# virtual methods
.method public A(Landroid/graphics/Rect;Lcom/nirenr/talkman/ai/OcrResult$OCRListener;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/ai/h;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-instance v1, Lcom/nirenr/talkman/ai/h$c;

    invoke-direct {v1, p0, p2}, Lcom/nirenr/talkman/ai/h$c;-><init>(Lcom/nirenr/talkman/ai/h;Lcom/nirenr/talkman/ai/OcrResult$OCRListener;)V

    invoke-virtual {v0, p1, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getScreenShot(Landroid/graphics/Rect;Lcom/nirenr/screencapture/ScreenCaptureListener;)V

    return-void
.end method

.method public l(ILandroid/view/accessibility/AccessibilityNodeInfo;Lcom/nirenr/talkman/ai/OcrResult$OCRListener;)V
    .locals 2

    iget-object v0, p0, Lcom/nirenr/talkman/ai/h;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-instance v1, Lcom/nirenr/talkman/ai/h$f;

    invoke-direct {v1, p0, p3, p1}, Lcom/nirenr/talkman/ai/h$f;-><init>(Lcom/nirenr/talkman/ai/h;Lcom/nirenr/talkman/ai/OcrResult$OCRListener;I)V

    invoke-virtual {v0, p2, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getScreenShot(Landroid/view/accessibility/AccessibilityNodeInfo;Lcom/nirenr/screencapture/ScreenCaptureListener;)V

    return-void
.end method

.method public m(ILcom/nirenr/talkman/ai/OcrResult$OCRListener;)V
    .locals 2

    iget-object v0, p0, Lcom/nirenr/talkman/ai/h;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-instance v1, Lcom/nirenr/talkman/ai/h$e;

    invoke-direct {v1, p0, p2, p1}, Lcom/nirenr/talkman/ai/h$e;-><init>(Lcom/nirenr/talkman/ai/h;Lcom/nirenr/talkman/ai/OcrResult$OCRListener;I)V

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getScreenShot(Lcom/nirenr/screencapture/ScreenCaptureListener;)V

    return-void
.end method

.method public n()V
    .locals 1

    iget-object v0, p0, Lcom/nirenr/talkman/ai/h;->c:Lcom/androlua/util/AsyncTaskX;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/androlua/util/AsyncTaskX;->cancel()Z

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nirenr/talkman/ai/h;->c:Lcom/androlua/util/AsyncTaskX;

    return-void
.end method

.method public x(Landroid/graphics/Rect;Lcom/nirenr/talkman/ai/OcrResult$OCRListener;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/ai/h;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-instance v1, Lcom/nirenr/talkman/ai/h$a;

    invoke-direct {v1, p0, p2}, Lcom/nirenr/talkman/ai/h$a;-><init>(Lcom/nirenr/talkman/ai/h;Lcom/nirenr/talkman/ai/OcrResult$OCRListener;)V

    invoke-virtual {v0, p1, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getScreenShot(Landroid/graphics/Rect;Lcom/nirenr/screencapture/ScreenCaptureListener;)V

    return-void
.end method

.method public y(Lcom/nirenr/talkman/ai/OcrResult$OCRListener;)V
    .locals 2

    iget-object v0, p0, Lcom/nirenr/talkman/ai/h;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-instance v1, Lcom/nirenr/talkman/ai/h$d;

    invoke-direct {v1, p0, p1}, Lcom/nirenr/talkman/ai/h$d;-><init>(Lcom/nirenr/talkman/ai/h;Lcom/nirenr/talkman/ai/OcrResult$OCRListener;)V

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getScreenShot(Lcom/nirenr/screencapture/ScreenCaptureListener;)V

    return-void
.end method

.method public z(Landroid/graphics/Rect;Lcom/nirenr/talkman/ai/OcrResult$OCRListener;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/ai/h;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-instance v1, Lcom/nirenr/talkman/ai/h$b;

    invoke-direct {v1, p0, p2}, Lcom/nirenr/talkman/ai/h$b;-><init>(Lcom/nirenr/talkman/ai/h;Lcom/nirenr/talkman/ai/OcrResult$OCRListener;)V

    invoke-virtual {v0, p1, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getScreenShot(Landroid/graphics/Rect;Lcom/nirenr/screencapture/ScreenCaptureListener;)V

    return-void
.end method
