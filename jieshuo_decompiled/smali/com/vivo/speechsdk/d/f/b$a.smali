.class Lcom/vivo/speechsdk/d/f/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/speechsdk/d/f/b;->onBufferProgress(III[BI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:[B

.field final synthetic e:I

.field final synthetic f:Lcom/vivo/speechsdk/d/f/b;


# direct methods
.method constructor <init>(Lcom/vivo/speechsdk/d/f/b;III[BI)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/d/f/b$a;->f:Lcom/vivo/speechsdk/d/f/b;

    iput p2, p0, Lcom/vivo/speechsdk/d/f/b$a;->a:I

    iput p3, p0, Lcom/vivo/speechsdk/d/f/b$a;->b:I

    iput p4, p0, Lcom/vivo/speechsdk/d/f/b$a;->c:I

    iput-object p5, p0, Lcom/vivo/speechsdk/d/f/b$a;->d:[B

    iput p6, p0, Lcom/vivo/speechsdk/d/f/b$a;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/vivo/speechsdk/d/f/b$a;->f:Lcom/vivo/speechsdk/d/f/b;

    invoke-static {v0}, Lcom/vivo/speechsdk/d/f/b;->a(Lcom/vivo/speechsdk/d/f/b;)Lcom/vivo/speechsdk/tts/api/ISynthesizeProListener;

    move-result-object v1

    iget v2, p0, Lcom/vivo/speechsdk/d/f/b$a;->a:I

    iget v3, p0, Lcom/vivo/speechsdk/d/f/b$a;->b:I

    iget v4, p0, Lcom/vivo/speechsdk/d/f/b$a;->c:I

    iget-object v5, p0, Lcom/vivo/speechsdk/d/f/b$a;->d:[B

    iget v6, p0, Lcom/vivo/speechsdk/d/f/b$a;->e:I

    invoke-interface/range {v1 .. v6}, Lcom/vivo/speechsdk/tts/api/ISynthesizeProListener;->onBufferProgress(III[BI)V

    return-void
.end method
