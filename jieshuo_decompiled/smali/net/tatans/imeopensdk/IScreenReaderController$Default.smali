.class public Lnet/tatans/imeopensdk/IScreenReaderController$Default;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/tatans/imeopensdk/IScreenReaderController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/tatans/imeopensdk/IScreenReaderController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public interrupt(Landroid/os/IBinder;)V
    .locals 0

    return-void
.end method

.method public onInputModeChanged(Landroid/os/IBinder;Z)V
    .locals 0

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

    const/4 p1, 0x0

    return p1
.end method

.method public requestTouchExplorationState(Landroid/os/IBinder;Z)V
    .locals 0

    return-void
.end method

.method public setTouchExplorePassThrough(Landroid/os/IBinder;IIII)V
    .locals 0

    return-void
.end method

.method public speak(Landroid/os/IBinder;Ljava/lang/String;II)V
    .locals 0

    return-void
.end method
