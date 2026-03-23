.class public Lcom/baidu/translate/TransApi;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/translate/TransApi$OnResultListener;,
        Lcom/baidu/translate/TransApi$AsyncTransTask;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcom/baidu/translate/TransApi$OnResultListener;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/baidu/translate/TransApi;->a:Ljava/lang/String;

    const-string p1, "0fpJjw6sgFcymCpaUrLE"

    iput-object p1, p0, Lcom/baidu/translate/TransApi;->b:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic a(Lcom/baidu/translate/TransApi;)Lcom/baidu/translate/TransApi$OnResultListener;
    .locals 0

    iget-object p0, p0, Lcom/baidu/translate/TransApi;->c:Lcom/baidu/translate/TransApi$OnResultListener;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/baidu/translate/TransApi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/translate/TransApi;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "q"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "from"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "to"

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "appid"

    iget-object p3, p0, Lcom/baidu/translate/TransApi;->a:Ljava/lang/String;

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const-string p3, "salt"

    invoke-interface {v0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/baidu/translate/TransApi;->a:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/baidu/translate/TransApi;->b:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "sign"

    invoke-static {p1}, Lcom/baidu/translate/MD5;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public asyncTransResult(Ljava/lang/String;)V
    .locals 5

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v0

    new-instance v1, Lcom/baidu/translate/TransApi$AsyncTransTask;

    invoke-direct {v1, p0}, Lcom/baidu/translate/TransApi$AsyncTransTask;-><init>(Lcom/baidu/translate/TransApi;)V

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0}, Lk2/b0;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const v3, 0x7f070695

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f07004d

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v0}, Lk2/b0;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const v3, 0x7f070697

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "zh"

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    aput-object p1, v2, v0

    invoke-virtual {v1, v2}, Lcom/androlua/util/AsyncTaskX;->execute([Ljava/lang/Object;)Lcom/androlua/util/AsyncTaskX;

    return-void
.end method

.method public asyncTransResult(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/baidu/translate/TransApi$AsyncTransTask;

    invoke-direct {v0, p0}, Lcom/baidu/translate/TransApi$AsyncTransTask;-><init>(Lcom/baidu/translate/TransApi;)V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    const-string v2, "auto"

    aput-object v2, v1, p1

    const/4 p1, 0x2

    aput-object p2, v1, p1

    invoke-virtual {v0, v1}, Lcom/androlua/util/AsyncTaskX;->execute([Ljava/lang/Object;)Lcom/androlua/util/AsyncTaskX;

    return-void
.end method

.method public asyncTransResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/translate/TransApi$OnResultListener;)V
    .locals 2

    invoke-static {p2, p3, p1}, Lcom/nirenr/talkman/util/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p4, v0}, Lcom/baidu/translate/TransApi$OnResultListener;->onTransResult(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Lcom/baidu/translate/TransApi$AsyncTransTask;

    invoke-direct {v0, p0, p4}, Lcom/baidu/translate/TransApi$AsyncTransTask;-><init>(Lcom/baidu/translate/TransApi;Lcom/baidu/translate/TransApi$OnResultListener;)V

    const/4 p4, 0x3

    new-array p4, p4, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, p4, v1

    const/4 p1, 0x1

    aput-object p2, p4, p1

    const/4 p1, 0x2

    aput-object p3, p4, p1

    invoke-virtual {v0, p4}, Lcom/androlua/util/AsyncTaskX;->execute([Ljava/lang/Object;)Lcom/androlua/util/AsyncTaskX;

    return-void
.end method

.method public getTransResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/translate/TransApi;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    const-string p2, "https://fanyi-api.baidu.com/api/trans/vip/translate"

    invoke-static {p2, p1}, Lcom/baidu/translate/HttpGet;->get(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public print(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public setOnResultListener(Lcom/baidu/translate/TransApi$OnResultListener;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/translate/TransApi;->c:Lcom/baidu/translate/TransApi$OnResultListener;

    return-void
.end method
