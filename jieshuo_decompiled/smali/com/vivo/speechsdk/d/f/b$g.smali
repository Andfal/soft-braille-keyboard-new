.class Lcom/vivo/speechsdk/d/f/b$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/speechsdk/d/f/b;->onEvent(ILandroid/os/Bundle;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/os/Bundle;

.field final synthetic c:I

.field final synthetic d:Lcom/vivo/speechsdk/d/f/b;


# direct methods
.method constructor <init>(Lcom/vivo/speechsdk/d/f/b;ILandroid/os/Bundle;I)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/d/f/b$g;->d:Lcom/vivo/speechsdk/d/f/b;

    iput p2, p0, Lcom/vivo/speechsdk/d/f/b$g;->a:I

    iput-object p3, p0, Lcom/vivo/speechsdk/d/f/b$g;->b:Landroid/os/Bundle;

    iput p4, p0, Lcom/vivo/speechsdk/d/f/b$g;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/vivo/speechsdk/d/f/b$g;->d:Lcom/vivo/speechsdk/d/f/b;

    invoke-static {v0}, Lcom/vivo/speechsdk/d/f/b;->a(Lcom/vivo/speechsdk/d/f/b;)Lcom/vivo/speechsdk/tts/api/ISynthesizeProListener;

    move-result-object v0

    iget v1, p0, Lcom/vivo/speechsdk/d/f/b$g;->a:I

    iget-object v2, p0, Lcom/vivo/speechsdk/d/f/b$g;->b:Landroid/os/Bundle;

    iget v3, p0, Lcom/vivo/speechsdk/d/f/b$g;->c:I

    invoke-interface {v0, v1, v2, v3}, Lcom/vivo/speechsdk/tts/api/ISynthesizeProListener;->onEvent(ILandroid/os/Bundle;I)V

    return-void
.end method
