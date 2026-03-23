.class Lcom/vivo/speechsdk/module/opus/OpusModule$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vivo/speechsdk/module/api/coder/ICoderFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/speechsdk/module/opus/OpusModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vivo/speechsdk/module/opus/OpusModule;


# direct methods
.method constructor <init>(Lcom/vivo/speechsdk/module/opus/OpusModule;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/module/opus/OpusModule$a;->a:Lcom/vivo/speechsdk/module/opus/OpusModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createDecoderService(Landroid/os/Bundle;)Lcom/vivo/speechsdk/module/api/coder/IDecoder;
    .locals 0

    new-instance p1, Lcom/vivo/speechsdk/module/opus/a;

    invoke-direct {p1}, Lcom/vivo/speechsdk/module/opus/a;-><init>()V

    return-object p1
.end method

.method public createEncoderService(Landroid/os/Bundle;)Lcom/vivo/speechsdk/module/api/coder/IEncoder;
    .locals 0

    new-instance p1, Lcom/vivo/speechsdk/module/opus/b;

    invoke-direct {p1}, Lcom/vivo/speechsdk/module/opus/b;-><init>()V

    return-object p1
.end method
