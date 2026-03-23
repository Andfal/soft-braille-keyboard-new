.class Lnet/tatans/imeopensdk/TatansImeConnector$TatansImeConnection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/tatans/imeopensdk/TatansImeConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TatansImeConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/tatans/imeopensdk/TatansImeConnector;


# direct methods
.method private constructor <init>(Lnet/tatans/imeopensdk/TatansImeConnector;)V
    .locals 0

    iput-object p1, p0, Lnet/tatans/imeopensdk/TatansImeConnector$TatansImeConnection;->this$0:Lnet/tatans/imeopensdk/TatansImeConnector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/tatans/imeopensdk/TatansImeConnector;Lnet/tatans/imeopensdk/TatansImeConnector$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/tatans/imeopensdk/TatansImeConnector$TatansImeConnection;-><init>(Lnet/tatans/imeopensdk/TatansImeConnector;)V

    return-void
.end method


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 0

    iget-object p1, p0, Lnet/tatans/imeopensdk/TatansImeConnector$TatansImeConnection;->this$0:Lnet/tatans/imeopensdk/TatansImeConnector;

    invoke-static {p1}, Lnet/tatans/imeopensdk/TatansImeConnector;->access$800(Lnet/tatans/imeopensdk/TatansImeConnector;)V

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lnet/tatans/imeopensdk/TatansImeConnector$TatansImeConnection;->this$0:Lnet/tatans/imeopensdk/TatansImeConnector;

    invoke-static {p1}, Lnet/tatans/imeopensdk/TatansImeConnector;->access$200(Lnet/tatans/imeopensdk/TatansImeConnector;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lnet/tatans/imeopensdk/TatansImeConnector$TatansImeConnection;->this$0:Lnet/tatans/imeopensdk/TatansImeConnector;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lnet/tatans/imeopensdk/TatansImeConnector;->access$302(Lnet/tatans/imeopensdk/TatansImeConnector;Lnet/tatans/imeopensdk/TatansImeConnector$TatansImeConnection;)Lnet/tatans/imeopensdk/TatansImeConnector$TatansImeConnection;

    iget-object v0, p0, Lnet/tatans/imeopensdk/TatansImeConnector$TatansImeConnection;->this$0:Lnet/tatans/imeopensdk/TatansImeConnector;

    invoke-static {v0, p0}, Lnet/tatans/imeopensdk/TatansImeConnector;->access$402(Lnet/tatans/imeopensdk/TatansImeConnector;Lnet/tatans/imeopensdk/TatansImeConnector$TatansImeConnection;)Lnet/tatans/imeopensdk/TatansImeConnector$TatansImeConnection;

    iget-object v0, p0, Lnet/tatans/imeopensdk/TatansImeConnector$TatansImeConnection;->this$0:Lnet/tatans/imeopensdk/TatansImeConnector;

    invoke-static {p2}, Lnet/tatans/imeopensdk/ITatansImeOpenService$Stub;->asInterface(Landroid/os/IBinder;)Lnet/tatans/imeopensdk/ITatansImeOpenService;

    move-result-object p2

    invoke-static {v0, p2}, Lnet/tatans/imeopensdk/TatansImeConnector;->access$502(Lnet/tatans/imeopensdk/TatansImeConnector;Lnet/tatans/imeopensdk/ITatansImeOpenService;)Lnet/tatans/imeopensdk/ITatansImeOpenService;

    iget-object p2, p0, Lnet/tatans/imeopensdk/TatansImeConnector$TatansImeConnection;->this$0:Lnet/tatans/imeopensdk/TatansImeConnector;

    invoke-static {p2}, Lnet/tatans/imeopensdk/TatansImeConnector;->access$500(Lnet/tatans/imeopensdk/TatansImeConnector;)Lnet/tatans/imeopensdk/ITatansImeOpenService;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_1

    :try_start_1
    iget-object p2, p0, Lnet/tatans/imeopensdk/TatansImeConnector$TatansImeConnection;->this$0:Lnet/tatans/imeopensdk/TatansImeConnector;

    invoke-static {p2}, Lnet/tatans/imeopensdk/TatansImeConnector;->access$500(Lnet/tatans/imeopensdk/TatansImeConnector;)Lnet/tatans/imeopensdk/ITatansImeOpenService;

    move-result-object p2

    iget-object v0, p0, Lnet/tatans/imeopensdk/TatansImeConnector$TatansImeConnection;->this$0:Lnet/tatans/imeopensdk/TatansImeConnector;

    invoke-static {v0}, Lnet/tatans/imeopensdk/TatansImeConnector;->access$600(Lnet/tatans/imeopensdk/TatansImeConnector;)Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lnet/tatans/imeopensdk/TatansImeConnector$TatansImeConnection;->this$0:Lnet/tatans/imeopensdk/TatansImeConnector;

    invoke-static {v1}, Lnet/tatans/imeopensdk/TatansImeConnector;->access$700(Lnet/tatans/imeopensdk/TatansImeConnector;)Lnet/tatans/imeopensdk/IScreenReaderController;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lnet/tatans/imeopensdk/ITatansImeOpenService;->setScreenReaderController(Landroid/os/IBinder;Lnet/tatans/imeopensdk/IScreenReaderController;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p2

    :try_start_2
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    iget-object p1, p0, Lnet/tatans/imeopensdk/TatansImeConnector$TatansImeConnection;->this$0:Lnet/tatans/imeopensdk/TatansImeConnector;

    invoke-static {p1}, Lnet/tatans/imeopensdk/TatansImeConnector;->access$800(Lnet/tatans/imeopensdk/TatansImeConnector;)V

    return-void
.end method
