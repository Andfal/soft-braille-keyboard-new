.class Lcom/nirenr/talkman/ai/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly2/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/ai/g;->i([BLjava/lang/String;Lcom/nirenr/talkman/ai/OcrResult$OCRListener;)Lcom/androlua/util/AsyncTaskX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private a:Ljava/lang/StringBuilder;

.field final synthetic b:Landroid/os/Handler;

.field final synthetic c:Lcom/nirenr/talkman/ai/OcrResult$OCRListener;


# direct methods
.method constructor <init>(Landroid/os/Handler;Lcom/nirenr/talkman/ai/OcrResult$OCRListener;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/ai/g$a;->b:Landroid/os/Handler;

    iput-object p2, p0, Lcom/nirenr/talkman/ai/g$a;->c:Lcom/nirenr/talkman/ai/OcrResult$OCRListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcom/nirenr/talkman/ai/g$a;->a:Ljava/lang/StringBuilder;

    return-void
.end method

.method static bridge synthetic a(Lcom/nirenr/talkman/ai/g$a;)Ljava/lang/StringBuilder;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/ai/g$a;->a:Ljava/lang/StringBuilder;

    return-object p0
.end method


# virtual methods
.method public onFailure(Ly2/Call;Ljava/io/IOException;)V
    .locals 1

    iget-object p1, p0, Lcom/nirenr/talkman/ai/g$a;->b:Landroid/os/Handler;

    new-instance v0, Lcom/nirenr/talkman/ai/g$a$a;

    invoke-direct {v0, p0, p2}, Lcom/nirenr/talkman/ai/g$a$a;-><init>(Lcom/nirenr/talkman/ai/g$a;Ljava/io/IOException;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onResponse(Ly2/Call;Ly2/Response;)V
    .locals 2

    new-instance p1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {p2}, Ly2/Response;->b()Ly2/c0;

    move-result-object v1

    invoke-virtual {v1}, Ly2/c0;->b()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    :try_start_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p1, p0, Lcom/nirenr/talkman/ai/g$a;->b:Landroid/os/Handler;

    new-instance v0, Lcom/nirenr/talkman/ai/g$a$b;

    invoke-direct {v0, p0}, Lcom/nirenr/talkman/ai/g$a$b;-><init>(Lcom/nirenr/talkman/ai/g$a;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p2}, Ly2/Response;->close()V

    return-void

    :cond_1
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "message"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/ai/g$a;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/nirenr/talkman/ai/g$a;->b:Landroid/os/Handler;

    new-instance v1, Lcom/nirenr/talkman/ai/g$a$c;

    invoke-direct {v1, p0, p1}, Lcom/nirenr/talkman/ai/g$a$c;-><init>(Lcom/nirenr/talkman/ai/g$a;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    invoke-virtual {p2}, Ly2/Response;->close()V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/nirenr/talkman/ai/g$a;->b:Landroid/os/Handler;

    new-instance v0, Lcom/nirenr/talkman/ai/g$a$d;

    invoke-direct {v0, p0}, Lcom/nirenr/talkman/ai/g$a$d;-><init>(Lcom/nirenr/talkman/ai/g$a;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method
