.class public interface abstract Lnet/tatans/imeopensdk/ITatansImeOpenService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/tatans/imeopensdk/ITatansImeOpenService$Stub;,
        Lnet/tatans/imeopensdk/ITatansImeOpenService$Default;
    }
.end annotation


# virtual methods
.method public abstract commitText(Landroid/os/IBinder;Ljava/lang/String;)Z
.end method

.method public abstract delete(Landroid/os/IBinder;)Z
.end method

.method public abstract deleteAll(Landroid/os/IBinder;)Z
.end method

.method public abstract getClipData(Landroid/os/IBinder;)Ljava/lang/String;
.end method

.method public abstract isInputViewShown(Landroid/os/IBinder;)Z
.end method

.method public abstract selectPreviousOrNextCandidatas(Landroid/os/IBinder;Z)Z
.end method

.method public abstract setScreenReaderController(Landroid/os/IBinder;Lnet/tatans/imeopensdk/IScreenReaderController;)V
.end method
