.class public interface abstract Lnet/tatans/imeopensdk/IScreenReaderController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/tatans/imeopensdk/IScreenReaderController$Stub;,
        Lnet/tatans/imeopensdk/IScreenReaderController$Default;
    }
.end annotation


# virtual methods
.method public abstract interrupt(Landroid/os/IBinder;)V
.end method

.method public abstract onInputModeChanged(Landroid/os/IBinder;Z)V
.end method

.method public abstract performClick(Landroid/os/IBinder;Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract requestTouchExplorationState(Landroid/os/IBinder;Z)V
.end method

.method public abstract setTouchExplorePassThrough(Landroid/os/IBinder;IIII)V
.end method

.method public abstract speak(Landroid/os/IBinder;Ljava/lang/String;II)V
.end method
