.class Lcom/vivo/speechsdk/module/session/SessionModule$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vivo/speechsdk/module/api/session/ISessionCollectFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/speechsdk/module/session/SessionModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vivo/speechsdk/module/session/SessionModule;


# direct methods
.method constructor <init>(Lcom/vivo/speechsdk/module/session/SessionModule;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/module/session/SessionModule$a;->a:Lcom/vivo/speechsdk/module/session/SessionModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAsrSessionCollect(I)Lcom/vivo/speechsdk/module/api/session/ISessionCollect;
    .locals 3

    iget-object v0, p0, Lcom/vivo/speechsdk/module/session/SessionModule$a;->a:Lcom/vivo/speechsdk/module/session/SessionModule;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/session/SessionModule;->a(Lcom/vivo/speechsdk/module/session/SessionModule;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/vivo/speechsdk/module/session/SessionModule$a;->a:Lcom/vivo/speechsdk/module/session/SessionModule;

    invoke-static {v1}, Lcom/vivo/speechsdk/module/session/SessionModule;->a(Lcom/vivo/speechsdk/module/session/SessionModule;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vivo/speechsdk/module/api/session/ISessionCollect;

    if-nez v1, :cond_0

    new-instance v1, Lcom/vivo/speechsdk/module/session/a;

    invoke-direct {v1, p1}, Lcom/vivo/speechsdk/module/session/a;-><init>(I)V

    iget-object v2, p0, Lcom/vivo/speechsdk/module/session/SessionModule$a;->a:Lcom/vivo/speechsdk/module/session/SessionModule;

    invoke-static {v2}, Lcom/vivo/speechsdk/module/session/SessionModule;->a(Lcom/vivo/speechsdk/module/session/SessionModule;)Ljava/util/Map;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getLasrSessionCollect()Lcom/vivo/speechsdk/module/api/session/ISessionCollect;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTtsSessionCollect()Lcom/vivo/speechsdk/module/api/session/ISessionCollect;
    .locals 1

    invoke-static {}, Lcom/vivo/speechsdk/module/session/b;->b()Lcom/vivo/speechsdk/module/session/b;

    move-result-object v0

    return-object v0
.end method

.method public getVadSessionCollect()Lcom/vivo/speechsdk/module/api/session/ISessionCollect;
    .locals 1

    invoke-static {}, Lcom/vivo/speechsdk/module/session/c;->b()Lcom/vivo/speechsdk/module/session/c;

    move-result-object v0

    return-object v0
.end method
