.class Lcom/baidu/location/b/c$b;
.super Lcom/baidu/location/e/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field final synthetic b:Lcom/baidu/location/b/c;


# direct methods
.method constructor <init>(Lcom/baidu/location/b/c;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/b/c$b;->b:Lcom/baidu/location/b/c;

    invoke-direct {p0}, Lcom/baidu/location/e/e;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/baidu/location/b/c$b;->a:Ljava/lang/String;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/baidu/location/e/e;->k:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    invoke-static {}, Lcom/baidu/location/e/k;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/e/e;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/location/b/c$b;->b:Lcom/baidu/location/b/c;

    invoke-static {v0}, Lcom/baidu/location/b/c;->a(Lcom/baidu/location/b/c;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/b/c$b;->b:Lcom/baidu/location/b/c;

    invoke-static {v0}, Lcom/baidu/location/b/c;->b(Lcom/baidu/location/b/c;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/baidu/location/b/c$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/baidu/location/b/c$b;->b:Lcom/baidu/location/b/c;

    invoke-static {v5}, Lcom/baidu/location/b/c;->a(Lcom/baidu/location/b/c;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    iget-object v5, p0, Lcom/baidu/location/b/c$b;->b:Lcom/baidu/location/b/c;

    invoke-static {v5}, Lcom/baidu/location/b/c;->b(Lcom/baidu/location/b/c;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    const-string v5, "&ki=%s&sn=%s"

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/b/c$b;->a:Ljava/lang/String;

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/baidu/location/b/c$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&enc=2"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/b/c$b;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/location/Jni;->encodeTp4(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/baidu/location/b/c$b;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/baidu/location/e/e;->k:Ljava/util/Map;

    const-string v4, "bloc"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "%d"

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/e/e;->k:Ljava/util/Map;

    const-string v2, "trtm"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/b/c$b;->a:Ljava/lang/String;

    sget-object p1, Lcom/baidu/location/e/k;->f:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/baidu/location/e/e;->b(Ljava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .locals 4

    const-string v0, ";"

    const-string v1, "enc"

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/baidu/location/e/e;->j:Ljava/lang/String;

    if-eqz p1, :cond_1

    :try_start_0
    const-string v2, "\"enc\""

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v2, :cond_0

    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/baidu/location/b/j;->a()Lcom/baidu/location/b/j;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/baidu/location/b/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    :goto_0
    :try_start_3
    new-instance v1, Lcom/baidu/location/BDLocation;

    invoke-direct {v1, p1}, Lcom/baidu/location/BDLocation;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    :try_start_4
    new-instance v1, Lcom/baidu/location/BDLocation;

    invoke-direct {v1}, Lcom/baidu/location/BDLocation;-><init>()V

    const/16 p1, 0x3f

    invoke-virtual {v1, p1}, Lcom/baidu/location/BDLocation;->setLocType(I)V

    :goto_1
    invoke-virtual {v1}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result p1

    const/16 v2, 0xa1

    if-ne p1, v2, :cond_1

    iget-object p1, p0, Lcom/baidu/location/b/c$b;->b:Lcom/baidu/location/b/c;

    invoke-static {p1}, Lcom/baidu/location/b/c;->c(Lcom/baidu/location/b/c;)Lcom/baidu/location/LocationClientOption;

    move-result-object p1

    iget-object p1, p1, Lcom/baidu/location/LocationClientOption;->coorType:Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/baidu/location/BDLocation;->setCoorType(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/baidu/location/b/c$b;->b:Lcom/baidu/location/b/c;

    iget-object v2, v2, Lcom/baidu/location/b/c;->a:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/baidu/location/b/c$b;->b:Lcom/baidu/location/b/c;

    iget-object v2, v2, Lcom/baidu/location/b/c;->b:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/baidu/location/BDLocation;->getTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/baidu/location/Jni;->en1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/baidu/location/BDLocation;->setLocationID(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {v1, p1, p1}, Lcom/baidu/location/BDLocation;->setRoadLocString(FF)V

    iget-object p1, p0, Lcom/baidu/location/b/c$b;->b:Lcom/baidu/location/b/c;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/baidu/location/b/c;->a(Lcom/baidu/location/b/c;Z)Z

    iget-object p1, p0, Lcom/baidu/location/b/c$b;->b:Lcom/baidu/location/b/c;

    invoke-static {p1}, Lcom/baidu/location/b/c;->d(Lcom/baidu/location/b/c;)Lcom/baidu/location/b/c$a;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/baidu/location/b/c$a;->onReceiveLocation(Lcom/baidu/location/BDLocation;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_2
    iget-object p1, p0, Lcom/baidu/location/e/e;->k:Ljava/util/Map;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    :cond_2
    return-void
.end method
