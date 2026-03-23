.class Lcom/vivo/speechsdk/d/f/b$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/speechsdk/d/f/b;->onPlayCompleted(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/vivo/speechsdk/d/f/b;


# direct methods
.method constructor <init>(Lcom/vivo/speechsdk/d/f/b;I)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/d/f/b$f;->b:Lcom/vivo/speechsdk/d/f/b;

    iput p2, p0, Lcom/vivo/speechsdk/d/f/b$f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/d/f/b$f;->b:Lcom/vivo/speechsdk/d/f/b;

    invoke-static {v0}, Lcom/vivo/speechsdk/d/f/b;->a(Lcom/vivo/speechsdk/d/f/b;)Lcom/vivo/speechsdk/tts/api/ISynthesizeProListener;

    move-result-object v0

    iget v1, p0, Lcom/vivo/speechsdk/d/f/b$f;->a:I

    invoke-interface {v0, v1}, Lcom/vivo/speechsdk/tts/api/ISynthesizeProListener;->onPlayCompleted(I)V

    return-void
.end method
