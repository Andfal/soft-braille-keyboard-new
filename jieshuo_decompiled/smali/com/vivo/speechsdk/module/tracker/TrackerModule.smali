.class public Lcom/vivo/speechsdk/module/tracker/TrackerModule;
.super Lcom/vivo/speechsdk/common/module/AbsModule;
.source "SourceFile"


# annotations
.annotation runtime Lcom/vivo/speechsdk/common/module/ModuleAnno;
    lazyLoad = false
.end annotation


# instance fields
.field private final a:Lcom/vivo/speechsdk/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vivo/speechsdk/b/a<",
            "Lcom/vivo/speechsdk/module/api/tracker/IDataTracker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/vivo/speechsdk/common/module/AbsModule;-><init>()V

    new-instance v0, Lcom/vivo/speechsdk/module/tracker/TrackerModule$a;

    invoke-direct {v0, p0}, Lcom/vivo/speechsdk/module/tracker/TrackerModule$a;-><init>(Lcom/vivo/speechsdk/module/tracker/TrackerModule;)V

    iput-object v0, p0, Lcom/vivo/speechsdk/module/tracker/TrackerModule;->a:Lcom/vivo/speechsdk/b/a;

    return-void
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

    iget-object v0, p0, Lcom/vivo/speechsdk/module/tracker/TrackerModule;->a:Lcom/vivo/speechsdk/b/a;

    return-object v0
.end method

.method public init(Lcom/vivo/speechsdk/b/c;)I
    .locals 5

    const-string v0, "key_net_enable"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/vivo/speechsdk/b/c;->a(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {}, Lcom/vivo/speechsdk/module/tracker/b;->a()Lcom/vivo/speechsdk/module/tracker/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/vivo/speechsdk/module/tracker/b;->setTrackerEnable(Z)V

    invoke-static {}, Lcom/vivo/speechsdk/module/tracker/b;->a()Lcom/vivo/speechsdk/module/tracker/b;

    move-result-object v0

    invoke-virtual {p1}, Lcom/vivo/speechsdk/b/c;->b()Landroid/content/Context;

    move-result-object v1

    const-string v2, "key_sdk_version_code"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Lcom/vivo/speechsdk/b/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "key_sdk_version"

    invoke-virtual {p1, v4, v3}, Lcom/vivo/speechsdk/b/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/vivo/speechsdk/module/tracker/b;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-super {p0, p1}, Lcom/vivo/speechsdk/common/module/AbsModule;->init(Lcom/vivo/speechsdk/b/c;)I

    move-result p1

    return p1
.end method
