.class public Lcom/vivo/speechsdk/module/asronline/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final c:Ljava/lang/String; = "HotwordService"

.field private static final d:Ljava/lang/String; = "imei=%s&vaid=%s&sysVer=%s&model=%s&product=%s&appVer=%s&type=2&dataInfo=%s&encAesKey=%s&userId=%s&flag=%s"

.field private static final e:Ljava/lang/String; = "hot_word"

.field private static final f:Ljava/lang/String; = "hot_word_result"

.field private static final g:Ljava/lang/String; = "application/x-www-form-urlencoded; charset=utf-8"

.field private static final h:Ljava/lang/String; = "https://jovivauc.vivo.com.cn/datacollect/upload"

.field private static final i:I = 0x7d0

.field private static final j:I = 0xf

.field private static final k:Ljava/lang/String; = "code"


# instance fields
.field private a:Lcom/vivo/speechsdk/module/api/asr/UpdateHotwordListener;

.field private b:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/vivo/speechsdk/module/asronline/c;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/module/asronline/c;->b:Landroid/os/Bundle;

    return-object p1
.end method

.method static synthetic a(Lcom/vivo/speechsdk/module/asronline/c;)Lcom/vivo/speechsdk/module/api/asr/UpdateHotwordListener;
    .locals 0

    iget-object p0, p0, Lcom/vivo/speechsdk/module/asronline/c;->a:Lcom/vivo/speechsdk/module/api/asr/UpdateHotwordListener;

    return-object p0
.end method

.method static synthetic a(Lcom/vivo/speechsdk/module/asronline/c;Lcom/vivo/speechsdk/module/api/asr/UpdateHotwordListener;)Lcom/vivo/speechsdk/module/api/asr/UpdateHotwordListener;
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/module/asronline/c;->a:Lcom/vivo/speechsdk/module/api/asr/UpdateHotwordListener;

    return-object p1
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    nop

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UnsupportedEncoding  | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p0, :cond_1

    const-string v1, "null"

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HotwordService"

    invoke-static {v1, v0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private a()V
    .locals 4

    iget-object v0, p0, Lcom/vivo/speechsdk/module/asronline/c;->a:Lcom/vivo/speechsdk/module/api/asr/UpdateHotwordListener;

    const/16 v1, 0x765c

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/vivo/speechsdk/module/api/asr/UpdateHotwordListener;->onError(ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/vivo/speechsdk/module/asronline/c;->b:Landroid/os/Bundle;

    const-string v2, "key_engine_hash_code"

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v2, "ENGINE_ONLINE"

    const-string v3, ""

    invoke-static {v2, v1, v3, v0}, Lcom/vivo/speechsdk/module/api/asr/HotWordStrategy;->updateUploadFlag(Ljava/lang/String;ILjava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Lcom/vivo/speechsdk/module/asronline/c;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/vivo/speechsdk/module/asronline/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/vivo/speechsdk/module/asronline/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "HotwordService"

    if-eqz v0, :cond_1

    const-string p1, "params is null"

    invoke-static {v2, p1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/vivo/speechsdk/module/asronline/c;->a:Lcom/vivo/speechsdk/module/api/asr/UpdateHotwordListener;

    if-eqz p1, :cond_0

    const/16 p2, 0x765e

    invoke-interface {p1, p2, v1}, Lcom/vivo/speechsdk/module/api/asr/UpdateHotwordListener;->onError(ILjava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Lcom/vivo/speechsdk/module/api/net/ReqBody;

    const-string v3, "application/x-www-form-urlencoded; charset=utf-8"

    invoke-direct {v0, v3, p1}, Lcom/vivo/speechsdk/module/api/net/ReqBody;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/vivo/speechsdk/module/api/net/Req$Builder;

    invoke-direct {p1}, Lcom/vivo/speechsdk/module/api/net/Req$Builder;-><init>()V

    invoke-virtual {p1, p2}, Lcom/vivo/speechsdk/module/api/net/Req$Builder;->url(Ljava/lang/String;)Lcom/vivo/speechsdk/module/api/net/Req$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/vivo/speechsdk/module/api/net/Req$Builder;->post(Lcom/vivo/speechsdk/module/api/net/ReqBody;)Lcom/vivo/speechsdk/module/api/net/Req$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vivo/speechsdk/module/api/net/Req$Builder;->build()Lcom/vivo/speechsdk/module/api/net/Req;

    move-result-object p1

    invoke-static {}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getInstance()Lcom/vivo/speechsdk/common/module/ModuleManager;

    move-result-object p2

    const-string v0, "Net"

    invoke-virtual {p2, v0}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getFactory(Ljava/lang/String;)Lcom/vivo/speechsdk/b/b;

    move-result-object p2

    check-cast p2, Lcom/vivo/speechsdk/module/api/net/INetFactory;

    invoke-interface {p2}, Lcom/vivo/speechsdk/module/api/net/INetFactory;->createHttpClient()Lcom/vivo/speechsdk/module/api/net/IHttp;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/vivo/speechsdk/module/api/net/IHttp;->request(Lcom/vivo/speechsdk/module/api/net/Req;)Lcom/vivo/speechsdk/module/api/net/Resp;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p1, "response is null "

    :goto_0
    invoke-static {v2, p1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-direct {p0}, Lcom/vivo/speechsdk/module/asronline/c;->a()V

    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/vivo/speechsdk/module/api/net/Resp;->isSuccessful()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-virtual {p1}, Lcom/vivo/speechsdk/module/api/net/Resp;->body()Lcom/vivo/speechsdk/module/api/net/RespBody;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-virtual {p1}, Lcom/vivo/speechsdk/module/api/net/Resp;->body()Lcom/vivo/speechsdk/module/api/net/RespBody;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vivo/speechsdk/module/api/net/RespBody;->string()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p1, "body is null 0"

    goto :goto_0

    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "response body | "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/vivo/speechsdk/common/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p2

    goto :goto_2

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "json error msg::"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2, p1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    if-nez v1, :cond_4

    const-string p1, "res is null"

    invoke-static {v2, p1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string p1, "code"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/vivo/speechsdk/module/asronline/c;->a:Lcom/vivo/speechsdk/module/api/asr/UpdateHotwordListener;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lcom/vivo/speechsdk/module/api/asr/UpdateHotwordListener;->onSuccess()V

    :cond_5
    iget-object p1, p0, Lcom/vivo/speechsdk/module/asronline/c;->b:Landroid/os/Bundle;

    const-string p2, "key_engine_hash_code"

    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x0

    const-string v0, ""

    const-string v1, "ENGINE_ONLINE"

    invoke-static {v1, p2, v0, p1}, Lcom/vivo/speechsdk/module/api/asr/HotWordStrategy;->updateUploadFlag(Ljava/lang/String;ILjava/lang/String;I)V

    goto :goto_4

    :cond_6
    const-string p1, "body is null"

    goto :goto_3

    :cond_7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "response code | "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/vivo/speechsdk/module/api/net/Resp;->code()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " msg::"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/vivo/speechsdk/module/api/net/Resp;->message()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_3
    invoke-static {v2, p1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    invoke-direct {p0}, Lcom/vivo/speechsdk/module/asronline/c;->a()V

    :goto_4
    return-void
.end method

.method private a([Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "HotwordService"

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xf

    if-le v2, v3, :cond_0

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    const/16 v2, 0x7d0

    if-le p1, v2, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {v1, v2, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_3
    const/4 p1, 0x0

    new-array v2, p1, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v1, "JSONException"

    invoke-static {v0, v1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ""

    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    iget-object p1, p0, Lcom/vivo/speechsdk/module/asronline/c;->a:Lcom/vivo/speechsdk/module/api/asr/UpdateHotwordListener;

    if-eqz p1, :cond_4

    const/16 p2, 0x765d

    invoke-interface {p1, p2, v3}, Lcom/vivo/speechsdk/module/api/asr/UpdateHotwordListener;->onError(ILjava/lang/String;)V

    :cond_4
    return-void

    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "old upload hot word is::"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/vivo/speechsdk/common/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/vivo/speechsdk/common/utils/SpUtil;->getInstance()Lcom/vivo/speechsdk/common/utils/SpUtil;

    move-result-object v2

    const-string v4, "hot_word"

    invoke-virtual {v2, v4}, Lcom/vivo/speechsdk/common/utils/SpUtil;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v5, "hot_word_result"

    if-eqz v2, :cond_7

    invoke-static {}, Lcom/vivo/speechsdk/common/utils/SpUtil;->getInstance()Lcom/vivo/speechsdk/common/utils/SpUtil;

    move-result-object v2

    invoke-virtual {v2, v5, p1}, Lcom/vivo/speechsdk/common/utils/SpUtil;->get(Ljava/lang/String;Z)Z

    move-result v2

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const-string v6, "forceUpdate = "

    aput-object v6, v4, p1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v4, v7

    const/4 v6, 0x2

    const-string v7, " lastUpdateResult = "

    aput-object v7, v4, v6

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x3

    aput-object v6, v4, v7

    invoke-static {v4}, Lcom/vivo/speechsdk/common/utils/StringUtils;->concat([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/vivo/speechsdk/common/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p3, :cond_8

    if-eqz v2, :cond_8

    iget-object p1, p0, Lcom/vivo/speechsdk/module/asronline/c;->a:Lcom/vivo/speechsdk/module/api/asr/UpdateHotwordListener;

    if-eqz p1, :cond_6

    invoke-interface {p1}, Lcom/vivo/speechsdk/module/api/asr/UpdateHotwordListener;->onSuccess()V

    :cond_6
    return-void

    :cond_7
    invoke-static {}, Lcom/vivo/speechsdk/common/utils/SpUtil;->getInstance()Lcom/vivo/speechsdk/common/utils/SpUtil;

    move-result-object p3

    invoke-virtual {p3, v4, v1}, Lcom/vivo/speechsdk/common/utils/SpUtil;->save(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    invoke-static {}, Lcom/vivo/speechsdk/common/utils/SpUtil;->getInstance()Lcom/vivo/speechsdk/common/utils/SpUtil;

    move-result-object p3

    invoke-virtual {p3, v5, p1}, Lcom/vivo/speechsdk/common/utils/SpUtil;->save(Ljava/lang/String;Z)V

    invoke-direct {p0, v1}, Lcom/vivo/speechsdk/module/asronline/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_a

    const-string p1, "params is null"

    invoke-static {v0, p1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/vivo/speechsdk/module/asronline/c;->a:Lcom/vivo/speechsdk/module/api/asr/UpdateHotwordListener;

    if-eqz p1, :cond_9

    const/16 p2, 0x765e

    invoke-interface {p1, p2, v3}, Lcom/vivo/speechsdk/module/api/asr/UpdateHotwordListener;->onError(ILjava/lang/String;)V

    :cond_9
    return-void

    :cond_a
    new-instance p3, Lcom/vivo/speechsdk/module/api/net/ReqBody;

    const-string v0, "application/x-www-form-urlencoded; charset=utf-8"

    invoke-direct {p3, v0, p1}, Lcom/vivo/speechsdk/module/api/net/ReqBody;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/vivo/speechsdk/module/api/net/Req$Builder;

    invoke-direct {p1}, Lcom/vivo/speechsdk/module/api/net/Req$Builder;-><init>()V

    invoke-virtual {p1, p2}, Lcom/vivo/speechsdk/module/api/net/Req$Builder;->url(Ljava/lang/String;)Lcom/vivo/speechsdk/module/api/net/Req$Builder;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/vivo/speechsdk/module/api/net/Req$Builder;->post(Lcom/vivo/speechsdk/module/api/net/ReqBody;)Lcom/vivo/speechsdk/module/api/net/Req$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vivo/speechsdk/module/api/net/Req$Builder;->build()Lcom/vivo/speechsdk/module/api/net/Req;

    move-result-object p1

    invoke-static {}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getInstance()Lcom/vivo/speechsdk/common/module/ModuleManager;

    move-result-object p2

    const-string p3, "Net"

    invoke-virtual {p2, p3}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getFactory(Ljava/lang/String;)Lcom/vivo/speechsdk/b/b;

    move-result-object p2

    check-cast p2, Lcom/vivo/speechsdk/module/api/net/INetFactory;

    invoke-interface {p2}, Lcom/vivo/speechsdk/module/api/net/INetFactory;->createHttpClient()Lcom/vivo/speechsdk/module/api/net/IHttp;

    move-result-object p2

    new-instance p3, Lcom/vivo/speechsdk/module/asronline/c$b;

    invoke-direct {p3, p0}, Lcom/vivo/speechsdk/module/asronline/c$b;-><init>(Lcom/vivo/speechsdk/module/asronline/c;)V

    invoke-interface {p2, p1, p3}, Lcom/vivo/speechsdk/module/api/net/IHttp;->request(Lcom/vivo/speechsdk/module/api/net/Req;Lcom/vivo/speechsdk/module/api/net/Callback;)V

    return-void
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const-string v1, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDczHSImsT7UywQemtIMOxX56Cq1gL3ubM43xDywXt0/DCPXbh8hVEA47fKNQDQpfgBw+wMq/SJFgy6vGcDZPW3bR7TW1qg8rwVAEn1YMY5U63tS/5ObOfQ68L7kpRTAOL+ooFtM6835r90uEPFkXPxbYpTprWjz35GxrHRf48x4wIDAQAB"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-static {v1}, Lcom/vivo/speechsdk/common/utils/security/RsaUtils;->readRSAPublicKey([B)Ljava/security/PublicKey;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1, v1}, Lcom/vivo/speechsdk/common/utils/security/RandomAesKeyCryptoUtil;->encrypt([BLjava/security/PublicKey;)Lcom/vivo/speechsdk/common/utils/security/RandomAesKeyCryptoResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vivo/speechsdk/common/utils/security/RandomAesKeyCryptoResult;->getEncryptedData()[B

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/vivo/speechsdk/common/utils/security/RandomAesKeyCryptoResult;->getEncryptedKey()[B

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/vivo/speechsdk/common/utils/security/RandomAesKeyCryptoResult;->getFlag()[B

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/vivo/speechsdk/common/utils/security/RandomAesKeyCryptoResult;->getEncryptedData()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/vivo/speechsdk/common/utils/security/RandomAesKeyCryptoResult;->getEncryptedKey()[B

    move-result-object v3

    invoke-static {v3, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/vivo/speechsdk/common/utils/security/RandomAesKeyCryptoResult;->getFlag()[B

    move-result-object p1

    invoke-static {p1, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    iget-object v4, p0, Lcom/vivo/speechsdk/module/asronline/c;->b:Landroid/os/Bundle;

    const-string v5, "key_user_id"

    invoke-virtual {v4, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/vivo/speechsdk/module/asronline/c;->b:Landroid/os/Bundle;

    const-string v6, "key_did"

    invoke-virtual {v5, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/vivo/speechsdk/module/asronline/c;->b:Landroid/os/Bundle;

    const-string v7, "key_vaid"

    invoke-virtual {v6, v7}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/vivo/speechsdk/module/asronline/c;->b:Landroid/os/Bundle;

    const-string v8, "key_model"

    invoke-virtual {v7, v8}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/vivo/speechsdk/module/asronline/c;->b:Landroid/os/Bundle;

    const-string v9, "key_system_version"

    invoke-virtual {v8, v9}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/vivo/speechsdk/module/asronline/c;->b:Landroid/os/Bundle;

    const-string v10, "key_client_version"

    invoke-virtual {v9, v10}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/vivo/speechsdk/module/asronline/c;->b:Landroid/os/Bundle;

    const-string v11, "key_product"

    invoke-virtual {v10, v11}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0xa

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v5}, Lcom/vivo/speechsdk/module/asronline/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v11, v1

    invoke-static {v6}, Lcom/vivo/speechsdk/module/asronline/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x1

    aput-object v1, v11, v5

    invoke-static {v8}, Lcom/vivo/speechsdk/module/asronline/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v11, v2

    invoke-static {v7}, Lcom/vivo/speechsdk/module/asronline/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v11, v2

    invoke-static {v10}, Lcom/vivo/speechsdk/module/asronline/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v11, v2

    invoke-static {v9}, Lcom/vivo/speechsdk/module/asronline/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v11, v2

    invoke-static {v0}, Lcom/vivo/speechsdk/module/asronline/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    aput-object v0, v11, v1

    invoke-static {v3}, Lcom/vivo/speechsdk/module/asronline/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x7

    aput-object v0, v11, v1

    invoke-static {v4}, Lcom/vivo/speechsdk/module/asronline/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    aput-object v0, v11, v1

    invoke-static {p1}, Lcom/vivo/speechsdk/module/asronline/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x9

    aput-object p1, v11, v0

    const-string p1, "imei=%s&vaid=%s&sysVer=%s&model=%s&product=%s&appVer=%s&type=2&dataInfo=%s&encAesKey=%s&userId=%s&flag=%s"

    invoke-static {p1, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    return-object v0
.end method

.method static synthetic b(Lcom/vivo/speechsdk/module/asronline/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/vivo/speechsdk/module/asronline/c;->a()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;Lcom/vivo/speechsdk/module/api/asr/UpdateHotwordListener;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/vivo/speechsdk/common/thread/c;->a()Lcom/vivo/speechsdk/common/thread/c;

    move-result-object v0

    new-instance v1, Lcom/vivo/speechsdk/module/asronline/c$a;

    invoke-direct {v1, p0, p1, p2}, Lcom/vivo/speechsdk/module/asronline/c$a;-><init>(Lcom/vivo/speechsdk/module/asronline/c;Landroid/os/Bundle;Lcom/vivo/speechsdk/module/api/asr/UpdateHotwordListener;)V

    invoke-virtual {v0, v1}, Lcom/vivo/speechsdk/common/thread/c;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
