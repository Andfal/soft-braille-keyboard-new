.class public Lcom/vivo/speechsdk/module/session/SessionModule;
.super Lcom/vivo/speechsdk/common/module/AbsModule;
.source "SourceFile"


# annotations
.annotation runtime Lcom/vivo/speechsdk/common/module/ModuleAnno;
    lazyLoad = false
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/vivo/speechsdk/module/api/session/ISessionCollect;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/vivo/speechsdk/module/api/session/ISessionCollectFactory;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/vivo/speechsdk/common/module/AbsModule;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vivo/speechsdk/module/session/SessionModule;->a:Ljava/util/Map;

    new-instance v0, Lcom/vivo/speechsdk/module/session/SessionModule$a;

    invoke-direct {v0, p0}, Lcom/vivo/speechsdk/module/session/SessionModule$a;-><init>(Lcom/vivo/speechsdk/module/session/SessionModule;)V

    iput-object v0, p0, Lcom/vivo/speechsdk/module/session/SessionModule;->b:Lcom/vivo/speechsdk/module/api/session/ISessionCollectFactory;

    return-void
.end method

.method static synthetic a(Lcom/vivo/speechsdk/module/session/SessionModule;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/vivo/speechsdk/module/session/SessionModule;->a:Ljava/util/Map;

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

    iget-object v0, p0, Lcom/vivo/speechsdk/module/session/SessionModule;->b:Lcom/vivo/speechsdk/module/api/session/ISessionCollectFactory;

    return-object v0
.end method

.method public release()V
    .locals 3

    invoke-super {p0}, Lcom/vivo/speechsdk/common/module/AbsModule;->release()V

    iget-object v0, p0, Lcom/vivo/speechsdk/module/session/SessionModule;->a:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/vivo/speechsdk/module/session/SessionModule;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vivo/speechsdk/module/api/session/ISessionCollect;

    invoke-interface {v2}, Lcom/vivo/speechsdk/module/api/session/ISessionCollect;->release()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/vivo/speechsdk/module/session/SessionModule;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/vivo/speechsdk/module/session/b;->b()Lcom/vivo/speechsdk/module/session/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/speechsdk/module/session/b;->release()V

    invoke-static {}, Lcom/vivo/speechsdk/module/session/c;->b()Lcom/vivo/speechsdk/module/session/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/speechsdk/module/session/c;->release()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
