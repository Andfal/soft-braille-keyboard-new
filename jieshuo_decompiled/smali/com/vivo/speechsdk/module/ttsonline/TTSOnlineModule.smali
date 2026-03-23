.class public Lcom/vivo/speechsdk/module/ttsonline/TTSOnlineModule;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vivo/speechsdk/common/module/IModule;


# annotations
.annotation runtime Lcom/vivo/speechsdk/common/module/ModuleAnno;
    lazyLoad = true
.end annotation


# instance fields
.field private a:Lcom/vivo/speechsdk/b/c;

.field private final b:Lcom/vivo/speechsdk/module/api/tts/ITTSFactory;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/vivo/speechsdk/module/ttsonline/TTSOnlineModule$a;

    invoke-direct {v0, p0}, Lcom/vivo/speechsdk/module/ttsonline/TTSOnlineModule$a;-><init>(Lcom/vivo/speechsdk/module/ttsonline/TTSOnlineModule;)V

    iput-object v0, p0, Lcom/vivo/speechsdk/module/ttsonline/TTSOnlineModule;->b:Lcom/vivo/speechsdk/module/api/tts/ITTSFactory;

    return-void
.end method

.method static synthetic a(Lcom/vivo/speechsdk/module/ttsonline/TTSOnlineModule;)Lcom/vivo/speechsdk/b/c;
    .locals 0

    iget-object p0, p0, Lcom/vivo/speechsdk/module/ttsonline/TTSOnlineModule;->a:Lcom/vivo/speechsdk/b/c;

    return-object p0
.end method


# virtual methods
.method public getFactory()Lcom/vivo/speechsdk/b/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/vivo/speechsdk/b/b;",
            ">()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/vivo/speechsdk/module/ttsonline/TTSOnlineModule;->b:Lcom/vivo/speechsdk/module/api/tts/ITTSFactory;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public init(Lcom/vivo/speechsdk/b/c;)I
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/module/ttsonline/TTSOnlineModule;->a:Lcom/vivo/speechsdk/b/c;

    const/4 p1, 0x0

    return p1
.end method

.method public release()V
    .locals 0

    return-void
.end method
