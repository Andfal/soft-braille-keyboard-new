.class public Lcom/baidu/speech/audio/MicrophoneServer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/speech/audio/MicrophoneServer$SocketWrap;,
        Lcom/baidu/speech/audio/MicrophoneServer$MicInputStream;
    }
.end annotation


# static fields
.field private static final PORT:I = 0xccd

.field public static final S_DATA_LENGTH:I = 0x1d4c00

.field public static final S_LENGTH:I = 0x280

.field public static final TAG:Ljava/lang/String; = "MicrophoneServer"

.field private static sPorts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/baidu/speech/audio/MicrophoneServer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private SOCKET_ADDRESS:Ljava/lang/String;

.field private firstStart:Z

.field future:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioSource:I

.field private mIn:Ljava/io/DataInputStream;

.field private mInfile:Ljava/lang/String;

.field private mRemoteOutputStreams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/baidu/speech/audio/MicrophoneServer$SocketWrap;",
            ">;"
        }
    .end annotation
.end field

.field private final mServerPort:I

.field private mServerSocket:Landroid/net/LocalServerSocket;

.field newSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

.field private final sData:[B

.field private final sLen:I

.field private sLimit:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/baidu/speech/audio/MicrophoneServer;->sPorts:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x1d4c00

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/baidu/speech/audio/MicrophoneServer;->sData:[B

    const/16 v0, 0x280

    iput v0, p0, Lcom/baidu/speech/audio/MicrophoneServer;->sLen:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/speech/audio/MicrophoneServer;->sLimit:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/speech/audio/MicrophoneServer;->mRemoteOutputStreams:Ljava/util/ArrayList;

    const-string v0, "com.baidu.speech"

    iput-object v0, p0, Lcom/baidu/speech/audio/MicrophoneServer;->SOCKET_ADDRESS:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/speech/audio/MicrophoneServer;->mIn:Ljava/io/DataInputStream;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/speech/audio/MicrophoneServer;->firstStart:Z

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/speech/audio/MicrophoneServer;->newSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    iput-object p1, p0, Lcom/baidu/speech/audio/MicrophoneServer;->mInfile:Ljava/lang/String;

    iput p2, p0, Lcom/baidu/speech/audio/MicrophoneServer;->mAudioSource:I

    sget-object v0, Lcom/baidu/speech/audio/MicrophoneServer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "infile:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  audioSource:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string p2, "_"

    const/16 v0, 0x3e8

    if-eqz p1, :cond_0

    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    new-instance v0, Landroid/net/LocalServerSocket;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/baidu/speech/audio/MicrophoneServer;->SOCKET_ADDRESS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Landroid/net/LocalServerSocket;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    new-instance v0, Landroid/net/LocalServerSocket;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/baidu/speech/audio/MicrophoneServer;->SOCKET_ADDRESS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Landroid/net/LocalServerSocket;-><init>(Ljava/lang/String;)V

    :goto_0
    iput-object v0, p0, Lcom/baidu/speech/audio/MicrophoneServer;->mServerSocket:Landroid/net/LocalServerSocket;

    iput p1, p0, Lcom/baidu/speech/audio/MicrophoneServer;->mServerPort:I

    new-instance p1, Lcom/baidu/speech/audio/MicrophoneServer$1;

    invoke-direct {p1, p0}, Lcom/baidu/speech/audio/MicrophoneServer$1;-><init>(Lcom/baidu/speech/audio/MicrophoneServer;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic access$000(Lcom/baidu/speech/audio/MicrophoneServer;)Landroid/net/LocalServerSocket;
    .locals 0

    iget-object p0, p0, Lcom/baidu/speech/audio/MicrophoneServer;->mServerSocket:Landroid/net/LocalServerSocket;

    return-object p0
.end method

.method static synthetic access$100(Lcom/baidu/speech/audio/MicrophoneServer;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/baidu/speech/audio/MicrophoneServer;->mRemoteOutputStreams:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$200(Lcom/baidu/speech/audio/MicrophoneServer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/baidu/speech/audio/MicrophoneServer;->firstStart:Z

    return p0
.end method

.method static synthetic access$202(Lcom/baidu/speech/audio/MicrophoneServer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/speech/audio/MicrophoneServer;->firstStart:Z

    return p1
.end method

.method static synthetic access$300(Lcom/baidu/speech/audio/MicrophoneServer;)Ljava/io/DataInputStream;
    .locals 0

    iget-object p0, p0, Lcom/baidu/speech/audio/MicrophoneServer;->mIn:Ljava/io/DataInputStream;

    return-object p0
.end method

.method static synthetic access$302(Lcom/baidu/speech/audio/MicrophoneServer;Ljava/io/DataInputStream;)Ljava/io/DataInputStream;
    .locals 0

    iput-object p1, p0, Lcom/baidu/speech/audio/MicrophoneServer;->mIn:Ljava/io/DataInputStream;

    return-object p1
.end method

.method static synthetic access$400(Lcom/baidu/speech/audio/MicrophoneServer;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/baidu/speech/audio/MicrophoneServer;->mInfile:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/baidu/speech/audio/MicrophoneServer;)I
    .locals 0

    iget p0, p0, Lcom/baidu/speech/audio/MicrophoneServer;->mAudioSource:I

    return p0
.end method

.method static synthetic access$600(Lcom/baidu/speech/audio/MicrophoneServer;Ljava/lang/String;I)Ljava/io/InputStream;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/baidu/speech/audio/MicrophoneServer;->createInputStream(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lcom/baidu/speech/audio/MicrophoneServer;->sPorts:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$800(Lcom/baidu/speech/audio/MicrophoneServer;)[B
    .locals 0

    iget-object p0, p0, Lcom/baidu/speech/audio/MicrophoneServer;->sData:[B

    return-object p0
.end method

.method static synthetic access$900(Lcom/baidu/speech/audio/MicrophoneServer;)J
    .locals 2

    iget-wide v0, p0, Lcom/baidu/speech/audio/MicrophoneServer;->sLimit:J

    return-wide v0
.end method

.method public static create(Ljava/lang/String;I)I
    .locals 2

    sget-object v0, Lcom/baidu/speech/audio/MicrophoneServer;->sPorts:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/baidu/speech/audio/MicrophoneServer;->sPorts:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/speech/audio/MicrophoneServer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    new-instance v1, Lcom/baidu/speech/audio/MicrophoneServer;

    invoke-direct {v1, p0, p1}, Lcom/baidu/speech/audio/MicrophoneServer;-><init>(Ljava/lang/String;I)V

    sget-object p1, Lcom/baidu/speech/audio/MicrophoneServer;->sPorts:Ljava/util/HashMap;

    invoke-virtual {p1, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    monitor-exit v0

    const/16 p0, 0xccd

    return p0

    :cond_0
    :goto_0
    sget-object p1, Lcom/baidu/speech/audio/MicrophoneServer;->sPorts:Ljava/util/HashMap;

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/baidu/speech/audio/MicrophoneServer;

    iget p0, p0, Lcom/baidu/speech/audio/MicrophoneServer;->mServerPort:I

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private createInputStream(Ljava/lang/String;I)Ljava/io/InputStream;
    .locals 4

    if-eqz p1, :cond_7

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string p2, "#"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "^#(.*)[#.](.*?)\\("

    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    invoke-virtual {p2, p1, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    const/4 p2, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/InputStream;

    return-object p1

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "can not create inputStream"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const-string p2, "res://"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "/"

    if-eqz v1, :cond_2

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1

    :cond_2
    const-string p2, "asset://"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const-string v3, "assets://"

    if-nez v1, :cond_5

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    const-string p2, "tcp://"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    new-instance p2, Ljava/net/Socket;

    const-string v0, "localhost"

    invoke-direct {p2, v0, p1}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    return-object p1

    :cond_4
    new-instance p2, Ljava/io/FileInputStream;

    invoke-direct {p2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    return-object p2

    :cond_5
    :goto_0
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "/assets/"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1

    :cond_7
    new-instance p1, Lcom/baidu/speech/audio/MicrophoneServer$MicInputStream;

    const/16 v0, 0x3e80

    invoke-direct {p1, p2, v0}, Lcom/baidu/speech/audio/MicrophoneServer$MicInputStream;-><init>(II)V

    return-object p1
.end method


# virtual methods
.method public run()V
    .locals 16

    move-object/from16 v8, p0

    :goto_0
    const/4 v10, 0x1

    const/4 v11, 0x0

    :try_start_0
    iget-wide v0, v8, Lcom/baidu/speech/audio/MicrophoneServer;->sLimit:J

    iget-object v2, v8, Lcom/baidu/speech/audio/MicrophoneServer;->sData:[B

    array-length v3, v2

    int-to-long v3, v3

    rem-long/2addr v0, v3
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    long-to-int v1, v0

    :try_start_1
    iget-object v0, v8, Lcom/baidu/speech/audio/MicrophoneServer;->mIn:Ljava/io/DataInputStream;

    const/16 v3, 0x280

    invoke-virtual {v0, v2, v1, v3}, Ljava/io/DataInputStream;->readFully([BII)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-wide v2, v8, Lcom/baidu/speech/audio/MicrophoneServer;->sLimit:J

    const-wide/16 v4, 0x280

    add-long/2addr v2, v4

    iput-wide v2, v8, Lcom/baidu/speech/audio/MicrophoneServer;->sLimit:J

    add-int/lit16 v12, v1, 0x280

    iget-object v13, v8, Lcom/baidu/speech/audio/MicrophoneServer;->mRemoteOutputStreams:Ljava/util/ArrayList;

    monitor-enter v13
    :try_end_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/4 v14, 0x0

    :goto_1
    :try_start_3
    iget-object v0, v8, Lcom/baidu/speech/audio/MicrophoneServer;->mRemoteOutputStreams:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v14, v0, :cond_0

    iget-object v0, v8, Lcom/baidu/speech/audio/MicrophoneServer;->mRemoteOutputStreams:Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lcom/baidu/speech/audio/MicrophoneServer$SocketWrap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-wide v0, v8, Lcom/baidu/speech/audio/MicrophoneServer;->sLimit:J

    invoke-virtual {v15, v0, v1}, Lcom/baidu/speech/audio/MicrophoneServer$SocketWrap;->getPosition(J)J

    move-result-wide v0

    iget-object v2, v8, Lcom/baidu/speech/audio/MicrophoneServer;->sData:[B

    array-length v2, v2

    int-to-long v2, v2

    rem-long/2addr v0, v2

    long-to-int v5, v0

    invoke-virtual {v15}, Lcom/baidu/speech/audio/MicrophoneServer$SocketWrap;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    sub-int v3, v12, v5

    iget-object v0, v8, Lcom/baidu/speech/audio/MicrophoneServer;->newSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/baidu/speech/audio/MicrophoneServer$2;

    move-object v1, v7

    move-object/from16 v2, p0

    move v6, v12

    move-object v9, v7

    move-object v7, v15

    invoke-direct/range {v1 .. v7}, Lcom/baidu/speech/audio/MicrophoneServer$2;-><init>(Lcom/baidu/speech/audio/MicrophoneServer;ILjava/io/OutputStream;IILcom/baidu/speech/audio/MicrophoneServer$SocketWrap;)V

    invoke-interface {v0, v9}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, v8, Lcom/baidu/speech/audio/MicrophoneServer;->future:Ljava/util/concurrent/Future;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3e8

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v0, v8, Lcom/baidu/speech/audio/MicrophoneServer;->mRemoteOutputStreams:Ljava/util/ArrayList;

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v15}, Lcom/baidu/speech/audio/MicrophoneServer$SocketWrap;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v15}, Lcom/baidu/speech/audio/MicrophoneServer$SocketWrap;->close()V

    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :catch_1
    move-exception v0

    throw v0

    :cond_0
    iget-object v0, v8, Lcom/baidu/speech/audio/MicrophoneServer;->mRemoteOutputStreams:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    iput-boolean v10, v8, Lcom/baidu/speech/audio/MicrophoneServer;->firstStart:Z

    monitor-exit v13

    goto :goto_3

    :cond_1
    monitor-exit v13

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v13
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    iput-boolean v10, v8, Lcom/baidu/speech/audio/MicrophoneServer;->firstStart:Z
    :try_end_6
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_6 .. :try_end_6} :catch_9
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :goto_3
    iget-object v1, v8, Lcom/baidu/speech/audio/MicrophoneServer;->mRemoteOutputStreams:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/baidu/speech/audio/MicrophoneServer;->TAG:Ljava/lang/String;

    new-array v2, v10, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "finally, mRemoteOutputStreams size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v8, Lcom/baidu/speech/audio/MicrophoneServer;->mRemoteOutputStreams:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " firstStart = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v8, Lcom/baidu/speech/audio/MicrophoneServer;->firstStart:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v11

    invoke-static {v0, v2}, Lcom/baidu/speech/utils/LogUtil;->i(Ljava/lang/String;[Ljava/lang/String;)V

    iget-boolean v0, v8, Lcom/baidu/speech/audio/MicrophoneServer;->firstStart:Z

    if-ne v0, v10, :cond_3

    iget-object v0, v8, Lcom/baidu/speech/audio/MicrophoneServer;->mRemoteOutputStreams:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/LocalSocket;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    invoke-virtual {v0}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_4

    :catch_3
    move-exception v0

    :try_start_9
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    :cond_2
    iget-object v0, v8, Lcom/baidu/speech/audio/MicrophoneServer;->mRemoteOutputStreams:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    iget-object v0, v8, Lcom/baidu/speech/audio/MicrophoneServer;->mIn:Ljava/io/DataInputStream;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    const/4 v2, 0x0

    iput-object v2, v8, Lcom/baidu/speech/audio/MicrophoneServer;->mIn:Ljava/io/DataInputStream;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_5

    :catch_4
    move-exception v0

    :try_start_b
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_5
    monitor-exit v1

    goto/16 :goto_e

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    move-object v1, v0

    goto/16 :goto_10

    :catch_5
    :try_start_c
    iput-boolean v10, v8, Lcom/baidu/speech/audio/MicrophoneServer;->firstStart:Z

    iget-object v1, v8, Lcom/baidu/speech/audio/MicrophoneServer;->mRemoteOutputStreams:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    const/4 v2, 0x0

    :goto_6
    :try_start_d
    iget-object v0, v8, Lcom/baidu/speech/audio/MicrophoneServer;->mRemoteOutputStreams:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_5

    iget-object v0, v8, Lcom/baidu/speech/audio/MicrophoneServer;->mRemoteOutputStreams:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/LocalSocket;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :try_start_e
    invoke-virtual {v0}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iget-object v3, v8, Lcom/baidu/speech/audio/MicrophoneServer;->mInfile:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v9, 0x6

    if-eqz v3, :cond_4

    new-array v3, v9, [B

    aput-byte v11, v3, v11

    aput-byte v11, v3, v10

    aput-byte v11, v3, v7

    aput-byte v11, v3, v6

    aput-byte v11, v3, v5

    aput-byte v11, v3, v4

    goto :goto_7

    :cond_4
    new-array v3, v9, [B

    aput-byte v10, v3, v11

    aput-byte v11, v3, v10

    aput-byte v11, v3, v7

    aput-byte v11, v3, v6

    aput-byte v11, v3, v5

    aput-byte v11, v3, v4

    :goto_7
    array-length v4, v3

    invoke-virtual {v0, v3, v11, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    goto :goto_8

    :catch_6
    move-exception v0

    :try_start_f
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_5
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    iget-object v2, v8, Lcom/baidu/speech/audio/MicrophoneServer;->mRemoteOutputStreams:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_10
    sget-object v0, Lcom/baidu/speech/audio/MicrophoneServer;->TAG:Ljava/lang/String;

    new-array v1, v10, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "finally, mRemoteOutputStreams size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v8, Lcom/baidu/speech/audio/MicrophoneServer;->mRemoteOutputStreams:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " firstStart = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v8, Lcom/baidu/speech/audio/MicrophoneServer;->firstStart:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v11

    invoke-static {v0, v1}, Lcom/baidu/speech/utils/LogUtil;->i(Ljava/lang/String;[Ljava/lang/String;)V

    iget-boolean v0, v8, Lcom/baidu/speech/audio/MicrophoneServer;->firstStart:Z

    if-ne v0, v10, :cond_7

    iget-object v0, v8, Lcom/baidu/speech/audio/MicrophoneServer;->mRemoteOutputStreams:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/LocalSocket;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    :try_start_11
    invoke-virtual {v0}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_7
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    goto :goto_9

    :catch_7
    move-exception v0

    :try_start_12
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_9

    :cond_6
    iget-object v0, v8, Lcom/baidu/speech/audio/MicrophoneServer;->mRemoteOutputStreams:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    :try_start_13
    iget-object v0, v8, Lcom/baidu/speech/audio/MicrophoneServer;->mIn:Ljava/io/DataInputStream;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    const/4 v1, 0x0

    iput-object v1, v8, Lcom/baidu/speech/audio/MicrophoneServer;->mIn:Ljava/io/DataInputStream;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_8
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    goto :goto_a

    :catch_8
    move-exception v0

    :try_start_14
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_7
    :goto_a
    monitor-exit v2

    goto/16 :goto_e

    :catchall_3
    move-exception v0

    monitor-exit v2
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    throw v0

    :catchall_4
    move-exception v0

    :try_start_15
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    :try_start_16
    throw v0

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object v1, Lcom/baidu/speech/audio/MicrophoneServer;->sPorts:Ljava/util/HashMap;

    monitor-enter v1
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    :try_start_17
    iget-object v2, v8, Lcom/baidu/speech/audio/MicrophoneServer;->mServerSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v2}, Landroid/net/LocalServerSocket;->close()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_a
    .catchall {:try_start_17 .. :try_end_17} :catchall_5

    goto :goto_b

    :catchall_5
    move-exception v0

    goto/16 :goto_f

    :catch_a
    :try_start_18
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_b
    sget-object v0, Lcom/baidu/speech/audio/MicrophoneServer;->sPorts:Ljava/util/HashMap;

    iget-object v2, v8, Lcom/baidu/speech/audio/MicrophoneServer;->mInfile:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_5

    iget-object v2, v8, Lcom/baidu/speech/audio/MicrophoneServer;->mRemoteOutputStreams:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_19
    sget-object v0, Lcom/baidu/speech/audio/MicrophoneServer;->TAG:Ljava/lang/String;

    new-array v1, v10, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "finally, mRemoteOutputStreams size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v8, Lcom/baidu/speech/audio/MicrophoneServer;->mRemoteOutputStreams:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " firstStart = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v8, Lcom/baidu/speech/audio/MicrophoneServer;->firstStart:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v11

    invoke-static {v0, v1}, Lcom/baidu/speech/utils/LogUtil;->i(Ljava/lang/String;[Ljava/lang/String;)V

    iget-boolean v0, v8, Lcom/baidu/speech/audio/MicrophoneServer;->firstStart:Z

    if-ne v0, v10, :cond_9

    iget-object v0, v8, Lcom/baidu/speech/audio/MicrophoneServer;->mRemoteOutputStreams:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/LocalSocket;
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_6

    :try_start_1a
    invoke-virtual {v0}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_b
    .catchall {:try_start_1a .. :try_end_1a} :catchall_6

    goto :goto_c

    :catch_b
    move-exception v0

    :try_start_1b
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_c

    :cond_8
    iget-object v0, v8, Lcom/baidu/speech/audio/MicrophoneServer;->mRemoteOutputStreams:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_6

    :try_start_1c
    iget-object v0, v8, Lcom/baidu/speech/audio/MicrophoneServer;->mIn:Ljava/io/DataInputStream;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    const/4 v1, 0x0

    iput-object v1, v8, Lcom/baidu/speech/audio/MicrophoneServer;->mIn:Ljava/io/DataInputStream;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_6

    goto :goto_d

    :catch_c
    move-exception v0

    :try_start_1d
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_9
    :goto_d
    monitor-exit v2

    :goto_e
    return-void

    :catchall_6
    move-exception v0

    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_6

    throw v0

    :goto_f
    :try_start_1e
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_5

    :try_start_1f
    throw v0
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_2

    :goto_10
    iget-object v2, v8, Lcom/baidu/speech/audio/MicrophoneServer;->mRemoteOutputStreams:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_20
    sget-object v0, Lcom/baidu/speech/audio/MicrophoneServer;->TAG:Ljava/lang/String;

    new-array v3, v10, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "finally, mRemoteOutputStreams size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v8, Lcom/baidu/speech/audio/MicrophoneServer;->mRemoteOutputStreams:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " firstStart = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v8, Lcom/baidu/speech/audio/MicrophoneServer;->firstStart:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v11

    invoke-static {v0, v3}, Lcom/baidu/speech/utils/LogUtil;->i(Ljava/lang/String;[Ljava/lang/String;)V

    iget-boolean v0, v8, Lcom/baidu/speech/audio/MicrophoneServer;->firstStart:Z

    if-ne v0, v10, :cond_b

    iget-object v0, v8, Lcom/baidu/speech/audio/MicrophoneServer;->mRemoteOutputStreams:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/LocalSocket;
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_7

    :try_start_21
    invoke-virtual {v0}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_d
    .catchall {:try_start_21 .. :try_end_21} :catchall_7

    goto :goto_11

    :catch_d
    move-exception v0

    :try_start_22
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_11

    :cond_a
    iget-object v0, v8, Lcom/baidu/speech/audio/MicrophoneServer;->mRemoteOutputStreams:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_7

    :try_start_23
    iget-object v0, v8, Lcom/baidu/speech/audio/MicrophoneServer;->mIn:Ljava/io/DataInputStream;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    const/4 v3, 0x0

    iput-object v3, v8, Lcom/baidu/speech/audio/MicrophoneServer;->mIn:Ljava/io/DataInputStream;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_e
    .catchall {:try_start_23 .. :try_end_23} :catchall_7

    goto :goto_12

    :catch_e
    move-exception v0

    :try_start_24
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_b
    :goto_12
    monitor-exit v2
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_7

    throw v1

    :catchall_7
    move-exception v0

    :try_start_25
    monitor-exit v2
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_7

    throw v0
.end method
