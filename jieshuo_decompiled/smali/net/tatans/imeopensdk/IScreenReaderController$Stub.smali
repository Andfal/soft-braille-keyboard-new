.class public abstract Lnet/tatans/imeopensdk/IScreenReaderController$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lnet/tatans/imeopensdk/IScreenReaderController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/tatans/imeopensdk/IScreenReaderController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/tatans/imeopensdk/IScreenReaderController$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "net.tatans.imeopensdk.IScreenReaderController"

.field static final TRANSACTION_interrupt:I = 0x5

.field static final TRANSACTION_onInputModeChanged:I = 0x2

.field static final TRANSACTION_performClick:I = 0x6

.field static final TRANSACTION_requestTouchExplorationState:I = 0x1

.field static final TRANSACTION_setTouchExplorePassThrough:I = 0x3

.field static final TRANSACTION_speak:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "net.tatans.imeopensdk.IScreenReaderController"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lnet/tatans/imeopensdk/IScreenReaderController;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "net.tatans.imeopensdk.IScreenReaderController"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lnet/tatans/imeopensdk/IScreenReaderController;

    if-eqz v1, :cond_1

    check-cast v0, Lnet/tatans/imeopensdk/IScreenReaderController;

    return-object v0

    :cond_1
    new-instance v0, Lnet/tatans/imeopensdk/IScreenReaderController$Stub$Proxy;

    invoke-direct {v0, p0}, Lnet/tatans/imeopensdk/IScreenReaderController$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lnet/tatans/imeopensdk/IScreenReaderController;
    .locals 1

    sget-object v0, Lnet/tatans/imeopensdk/IScreenReaderController$Stub$Proxy;->sDefaultImpl:Lnet/tatans/imeopensdk/IScreenReaderController;

    return-object v0
.end method

.method public static setDefaultImpl(Lnet/tatans/imeopensdk/IScreenReaderController;)Z
    .locals 1

    sget-object v0, Lnet/tatans/imeopensdk/IScreenReaderController$Stub$Proxy;->sDefaultImpl:Lnet/tatans/imeopensdk/IScreenReaderController;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    sput-object p0, Lnet/tatans/imeopensdk/IScreenReaderController$Stub$Proxy;->sDefaultImpl:Lnet/tatans/imeopensdk/IScreenReaderController;

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
    .locals 8

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "net.tatans.imeopensdk.IScreenReaderController"

    if-eq p1, v0, :cond_2

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lnet/tatans/imeopensdk/IScreenReaderController;->performClick(Landroid/os/IBinder;Ljava/util/List;)Z

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-interface {p0, p1}, Lnet/tatans/imeopensdk/IScreenReaderController;->interrupt(Landroid/os/IBinder;)V

    :goto_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-interface {p0, p1, p4, v0, p2}, Lnet/tatans/imeopensdk/IScreenReaderController;->speak(Landroid/os/IBinder;Ljava/lang/String;II)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move-object v2, p0

    invoke-interface/range {v2 .. v7}, Lnet/tatans/imeopensdk/IScreenReaderController;->setTouchExplorePassThrough(Landroid/os/IBinder;IIII)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-interface {p0, p1, v0}, Lnet/tatans/imeopensdk/IScreenReaderController;->onInputModeChanged(Landroid/os/IBinder;Z)V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-interface {p0, p1, v0}, Lnet/tatans/imeopensdk/IScreenReaderController;->requestTouchExplorationState(Landroid/os/IBinder;Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
