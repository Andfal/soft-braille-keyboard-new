.class Lcom/vivo/speechsdk/d/f/b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/speechsdk/d/f/b;->onPlayProgress(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Lcom/vivo/speechsdk/d/f/b;


# direct methods
.method constructor <init>(Lcom/vivo/speechsdk/d/f/b;IIII)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/d/f/b$c;->e:Lcom/vivo/speechsdk/d/f/b;

    iput p2, p0, Lcom/vivo/speechsdk/d/f/b$c;->a:I

    iput p3, p0, Lcom/vivo/speechsdk/d/f/b$c;->b:I

    iput p4, p0, Lcom/vivo/speechsdk/d/f/b$c;->c:I

    iput p5, p0, Lcom/vivo/speechsdk/d/f/b$c;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/vivo/speechsdk/d/f/b$c;->e:Lcom/vivo/speechsdk/d/f/b;

    invoke-static {v0}, Lcom/vivo/speechsdk/d/f/b;->a(Lcom/vivo/speechsdk/d/f/b;)Lcom/vivo/speechsdk/tts/api/ISynthesizeProListener;

    move-result-object v0

    iget v1, p0, Lcom/vivo/speechsdk/d/f/b$c;->a:I

    iget v2, p0, Lcom/vivo/speechsdk/d/f/b$c;->b:I

    iget v3, p0, Lcom/vivo/speechsdk/d/f/b$c;->c:I

    iget v4, p0, Lcom/vivo/speechsdk/d/f/b$c;->d:I

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/vivo/speechsdk/tts/api/ISynthesizeProListener;->onPlayProgress(IIII)V

    return-void
.end method
