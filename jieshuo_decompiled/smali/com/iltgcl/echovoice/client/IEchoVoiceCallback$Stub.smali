.class public abstract Lcom/iltgcl/echovoice/client/IEchoVoiceCallback$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/iltgcl/echovoice/client/IEchoVoiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iltgcl/echovoice/client/IEchoVoiceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iltgcl/echovoice/client/IEchoVoiceCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.iltgcl.echovoice.client.IEchoVoiceCallback"

.field static final TRANSACTION_onError:I = 0x4

.field static final TRANSACTION_onRangeStart:I = 0x5

.field static final TRANSACTION_onStart:I = 0x1

.field static final TRANSACTION_onStop:I = 0x3

.field static final TRANSACTION_onSuccess:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.iltgcl.echovoice.client.IEchoVoiceCallback"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/iltgcl/echovoice/client/IEchoVoiceCallback;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.iltgcl.echovoice.client.IEchoVoiceCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/iltgcl/echovoice/client/IEchoVoiceCallback;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/iltgcl/echovoice/client/IEchoVoiceCallback;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/iltgcl/echovoice/client/IEchoVoiceCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/iltgcl/echovoice/client/IEchoVoiceCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    :goto_0
    return-object v0
.end method

.method public static getDefaultImpl()Lcom/iltgcl/echovoice/client/IEchoVoiceCallback;
    .locals 1

    sget-object v0, Lcom/iltgcl/echovoice/client/IEchoVoiceCallback$Stub$Proxy;->sDefaultImpl:Lcom/iltgcl/echovoice/client/IEchoVoiceCallback;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/iltgcl/echovoice/client/IEchoVoiceCallback;)Z
    .locals 1

    sget-object v0, Lcom/iltgcl/echovoice/client/IEchoVoiceCallback$Stub$Proxy;->sDefaultImpl:Lcom/iltgcl/echovoice/client/IEchoVoiceCallback;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    sput-object p0, Lcom/iltgcl/echovoice/client/IEchoVoiceCallback$Stub$Proxy;->sDefaultImpl:Lcom/iltgcl/echovoice/client/IEchoVoiceCallback;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    const/4 v0, 0x1

    const-string v1, "com.iltgcl.echovoice.client.IEchoVoiceCallback"

    if-eq p1, v0, :cond_6

    const/4 v2, 0x2

    if-eq p1, v2, :cond_5

    const/4 v2, 0x3

    if-eq p1, v2, :cond_3

    const/4 v2, 0x4

    if-eq p1, v2, :cond_2

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-interface {p0, p1, p3, p4, p2}, Lcom/iltgcl/echovoice/client/IEchoVoiceCallback;->onRangeStart(Ljava/lang/String;III)V

    return v0

    :cond_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/iltgcl/echovoice/client/IEchoVoiceCallback;->onError(Ljava/lang/String;I)V

    return v0

    :cond_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_4

    const/4 p2, 0x1

    goto :goto_0

    :cond_4
    const/4 p2, 0x0

    :goto_0
    invoke-interface {p0, p1, p2}, Lcom/iltgcl/echovoice/client/IEchoVoiceCallback;->onStop(Ljava/lang/String;Z)V

    return v0

    :cond_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/iltgcl/echovoice/client/IEchoVoiceCallback;->onSuccess(Ljava/lang/String;)V

    return v0

    :cond_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/iltgcl/echovoice/client/IEchoVoiceCallback;->onStart(Ljava/lang/String;)V

    return v0
.end method
