.class public abstract Lnet/tatans/imeopensdk/ITatansImeOpenService$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lnet/tatans/imeopensdk/ITatansImeOpenService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/tatans/imeopensdk/ITatansImeOpenService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/tatans/imeopensdk/ITatansImeOpenService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "net.tatans.imeopensdk.ITatansImeOpenService"

.field static final TRANSACTION_commitText:I = 0x3

.field static final TRANSACTION_delete:I = 0x4

.field static final TRANSACTION_deleteAll:I = 0x5

.field static final TRANSACTION_getClipData:I = 0x6

.field static final TRANSACTION_isInputViewShown:I = 0x7

.field static final TRANSACTION_selectPreviousOrNextCandidatas:I = 0x1

.field static final TRANSACTION_setScreenReaderController:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "net.tatans.imeopensdk.ITatansImeOpenService"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lnet/tatans/imeopensdk/ITatansImeOpenService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "net.tatans.imeopensdk.ITatansImeOpenService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lnet/tatans/imeopensdk/ITatansImeOpenService;

    if-eqz v1, :cond_1

    check-cast v0, Lnet/tatans/imeopensdk/ITatansImeOpenService;

    return-object v0

    :cond_1
    new-instance v0, Lnet/tatans/imeopensdk/ITatansImeOpenService$Stub$Proxy;

    invoke-direct {v0, p0}, Lnet/tatans/imeopensdk/ITatansImeOpenService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lnet/tatans/imeopensdk/ITatansImeOpenService;
    .locals 1

    sget-object v0, Lnet/tatans/imeopensdk/ITatansImeOpenService$Stub$Proxy;->sDefaultImpl:Lnet/tatans/imeopensdk/ITatansImeOpenService;

    return-object v0
.end method

.method public static setDefaultImpl(Lnet/tatans/imeopensdk/ITatansImeOpenService;)Z
    .locals 1

    sget-object v0, Lnet/tatans/imeopensdk/ITatansImeOpenService$Stub$Proxy;->sDefaultImpl:Lnet/tatans/imeopensdk/ITatansImeOpenService;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    sput-object p0, Lnet/tatans/imeopensdk/ITatansImeOpenService$Stub$Proxy;->sDefaultImpl:Lnet/tatans/imeopensdk/ITatansImeOpenService;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "setDefaultImpl() called twice"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "net.tatans.imeopensdk.ITatansImeOpenService"

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-interface {p0, p1}, Lnet/tatans/imeopensdk/ITatansImeOpenService;->isInputViewShown(Landroid/os/IBinder;)Z

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-interface {p0, p1}, Lnet/tatans/imeopensdk/ITatansImeOpenService;->getClipData(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-interface {p0, p1}, Lnet/tatans/imeopensdk/ITatansImeOpenService;->deleteAll(Landroid/os/IBinder;)Z

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-interface {p0, p1}, Lnet/tatans/imeopensdk/ITatansImeOpenService;->delete(Landroid/os/IBinder;)Z

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lnet/tatans/imeopensdk/ITatansImeOpenService;->commitText(Landroid/os/IBinder;Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lnet/tatans/imeopensdk/IScreenReaderController$Stub;->asInterface(Landroid/os/IBinder;)Lnet/tatans/imeopensdk/IScreenReaderController;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lnet/tatans/imeopensdk/ITatansImeOpenService;->setScreenReaderController(Landroid/os/IBinder;Lnet/tatans/imeopensdk/IScreenReaderController;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-interface {p0, p1, p2}, Lnet/tatans/imeopensdk/ITatansImeOpenService;->selectPreviousOrNextCandidatas(Landroid/os/IBinder;Z)Z

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :cond_1
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
