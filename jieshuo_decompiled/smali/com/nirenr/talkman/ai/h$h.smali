.class Lcom/nirenr/talkman/ai/h$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/ai/BaiduAI$AipTaskCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/ai/h;->k(I[BLcom/nirenr/talkman/ai/OcrResult$OCRListener;)Lcom/androlua/util/AsyncTaskX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/ai/OcrResult$OCRListener;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/ai/OcrResult$OCRListener;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/ai/h$h;->a:Lcom/nirenr/talkman/ai/OcrResult$OCRListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(Lorg/json/JSONObject;)V
    .locals 27

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    :try_start_0
    const-string v0, "BaiduAI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCallback: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/nirenr/talkman/ai/OcrResult$OcrItem;

    :try_start_1
    const-string v3, "results"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v3

    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string v7, "jieshu"

    const-string v8, "huakuai"

    const v9, -0x45270406

    const-string v11, "name"

    const-string v12, "location"

    const-string v13, "height"

    const-string v14, "top"

    const-string v15, "width"

    const-string v10, "left"

    const/4 v4, 0x2

    if-ge v5, v6, :cond_8

    :try_start_2
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v11

    if-eq v11, v9, :cond_2

    const v7, -0x43e115ff

    if-eq v11, v7, :cond_1

    const v7, 0x4ab86206    # 6041859.0f

    if-eq v11, v7, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x0

    goto :goto_3

    :cond_1
    const-string v7, "kaishi"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x1

    goto :goto_3

    :cond_2
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x2

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v7, -0x1

    :goto_3
    if-eqz v7, :cond_6

    const/4 v8, 0x1

    if-eq v7, v8, :cond_5

    if-eq v7, v4, :cond_4

    move/from16 v16, v5

    goto :goto_4

    :cond_4
    const/16 v16, 0x0

    goto :goto_4

    :cond_5
    const/16 v16, 0x1

    goto :goto_4

    :cond_6
    invoke-virtual {v12, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v12, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v3}, Lcom/androlua/LuaService;->getWidth()I

    move-result v8

    div-int/2addr v8, v4

    if-le v7, v8, :cond_7

    goto :goto_5

    :cond_7
    const/16 v16, 0x2

    :goto_4
    new-instance v4, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;

    invoke-virtual {v12, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v19

    invoke-virtual {v12, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v20

    invoke-virtual {v12, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v21

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v22

    const/16 v23, 0x0

    move-object/from16 v17, v4

    move-object/from16 v18, v6

    invoke-direct/range {v17 .. v23}, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;-><init>(Ljava/lang/String;IIIII)V

    aput-object v4, v0, v16

    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :cond_8
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-le v5, v4, :cond_d

    const/4 v5, 0x0

    :goto_6
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_d

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v9

    move-object/from16 v25, v2

    const v2, -0x45270406

    if-eq v9, v2, :cond_9

    goto :goto_7

    :cond_9
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/4 v9, 0x0

    goto :goto_8

    :cond_a
    :goto_7
    const/4 v9, -0x1

    :goto_8
    if-eqz v9, :cond_b

    move-object/from16 v26, v7

    goto :goto_9

    :cond_b
    invoke-virtual {v4, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v18

    const/16 v17, 0x2

    div-int/lit8 v18, v18, 0x2

    add-int v9, v9, v18

    const/16 v16, 0x1

    aget-object v2, v0, v16

    move-object/from16 v26, v7

    iget v7, v2, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->y:I

    if-le v9, v7, :cond_c

    iget v2, v2, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->height:I

    add-int/2addr v7, v2

    if-ge v9, v7, :cond_c

    new-instance v2, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v20

    invoke-virtual {v4, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v21

    invoke-virtual {v4, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v22

    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v23

    const/16 v24, 0x0

    move-object/from16 v18, v2

    move-object/from16 v19, v6

    invoke-direct/range {v18 .. v24}, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;-><init>(Ljava/lang/String;IIIII)V

    const/4 v4, 0x0

    aput-object v2, v0, v4

    :cond_c
    :goto_9
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v2, v25

    move-object/from16 v7, v26

    const/4 v4, 0x2

    const v9, -0x45270406

    goto :goto_6

    :cond_d
    const/4 v2, 0x2

    aget-object v4, v0, v2

    if-nez v4, :cond_f

    const/4 v2, 0x1

    aget-object v4, v0, v2

    if-nez v4, :cond_e

    iget-object v0, v1, Lcom/nirenr/talkman/ai/h$h;->a:Lcom/nirenr/talkman/ai/OcrResult$OCRListener;

    invoke-interface {v0, v8}, Lcom/nirenr/talkman/ai/OcrResult$OCRListener;->onError(Ljava/lang/String;)V

    return-void

    :cond_e
    const/4 v2, 0x2

    aput-object v4, v0, v2

    goto :goto_a

    :cond_f
    const/4 v2, 0x2

    :goto_a
    const/4 v4, 0x1

    aget-object v5, v0, v4

    if-nez v5, :cond_10

    aget-object v5, v0, v2

    aput-object v5, v0, v4

    :cond_10
    const/4 v2, 0x0

    aget-object v4, v0, v2

    if-nez v4, :cond_11

    new-instance v2, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;

    const-string v6, "jieshhu"

    invoke-virtual {v3}, Lcom/androlua/LuaService;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0xa

    mul-int/lit8 v7, v4, 0x9

    invoke-virtual {v3}, Lcom/androlua/LuaService;->getWidth()I

    move-result v4

    const/4 v5, 0x2

    div-int/lit8 v8, v4, 0x2

    invoke-virtual {v3}, Lcom/androlua/LuaService;->getWidth()I

    move-result v4

    div-int/lit8 v9, v4, 0xa

    invoke-virtual {v3}, Lcom/androlua/LuaService;->getWidth()I

    move-result v4

    div-int/lit8 v10, v4, 0xa

    invoke-virtual {v3}, Lcom/androlua/LuaService;->getWidth()I

    move-result v3

    div-int/lit8 v11, v3, 0xa

    move-object v5, v2

    invoke-direct/range {v5 .. v11}, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;-><init>(Ljava/lang/String;IIIII)V

    const/4 v3, 0x0

    aput-object v2, v0, v3

    goto :goto_b

    :cond_11
    iget v2, v4, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->x:I

    int-to-float v2, v2

    invoke-virtual {v3}, Lcom/androlua/LuaService;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-static {}, Lcom/nirenr/talkman/ai/h;->g()I

    move-result v5

    invoke-static {v5}, Lcom/nirenr/talkman/ai/h;->p(I)F

    move-result v5

    mul-float v3, v3, v5

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v4, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->x:I

    :goto_b
    iget-object v2, v1, Lcom/nirenr/talkman/ai/h$h;->a:Lcom/nirenr/talkman/ai/OcrResult$OCRListener;

    new-instance v3, Lcom/nirenr/talkman/ai/OcrResult;

    const/16 v4, 0xc

    invoke-direct {v3, v4, v0}, Lcom/nirenr/talkman/ai/OcrResult;-><init>(I[Lcom/nirenr/talkman/ai/OcrResult$OcrItem;)V

    invoke-interface {v2, v3}, Lcom/nirenr/talkman/ai/OcrResult$OCRListener;->onDone(Lcom/nirenr/talkman/ai/OcrResult;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_c

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v2, v1, Lcom/nirenr/talkman/ai/h$h;->a:Lcom/nirenr/talkman/ai/OcrResult$OCRListener;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/nirenr/talkman/ai/OcrResult$OCRListener;->onError(Ljava/lang/String;)V

    :goto_c
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nirenr/talkman/ai/h$h;->a:Lcom/nirenr/talkman/ai/OcrResult$OCRListener;

    invoke-interface {v0, p1}, Lcom/nirenr/talkman/ai/OcrResult$OCRListener;->onError(Ljava/lang/String;)V

    return-void
.end method
