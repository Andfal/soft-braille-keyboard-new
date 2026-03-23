.class Lcom/vivo/speechsdk/d/f/b$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/speechsdk/d/f/b;->onError(Lcom/vivo/speechsdk/api/SpeechError;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vivo/speechsdk/api/SpeechError;

.field final synthetic b:I

.field final synthetic c:Lcom/vivo/speechsdk/d/f/b;


# direct methods
.method constructor <init>(Lcom/vivo/speechsdk/d/f/b;Lcom/vivo/speechsdk/api/SpeechError;I)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/d/f/b$h;->c:Lcom/vivo/speechsdk/d/f/b;

    iput-object p2, p0, Lcom/vivo/speechsdk/d/f/b$h;->a:Lcom/vivo/speechsdk/api/SpeechError;

    iput p3, p0, Lcom/vivo/speechsdk/d/f/b$h;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/vivo/speechsdk/d/f/b$h;->c:Lcom/vivo/speechsdk/d/f/b;

    invoke-static {v0}, Lcom/vivo/speechsdk/d/f/b;->a(Lcom/vivo/speechsdk/d/f/b;)Lcom/vivo/speechsdk/tts/api/ISynthesizeProListener;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/speechsdk/d/f/b$h;->a:Lcom/vivo/speechsdk/api/SpeechError;

    iget v2, p0, Lcom/vivo/speechsdk/d/f/b$h;->b:I

    invoke-interface {v0, v1, v2}, Lcom/vivo/speechsdk/tts/api/ISynthesizeProListener;->onError(Lcom/vivo/speechsdk/api/SpeechError;I)V

    return-void
.end method
