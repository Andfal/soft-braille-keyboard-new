.class public Lcom/iflytek/sparkchain/core/AiHelper;
.super Lcom/iflytek/sparkchain/core/BaseLibrary;
.source "SourceFile"

# interfaces
.implements Lcom/iflytek/sparkchain/core/AiAbilityApi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/sparkchain/core/AiHelper$Holder;
    }
.end annotation


# static fields
.field private static final AIKit_VERSION:Ljava/lang/String; = "2.0"

.field private static final HANDLE_EMPTY:I = 0x2071

.field private static final TAG:Ljava/lang/String; = "AiHelper"

.field protected static handler:Landroid/os/Handler;


# instance fields
.field private final chatListener:Lcom/iflytek/sparkchain/core/ChatListener;

.field private contextId:I

.field private isRecord:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final listener:Lcom/iflytek/sparkchain/core/AiResponseListener;

.field private final listeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/iflytek/sparkchain/core/AiListener;",
            ">;"
        }
    .end annotation
.end field

.field private userListener:Lcom/iflytek/sparkchain/core/AiResponseListener;

.field private usrChatListener:Lcom/iflytek/sparkchain/core/ChatListener;

.field private usrContextMap:Landroid/util/SparseArray;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    :try_start_0
    const-string v0, "SparkChain"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadLibrary:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AiHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/iflytek/sparkchain/core/AiHelper;->handler:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/iflytek/sparkchain/core/BaseLibrary;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/iflytek/sparkchain/core/AiHelper;->usrContextMap:Landroid/util/SparseArray;

    const/4 v0, 0x0

    iput v0, p0, Lcom/iflytek/sparkchain/core/AiHelper;->contextId:I

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/iflytek/sparkchain/core/AiHelper;->isRecord:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/iflytek/sparkchain/core/AiHelper;->listeners:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/sparkchain/core/AiHelper;->usrChatListener:Lcom/iflytek/sparkchain/core/ChatListener;

    new-instance v1, Lcom/iflytek/sparkchain/core/AiHelper$3;

    invoke-direct {v1, p0}, Lcom/iflytek/sparkchain/core/AiHelper$3;-><init>(Lcom/iflytek/sparkchain/core/AiHelper;)V

    iput-object v1, p0, Lcom/iflytek/sparkchain/core/AiHelper;->chatListener:Lcom/iflytek/sparkchain/core/ChatListener;

    iput-object v0, p0, Lcom/iflytek/sparkchain/core/AiHelper;->userListener:Lcom/iflytek/sparkchain/core/AiResponseListener;

    new-instance v0, Lcom/iflytek/sparkchain/core/AiHelper$4;

    invoke-direct {v0, p0}, Lcom/iflytek/sparkchain/core/AiHelper$4;-><init>(Lcom/iflytek/sparkchain/core/AiHelper;)V

    iput-object v0, p0, Lcom/iflytek/sparkchain/core/AiHelper;->listener:Lcom/iflytek/sparkchain/core/AiResponseListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/iflytek/sparkchain/core/AiHelper$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/iflytek/sparkchain/core/AiHelper;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/iflytek/sparkchain/core/AiHelper;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/iflytek/sparkchain/core/AiHelper;->isRecord:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$100(Lcom/iflytek/sparkchain/core/AiHelper;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Lcom/iflytek/sparkchain/core/AiHelper;->usrContextMap:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$200(Lcom/iflytek/sparkchain/core/AiHelper;)Lcom/iflytek/sparkchain/core/ChatListener;
    .locals 0

    iget-object p0, p0, Lcom/iflytek/sparkchain/core/AiHelper;->usrChatListener:Lcom/iflytek/sparkchain/core/ChatListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/iflytek/sparkchain/core/AiHelper;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/iflytek/sparkchain/core/AiHelper;->listeners:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$400(Lcom/iflytek/sparkchain/core/AiHelper;)Lcom/iflytek/sparkchain/core/AiResponseListener;
    .locals 0

    iget-object p0, p0, Lcom/iflytek/sparkchain/core/AiHelper;->userListener:Lcom/iflytek/sparkchain/core/AiResponseListener;

    return-object p0
.end method

.method private genUsrContextId(Ljava/lang/Object;)I
    .locals 3

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/iflytek/sparkchain/core/AiHelper$Holder;->access$500()Lcom/iflytek/sparkchain/core/AiHelper;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/iflytek/sparkchain/core/AiHelper;->contextId:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/iflytek/sparkchain/core/AiHelper;->contextId:I

    iget-object v2, p0, Lcom/iflytek/sparkchain/core/AiHelper;->usrContextMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static getInst()Lcom/iflytek/sparkchain/core/AiHelper;
    .locals 1

    invoke-static {}, Lcom/iflytek/sparkchain/core/AiHelper$Holder;->access$500()Lcom/iflytek/sparkchain/core/AiHelper;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method native aiKitCodec(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)I
.end method

.method native aikitAsyncChat(Ljava/lang/Object;Ljava/lang/String;IJ)I
.end method

.method native aikitEnd(II)I
.end method

.method native aikitEndChat(II)I
.end method

.method native aikitEngineInit(Ljava/lang/String;J)I
.end method

.method native aikitEngineInitNoParams(Ljava/lang/String;)I
.end method

.method native aikitEngineUnInit(Ljava/lang/String;)I
.end method

.method native aikitFreeAbility(Ljava/lang/String;)I
.end method

.method native aikitGetAuthLeftTime(Ljava/lang/String;)Lcom/iflytek/sparkchain/core/JniCallback$JniAuthTimer;
.end method

.method native aikitLoadData(Ljava/lang/String;J)I
.end method

.method native aikitLoadDataSpeakable(Ljava/lang/String;J)I
.end method

.method public aikitLoadDataSpeakable(Ljava/lang/String;Lcom/iflytek/sparkchain/core/AiRequest;)I
    .locals 2

    invoke-virtual {p2}, Lcom/iflytek/sparkchain/core/AiRequest;->getHandle()I

    move-result p2

    int-to-long v0, p2

    invoke-virtual {p0, p1, v0, v1}, Lcom/iflytek/sparkchain/core/AiHelper;->aikitLoadDataSpeakable(Ljava/lang/String;J)I

    move-result p1

    return p1
.end method

.method native aikitOneShot(Ljava/lang/String;JJI)I
.end method

.method native aikitOneShotAsync(Ljava/lang/String;J)I
.end method

.method native aikitOneShotSync(Ljava/lang/String;JI)Lcom/iflytek/sparkchain/core/JniCallback$JniOutput;
.end method

.method native aikitPreProcess(Ljava/lang/String;J)I
.end method

.method native aikitRead(Ljava/lang/String;I)I
.end method

.method native aikitReadSync(Ljava/lang/String;I)Lcom/iflytek/sparkchain/core/JniCallback$JniOutput;
.end method

.method native aikitSetBoolConfig(Ljava/lang/String;Z)I
.end method

.method native aikitSetConfig(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method native aikitSetDoubleConfig(Ljava/lang/String;D)I
.end method

.method native aikitSetIntConfig(Ljava/lang/String;I)I
.end method

.method native aikitSetLogInfo(IILjava/lang/String;)I
.end method

.method native aikitSetLogLevel(I)I
.end method

.method native aikitSetLogMode(I)I
.end method

.method native aikitSetLogPath(Ljava/lang/String;)I
.end method

.method native aikitSetMemoryMode(Ljava/lang/String;I)I
.end method

.method native aikitSpecifyDataSet(Ljava/lang/String;Ljava/lang/String;[I)I
.end method

.method native aikitStart(Ljava/lang/String;JI)[I
.end method

.method native aikitStartChat(Ljava/lang/Object;IJ)[I
.end method

.method native aikitStartNoParam(Ljava/lang/String;I)[I
.end method

.method native aikitUnLoadData(Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method native aikitWrite(JI)I
.end method

.method native aikitWriteChat(Ljava/lang/String;I)I
.end method

.method public asyncChat(Lcom/iflytek/sparkchain/core/ChatParam;Ljava/lang/String;Ljava/lang/Object;)I
    .locals 6

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    invoke-virtual {p1}, Lcom/iflytek/sparkchain/core/ChatParam;->getParamListHandle()J

    move-result-wide v4

    invoke-direct {p0, p3}, Lcom/iflytek/sparkchain/core/AiHelper;->genUsrContextId(Ljava/lang/Object;)I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/iflytek/sparkchain/core/AiHelper;->aikitAsyncChat(Ljava/lang/Object;Ljava/lang/String;IJ)I

    move-result p1

    return p1
.end method

.method public codeC(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/sparkchain/core/CodeType;Lcom/iflytek/sparkchain/core/AudioType;I)I
    .locals 6

    invoke-virtual {p3}, Lcom/iflytek/sparkchain/core/CodeType;->getValue()I

    move-result v3

    invoke-virtual {p4}, Lcom/iflytek/sparkchain/core/AudioType;->getValue()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/iflytek/sparkchain/core/AiHelper;->aiKitCodec(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)I

    move-result p1

    return p1
.end method

.method native delBuilder(J)V
.end method

.method public end(Lcom/iflytek/sparkchain/core/AIChatHandle;)I
    .locals 2

    if-nez p1, :cond_0

    const/16 p1, 0x2071

    return p1

    :cond_0
    iget-object v0, p0, Lcom/iflytek/sparkchain/core/AiHelper;->usrContextMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/iflytek/sparkchain/core/AIChatHandle;->getUsrContextIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    invoke-virtual {p1}, Lcom/iflytek/sparkchain/core/AIChatHandle;->getHandleId()I

    move-result v0

    invoke-virtual {p1}, Lcom/iflytek/sparkchain/core/AIChatHandle;->getUsrContextIndex()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/iflytek/sparkchain/core/AiHelper;->aikitEndChat(II)I

    move-result p1

    return p1
.end method

.method public end(Lcom/iflytek/sparkchain/core/AiHandle;)I
    .locals 2

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/AiHelper;->isRecord:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/iflytek/sparkchain/core/AiHelper;->isRecord:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Lcom/iflytek/sparkchain/media/RecorderHelper;->getInst()Lcom/iflytek/sparkchain/media/RecorderHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iflytek/sparkchain/media/RecorderHelper;->stop()V

    return v0

    :cond_0
    if-nez p1, :cond_1

    const/16 p1, 0x2071

    return p1

    :cond_1
    iget-object v0, p0, Lcom/iflytek/sparkchain/core/AiHelper;->usrContextMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/iflytek/sparkchain/core/AiHandle;->getI()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    invoke-virtual {p1}, Lcom/iflytek/sparkchain/core/AiHandle;->getId()I

    move-result v0

    invoke-virtual {p1}, Lcom/iflytek/sparkchain/core/AiHandle;->getI()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/iflytek/sparkchain/core/AiHelper;->aikitEnd(II)I

    move-result p1

    return p1
.end method

.method public engineInit(Ljava/lang/String;)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/iflytek/sparkchain/core/AiHelper;->aikitEngineInitNoParams(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public engineInit(Ljava/lang/String;Lcom/iflytek/sparkchain/core/AiRequest;)I
    .locals 2

    invoke-virtual {p2}, Lcom/iflytek/sparkchain/core/AiRequest;->getHandle()I

    move-result p2

    int-to-long v0, p2

    invoke-virtual {p0, p1, v0, v1}, Lcom/iflytek/sparkchain/core/AiHelper;->aikitEngineInit(Ljava/lang/String;J)I

    move-result p1

    return p1
.end method

.method public engineInitNoParams(Ljava/lang/String;)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/iflytek/sparkchain/core/AiHelper;->engineInit(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public engineUnInit(Ljava/lang/String;)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/iflytek/sparkchain/core/AiHelper;->aikitEngineUnInit(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public freeAbility(Ljava/lang/String;)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/iflytek/sparkchain/core/AiHelper;->aikitFreeAbility(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getAuthLeftTime(Ljava/lang/String;)Lcom/iflytek/sparkchain/core/JniCallback$JniAuthTimer;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/iflytek/sparkchain/core/AiHelper;->aikitGetAuthLeftTime(Ljava/lang/String;)Lcom/iflytek/sparkchain/core/JniCallback$JniAuthTimer;

    move-result-object p1

    return-object p1
.end method

.method public getChatListener()Lcom/iflytek/sparkchain/core/ChatListener;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/AiHelper;->chatListener:Lcom/iflytek/sparkchain/core/ChatListener;

    return-object v0
.end method

.method native getContextId(I)I
.end method

.method public getDeviceID()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/iflytek/sparkchain/core/Auth;->d()Lcom/iflytek/sparkchain/core/Auth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/sparkchain/core/Auth;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/iflytek/sparkchain/core/AiHelper;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public getLibraryPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lcom/iflytek/sparkchain/core/JniCallback;->gp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getListener()Lcom/iflytek/sparkchain/core/AiResponseListener;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/AiHelper;->listener:Lcom/iflytek/sparkchain/core/AiResponseListener;

    return-object v0
.end method

.method protected getUsrContext(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/AiHelper;->usrContextMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method native header(J)V
.end method

.method public initPlayer(Landroid/content/Context;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/iflytek/sparkchain/media/PcmPlayerHelper;->getInst()Lcom/iflytek/sparkchain/media/PcmPlayerHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iflytek/sparkchain/media/PcmPlayerHelper;->initPlayer(Landroid/content/Context;)V

    return-void
.end method

.method native inputClear(J)V
.end method

.method public loadData(Ljava/lang/String;Lcom/iflytek/sparkchain/core/AiRequest;)I
    .locals 2

    invoke-virtual {p2}, Lcom/iflytek/sparkchain/core/AiRequest;->getHandle()I

    move-result p2

    int-to-long v0, p2

    invoke-virtual {p0, p1, v0, v1}, Lcom/iflytek/sparkchain/core/AiHelper;->aikitLoadData(Ljava/lang/String;J)I

    move-result p1

    return p1
.end method

.method native newBoolean(JLjava/lang/String;Z)V
.end method

.method native newBuffer(JLjava/lang/String;[BIII)V
.end method

.method native newBuilder(JLjava/lang/String;J)V
.end method

.method native newCustom(JLjava/lang/String;[BIII)V
.end method

.method native newDesc(JLjava/lang/String;J)V
.end method

.method native newDirectBuffer(JLjava/lang/String;Ljava/nio/ByteBuffer;IIII)V
.end method

.method native newDouble(JLjava/lang/String;D)V
.end method

.method native newInteger(JLjava/lang/String;I)V
.end method

.method public oneShot(Ljava/lang/String;Lcom/iflytek/sparkchain/core/AiRequest;Lcom/iflytek/sparkchain/core/AiRequest;Ljava/lang/Object;)I
    .locals 7

    invoke-virtual {p2}, Lcom/iflytek/sparkchain/core/AiRequest;->getHandle()I

    move-result p2

    int-to-long v2, p2

    invoke-virtual {p3}, Lcom/iflytek/sparkchain/core/AiRequest;->getHandle()I

    move-result p2

    int-to-long v4, p2

    invoke-direct {p0, p4}, Lcom/iflytek/sparkchain/core/AiHelper;->genUsrContextId(Ljava/lang/Object;)I

    move-result v6

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/iflytek/sparkchain/core/AiHelper;->aikitOneShot(Ljava/lang/String;JJI)I

    move-result p1

    return p1
.end method

.method public oneShot(Ljava/lang/String;Lcom/iflytek/sparkchain/core/AiRequest;Ljava/lang/Object;)I
    .locals 8

    invoke-virtual {p2}, Lcom/iflytek/sparkchain/core/AiRequest;->getHandle()I

    move-result v0

    int-to-long v3, v0

    invoke-virtual {p2}, Lcom/iflytek/sparkchain/core/AiRequest;->getHandle()I

    move-result p2

    int-to-long v5, p2

    invoke-direct {p0, p3}, Lcom/iflytek/sparkchain/core/AiHelper;->genUsrContextId(Ljava/lang/Object;)I

    move-result v7

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Lcom/iflytek/sparkchain/core/AiHelper;->aikitOneShot(Ljava/lang/String;JJI)I

    move-result p1

    return p1
.end method

.method public oneShotAsync(Ljava/lang/String;Lcom/iflytek/sparkchain/core/AiRequest;)I
    .locals 2

    invoke-virtual {p2}, Lcom/iflytek/sparkchain/core/AiRequest;->getHandle()I

    move-result p2

    int-to-long v0, p2

    invoke-virtual {p0, p1, v0, v1}, Lcom/iflytek/sparkchain/core/AiHelper;->aikitOneShotAsync(Ljava/lang/String;J)I

    move-result p1

    return p1
.end method

.method public oneShotSync(Ljava/lang/String;Lcom/iflytek/sparkchain/core/AiRequest;Ljava/lang/Object;)Lcom/iflytek/sparkchain/core/AiOutput;
    .locals 2

    invoke-virtual {p2}, Lcom/iflytek/sparkchain/core/AiRequest;->getHandle()I

    move-result p2

    int-to-long v0, p2

    invoke-direct {p0, p3}, Lcom/iflytek/sparkchain/core/AiHelper;->genUsrContextId(Ljava/lang/Object;)I

    move-result p2

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/iflytek/sparkchain/core/AiHelper;->aikitOneShotSync(Ljava/lang/String;JI)Lcom/iflytek/sparkchain/core/JniCallback$JniOutput;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance p2, Lcom/iflytek/sparkchain/core/AiOutput;

    invoke-direct {p2}, Lcom/iflytek/sparkchain/core/AiOutput;-><init>()V

    iget p3, p1, Lcom/iflytek/sparkchain/core/JniCallback$JniOutput;->code:I

    iput p3, p2, Lcom/iflytek/sparkchain/core/AiOutput;->code:I

    if-nez p3, :cond_1

    invoke-virtual {p1}, Lcom/iflytek/sparkchain/core/JniCallback$JniOutput;->formatData()Ljava/util/List;

    move-result-object p1

    iput-object p1, p2, Lcom/iflytek/sparkchain/core/AiOutput;->data:Ljava/util/List;

    :cond_1
    return-object p2
.end method

.method native paramClear(J)V
.end method

.method public pausePlay()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/iflytek/sparkchain/media/PcmPlayerHelper;->getInst()Lcom/iflytek/sparkchain/media/PcmPlayerHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/sparkchain/media/PcmPlayerHelper;->pause()V

    return-void
.end method

.method public preProcess(Ljava/lang/String;Lcom/iflytek/sparkchain/core/AiRequest;)I
    .locals 2

    invoke-virtual {p2}, Lcom/iflytek/sparkchain/core/AiRequest;->getHandle()I

    move-result p2

    int-to-long v0, p2

    invoke-virtual {p0, p1, v0, v1}, Lcom/iflytek/sparkchain/core/AiHelper;->aikitPreProcess(Ljava/lang/String;J)I

    move-result p1

    return p1
.end method

.method public rePercent(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/iflytek/sparkchain/media/PcmPlayerHelper;->getInst()Lcom/iflytek/sparkchain/media/PcmPlayerHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iflytek/sparkchain/media/PcmPlayerHelper;->resetPercent(I)V

    return-void
.end method

.method public read(Ljava/lang/String;Lcom/iflytek/sparkchain/core/AiHandle;)I
    .locals 0

    if-nez p2, :cond_0

    const/16 p1, 0x2071

    return p1

    :cond_0
    invoke-virtual {p2}, Lcom/iflytek/sparkchain/core/AiHandle;->getId()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/iflytek/sparkchain/core/AiHelper;->aikitRead(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public readSync(Ljava/lang/String;Lcom/iflytek/sparkchain/core/AiHandle;)Lcom/iflytek/sparkchain/core/AiOutput;
    .locals 1

    new-instance v0, Lcom/iflytek/sparkchain/core/AiOutput;

    invoke-direct {v0}, Lcom/iflytek/sparkchain/core/AiOutput;-><init>()V

    if-nez p2, :cond_0

    const/16 p1, 0x2071

    iput p1, v0, Lcom/iflytek/sparkchain/core/AiOutput;->code:I

    return-object v0

    :cond_0
    invoke-virtual {p2}, Lcom/iflytek/sparkchain/core/AiHandle;->getId()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/iflytek/sparkchain/core/AiHelper;->aikitReadSync(Ljava/lang/String;I)Lcom/iflytek/sparkchain/core/JniCallback$JniOutput;

    move-result-object p1

    iget p2, p1, Lcom/iflytek/sparkchain/core/JniCallback$JniOutput;->code:I

    if-nez p2, :cond_1

    invoke-virtual {p1}, Lcom/iflytek/sparkchain/core/JniCallback$JniOutput;->formatData()Ljava/util/List;

    move-result-object p1

    iput-object p1, v0, Lcom/iflytek/sparkchain/core/AiOutput;->data:Ljava/util/List;

    :cond_1
    return-object v0
.end method

.method public record(Ljava/lang/String;Lcom/iflytek/sparkchain/core/AiHandle;Lcom/iflytek/sparkchain/media/RecorderHelper$Params;Ljava/lang/String;Ljava/lang/Object;)Lcom/iflytek/sparkchain/core/AiHandle;
    .locals 7

    iget-object p5, p0, Lcom/iflytek/sparkchain/core/AiHelper;->isRecord:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p5, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Lcom/iflytek/sparkchain/media/RecorderHelper;->getInst()Lcom/iflytek/sparkchain/media/RecorderHelper;

    move-result-object p5

    new-instance v6, Lcom/iflytek/sparkchain/core/AiHelper$2;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p4

    move-object v3, p2

    move-object v4, p3

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/iflytek/sparkchain/core/AiHelper$2;-><init>(Lcom/iflytek/sparkchain/core/AiHelper;Ljava/lang/String;Lcom/iflytek/sparkchain/core/AiHandle;Lcom/iflytek/sparkchain/media/RecorderHelper$Params;Ljava/lang/String;)V

    invoke-virtual {p5, p3, v6}, Lcom/iflytek/sparkchain/media/RecorderHelper;->init(Lcom/iflytek/sparkchain/media/RecorderHelper$Params;Lcom/iflytek/sparkchain/media/record/b;)V

    return-object p2
.end method

.method public record(Ljava/lang/String;Lcom/iflytek/sparkchain/core/AiHandle;Lcom/iflytek/sparkchain/media/record/PcmRecorder$Builder;Lcom/iflytek/sparkchain/core/AiRequest$Builder;Ljava/lang/String;Ljava/lang/Object;)Lcom/iflytek/sparkchain/core/AiHandle;
    .locals 6

    iget-object p1, p0, Lcom/iflytek/sparkchain/core/AiHelper;->isRecord:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p6, 0x1

    invoke-virtual {p1, p6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Lcom/iflytek/sparkchain/core/media/record/IFlyAudioManager;->getInst()Lcom/iflytek/sparkchain/core/media/record/IFlyAudioManager;

    move-result-object p1

    new-instance p6, Lcom/iflytek/sparkchain/core/AiHelper$1;

    move-object v0, p6

    move-object v1, p0

    move-object v2, p4

    move-object v3, p5

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/iflytek/sparkchain/core/AiHelper$1;-><init>(Lcom/iflytek/sparkchain/core/AiHelper;Lcom/iflytek/sparkchain/core/AiRequest$Builder;Ljava/lang/String;Lcom/iflytek/sparkchain/core/AiHandle;Lcom/iflytek/sparkchain/media/record/PcmRecorder$Builder;)V

    invoke-virtual {p1, p3, p6}, Lcom/iflytek/sparkchain/core/media/record/IFlyAudioManager;->initPcmRecorder(Lcom/iflytek/sparkchain/media/record/PcmRecorder$Builder;Lcom/iflytek/sparkchain/core/media/record/PcmRecorder$PcmRecordListener;)V

    return-object p2
.end method

.method public record(Ljava/lang/String;Lcom/iflytek/sparkchain/core/AiHandle;Lcom/iflytek/sparkchain/media/record/PcmRecorder$Builder;Ljava/lang/String;Ljava/lang/Object;)Lcom/iflytek/sparkchain/core/AiHandle;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p3}, Lcom/iflytek/sparkchain/media/RecorderHelper;->genFrom(Lcom/iflytek/sparkchain/media/record/PcmRecorder$Builder;)Lcom/iflytek/sparkchain/media/RecorderHelper$Params;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/iflytek/sparkchain/core/AiHelper;->record(Ljava/lang/String;Lcom/iflytek/sparkchain/core/AiHandle;Lcom/iflytek/sparkchain/media/RecorderHelper$Params;Ljava/lang/String;Ljava/lang/Object;)Lcom/iflytek/sparkchain/core/AiHandle;

    move-result-object p1

    return-object p1
.end method

.method public registerChatListener(Lcom/iflytek/sparkchain/core/ChatListener;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/AiHelper;->usrChatListener:Lcom/iflytek/sparkchain/core/ChatListener;

    return-void
.end method

.method public registerListener(Lcom/iflytek/sparkchain/core/AiResponseListener;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AiHelper.registerListener\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "aikitLog"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/AiHelper;->userListener:Lcom/iflytek/sparkchain/core/AiResponseListener;

    return-void
.end method

.method public registerListener(Lcom/iflytek/sparkchain/core/AuthListener;)V
    .locals 1

    invoke-static {}, Lcom/iflytek/sparkchain/core/Auth;->d()Lcom/iflytek/sparkchain/core/Auth;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iflytek/sparkchain/core/Auth;->a(Lcom/iflytek/sparkchain/core/AuthListener;)V

    return-void
.end method

.method public registerListener(Lcom/iflytek/sparkchain/core/AuthListener;Lcom/iflytek/sparkchain/core/AiResponseListener;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/iflytek/sparkchain/core/AiHelper;->registerListener(Lcom/iflytek/sparkchain/core/AuthListener;)V

    invoke-virtual {p0, p2}, Lcom/iflytek/sparkchain/core/AiHelper;->registerListener(Lcom/iflytek/sparkchain/core/AiResponseListener;)V

    return-void
.end method

.method public registerListener(Ljava/lang/String;Lcom/iflytek/sparkchain/core/AiListener;)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/AiHelper;->listeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public resetBuffer(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/iflytek/sparkchain/media/PcmPlayerHelper;->getInst()Lcom/iflytek/sparkchain/media/PcmPlayerHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iflytek/sparkchain/media/PcmPlayerHelper;->resetBuffer(I)V

    return-void
.end method

.method public resumePlay()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/iflytek/sparkchain/media/PcmPlayerHelper;->getInst()Lcom/iflytek/sparkchain/media/PcmPlayerHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/sparkchain/media/PcmPlayerHelper;->resume()V

    return-void
.end method

.method native service(JLjava/lang/String;)V
.end method

.method native serviceParam(JLjava/lang/String;J)V
.end method

.method public setAbilityUrl(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    :try_start_0
    new-instance v0, Lcom/iflytek/sparkchain/core/AiUrl$Builder;

    invoke-direct {v0}, Lcom/iflytek/sparkchain/core/AiUrl$Builder;-><init>()V

    invoke-virtual {v0, p2}, Lcom/iflytek/sparkchain/core/AiUrl$Builder;->url(Ljava/lang/String;)Lcom/iflytek/sparkchain/core/AiUrl$Builder;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "AseUrl"

    :try_start_1
    invoke-virtual {p2}, Lcom/iflytek/sparkchain/core/AiUrl$Builder;->build()Lcom/iflytek/sparkchain/core/AiUrl;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/iflytek/sparkchain/core/AiUrl;->toJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/iflytek/sparkchain/core/AiHelper;->setConfig(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AiHelper"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method public setConfig(Ljava/lang/String;D)I
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/iflytek/sparkchain/core/AiHelper;->aikitSetDoubleConfig(Ljava/lang/String;D)I

    move-result p1

    return p1
.end method

.method public setConfig(Ljava/lang/String;I)I
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/iflytek/sparkchain/core/AiHelper;->aikitSetIntConfig(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public setConfig(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/iflytek/sparkchain/core/AiHelper;->aikitSetConfig(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public setConfig(Ljava/lang/String;Z)I
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/iflytek/sparkchain/core/AiHelper;->aikitSetBoolConfig(Ljava/lang/String;Z)I

    move-result p1

    return p1
.end method

.method public setLogInfo(Lcom/iflytek/sparkchain/core/LogLvl;ILjava/lang/String;)I
    .locals 0

    invoke-virtual {p1}, Lcom/iflytek/sparkchain/core/LogLvl;->getValue()I

    move-result p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/iflytek/sparkchain/core/AiHelper;->aikitSetLogInfo(IILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public setLogLevel(Lcom/iflytek/sparkchain/core/LogLvl;)I
    .locals 0

    invoke-virtual {p1}, Lcom/iflytek/sparkchain/core/LogLvl;->getValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/iflytek/sparkchain/core/AiHelper;->aikitSetLogLevel(I)I

    move-result p1

    return p1
.end method

.method public setLogMode(I)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/iflytek/sparkchain/core/AiHelper;->aikitSetLogMode(I)I

    move-result p1

    return p1
.end method

.method public setLogPath(Ljava/lang/String;)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/iflytek/sparkchain/core/AiHelper;->aikitSetLogPath(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public setMemoryMode(Ljava/lang/String;I)I
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/iflytek/sparkchain/core/AiHelper;->aikitSetMemoryMode(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public specifyDataSet(Ljava/lang/String;Ljava/lang/String;[I)I
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/iflytek/sparkchain/core/AiHelper;->aikitSpecifyDataSet(Ljava/lang/String;Ljava/lang/String;[I)I

    move-result p1

    return p1
.end method

.method public start(Lcom/iflytek/sparkchain/core/ChatParam;Ljava/lang/Object;)Lcom/iflytek/sparkchain/core/AIChatHandle;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/iflytek/sparkchain/core/ChatParam;->getParamListHandle()J

    move-result-wide v1

    invoke-direct {p0, p2}, Lcom/iflytek/sparkchain/core/AiHelper;->genUsrContextId(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p0, p1, v3, v1, v2}, Lcom/iflytek/sparkchain/core/AiHelper;->aikitStartChat(Ljava/lang/Object;IJ)[I

    move-result-object p1

    const/4 v1, 0x0

    aget v1, p1, v1

    if-nez v1, :cond_1

    new-instance v0, Lcom/iflytek/sparkchain/core/AIChatHandle;

    const/4 v1, 0x1

    aget p1, p1, v1

    const-string v1, "AIKit-Spark"

    invoke-direct {v0, p2, v1, p1}, Lcom/iflytek/sparkchain/core/AIChatHandle;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    invoke-virtual {v0, v3}, Lcom/iflytek/sparkchain/core/AIChatHandle;->setUsrContextIndex(I)Lcom/iflytek/sparkchain/core/AIChatHandle;

    :cond_1
    return-object v0
.end method

.method public start(Ljava/lang/String;Lcom/iflytek/sparkchain/core/AiRequest;Ljava/lang/Object;)Lcom/iflytek/sparkchain/core/AiHandle;
    .locals 2

    invoke-direct {p0, p3}, Lcom/iflytek/sparkchain/core/AiHelper;->genUsrContextId(Ljava/lang/Object;)I

    move-result p3

    if-nez p2, :cond_0

    const-wide/16 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/iflytek/sparkchain/core/AiRequest;->getHandle()I

    move-result p2

    int-to-long v0, p2

    :goto_0
    invoke-virtual {p0, p1, v0, v1, p3}, Lcom/iflytek/sparkchain/core/AiHelper;->aikitStart(Ljava/lang/String;JI)[I

    move-result-object p1

    new-instance p2, Lcom/iflytek/sparkchain/core/AiHandle;

    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x1

    aget p1, p1, v1

    invoke-direct {p2, v0, p1, p3}, Lcom/iflytek/sparkchain/core/AiHandle;-><init>(III)V

    return-object p2
.end method

.method public start(Ljava/lang/String;Ljava/lang/Object;)Lcom/iflytek/sparkchain/core/AiHandle;
    .locals 3

    invoke-direct {p0, p2}, Lcom/iflytek/sparkchain/core/AiHelper;->genUsrContextId(Ljava/lang/Object;)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/iflytek/sparkchain/core/AiHelper;->aikitStartNoParam(Ljava/lang/String;I)[I

    move-result-object p1

    new-instance v0, Lcom/iflytek/sparkchain/core/AiHandle;

    const/4 v1, 0x0

    aget v1, p1, v1

    const/4 v2, 0x1

    aget p1, p1, v2

    invoke-direct {v0, v1, p1, p2}, Lcom/iflytek/sparkchain/core/AiHandle;-><init>(III)V

    return-object v0
.end method

.method public startPlay(Lcom/iflytek/sparkchain/core/media/player/PcmPlayer$PcmPlayerListener;)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/iflytek/sparkchain/media/PcmPlayerHelper;->getInst()Lcom/iflytek/sparkchain/media/PcmPlayerHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iflytek/sparkchain/media/PcmPlayerHelper;->startPlay(Lcom/iflytek/sparkchain/core/media/player/PcmPlayer$PcmPlayerListener;)I

    move-result p1

    return p1
.end method

.method public stopPlay()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/iflytek/sparkchain/media/PcmPlayerHelper;->getInst()Lcom/iflytek/sparkchain/media/PcmPlayerHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/sparkchain/media/PcmPlayerHelper;->stop()V

    return-void
.end method

.method public stopRecord()V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/AiHelper;->isRecord:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/AiHelper;->isRecord:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Lcom/iflytek/sparkchain/media/RecorderHelper;->getInst()Lcom/iflytek/sparkchain/media/RecorderHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/sparkchain/media/RecorderHelper;->stop()V

    :cond_0
    return-void
.end method

.method native ttsDestroy(I)V
.end method

.method public ttsObjDestroy(I)V
    .locals 4

    sget-object v0, Lcom/iflytek/sparkchain/core/AiHelper;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/iflytek/sparkchain/core/AiHelper$5;

    invoke-direct {v1, p0, p1}, Lcom/iflytek/sparkchain/core/AiHelper$5;-><init>(Lcom/iflytek/sparkchain/core/AiHelper;I)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public unLoadData(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/iflytek/sparkchain/core/AiHelper;->aikitUnLoadData(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public write(Lcom/iflytek/sparkchain/core/AIChatHandle;Ljava/lang/String;)I
    .locals 0

    if-nez p1, :cond_0

    const/16 p1, 0x2071

    return p1

    :cond_0
    invoke-virtual {p1}, Lcom/iflytek/sparkchain/core/AIChatHandle;->getHandleId()I

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/iflytek/sparkchain/core/AiHelper;->aikitWriteChat(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public write(Lcom/iflytek/sparkchain/core/AiRequest;Lcom/iflytek/sparkchain/core/AiHandle;)I
    .locals 2

    if-nez p2, :cond_0

    const/16 p1, 0x2071

    return p1

    :cond_0
    invoke-virtual {p1}, Lcom/iflytek/sparkchain/core/AiRequest;->getHandle()I

    move-result p1

    int-to-long v0, p1

    invoke-virtual {p2}, Lcom/iflytek/sparkchain/core/AiHandle;->getId()I

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/iflytek/sparkchain/core/AiHelper;->aikitWrite(JI)I

    move-result p1

    return p1
.end method

.method public writeDateToPlayer(Ljava/util/ArrayList;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "[B>;II)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/iflytek/sparkchain/media/PcmPlayerHelper;->getInst()Lcom/iflytek/sparkchain/media/PcmPlayerHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/iflytek/sparkchain/media/PcmPlayerHelper;->write(Ljava/util/ArrayList;II)Z

    return-void
.end method
