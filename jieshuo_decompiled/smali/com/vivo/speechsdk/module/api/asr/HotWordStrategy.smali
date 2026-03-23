.class public Lcom/vivo/speechsdk/module/api/asr/HotWordStrategy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/speechsdk/module/api/asr/HotWordStrategy$EngineType;
    }
.end annotation


# static fields
.field public static final ASR_ENGINE_IPC:Ljava/lang/String; = "ENGINE_IPC"

.field public static final ASR_ENGINE_OFFLINE:Ljava/lang/String; = "ENGINE_OFFLINE"

.field public static final ASR_ENGINE_ONLINE:Ljava/lang/String; = "ENGINE_ONLINE"

.field public static final ASR_ENGINE_TC:Ljava/lang/String; = "ENGINE_TC"

.field public static final ASR_ENGINE_YM:Ljava/lang/String; = "ENGINE_YM"

.field private static final b:Ljava/lang/String; = "HotWordStrategy"

.field private static final c:I = 0xf

.field private static final d:I = 0x2710

.field private static final e:I = 0xbb8

.field private static f:I

.field private static g:I

.field private static h:I

.field private static i:I

.field private static j:I

.field private static k:I


# instance fields
.field private a:Lcom/vivo/speechsdk/b/h/h;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)I
    .locals 5

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "ENGINE_IPC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x3

    goto :goto_0

    :sswitch_1
    const-string v0, "ENGINE_ONLINE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_2
    const-string v0, "ENGINE_OFFLINE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x1

    goto :goto_0

    :sswitch_3
    const-string v0, "ENGINE_YM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    :goto_0
    packed-switch v4, :pswitch_data_0

    return v3

    :pswitch_0
    const/4 p0, 0x6

    return p0

    :pswitch_1
    return v2

    :pswitch_2
    return v1

    :pswitch_3
    const/4 p0, 0x4

    return p0

    :sswitch_data_0
    .sparse-switch
        -0x361a3dcf -> :sswitch_3
        -0x1bf1333a -> :sswitch_2
        -0x10f77510 -> :sswitch_1
        0x72d2487f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static synthetic a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr p0, p1

    return p0
.end method

.method private a()Lcom/vivo/speechsdk/b/h/h;
    .locals 5

    iget-object v0, p0, Lcom/vivo/speechsdk/module/api/asr/HotWordStrategy;->a:Lcom/vivo/speechsdk/b/h/h;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getInstance()Lcom/vivo/speechsdk/common/module/ModuleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getSpeechContext()Lcom/vivo/speechsdk/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/speechsdk/b/c;->b()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "contact.txt"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "contact file path ::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HotWordStrategy"

    invoke-static {v2, v1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delete contact file success::"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v1, Lcom/vivo/speechsdk/b/h/h;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/vivo/speechsdk/b/h/h;-><init>(Ljava/lang/String;Z)V

    iput-object v1, p0, Lcom/vivo/speechsdk/module/api/asr/HotWordStrategy;->a:Lcom/vivo/speechsdk/b/h/h;

    :cond_1
    iget-object v0, p0, Lcom/vivo/speechsdk/module/api/asr/HotWordStrategy;->a:Lcom/vivo/speechsdk/b/h/h;

    return-object v0
.end method

.method private a(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/vivo/speechsdk/module/api/asr/HotWordStrategy;->a(Landroid/os/Bundle;Lcom/vivo/speechsdk/module/api/asr/UpdateHotwordListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    const-string v0, "key_hotword_content"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/16 v1, 0xbb8

    const/4 v2, 0x0

    if-le v0, v1, :cond_1

    invoke-static {p1, v2, v1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    :cond_1
    const-string v0, ","

    invoke-static {v0, p1}, Lcom/vivo/speechsdk/module/api/asr/a;->a(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    array-length v3, v1

    const/16 v4, 0x2710

    if-le v3, v4, :cond_2

    invoke-static {v1, v2, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v1, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "your hotword size : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " max size : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " byte"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HotWordStrategy"

    invoke-static {v1, v0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-object p1
.end method

.method private a(Landroid/os/Bundle;Ljava/lang/String;ZLcom/vivo/speechsdk/module/api/asr/UpdateHotwordListener;)Ljava/lang/String;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    const-string v4, ""

    const-string v5, "HotWordStrategy"

    :try_start_0
    invoke-static {v0, v3}, Lcom/vivo/speechsdk/module/api/asr/HotWordStrategy;->a(Landroid/os/Bundle;Lcom/vivo/speechsdk/module/api/asr/UpdateHotwordListener;)Z

    move-result v6

    if-eqz v6, :cond_0

    return-object v4

    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sdk start parse hot word, engineType name::"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/vivo/speechsdk/common/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "key_hotword_content"

    invoke-virtual {v0, v6}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const-string v7, "key_hotword_json"

    invoke-virtual {v0, v7}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, "client upload contact name count is ::"

    const-string v8, "name"

    const-string v9, "0"

    const-string v10, " , after filter count is :: "

    if-eqz v6, :cond_4

    :try_start_1
    array-length v11, v6

    if-lez v11, :cond_4

    invoke-direct {v1, v2}, Lcom/vivo/speechsdk/module/api/asr/HotWordStrategy;->b(Ljava/lang/String;)I

    move-result v0

    invoke-direct {v1, v0, v6, v8}, Lcom/vivo/speechsdk/module/api/asr/HotWordStrategy;->a(I[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v6, v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/vivo/speechsdk/common/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Ljava/util/ArrayList;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez p3, :cond_3

    invoke-direct {v1, v6}, Lcom/vivo/speechsdk/module/api/asr/HotWordStrategy;->a(Ljava/util/List;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-direct {v1, v2}, Lcom/vivo/speechsdk/module/api/asr/HotWordStrategy;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    invoke-interface/range {p4 .. p4}, Lcom/vivo/speechsdk/module/api/asr/UpdateHotwordListener;->onSuccess()V

    :cond_2
    return-object v4

    :cond_3
    :goto_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6, v0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v9, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    new-instance v6, Ljava/util/ArrayList;

    const/4 v11, 0x3

    invoke-direct {v6, v11}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const-string v12, "\u5ba2\u6237\u7aef\u4e0a\u4f20\u7528\u6237\u540d\u5b57"

    invoke-direct {v1, v12, v0}, Lcom/vivo/speechsdk/module/api/asr/HotWordStrategy;->a(Ljava/lang/String;Lorg/json/JSONArray;)V

    invoke-direct {v1, v2}, Lcom/vivo/speechsdk/module/api/asr/HotWordStrategy;->b(Ljava/lang/String;)I

    move-result v12

    invoke-direct {v1, v12, v0, v8}, Lcom/vivo/speechsdk/module/api/asr/HotWordStrategy;->a(ILorg/json/JSONArray;Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v12, "SDK\u8fc7\u6ee4\u4e4b\u540e\u7684\u540d\u5b57"

    invoke-direct {v1, v12, v8}, Lcom/vivo/speechsdk/module/api/asr/HotWordStrategy;->a(Ljava/lang/String;Ljava/util/List;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v7, "nicheng"

    :try_start_2
    invoke-virtual {v11, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_5

    invoke-virtual {v11, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const-string v12, "\u5ba2\u6237\u7aef\u4e0a\u4f20\u7528\u6237\u6635\u79f0"

    invoke-direct {v1, v12, v0}, Lcom/vivo/speechsdk/module/api/asr/HotWordStrategy;->a(Ljava/lang/String;Lorg/json/JSONArray;)V

    invoke-direct {v1, v2}, Lcom/vivo/speechsdk/module/api/asr/HotWordStrategy;->b(Ljava/lang/String;)I

    move-result v12

    const-string v13, "nick"

    invoke-direct {v1, v12, v0, v13}, Lcom/vivo/speechsdk/module/api/asr/HotWordStrategy;->a(ILorg/json/JSONArray;Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    invoke-interface {v6, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v13, "SDK\u8fc7\u6ee4\u540e\u7684\u6635\u79f0"

    invoke-direct {v1, v13, v12}, Lcom/vivo/speechsdk/module/api/asr/HotWordStrategy;->a(Ljava/lang/String;Ljava/util/List;)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "client upload contact nick count is ::"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v12

    :cond_5
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    const-string v13, "beizhu"

    :try_start_3
    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_6

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    const-string v12, "\u5ba2\u6237\u7aef\u4e0a\u4f20\u7528\u6237\u5907\u6ce8"

    invoke-direct {v1, v12, v11}, Lcom/vivo/speechsdk/module/api/asr/HotWordStrategy;->a(Ljava/lang/String;Lorg/json/JSONArray;)V

    invoke-direct {v1, v2}, Lcom/vivo/speechsdk/module/api/asr/HotWordStrategy;->b(Ljava/lang/String;)I

    move-result v12

    const-string v14, "mark"

    invoke-direct {v1, v12, v11, v14}, Lcom/vivo/speechsdk/module/api/asr/HotWordStrategy;->a(ILorg/json/JSONArray;Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    invoke-interface {v6, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v14, "SDK\u8fc7\u6ee4\u7684\u7528\u6237\u5907\u6ce8"

    invoke-direct {v1, v14, v12}, Lcom/vivo/speechsdk/module/api/asr/HotWordStrategy;->a(Ljava/lang/String;Ljava/util/List;)V

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "client upload contact mark count is ::"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v11

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Lcom/vivo/speechsdk/common/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    const-string v10, "client upload data format is right"

    invoke-static {v5, v10}, Lcom/vivo/speechsdk/common/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/vivo/speechsdk/module/api/asr/HotWordStrategy;->c()V

    invoke-direct {v1, v6}, Lcom/vivo/speechsdk/module/api/asr/HotWordStrategy;->a(Ljava/util/List;)Z

    move-result v6

    if-nez v6, :cond_8

    invoke-direct {v1, v2}, Lcom/vivo/speechsdk/module/api/asr/HotWordStrategy;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    if-eqz p3, :cond_7

    goto :goto_1

    :cond_7
    if-eqz v3, :cond_9

    invoke-interface/range {p4 .. p4}, Lcom/vivo/speechsdk/module/api/asr/UpdateHotwordListener;->onSuccess()V

    goto :goto_2

    :cond_8
    :goto_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6, v8}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v9, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6, v0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v12}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v13, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "client hot word is illegal::"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_9

    const/16 v0, 0x765d

    const/4 v2, 0x0

    invoke-interface {v3, v0, v2}, Lcom/vivo/speechsdk/module/api/asr/UpdateHotwordListener;->onError(ILjava/lang/String;)V

    :cond_9
    :goto_2
    return-object v4
.end method

.method private a(ILorg/json/JSONArray;Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/json/JSONArray;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p2, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    :cond_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_4

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/16 v5, 0xf

    invoke-static {v5, v4}, Lcom/vivo/speechsdk/module/api/asr/HotWordStrategy;->a(ILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v5, :cond_3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v4, p1, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "client hot word is illegal::"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "HotWordStrategy"

    invoke-static {p2, p1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_2
    invoke-direct {p0, v3, v2, p3}, Lcom/vivo/speechsdk/module/api/asr/HotWordStrategy;->a(IILjava/lang/String;)V

    return-object v1
.end method

.method private a(I[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p2, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    :cond_0
    array-length v0, p2

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    array-length v0, p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    aget-object v5, p2, v2

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/16 v6, 0xf

    invoke-static {v6, v5}, Lcom/vivo/speechsdk/module/api/asr/HotWordStrategy;->a(ILjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v6, :cond_3

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, p1, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    invoke-direct {p0, v4, v3, p3}, Lcom/vivo/speechsdk/module/api/asr/HotWordStrategy;->a(IILjava/lang/String;)V

    return-object v1
.end method

.method private a(IILjava/lang/String;)V
    .locals 2

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "nick"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_1
    const-string v0, "name"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v0, "mark"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    sput p1, Lcom/vivo/speechsdk/module/api/asr/HotWordStrategy;->g:I

    sput p2, Lcom/vivo/speechsdk/module/api/asr/HotWordStrategy;->j:I

    goto :goto_1

    :pswitch_1
    sput p1, Lcom/vivo/speechsdk/module/api/asr/HotWordStrategy;->f:I

    sput p2, Lcom/vivo/speechsdk/module/api/asr/HotWordStrategy;->i:I

    goto :goto_1

    :pswitch_2
    sput p1, Lcom/vivo/speechsdk/module/api/asr/HotWordStrategy;->h:I

    sput p2, Lcom/vivo/speechsdk/module/api/asr/HotWordStrategy;->k:I

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x3306cd -> :sswitch_2
        0x337a8b -> :sswitch_1
        0x339763 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static a(ILjava/lang/String;II)V
    .locals 4

    invoke-static {}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getInstance()Lcom/vivo/speechsdk/common/module/ModuleManager;

    move-result-object v0

    const-string v1, "Session"

    invoke-virtual {v0, v1}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getFactory(Ljava/lang/String;)Lcom/vivo/speechsdk/b/b;

    move-result-object v0

    check-cast v0, Lcom/vivo/speechsdk/module/api/session/ISessionCollectFactory;

    const-string v1, "HotWordStrategy"

    if-eqz v0, :cond_2

    invoke-interface {v0, p3}, Lcom/vivo/speechsdk/module/api/session/ISessionCollectFactory;->getAsrSessionCollect(I)Lcom/vivo/speechsdk/module/api/session/ISessionCollect;

    move-result-object p3

    if-eqz p3, :cond_1

    new-instance v0, Lcom/vivo/speechsdk/module/api/session/HotwordInfo;

    invoke-direct {v0}, Lcom/vivo/speechsdk/module/api/session/HotwordInfo;-><init>()V

    iput p0, v0, Lcom/vivo/speechsdk/module/api/session/HotwordInfo;->mError:I

    iput-object p1, v0, Lcom/vivo/speechsdk/module/api/session/HotwordInfo;->mMessage:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/vivo/speechsdk/module/api/session/HotwordInfo;->engineName:Ljava/lang/String;

    const/4 p1, 0x0

    if-lez p0, :cond_0

    const-string p0, ""

    iput-object p0, v0, Lcom/vivo/speechsdk/module/api/session/HotwordInfo;->mStrMaxLength:Ljava/lang/String;

    iput-object p0, v0, Lcom/vivo/speechsdk/module/api/session/HotwordInfo;->mOutstripLimitedNum:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

    new-array p2, p0, [Ljava/lang/Object;

    sget v1, Lcom/vivo/speechsdk/module/api/asr/HotWordStrategy;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, p1

    sget v1, Lcom/vivo/speechsdk/module/api/asr/HotWordStrategy;->g:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, p2, v2

    sget v1, Lcom/vivo/speechsdk/module/api/asr/HotWordStrategy;->h:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, p2, v3

    const-string v1, "%s,%s,%s"

    invoke-static {v1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/vivo/speechsdk/module/api/session/HotwordInfo;->mOutstripLimitedNum:Ljava/lang/String;

    new-array p0, p0, [Ljava/lang/Object;

    sget p2, Lcom/vivo/speechsdk/module/api/asr/HotWordStrategy;->i:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p0, p1

    sget p2, Lcom/vivo/speechsdk/module/api/asr/HotWordStrategy;->j:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p0, v2

    sget p2, Lcom/vivo/speechsdk/module/api/asr/HotWordStrategy;->k:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p0, v3

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/vivo/speechsdk/module/api/session/HotwordInfo;->mStrMaxLength:Ljava/lang/String;

    :goto_0
    const/16 p0, 0x12

    invoke-interface {p3, p0, p1, p1, v0}, Lcom/vivo/speechsdk/module/api/session/ISessionCollect;->event(IIILjava/lang/Object;)V

    goto :goto_2

    :cond_1
    const-string p0, "asr session module not found "

    goto :goto_1

    :cond_2
    const-string p0, "session module not found "

    :goto_1
    invoke-static {v1, p0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getInstance()Lcom/vivo/speechsdk/common/module/ModuleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getSpeechContext()Lcom/vivo/speechsdk/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/speechsdk/b/c;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "::\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/vivo/speechsdk/module/api/asr/HotWordStrategy;->d(Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    rem-int/lit8 v1, p1, 0xa

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-direct {p0, v0}, Lcom/vivo/speechsdk/module/api/asr/HotWordStrategy;->d(Ljava/lang/String;)V

    const-string v0, ","

    invoke-direct {p0, v0}, Lcom/vivo/speechsdk/module/api/asr/HotWordStrategy;->d(Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const-string p1, "\n\n"

    invoke-direct {p0, p1}, Lcom/vivo/speechsdk/module/api/asr/HotWordStrategy;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "jsonArray \u89e3\u6790\u5f02\u5e38::"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "HotWordStrategy"

    invoke-static {p2, p1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private a(Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 3

    invoke-static {}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getInstance()Lcom/vivo/speechsdk/common/module/ModuleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getSpeechContext()Lcom/vivo/speechsdk/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/speechsdk/b/c;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "::\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/vivo/speechsdk/module/api/asr/HotWordStrategy;->d(Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge p1, v0, :cond_1

    invoke-virtual {p2, p1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    rem-int/lit8 v1, p1, 0xa

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-direct {p0, v0}, Lcom/vivo/speechsdk/module/api/asr/HotWordStrategy;->d(Ljava/lang/String;)V

    const-string v0, ","

    invoke-direct {p0, v0}, Lcom/vivo/speechsdk/module/api/asr/HotWordStrategy;->d(Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const-string p1, "\n\n"

    invoke-direct {p0, p1}, Lcom/vivo/speechsdk/module/api/asr/HotWordStrategy;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "jsonArray \u89e3\u6790\u5f02\u5e38::"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "HotWordStrategy"

    invoke-static {p2, p1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private static a(Z)V
    .locals 1

    invoke-static {}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getInstance()Lcom/vivo/speechsdk/common/module/ModuleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getSpeechContext()Lcom/vivo/speechsdk/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/speechsdk/b/c;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "sdk upload hot word"

    if-eqz p0, :cond_0

    invoke-static {v0}, Lcom/vivo/speechsdk/b/g/a;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/vivo/speechsdk/b/g/a;->c(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static a(ILjava/lang/String;)Z
    .locals 1

    const-string v0, "null"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-le p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static a(Landroid/os/Bundle;Lcom/vivo/speechsdk/module/api/asr/UpdateHotwordListener;)Z
    .locals 2

    const-string v0, "key_hotword_content"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_hotword_json"

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz v0, :cond_0

    array-length v0, v0

    if-nez v0, :cond_1

    :cond_0
    if-eqz p0, :cond_2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    const/16 p0, 0x765d

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Lcom/vivo/speechsdk/module/api/asr/UpdateHotwordListener;->onError(ILjava/lang/String;)V

    :cond_3
    const-string p0, "HotWordStrategy"

    const-string p1, "client hot word is null"

    invoke-static {p0, p1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method private a(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)Z"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {v2}, Lcom/vivo/speechsdk/module/api/asr/HotWordStrategy;->b(Ljava/util/List;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/vivo/speechsdk/common/utils/SpUtil;->getInstance()Lcom/vivo/speechsdk/common/utils/SpUtil;

    move-result-object v0

    const-string v1, ""

    const-string v2, "HOT_WORD_HASH"

    invoke-virtual {v0, v2, v1}, Lcom/vivo/speechsdk/common/utils/SpUtil;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/vivo/speechsdk/common/utils/SpUtil;->getInstance()Lcom/vivo/speechsdk/common/utils/SpUtil;

    move-result-object v1

    invoke-virtual {v1, v2, p1}, Lcom/vivo/speechsdk/common/utils/SpUtil;->save(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "HotWordStrategy"

    if-eqz v1, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hash not same ::"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ,new hash is::"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "already upload ::"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-static {v2, p1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private b(Ljava/lang/String;)I
    .locals 2

    const-string v0, "ENGINE_ONLINE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x2710

    return p1

    :cond_0
    const-string v0, "ENGINE_YM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p1, 0x7d0

    return p1

    :cond_1
    const-string v0, "ENGINE_OFFLINE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x1388

    if-nez v0, :cond_3

    const-string v0, "ENGINE_IPC"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "ENGINE_TC"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/16 p1, 0xbb8

    return p1

    :cond_3
    :goto_0
    return v1
.end method

.method public static synthetic b(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/vivo/speechsdk/module/api/asr/HotWordStrategy;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static b()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/vivo/speechsdk/module/api/asr/HotWordStrategy;->f:I

    sput v0, Lcom/vivo/speechsdk/module/api/asr/HotWordStrategy;->g:I

    sput v0, Lcom/vivo/speechsdk/module/api/asr/HotWordStrategy;->h:I

    sput v0, Lcom/vivo/speechsdk/module/api/asr/HotWordStrategy;->i:I

    sput v0, Lcom/vivo/speechsdk/module/api/asr/HotWordStrategy;->j:I

    sput v0, Lcom/vivo/speechsdk/module/api/asr/HotWordStrategy;->k:I

    return-void
.end method

.method private static b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/vivo/speechsdk/module/api/asr/b;

    invoke-direct {v0}, Lcom/vivo/speechsdk/module/api/asr/b;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private c()V
    .locals 2

    invoke-static {}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getInstance()Lcom/vivo/speechsdk/common/module/ModuleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getSpeechContext()Lcom/vivo/speechsdk/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/speechsdk/b/c;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/vivo/speechsdk/module/api/asr/HotWordStrategy;->a()Lcom/vivo/speechsdk/b/h/h;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vivo/speechsdk/b/h/a;->a(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/speechsdk/module/api/asr/HotWordStrategy;->a:Lcom/vivo/speechsdk/b/h/h;

    :cond_0
    return-void
.end method

.method private c(Ljava/lang/String;)Z
    .locals 2

    invoke-static {}, Lcom/vivo/speechsdk/common/utils/SpUtil;->getInstance()Lcom/vivo/speechsdk/common/utils/SpUtil;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/vivo/speechsdk/common/utils/SpUtil;->get(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method private d(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/vivo/speechsdk/module/api/asr/HotWordStrategy;->a()Lcom/vivo/speechsdk/b/h/h;

    move-result-object v0

    const-string v1, "utf-8"

    invoke-virtual {v0, p1, v1}, Lcom/vivo/speechsdk/b/h/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static updateUploadFlag(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 3

    invoke-static {}, Lcom/vivo/speechsdk/common/utils/SpUtil;->getInstance()Lcom/vivo/speechsdk/common/utils/SpUtil;

    move-result-object v0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, p0, v2}, Lcom/vivo/speechsdk/common/utils/SpUtil;->save(Ljava/lang/String;Z)V

    invoke-static {v1}, Lcom/vivo/speechsdk/module/api/asr/HotWordStrategy;->a(Z)V

    invoke-static {p0}, Lcom/vivo/speechsdk/module/api/asr/HotWordStrategy;->a(Ljava/lang/String;)I

    move-result p0

    invoke-static {p1, p2, p0, p3}, Lcom/vivo/speechsdk/module/api/asr/HotWordStrategy;->a(ILjava/lang/String;II)V

    return-void
.end method


# virtual methods
.method public getHotWords(Landroid/os/Bundle;Ljava/lang/String;ZLcom/vivo/speechsdk/module/api/asr/UpdateHotwordListener;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/vivo/speechsdk/module/api/asr/HotWordStrategy;->a(Z)V

    invoke-static {}, Lcom/vivo/speechsdk/module/api/asr/HotWordStrategy;->b()V

    const-string v0, "ENGINE_TC"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/vivo/speechsdk/module/api/asr/HotWordStrategy;->a(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/vivo/speechsdk/module/api/asr/HotWordStrategy;->a(Landroid/os/Bundle;Ljava/lang/String;ZLcom/vivo/speechsdk/module/api/asr/UpdateHotwordListener;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getHotWords2(Landroid/os/Bundle;Ljava/lang/String;Lcom/vivo/speechsdk/module/api/asr/UpdateHotwordListener;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "Lcom/vivo/speechsdk/module/api/asr/UpdateHotwordListener;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/vivo/speechsdk/module/api/asr/HotWordStrategy;->b()V

    invoke-static {p1, p3}, Lcom/vivo/speechsdk/module/api/asr/HotWordStrategy;->a(Landroid/os/Bundle;Lcom/vivo/speechsdk/module/api/asr/UpdateHotwordListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sdk start parse hot word, engineType name::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HotWordStrategy"

    invoke-static {v1, v0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/vivo/speechsdk/module/api/asr/HotWordStrategy;->a(Z)V

    :try_start_0
    const-string v0, "key_hotword_content"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string v2, "key_hotword_json"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "name"

    if-eqz v0, :cond_1

    :try_start_1
    array-length v3, v0

    if-lez v3, :cond_1

    invoke-direct {p0, p2}, Lcom/vivo/speechsdk/module/api/asr/HotWordStrategy;->b(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1, v0, v2}, Lcom/vivo/speechsdk/module/api/asr/HotWordStrategy;->a(I[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "0"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-direct {p0, p2}, Lcom/vivo/speechsdk/module/api/asr/HotWordStrategy;->b(Ljava/lang/String;)I

    move-result p2

    invoke-direct {p0, p2, p1, v2}, Lcom/vivo/speechsdk/module/api/asr/HotWordStrategy;->a(ILorg/json/JSONArray;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    :goto_0
    const-string p2, "sdk has filter and start upload"

    invoke-static {v1, p2}, Lcom/vivo/speechsdk/common/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    nop

    const-string p1, "client hot word is illegal"

    invoke-static {v1, p1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_2

    const/16 p1, 0x765d

    const/4 p2, 0x0

    invoke-interface {p3, p1, p2}, Lcom/vivo/speechsdk/module/api/asr/UpdateHotwordListener;->onError(ILjava/lang/String;)V

    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
