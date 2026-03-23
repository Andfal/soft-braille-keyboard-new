.class public Lk1/d;
.super Lk1/f;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lk1/f;-><init>()V

    return-void
.end method

.method private static g([BLjava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    :goto_0
    if-eqz v1, :cond_1

    const-string p0, "\ufeff"

    invoke-virtual {v1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    invoke-virtual {v1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_1
    return-object v1

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Encoding response into string failed"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GetTtsLicenseWork"

    invoke-static {p1, p0}, Lv0/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private h([B)Lorg/json/JSONObject;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "utf-8"

    invoke-static {p1, v1}, Lk1/d;->g([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method


# virtual methods
.method public d(ILjava/util/Map;Ljava/lang/String;[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            "[B)V"
        }
    .end annotation

    const/4 p3, 0x0

    :try_start_0
    invoke-direct {p0, p4}, Lk1/d;->h([B)Lorg/json/JSONObject;

    move-result-object p4

    if-eqz p4, :cond_0

    invoke-virtual {p0, p1, p2, p4}, Lk1/d;->j(ILjava/util/Map;Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/json/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected response type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {v0, p4}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, v0, p3}, Lk1/d;->i(ILjava/util/Map;Ljava/lang/Throwable;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p4

    invoke-virtual {p0, p1, p2, p4, p3}, Lk1/d;->i(ILjava/util/Map;Ljava/lang/Throwable;Lorg/json/JSONObject;)V

    invoke-virtual {p4}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public e(ILjava/util/Map;Ljava/lang/String;[BLjava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            "[B",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :try_start_0
    invoke-direct {p0, p4}, Lk1/d;->h([B)Lorg/json/JSONObject;

    move-result-object p4

    if-eqz p4, :cond_0

    invoke-virtual {p0, p1, p2, p5, p4}, Lk1/d;->i(ILjava/util/Map;Ljava/lang/Throwable;Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_0
    new-instance p5, Lorg/json/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected response type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p5, p4}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p5, p3}, Lk1/d;->i(ILjava/util/Map;Ljava/lang/Throwable;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p4

    invoke-virtual {p0, p1, p2, p4, p3}, Lk1/d;->i(ILjava/util/Map;Ljava/lang/Throwable;Lorg/json/JSONObject;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public i(ILjava/util/Map;Ljava/lang/Throwable;Lorg/json/JSONObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/Throwable;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public j(ILjava/util/Map;Lorg/json/JSONObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    return-void
.end method
