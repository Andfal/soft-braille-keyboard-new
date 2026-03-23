.class public Lcom/baidu/paddle/lite/ocr/Predictor;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final arabic_lang:[Ljava/lang/String;

.field private static final cyrillic_lang:[Ljava/lang/String;

.field private static final devanagari_lang:[Ljava/lang/String;

.field private static final latin_lang:[Ljava/lang/String;


# instance fields
.field private iconCls:Lb/b;

.field private mRunning:Z

.field private final ocrEngine:Lcom/benjaminwan/ocrlibrary/OcrEngine;


# direct methods
.method static constructor <clinit>()V
    .locals 34

    const-string v0, "latin"

    const-string v1, "af"

    const-string v2, "bs"

    const-string v3, "cs"

    const-string v4, "cy"

    const-string v5, "da"

    const-string v6, "de"

    const-string v7, "es"

    const-string v8, "et"

    const-string v9, "fr"

    const-string v10, "ga"

    const-string v11, "hr"

    const-string v12, "hu"

    const-string v13, "id"

    const-string v14, "is"

    const-string v15, "it"

    const-string v16, "la"

    const-string v17, "lt"

    const-string v18, "mi"

    const-string v19, "ms"

    const-string v20, "nl"

    const-string v21, "no"

    const-string v22, "oc"

    const-string v23, "pl"

    const-string v24, "pt"

    const-string v25, "ro"

    const-string v26, "sk"

    const-string v27, "sl"

    const-string v28, "sq"

    const-string v29, "sv"

    const-string v30, "sw"

    const-string v31, "tl"

    const-string v32, "tr"

    const-string v33, "uz"

    filled-new-array/range {v0 .. v33}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/paddle/lite/ocr/Predictor;->latin_lang:[Ljava/lang/String;

    const-string v0, "ug"

    const-string v1, "ur"

    const-string v2, "arabic"

    const-string v3, "ar"

    const-string v4, "fa"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/paddle/lite/ocr/Predictor;->arabic_lang:[Ljava/lang/String;

    const-string v1, "cyrillic"

    const-string v2, "ru"

    const-string v3, "sr"

    const-string v4, "be"

    const-string v5, "bg"

    const-string v6, "uk"

    const-string v7, "mn"

    const-string v8, "ady"

    const-string v9, "kbd"

    const-string v10, "ava"

    const-string v11, "dar"

    const-string v12, "inh"

    const-string v13, "che"

    const-string v14, "lez"

    filled-new-array/range {v1 .. v14}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/paddle/lite/ocr/Predictor;->cyrillic_lang:[Ljava/lang/String;

    const-string v1, "devanagari"

    const-string v2, "hi"

    const-string v3, "mr"

    const-string v4, "ne"

    const-string v5, "bh"

    const-string v6, "mai"

    const-string v7, "anp"

    const-string v8, "bho"

    const-string v9, "mah"

    const-string v10, "new"

    const-string v11, "kok"

    const-string v12, "sa"

    const-string v13, "bgc"

    filled-new-array/range {v1 .. v13}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/paddle/lite/ocr/Predictor;->devanagari_lang:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/benjaminwan/ocrlibrary/OcrEngine;

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v3

    const v4, 0x7f0704d7

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_5"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "zh"

    invoke-static {v1, v2, v3}, Lk2/b0;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/paddle/lite/ocr/Predictor;->getModel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/benjaminwan/ocrlibrary/OcrEngine;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/baidu/paddle/lite/ocr/Predictor;->ocrEngine:Lcom/benjaminwan/ocrlibrary/OcrEngine;

    invoke-static {}, Lai/onnxruntime/OrtEnvironment;->getEnvironment()Lai/onnxruntime/OrtEnvironment;

    move-result-object v3

    :try_start_0
    new-instance v0, Lb/b;

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v5, "classes.onnx"

    const-string p1, "classes-zh.json"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v6

    const/4 p1, 0x2

    new-array v7, p1, [I

    const/4 p1, 0x0

    const/16 v1, 0x100

    aput v1, v7, p1

    const/4 p1, 0x1

    aput v1, v7, p1

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lb/b;-><init>(Lai/onnxruntime/OrtEnvironment;Landroid/content/res/AssetManager;Ljava/lang/String;[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/baidu/paddle/lite/ocr/Predictor;->iconCls:Lb/b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static getLang()[[Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "zh"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "en"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "ja"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "ko"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "kn"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "ta"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "te"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "vi"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/baidu/paddle/lite/ocr/Predictor;->latin_lang:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    sget-object v1, Lcom/baidu/paddle/lite/ocr/Predictor;->cyrillic_lang:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    sget-object v1, Lcom/baidu/paddle/lite/ocr/Predictor;->arabic_lang:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    sget-object v1, Lcom/baidu/paddle/lite/ocr/Predictor;->devanagari_lang:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    new-instance v4, Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [[Ljava/lang/String;

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object v3, v0, v1

    return-object v0
.end method

.method public static getModel(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v1, "zh"

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x7

    goto :goto_0

    :sswitch_1
    const-string v0, "vi"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x6

    goto :goto_0

    :sswitch_2
    const-string v0, "te"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_3
    const-string v0, "ta"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_4
    const-string v0, "ko"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_5
    const-string v0, "ka"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_6
    const-string v0, "ja"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_7
    const-string v0, "en"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    sget-object v0, Lcom/baidu/paddle/lite/ocr/Predictor;->latin_lang:[Ljava/lang/String;

    array-length v3, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_9

    aget-object v5, v0, v4

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    const-string p0, "latin"

    return-object p0

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_9
    sget-object v0, Lcom/baidu/paddle/lite/ocr/Predictor;->arabic_lang:[Ljava/lang/String;

    array-length v3, v0

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_b

    aget-object v5, v0, v4

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    const-string p0, "arabic"

    return-object p0

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_b
    sget-object v0, Lcom/baidu/paddle/lite/ocr/Predictor;->cyrillic_lang:[Ljava/lang/String;

    array-length v3, v0

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v3, :cond_d

    aget-object v5, v0, v4

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    const-string p0, "cyrillic"

    return-object p0

    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_d
    sget-object v0, Lcom/baidu/paddle/lite/ocr/Predictor;->devanagari_lang:[Ljava/lang/String;

    array-length v3, v0

    :goto_4
    if-ge v2, v3, :cond_f

    aget-object v4, v0, v2

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    const-string p0, "devanagari"

    return-object p0

    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_f
    return-object v1

    :pswitch_0
    return-object p0

    :pswitch_1
    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        0xca9 -> :sswitch_7
        0xd37 -> :sswitch_6
        0xd56 -> :sswitch_5
        0xd64 -> :sswitch_4
        0xe6d -> :sswitch_3
        0xe71 -> :sswitch_2
        0xeb3 -> :sswitch_1
        0xf2e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private releaseEasyDL()V
    .locals 1

    iget-object v0, p0, Lcom/baidu/paddle/lite/ocr/Predictor;->ocrEngine:Lcom/benjaminwan/ocrlibrary/OcrEngine;

    invoke-virtual {v0}, Lcom/benjaminwan/ocrlibrary/OcrEngine;->close()V

    return-void
.end method

.method private showError(Ljava/lang/Exception;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraActivity"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method


# virtual methods
.method public destory()V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/paddle/lite/ocr/Predictor;->releaseEasyDL()V

    return-void
.end method

.method public icon(Landroid/graphics/Bitmap;)Lcom/nirenr/talkman/ai/OcrResult;
    .locals 3

    iget-object v0, p0, Lcom/baidu/paddle/lite/ocr/Predictor;->iconCls:Lb/b;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lb/b;->d(Landroid/graphics/Bitmap;ZZ)[[[[F

    move-result-object p1

    iget-object v0, p0, Lcom/baidu/paddle/lite/ocr/Predictor;->iconCls:Lb/b;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Lb/b;->g([[[[FI)Ljava/util/ArrayList;

    move-result-object p1

    new-instance v0, Lcom/nirenr/talkman/ai/OcrResult;

    const/16 v1, 0x15

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/nirenr/talkman/ai/OcrResult;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;IF)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public isLoaded()Z
    .locals 1

    iget-object v0, p0, Lcom/baidu/paddle/lite/ocr/Predictor;->ocrEngine:Lcom/benjaminwan/ocrlibrary/OcrEngine;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRunning()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public releaseModel()V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/paddle/lite/ocr/Predictor;->releaseEasyDL()V

    return-void
.end method

.method public runModel(Landroid/graphics/Bitmap;)Lcom/nirenr/talkman/ai/OcrResult;
    .locals 14

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/paddle/lite/ocr/Predictor;->mRunning:Z

    iget-object v1, p0, Lcom/baidu/paddle/lite/ocr/Predictor;->ocrEngine:Lcom/benjaminwan/ocrlibrary/OcrEngine;

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v4

    const v5, 0x7f0704d7

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_5"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "zh"

    invoke-static {v2, v3, v4}, Lk2/b0;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/paddle/lite/ocr/Predictor;->getModel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/benjaminwan/ocrlibrary/OcrEngine;->setLang(Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v2

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v3

    const v4, 0x7f0704f3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "5"

    invoke-static {v2, v3, v4}, Lk2/b0;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/androlua/LuaService;->getHeight()I

    move-result v4

    div-int/2addr v4, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    mul-int v4, v4, v2

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    move v5, v4

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :catch_0
    const/4 v5, 0x0

    :goto_1
    :try_start_1
    iget-object v2, p0, Lcom/baidu/paddle/lite/ocr/Predictor;->ocrEngine:Lcom/benjaminwan/ocrlibrary/OcrEngine;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const v7, 0x3ecccccd    # 0.4f

    const v8, 0x3e99999a    # 0.3f

    const/high16 v9, 0x40000000    # 2.0f

    const/4 v10, 0x1

    const/4 v11, 0x1

    move-object v3, p1

    invoke-virtual/range {v2 .. v11}, Lcom/benjaminwan/ocrlibrary/OcrEngine;->detect(Landroid/graphics/Bitmap;ZIIFFFZZ)Lcom/benjaminwan/ocrlibrary/models/OcrResult;

    move-result-object p1
    :try_end_1
    .catch Lai/onnxruntime/OrtException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-boolean v0, p0, Lcom/baidu/paddle/lite/ocr/Predictor;->mRunning:Z

    invoke-virtual {p1}, Lcom/benjaminwan/ocrlibrary/models/OcrResult;->getDetResults()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/benjaminwan/ocrlibrary/models/OcrResult;->getRecResults()Ljava/util/List;

    move-result-object p1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/nirenr/talkman/ai/OcrResult$OcrItem;

    const/4 v3, 0x0

    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-ge v3, v4, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/benjaminwan/ocrlibrary/models/DetResult;

    invoke-virtual {v4}, Lcom/benjaminwan/ocrlibrary/models/DetResult;->getPoints()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/benjaminwan/ocrlibrary/models/DetPoint;

    invoke-virtual {v6}, Lcom/benjaminwan/ocrlibrary/models/DetPoint;->getX()I

    move-result v9

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/benjaminwan/ocrlibrary/models/DetPoint;

    invoke-virtual {v6}, Lcom/benjaminwan/ocrlibrary/models/DetPoint;->getY()I

    move-result v10

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/benjaminwan/ocrlibrary/models/DetPoint;

    invoke-virtual {v6}, Lcom/benjaminwan/ocrlibrary/models/DetPoint;->getX()I

    move-result v6

    sub-int v11, v6, v9

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/benjaminwan/ocrlibrary/models/DetPoint;

    invoke-virtual {v4}, Lcom/benjaminwan/ocrlibrary/models/DetPoint;->getY()I

    move-result v4

    sub-int v12, v4, v10

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/benjaminwan/ocrlibrary/models/RecResult;

    invoke-virtual {v4}, Lcom/benjaminwan/ocrlibrary/models/RecResult;->getText()Ljava/lang/String;

    move-result-object v8

    new-instance v4, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;

    div-int/lit8 v13, v12, 0x2

    move-object v7, v4

    invoke-direct/range {v7 .. v13}, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;-><init>(Ljava/lang/String;IIIII)V

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    new-instance p1, Lcom/nirenr/talkman/ai/OcrResult;

    invoke-direct {p1, v5, v2}, Lcom/nirenr/talkman/ai/OcrResult;-><init>(I[Lcom/nirenr/talkman/ai/OcrResult$OcrItem;)V

    return-object p1

    :catch_1
    :try_start_2
    new-instance p1, Lcom/nirenr/talkman/ai/OcrResult;

    const/4 v1, 0x0

    invoke-direct {p1, v1}, Lcom/nirenr/talkman/ai/OcrResult;-><init>([Lcom/nirenr/talkman/ai/OcrResult$OcrItem;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iput-boolean v0, p0, Lcom/baidu/paddle/lite/ocr/Predictor;->mRunning:Z

    return-object p1

    :goto_3
    iput-boolean v0, p0, Lcom/baidu/paddle/lite/ocr/Predictor;->mRunning:Z

    throw p1
.end method
