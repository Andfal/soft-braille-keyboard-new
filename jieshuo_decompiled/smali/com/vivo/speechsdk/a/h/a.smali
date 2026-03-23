.class public Lcom/vivo/speechsdk/a/h/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vivo/speechsdk/api/InitListener;


# instance fields
.field private a:Lcom/vivo/speechsdk/api/InitListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/vivo/speechsdk/api/InitListener;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/a/h/a;->a:Lcom/vivo/speechsdk/api/InitListener;

    return-void
.end method

.method public onError(Lcom/vivo/speechsdk/api/SpeechError;)V
    .locals 4

    invoke-static {}, Lcom/vivo/speechsdk/b/i/b;->b()Lcom/vivo/speechsdk/b/i/b;

    move-result-object v0

    invoke-virtual {p1}, Lcom/vivo/speechsdk/api/SpeechError;->getCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/vivo/speechsdk/api/SpeechError;->getDescription()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2711

    invoke-virtual {v0, v3, v1, v2}, Lcom/vivo/speechsdk/b/i/b;->a(IILjava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/a/h/a;->a:Lcom/vivo/speechsdk/api/InitListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/vivo/speechsdk/api/InitListener;->onError(Lcom/vivo/speechsdk/api/SpeechError;)V

    :cond_0
    return-void
.end method

.method public onSuccess()V
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/a/h/a;->a:Lcom/vivo/speechsdk/api/InitListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/vivo/speechsdk/api/InitListener;->onSuccess()V

    :cond_0
    return-void
.end method
