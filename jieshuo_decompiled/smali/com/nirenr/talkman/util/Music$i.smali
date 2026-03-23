.class Lcom/nirenr/talkman/util/Music$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/util/HttpUtil$HttpCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nirenr/talkman/util/Music;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "i"
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/util/Music;


# direct methods
.method private constructor <init>(Lcom/nirenr/talkman/util/Music;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/util/Music$i;->a:Lcom/nirenr/talkman/util/Music;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nirenr/talkman/util/Music;Lk2/q;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nirenr/talkman/util/Music$i;-><init>(Lcom/nirenr/talkman/util/Music;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p0}, Lcom/nirenr/talkman/util/HttpUtil;->f(Ljava/lang/String;Lcom/nirenr/talkman/util/HttpUtil$HttpCallback;)Lcom/nirenr/talkman/util/HttpUtil$d;

    return-void
.end method

.method public onDone(Lcom/nirenr/talkman/util/HttpUtil$c;)V
    .locals 7

    const-string v0, ""

    const-string v1, "singer"

    iget v2, p1, Lcom/nirenr/talkman/util/HttpUtil$c;->a:I

    const/16 v3, 0xc8

    const-string v4, "\u641c\u7d22\u6b4c\u66f2\u51fa\u9519"

    if-eq v2, v3, :cond_0

    iget-object p1, p0, Lcom/nirenr/talkman/util/Music$i;->a:Lcom/nirenr/talkman/util/Music;

    invoke-static {p1, v4}, Lcom/nirenr/talkman/util/Music;->d(Lcom/nirenr/talkman/util/Music;Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    iget-object p1, p1, Lcom/nirenr/talkman/util/HttpUtil$c;->b:Ljava/lang/String;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "info"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    iget-object v2, p0, Lcom/nirenr/talkman/util/Music$i;->a:Lcom/nirenr/talkman/util/Music;

    invoke-static {v2}, Lcom/nirenr/talkman/util/Music;->b(Lcom/nirenr/talkman/util/Music;)Lcom/androlua/LuaContext;

    move-result-object v2

    const-string v3, "\u4e0b\u8f7d"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "song"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".mp3"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v5}, Lcom/androlua/LuaContext;->getLuaExtPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object p1, p0, Lcom/nirenr/talkman/util/Music$i;->a:Lcom/nirenr/talkman/util/Music;

    invoke-virtual {p1, v2}, Lcom/nirenr/talkman/util/Music;->m(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/nirenr/talkman/util/Music$i;->a:Lcom/nirenr/talkman/util/Music;

    const-string v3, "mp3"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nirenr/talkman/util/Music;->m(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nirenr/talkman/util/Music$i;->a:Lcom/nirenr/talkman/util/Music;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "name"

    invoke-virtual {p1, v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/nirenr/talkman/util/Music;->d(Lcom/nirenr/talkman/util/Music;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/nirenr/talkman/util/Music$i;->a:Lcom/nirenr/talkman/util/Music;

    invoke-static {v0, v4}, Lcom/nirenr/talkman/util/Music;->d(Lcom/nirenr/talkman/util/Music;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
