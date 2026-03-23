.class Lcom/iltgcl/echovoice/client/IEchoVoiceCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/iltgcl/echovoice/client/IEchoVoiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iltgcl/echovoice/client/IEchoVoiceCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/iltgcl/echovoice/client/IEchoVoiceCallback;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iltgcl/echovoice/client/IEchoVoiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/iltgcl/echovoice/client/IEchoVoiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.iltgcl.echovoice.client.IEchoVoiceCallback"

    return-object v0
.end method

.method public onError(Ljava/lang/String;I)V
    .locals 5

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.iltgcl.echovoice.client.IEchoVoiceCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Lcom/iltgcl/echovoice/client/IEchoVoiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v1, v3, v0, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/iltgcl/echovoice/client/IEchoVoiceCallback$Stub;->getDefaultImpl()Lcom/iltgcl/echovoice/client/IEchoVoiceCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/iltgcl/echovoice/client/IEchoVoiceCallback$Stub;->getDefaultImpl()Lcom/iltgcl/echovoice/client/IEchoVoiceCallback;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/iltgcl/echovoice/client/IEchoVoiceCallback;->onError(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public onRangeStart(Ljava/lang/String;III)V
    .locals 5

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.iltgcl.echovoice.client.IEchoVoiceCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Lcom/iltgcl/echovoice/client/IEchoVoiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v1, v3, v0, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/iltgcl/echovoice/client/IEchoVoiceCallback$Stub;->getDefaultImpl()Lcom/iltgcl/echovoice/client/IEchoVoiceCallback;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/iltgcl/echovoice/client/IEchoVoiceCallback$Stub;->getDefaultImpl()Lcom/iltgcl/echovoice/client/IEchoVoiceCallback;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/iltgcl/echovoice/client/IEchoVoiceCallback;->onRangeStart(Ljava/lang/String;III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public onStart(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.iltgcl.echovoice.client.IEchoVoiceCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/iltgcl/echovoice/client/IEchoVoiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, v3, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/iltgcl/echovoice/client/IEchoVoiceCallback$Stub;->getDefaultImpl()Lcom/iltgcl/echovoice/client/IEchoVoiceCallback;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/iltgcl/echovoice/client/IEchoVoiceCallback$Stub;->getDefaultImpl()Lcom/iltgcl/echovoice/client/IEchoVoiceCallback;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/iltgcl/echovoice/client/IEchoVoiceCallback;->onStart(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public onStop(Ljava/lang/String;Z)V
    .locals 5

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.iltgcl.echovoice.client.IEchoVoiceCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Lcom/iltgcl/echovoice/client/IEchoVoiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/iltgcl/echovoice/client/IEchoVoiceCallback$Stub;->getDefaultImpl()Lcom/iltgcl/echovoice/client/IEchoVoiceCallback;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/iltgcl/echovoice/client/IEchoVoiceCallback$Stub;->getDefaultImpl()Lcom/iltgcl/echovoice/client/IEchoVoiceCallback;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/iltgcl/echovoice/client/IEchoVoiceCallback;->onStop(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2
    :goto_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 5

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.iltgcl.echovoice.client.IEchoVoiceCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/iltgcl/echovoice/client/IEchoVoiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v1, v3, v0, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/iltgcl/echovoice/client/IEchoVoiceCallback$Stub;->getDefaultImpl()Lcom/iltgcl/echovoice/client/IEchoVoiceCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/iltgcl/echovoice/client/IEchoVoiceCallback$Stub;->getDefaultImpl()Lcom/iltgcl/echovoice/client/IEchoVoiceCallback;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/iltgcl/echovoice/client/IEchoVoiceCallback;->onSuccess(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method
