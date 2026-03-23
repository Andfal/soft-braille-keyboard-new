.class Lcom/nirenr/talkman/ai/f$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/util/HttpUtil$HttpCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/ai/f;->c([BLcom/nirenr/talkman/ai/OcrResult$OCRListener;)Lcom/androlua/util/AsyncTaskX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/ai/OcrResult$OCRListener;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/ai/OcrResult$OCRListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/ai/f$c;->a:Lcom/nirenr/talkman/ai/OcrResult$OCRListener;

    iput-object p2, p0, Lcom/nirenr/talkman/ai/f$c;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/nirenr/talkman/ai/f$c;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(Lcom/nirenr/talkman/util/HttpUtil$c;)V
    .locals 3

    iget v0, p1, Lcom/nirenr/talkman/util/HttpUtil$c;->a:I

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/nirenr/talkman/ai/f$c;->a:Lcom/nirenr/talkman/ai/OcrResult$OCRListener;

    iget-object p1, p1, Lcom/nirenr/talkman/util/HttpUtil$c;->b:Ljava/lang/String;

    invoke-interface {v0, p1}, Lcom/nirenr/talkman/ai/OcrResult$OCRListener;->onError(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Content-Type"

    const-string v2, "application/json; charset=utf-8"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Host"

    const-string v2, "bda.tencentcloudapi.com"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Authorization"

    iget-object p1, p1, Lcom/nirenr/talkman/util/HttpUtil$c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "X-TC-Action"

    const-string v1, "DetectBody"

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "X-TC-Timestamp"

    iget-object v1, p0, Lcom/nirenr/talkman/ai/f$c;->b:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "X-TC-Version"

    const-string v1, "2020-03-24"

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "X-TC-Region"

    const-string v1, "ap-beijing"

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/nirenr/talkman/ai/f$c;->c:Ljava/lang/String;

    new-instance v1, Lcom/nirenr/talkman/ai/f$c$a;

    invoke-direct {v1, p0}, Lcom/nirenr/talkman/ai/f$c$a;-><init>(Lcom/nirenr/talkman/ai/f$c;)V

    const-string v2, "https://bda.tencentcloudapi.com"

    invoke-static {v2, p1, v0, v1}, Lcom/nirenr/talkman/util/HttpUtil;->h(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/nirenr/talkman/util/HttpUtil$HttpCallback;)Lcom/nirenr/talkman/util/HttpUtil$d;

    return-void
.end method
