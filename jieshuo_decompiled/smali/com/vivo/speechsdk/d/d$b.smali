.class final Lcom/vivo/speechsdk/d/d$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/speechsdk/d/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final a:Landroid/os/Bundle;

.field private final b:Lcom/vivo/speechsdk/module/api/tts/TTSServiceListener;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;Lcom/vivo/speechsdk/module/api/tts/TTSServiceListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vivo/speechsdk/d/d$b;->a:Landroid/os/Bundle;

    iput-object p2, p0, Lcom/vivo/speechsdk/d/d$b;->b:Lcom/vivo/speechsdk/module/api/tts/TTSServiceListener;

    const-string p2, "key_text"

    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/vivo/speechsdk/d/d$b;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/d/d$b;->a:Landroid/os/Bundle;

    return-object v0
.end method

.method public b()Lcom/vivo/speechsdk/module/api/tts/TTSServiceListener;
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/d/d$b;->b:Lcom/vivo/speechsdk/module/api/tts/TTSServiceListener;

    return-object v0
.end method
