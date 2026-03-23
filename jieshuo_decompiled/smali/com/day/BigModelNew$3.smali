.class Lcom/day/BigModelNew$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/util/HttpUtil$HttpCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/day/BigModelNew;->main2([BLcom/nirenr/talkman/ai/OcrResult$OCRListener;)Lcom/androlua/util/AsyncTaskX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$bs:[B

.field final synthetic val$listener:Lcom/nirenr/talkman/ai/OcrResult$OCRListener;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/ai/OcrResult$OCRListener;[B)V
    .locals 0

    iput-object p1, p0, Lcom/day/BigModelNew$3;->val$listener:Lcom/nirenr/talkman/ai/OcrResult$OCRListener;

    iput-object p2, p0, Lcom/day/BigModelNew$3;->val$bs:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(Lcom/nirenr/talkman/util/HttpUtil$c;)V
    .locals 6

    iget-object v0, p1, Lcom/nirenr/talkman/util/HttpUtil$c;->b:Ljava/lang/String;

    const-string v1, "wss"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/day/BigModelNew$3;->val$listener:Lcom/nirenr/talkman/ai/OcrResult$OCRListener;

    iget-object p1, p1, Lcom/nirenr/talkman/util/HttpUtil$c;->b:Ljava/lang/String;

    invoke-interface {v0, p1}, Lcom/nirenr/talkman/ai/OcrResult$OCRListener;->onError(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, p1, Lcom/nirenr/talkman/util/HttpUtil$c;->b:Ljava/lang/String;

    new-instance v0, Ly2/OkHttpClient$a;

    invoke-direct {v0}, Ly2/OkHttpClient$a;-><init>()V

    invoke-virtual {v0}, Ly2/OkHttpClient$a;->a()Ly2/OkHttpClient;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "http://"

    const-string v2, "ws://"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "https://"

    const-string v2, "wss://"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ly2/Request$a;

    invoke-direct {v1}, Ly2/Request$a;-><init>()V

    invoke-virtual {v1, p1}, Ly2/Request$a;->h(Ljava/lang/String;)Ly2/Request$a;

    move-result-object p1

    invoke-virtual {p1}, Ly2/Request$a;->b()Ly2/Request;

    move-result-object p1

    const-string v1, ""

    sput-object v1, Lcom/day/BigModelNew;->totalAnswer:Ljava/lang/String;

    new-instance v1, Lcom/day/BigModelNew;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/16 v3, 0x3c0

    iget-object v4, p0, Lcom/day/BigModelNew$3;->val$bs:[B

    invoke-static {v3, v4}, Lcom/androlua/LuaBitmap;->decodeScale(I[B)[B

    move-result-object v3

    iget-object v4, p0, Lcom/day/BigModelNew$3;->val$listener:Lcom/nirenr/talkman/ai/OcrResult$OCRListener;

    const-string v5, "0"

    invoke-direct {v1, v5, v2, v3, v4}, Lcom/day/BigModelNew;-><init>(Ljava/lang/String;Ljava/lang/Boolean;[BLcom/nirenr/talkman/ai/OcrResult$OCRListener;)V

    invoke-virtual {v0, p1, v1}, Ly2/OkHttpClient;->A(Ly2/Request;Ly2/g0;)Ly2/f0;

    return-void
.end method
