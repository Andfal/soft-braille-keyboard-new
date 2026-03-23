.class Lcom/vivo/speechsdk/tts/api/TTSEngine$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/speechsdk/tts/api/TTSEngine;->doAction(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/vivo/speechsdk/tts/api/TTSEngine;


# direct methods
.method constructor <init>(Lcom/vivo/speechsdk/tts/api/TTSEngine;I)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/tts/api/TTSEngine$1;->b:Lcom/vivo/speechsdk/tts/api/TTSEngine;

    iput p2, p0, Lcom/vivo/speechsdk/tts/api/TTSEngine$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/tts/api/TTSEngine$1;->b:Lcom/vivo/speechsdk/tts/api/TTSEngine;

    invoke-static {v0}, Lcom/vivo/speechsdk/tts/api/TTSEngine;->a(Lcom/vivo/speechsdk/tts/api/TTSEngine;)Lcom/vivo/speechsdk/d/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/tts/api/TTSEngine$1;->b:Lcom/vivo/speechsdk/tts/api/TTSEngine;

    invoke-static {v0}, Lcom/vivo/speechsdk/tts/api/TTSEngine;->a(Lcom/vivo/speechsdk/tts/api/TTSEngine;)Lcom/vivo/speechsdk/d/c;

    move-result-object v0

    iget v1, p0, Lcom/vivo/speechsdk/tts/api/TTSEngine$1;->a:I

    invoke-virtual {v0, v1}, Lcom/vivo/speechsdk/d/c;->a(I)V

    :cond_0
    return-void
.end method
