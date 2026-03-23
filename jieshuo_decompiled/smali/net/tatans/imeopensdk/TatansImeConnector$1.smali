.class Lnet/tatans/imeopensdk/TatansImeConnector$1;
.super Lnet/tatans/imeopensdk/IScreenReaderController$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/tatans/imeopensdk/TatansImeConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/tatans/imeopensdk/TatansImeConnector;


# direct methods
.method constructor <init>(Lnet/tatans/imeopensdk/TatansImeConnector;)V
    .locals 0

    iput-object p1, p0, Lnet/tatans/imeopensdk/TatansImeConnector$1;->this$0:Lnet/tatans/imeopensdk/TatansImeConnector;

    invoke-direct {p0}, Lnet/tatans/imeopensdk/IScreenReaderController$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public interrupt(Landroid/os/IBinder;)V
    .locals 0

    iget-object p1, p0, Lnet/tatans/imeopensdk/TatansImeConnector$1;->this$0:Lnet/tatans/imeopensdk/TatansImeConnector;

    invoke-static {p1}, Lnet/tatans/imeopensdk/TatansImeConnector;->access$100(Lnet/tatans/imeopensdk/TatansImeConnector;)Lnet/tatans/imeopensdk/ScreenReaderActor;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lnet/tatans/imeopensdk/TatansImeConnector$1;->this$0:Lnet/tatans/imeopensdk/TatansImeConnector;

    invoke-static {p1}, Lnet/tatans/imeopensdk/TatansImeConnector;->access$100(Lnet/tatans/imeopensdk/TatansImeConnector;)Lnet/tatans/imeopensdk/ScreenReaderActor;

    move-result-object p1

    invoke-virtual {p1}, Lnet/tatans/imeopensdk/ScreenReaderActor;->interrupt()V

    :cond_0
    return-void
.end method

.method public onInputModeChanged(Landroid/os/IBinder;Z)V
    .locals 0

    iget-object p1, p0, Lnet/tatans/imeopensdk/TatansImeConnector$1;->this$0:Lnet/tatans/imeopensdk/TatansImeConnector;

    invoke-static {p1}, Lnet/tatans/imeopensdk/TatansImeConnector;->access$100(Lnet/tatans/imeopensdk/TatansImeConnector;)Lnet/tatans/imeopensdk/ScreenReaderActor;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lnet/tatans/imeopensdk/TatansImeConnector$1;->this$0:Lnet/tatans/imeopensdk/TatansImeConnector;

    invoke-static {p1}, Lnet/tatans/imeopensdk/TatansImeConnector;->access$100(Lnet/tatans/imeopensdk/TatansImeConnector;)Lnet/tatans/imeopensdk/ScreenReaderActor;

    move-result-object p1

    invoke-virtual {p1, p2}, Lnet/tatans/imeopensdk/ScreenReaderActor;->onInputModeChanged(Z)V

    :cond_0
    return-void
.end method

.method public performClick(Landroid/os/IBinder;Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object p1, p0, Lnet/tatans/imeopensdk/TatansImeConnector$1;->this$0:Lnet/tatans/imeopensdk/TatansImeConnector;

    invoke-static {p1}, Lnet/tatans/imeopensdk/TatansImeConnector;->access$100(Lnet/tatans/imeopensdk/TatansImeConnector;)Lnet/tatans/imeopensdk/ScreenReaderActor;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lnet/tatans/imeopensdk/TatansImeConnector$1;->this$0:Lnet/tatans/imeopensdk/TatansImeConnector;

    invoke-static {p1}, Lnet/tatans/imeopensdk/TatansImeConnector;->access$100(Lnet/tatans/imeopensdk/TatansImeConnector;)Lnet/tatans/imeopensdk/ScreenReaderActor;

    move-result-object p1

    invoke-virtual {p1, p2}, Lnet/tatans/imeopensdk/ScreenReaderActor;->performClick(Ljava/util/List;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public requestTouchExplorationState(Landroid/os/IBinder;Z)V
    .locals 0

    iget-object p1, p0, Lnet/tatans/imeopensdk/TatansImeConnector$1;->this$0:Lnet/tatans/imeopensdk/TatansImeConnector;

    invoke-static {p1}, Lnet/tatans/imeopensdk/TatansImeConnector;->access$100(Lnet/tatans/imeopensdk/TatansImeConnector;)Lnet/tatans/imeopensdk/ScreenReaderActor;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lnet/tatans/imeopensdk/TatansImeConnector$1;->this$0:Lnet/tatans/imeopensdk/TatansImeConnector;

    invoke-static {p1}, Lnet/tatans/imeopensdk/TatansImeConnector;->access$100(Lnet/tatans/imeopensdk/TatansImeConnector;)Lnet/tatans/imeopensdk/ScreenReaderActor;

    move-result-object p1

    invoke-virtual {p1, p2}, Lnet/tatans/imeopensdk/ScreenReaderActor;->requestTouchExplorationState(Z)V

    :cond_0
    return-void
.end method

.method public setTouchExplorePassThrough(Landroid/os/IBinder;IIII)V
    .locals 0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, p2, p3, p4, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_0
    iget-object p2, p0, Lnet/tatans/imeopensdk/TatansImeConnector$1;->this$0:Lnet/tatans/imeopensdk/TatansImeConnector;

    invoke-static {p2}, Lnet/tatans/imeopensdk/TatansImeConnector;->access$100(Lnet/tatans/imeopensdk/TatansImeConnector;)Lnet/tatans/imeopensdk/ScreenReaderActor;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lnet/tatans/imeopensdk/TatansImeConnector$1;->this$0:Lnet/tatans/imeopensdk/TatansImeConnector;

    invoke-static {p2}, Lnet/tatans/imeopensdk/TatansImeConnector;->access$100(Lnet/tatans/imeopensdk/TatansImeConnector;)Lnet/tatans/imeopensdk/ScreenReaderActor;

    move-result-object p2

    invoke-virtual {p2, p1}, Lnet/tatans/imeopensdk/ScreenReaderActor;->setTouchExplorePassThrough(Landroid/graphics/Rect;)V

    :cond_1
    return-void
.end method

.method public speak(Landroid/os/IBinder;Ljava/lang/String;II)V
    .locals 0

    iget-object p1, p0, Lnet/tatans/imeopensdk/TatansImeConnector$1;->this$0:Lnet/tatans/imeopensdk/TatansImeConnector;

    invoke-static {p1}, Lnet/tatans/imeopensdk/TatansImeConnector;->access$100(Lnet/tatans/imeopensdk/TatansImeConnector;)Lnet/tatans/imeopensdk/ScreenReaderActor;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lnet/tatans/imeopensdk/TatansImeConnector$1;->this$0:Lnet/tatans/imeopensdk/TatansImeConnector;

    invoke-static {p1}, Lnet/tatans/imeopensdk/TatansImeConnector;->access$100(Lnet/tatans/imeopensdk/TatansImeConnector;)Lnet/tatans/imeopensdk/ScreenReaderActor;

    move-result-object p1

    invoke-virtual {p1, p2, p3, p4}, Lnet/tatans/imeopensdk/ScreenReaderActor;->speak(Ljava/lang/String;II)V

    :cond_0
    return-void
.end method
