.class Lcom/nirenr/talkman/util/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/util/HttpUtil$HttpCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/util/d;->f(Ljava/lang/String;Lcom/baidu/translate/TransApi$OnResultListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/translate/TransApi$OnResultListener;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/baidu/translate/TransApi$OnResultListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/util/d$a;->a:Lcom/baidu/translate/TransApi$OnResultListener;

    iput-object p2, p0, Lcom/nirenr/talkman/util/d$a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/nirenr/talkman/util/d$a;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/nirenr/talkman/util/d$a;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(Lcom/nirenr/talkman/util/HttpUtil$c;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDone: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/nirenr/talkman/util/HttpUtil$c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "baiduai"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Lcom/nirenr/talkman/util/HttpUtil$c;->a:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object p1, p1, Lcom/nirenr/talkman/util/HttpUtil$c;->b:Ljava/lang/String;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "dit"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/nirenr/talkman/util/d$a;->a:Lcom/baidu/translate/TransApi$OnResultListener;

    invoke-interface {v0, p1}, Lcom/baidu/translate/TransApi$OnResultListener;->onTransResult(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nirenr/talkman/util/d$a;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/nirenr/talkman/util/d$a;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/nirenr/talkman/util/d$a;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Lcom/nirenr/talkman/util/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object p1, p0, Lcom/nirenr/talkman/util/d$a;->b:Ljava/lang/String;

    const-string v0, "auto"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lcom/baidu/translate/TransApi;

    const-string v0, "20170225000039856"

    const-string v1, "3qfku0JExu0Sr_2Ln75Z"

    invoke-direct {p1, v0, v1}, Lcom/baidu/translate/TransApi;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nirenr/talkman/util/d$a;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/nirenr/talkman/util/d$a;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/nirenr/talkman/util/d$a;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/nirenr/talkman/util/d$a;->a:Lcom/baidu/translate/TransApi$OnResultListener;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/baidu/translate/TransApi;->asyncTransResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/translate/TransApi$OnResultListener;)V

    :cond_1
    :goto_0
    return-void
.end method
