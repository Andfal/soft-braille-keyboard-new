.class public Lnet/tatans/imeopensdk/ITatansImeOpenService$Default;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/tatans/imeopensdk/ITatansImeOpenService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/tatans/imeopensdk/ITatansImeOpenService;
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

.method public commitText(Landroid/os/IBinder;Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public delete(Landroid/os/IBinder;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public deleteAll(Landroid/os/IBinder;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getClipData(Landroid/os/IBinder;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public isInputViewShown(Landroid/os/IBinder;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public selectPreviousOrNextCandidatas(Landroid/os/IBinder;Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setScreenReaderController(Landroid/os/IBinder;Lnet/tatans/imeopensdk/IScreenReaderController;)V
    .locals 0

    return-void
.end method
