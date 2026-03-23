.class public Lcom/vivo/speechsdk/module/vad/VadModule;
.super Lcom/vivo/speechsdk/common/module/AbsModule;
.source "SourceFile"


# annotations
.annotation runtime Lcom/vivo/speechsdk/common/module/ModuleAnno;
    lazyLoad = true
.end annotation


# static fields
.field private static final c:Ljava/lang/String; = "VadModule"


# instance fields
.field private a:Lcom/vivo/speechsdk/module/vad/c;

.field private final b:Lcom/vivo/speechsdk/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vivo/speechsdk/b/a<",
            "Lcom/vivo/speechsdk/module/api/vad/IVadService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/vivo/speechsdk/common/module/AbsModule;-><init>()V

    new-instance v0, Lcom/vivo/speechsdk/module/vad/VadModule$a;

    invoke-direct {v0, p0}, Lcom/vivo/speechsdk/module/vad/VadModule$a;-><init>(Lcom/vivo/speechsdk/module/vad/VadModule;)V

    iput-object v0, p0, Lcom/vivo/speechsdk/module/vad/VadModule;->b:Lcom/vivo/speechsdk/b/a;

    return-void
.end method

.method static synthetic a(Lcom/vivo/speechsdk/module/vad/VadModule;)Lcom/vivo/speechsdk/module/vad/c;
    .locals 0

    iget-object p0, p0, Lcom/vivo/speechsdk/module/vad/VadModule;->a:Lcom/vivo/speechsdk/module/vad/c;

    return-object p0
.end method

.method static synthetic a(Lcom/vivo/speechsdk/module/vad/VadModule;Lcom/vivo/speechsdk/module/vad/c;)Lcom/vivo/speechsdk/module/vad/c;
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/module/vad/VadModule;->a:Lcom/vivo/speechsdk/module/vad/c;

    return-object p1
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

    iget-object v0, p0, Lcom/vivo/speechsdk/module/vad/VadModule;->b:Lcom/vivo/speechsdk/b/a;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/vad/VadModule;->a:Lcom/vivo/speechsdk/module/vad/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/vivo/speechsdk/module/vad/c;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/vad/VadModule;->a:Lcom/vivo/speechsdk/module/vad/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/vivo/speechsdk/module/vad/c;->destroy()V

    :cond_0
    return-void
.end method
