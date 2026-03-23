.class Lcom/nirenr/talkman/util/Music$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/util/Music$PlayList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nirenr/talkman/util/Music;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "g"
.end annotation


# instance fields
.field private a:Lorg/json/JSONArray;

.field private b:I

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic e:Lcom/nirenr/talkman/util/Music;


# direct methods
.method public constructor <init>(Lcom/nirenr/talkman/util/Music;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/nirenr/talkman/util/Music$g;->e:Lcom/nirenr/talkman/util/Music;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/nirenr/talkman/util/Music$g;->b:I

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "info"

    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "answer"

    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    const-string v0, "content"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    const-string v0, "radio_list"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    const-string v0, "radios"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    iput-object p2, p0, Lcom/nirenr/talkman/util/Music$g;->a:Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const-string v0, "\u641c\u7d22\u5185\u5bb9\u51fa\u9519"

    invoke-static {p1, v0}, Lcom/nirenr/talkman/util/Music;->d(Lcom/nirenr/talkman/util/Music;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public getNameList()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nirenr/talkman/util/Music$g;->d:Ljava/util/ArrayList;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/nirenr/talkman/util/Music$g;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/nirenr/talkman/util/Music$g;->d:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/nirenr/talkman/util/Music$g;->a:Lorg/json/JSONArray;

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "radio_name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/util/Music$g;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getUrlList()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nirenr/talkman/util/Music$g;->c:Ljava/util/ArrayList;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/nirenr/talkman/util/Music$g;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/nirenr/talkman/util/Music$g;->c:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/nirenr/talkman/util/Music$g;->a:Lorg/json/JSONArray;

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "rate64_aac_url"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/util/Music$g;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method public hasNext()Z
    .locals 3

    iget-object v0, p0, Lcom/nirenr/talkman/util/Music$g;->a:Lorg/json/JSONArray;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    iget v1, p0, Lcom/nirenr/talkman/util/Music$g;->b:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public hasPrevious()Z
    .locals 2

    iget-object v0, p0, Lcom/nirenr/talkman/util/Music$g;->a:Lorg/json/JSONArray;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/nirenr/talkman/util/Music$g;->b:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isOk()Z
    .locals 1

    iget-object v0, p0, Lcom/nirenr/talkman/util/Music$g;->a:Lorg/json/JSONArray;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public length()I
    .locals 1

    iget-object v0, p0, Lcom/nirenr/talkman/util/Music$g;->a:Lorg/json/JSONArray;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    return v0
.end method

.method public next()V
    .locals 4

    iget v0, p0, Lcom/nirenr/talkman/util/Music$g;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nirenr/talkman/util/Music$g;->b:I

    :try_start_0
    iget-object v1, p0, Lcom/nirenr/talkman/util/Music$g;->a:Lorg/json/JSONArray;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "rate64_ts_url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v2

    const-string v3, "TextUnderstander"

    invoke-virtual {v2, v3, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/nirenr/talkman/util/Music;->g()Lcom/nirenr/talkman/util/Music;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/nirenr/talkman/util/Music;->m(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nirenr/talkman/util/Music$g;->e:Lcom/nirenr/talkman/util/Music;

    const-string v2, "radio_name"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/nirenr/talkman/util/Music;->d(Lcom/nirenr/talkman/util/Music;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public previous()V
    .locals 4

    iget v0, p0, Lcom/nirenr/talkman/util/Music$g;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/nirenr/talkman/util/Music$g;->b:I

    :try_start_0
    iget-object v1, p0, Lcom/nirenr/talkman/util/Music$g;->a:Lorg/json/JSONArray;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "rate64_ts_url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/nirenr/talkman/util/Music;->g()Lcom/nirenr/talkman/util/Music;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/nirenr/talkman/util/Music;->m(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nirenr/talkman/util/Music$g;->e:Lcom/nirenr/talkman/util/Music;

    const-string v2, "radio_name"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/nirenr/talkman/util/Music;->d(Lcom/nirenr/talkman/util/Music;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setIdx(I)V
    .locals 0

    iput p1, p0, Lcom/nirenr/talkman/util/Music$g;->b:I

    return-void
.end method
