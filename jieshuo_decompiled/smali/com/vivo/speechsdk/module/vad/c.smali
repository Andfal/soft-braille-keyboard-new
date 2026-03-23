.class public Lcom/vivo/speechsdk/module/vad/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vivo/speechsdk/module/api/vad/IVadService;


# static fields
.field public static final A:I = 0x200

.field public static final B:I = 0x500

.field private static final C:I = 0x1388

.field private static final D:I = 0x3e8

.field private static final E:I = 0x3

.field private static final F:I = 0x1

.field private static final G:I = 0x0

.field private static final w:Ljava/lang/String; = "VadServiceImpl"

.field private static final x:[B

.field private static final y:[B

.field public static final z:I = 0x400


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile b:[I

.field private c:I

.field private final d:I

.field private final e:Ljava/lang/String;

.field private f:Z

.field private g:I

.field private h:I

.field private final i:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "[B>;"
        }
    .end annotation
.end field

.field private final j:Ljava/nio/ByteBuffer;

.field private final k:Ljava/nio/ByteBuffer;

.field private final l:Lcom/vivo/speechsdk/module/vad/VadAudio;

.field private m:Lcom/vivo/speechsdk/module/vad/b;

.field private final n:Landroid/os/Looper;

.field private o:I

.field private p:I

.field private q:Z

.field private final r:Lcom/vivo/speechsdk/module/vad/d;

.field private final s:I

.field private final t:Z

.field private u:Ljava/lang/Thread;

.field private v:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "STOP"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/vivo/speechsdk/module/vad/c;->x:[B

    const-string v0, "DESTROY"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/vivo/speechsdk/module/vad/c;->y:[B

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Landroid/os/Looper;II)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/vivo/speechsdk/module/vad/c;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/vivo/speechsdk/module/vad/c;->b:[I

    const/4 v0, -0x1

    iput v0, p0, Lcom/vivo/speechsdk/module/vad/c;->c:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/speechsdk/module/vad/c;->f:Z

    iput v0, p0, Lcom/vivo/speechsdk/module/vad/c;->h:I

    iput-boolean v0, p0, Lcom/vivo/speechsdk/module/vad/c;->q:Z

    new-instance v1, Lcom/vivo/speechsdk/module/vad/c$a;

    invoke-direct {v1, p0}, Lcom/vivo/speechsdk/module/vad/c$a;-><init>(Lcom/vivo/speechsdk/module/vad/c;)V

    iput-object v1, p0, Lcom/vivo/speechsdk/module/vad/c;->v:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/vivo/speechsdk/module/vad/c;->e:Ljava/lang/String;

    const-string v1, "meet_online"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const-string v1, "meet_offline"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lcom/vivo/speechsdk/module/vad/c;->q:Z

    iput-boolean p1, p0, Lcom/vivo/speechsdk/module/vad/c;->f:Z

    iput p5, p0, Lcom/vivo/speechsdk/module/vad/c;->s:I

    iput p4, p0, Lcom/vivo/speechsdk/module/vad/c;->h:I

    iput-object p3, p0, Lcom/vivo/speechsdk/module/vad/c;->n:Landroid/os/Looper;

    invoke-static {}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getInstance()Lcom/vivo/speechsdk/common/module/ModuleManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getSpeechContext()Lcom/vivo/speechsdk/b/c;

    move-result-object p2

    invoke-virtual {p2}, Lcom/vivo/speechsdk/b/c;->e()Z

    move-result p2

    iput-boolean p2, p0, Lcom/vivo/speechsdk/module/vad/c;->t:Z

    const/16 p2, 0x400

    const/16 p3, 0x200

    if-eqz p1, :cond_2

    if-ne p5, v2, :cond_3

    goto :goto_0

    :cond_2
    if-nez p4, :cond_4

    :cond_3
    iput p2, p0, Lcom/vivo/speechsdk/module/vad/c;->d:I

    goto :goto_1

    :cond_4
    :goto_0
    iput p3, p0, Lcom/vivo/speechsdk/module/vad/c;->d:I

    :goto_1
    iget p1, p0, Lcom/vivo/speechsdk/module/vad/c;->d:I

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/vivo/speechsdk/module/vad/c;->j:Ljava/nio/ByteBuffer;

    const/16 p2, 0x500

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    iput-object p2, p0, Lcom/vivo/speechsdk/module/vad/c;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lcom/vivo/speechsdk/module/vad/c;->i:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance p1, Lcom/vivo/speechsdk/module/vad/VadAudio;

    invoke-direct {p1}, Lcom/vivo/speechsdk/module/vad/VadAudio;-><init>()V

    iput-object p1, p0, Lcom/vivo/speechsdk/module/vad/c;->l:Lcom/vivo/speechsdk/module/vad/VadAudio;

    new-instance p1, Lcom/vivo/speechsdk/module/vad/d;

    invoke-direct {p1}, Lcom/vivo/speechsdk/module/vad/d;-><init>()V

    iput-object p1, p0, Lcom/vivo/speechsdk/module/vad/c;->r:Lcom/vivo/speechsdk/module/vad/d;

    return-void
.end method

.method static synthetic a(Lcom/vivo/speechsdk/module/vad/c;I)I
    .locals 0

    iput p1, p0, Lcom/vivo/speechsdk/module/vad/c;->p:I

    return p1
.end method

.method static synthetic a(Lcom/vivo/speechsdk/module/vad/c;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/vivo/speechsdk/module/vad/c;->e:Ljava/lang/String;

    return-object p0
.end method

.method private a(I[B)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VADCheck VSFPA FLAG NOT 0 OR 1, VADCheck=="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VadServiceImpl"

    invoke-static {v0, p1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget v2, p0, Lcom/vivo/speechsdk/module/vad/c;->c:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/vivo/speechsdk/module/vad/c;->c:I

    const/4 v0, 0x3

    if-lt v2, v0, :cond_2

    iput v1, p0, Lcom/vivo/speechsdk/module/vad/c;->c:I

    :cond_2
    iget-object v0, p0, Lcom/vivo/speechsdk/module/vad/c;->b:[I

    iget v2, p0, Lcom/vivo/speechsdk/module/vad/c;->c:I

    aput p1, v0, v2

    :goto_1
    iget-object p1, p0, Lcom/vivo/speechsdk/module/vad/c;->m:Lcom/vivo/speechsdk/module/vad/b;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/vivo/speechsdk/module/vad/c;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p1

    array-length v0, p2

    add-int/2addr v0, p1

    new-array v2, v0, [B

    if-eqz p1, :cond_3

    iget-object v3, p0, Lcom/vivo/speechsdk/module/vad/c;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-static {v3, v1, v2, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/vivo/speechsdk/module/vad/c;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :cond_3
    array-length v3, p2

    invoke-static {p2, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p1, 0x0

    :goto_2
    if-lez v0, :cond_5

    const/16 p2, 0x500

    if-lt v0, p2, :cond_4

    iget-object v3, p0, Lcom/vivo/speechsdk/module/vad/c;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v2, p1, p2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    add-int/lit16 v0, v0, -0x500

    add-int/lit16 p1, p1, 0x500

    iget-object p2, p0, Lcom/vivo/speechsdk/module/vad/c;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    array-length v3, p2

    new-array v3, v3, [B

    array-length v4, p2

    invoke-static {p2, v1, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p2, p0, Lcom/vivo/speechsdk/module/vad/c;->m:Lcom/vivo/speechsdk/module/vad/b;

    invoke-direct {p0}, Lcom/vivo/speechsdk/module/vad/c;->c()I

    move-result v4

    invoke-virtual {p2, v3, v4}, Lcom/vivo/speechsdk/module/vad/b;->onVadData([BI)V

    iget-object p2, p0, Lcom/vivo/speechsdk/module/vad/c;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_2

    :cond_4
    iget-object p2, p0, Lcom/vivo/speechsdk/module/vad/c;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, v2, p1, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    goto :goto_2

    :cond_5
    return-void
.end method

.method static synthetic a(Lcom/vivo/speechsdk/module/vad/c;[B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/vivo/speechsdk/module/vad/c;->a([B)V

    return-void
.end method

.method private a([B)V
    .locals 7

    if-eqz p1, :cond_9

    iget-object v0, p0, Lcom/vivo/speechsdk/module/vad/c;->j:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    array-length v1, p1

    add-int/2addr v1, v0

    new-array v2, v1, [B

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/vivo/speechsdk/module/vad/c;->j:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-static {v4, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lcom/vivo/speechsdk/module/vad/c;->j:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :cond_0
    array-length v4, p1

    invoke-static {p1, v3, v2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p1, 0x0

    :goto_0
    if-lez v1, :cond_8

    iget v0, p0, Lcom/vivo/speechsdk/module/vad/c;->d:I

    if-lt v1, v0, :cond_7

    iget-object v4, p0, Lcom/vivo/speechsdk/module/vad/c;->j:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v2, p1, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/vivo/speechsdk/module/vad/c;->d:I

    sub-int/2addr v1, v0

    add-int/2addr p1, v0

    iget-object v0, p0, Lcom/vivo/speechsdk/module/vad/c;->j:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    iget-object v4, p0, Lcom/vivo/speechsdk/module/vad/c;->r:Lcom/vivo/speechsdk/module/vad/d;

    invoke-static {v0}, Lcom/vivo/speechsdk/common/utils/ByteUtils;->byteToShort([B)[S

    move-result-object v5

    iget-object v6, p0, Lcom/vivo/speechsdk/module/vad/c;->l:Lcom/vivo/speechsdk/module/vad/VadAudio;

    invoke-virtual {v4, v5, v6}, Lcom/vivo/speechsdk/module/vad/d;->check([SLcom/vivo/speechsdk/module/vad/VadAudio;)V

    iget-boolean v4, p0, Lcom/vivo/speechsdk/module/vad/c;->q:Z

    if-eqz v4, :cond_3

    iget-object v0, p0, Lcom/vivo/speechsdk/module/vad/c;->l:Lcom/vivo/speechsdk/module/vad/VadAudio;

    invoke-virtual {v0}, Lcom/vivo/speechsdk/module/vad/VadAudio;->getBeginMs()I

    move-result v0

    iget-object v4, p0, Lcom/vivo/speechsdk/module/vad/c;->l:Lcom/vivo/speechsdk/module/vad/VadAudio;

    invoke-virtual {v4}, Lcom/vivo/speechsdk/module/vad/VadAudio;->getEndMs()I

    move-result v4

    if-ltz v0, :cond_1

    iget-object v5, p0, Lcom/vivo/speechsdk/module/vad/c;->m:Lcom/vivo/speechsdk/module/vad/b;

    if-eqz v5, :cond_1

    const/4 v6, 0x4

    invoke-virtual {v5, v6, v0}, Lcom/vivo/speechsdk/module/vad/b;->onVadEvent(II)V

    :cond_1
    if-ltz v4, :cond_2

    iget-object v0, p0, Lcom/vivo/speechsdk/module/vad/c;->m:Lcom/vivo/speechsdk/module/vad/b;

    if-eqz v0, :cond_2

    const/4 v5, 0x5

    invoke-virtual {v0, v5, v4}, Lcom/vivo/speechsdk/module/vad/b;->onVadEvent(II)V

    :cond_2
    iget-object v0, p0, Lcom/vivo/speechsdk/module/vad/c;->m:Lcom/vivo/speechsdk/module/vad/b;

    if-eqz v0, :cond_6

    iget-object v4, p0, Lcom/vivo/speechsdk/module/vad/c;->l:Lcom/vivo/speechsdk/module/vad/VadAudio;

    invoke-virtual {v4}, Lcom/vivo/speechsdk/module/vad/VadAudio;->getSilence()S

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v4}, Lcom/vivo/speechsdk/module/vad/b;->onVadData([BI)V

    goto :goto_2

    :cond_3
    iget-object v4, p0, Lcom/vivo/speechsdk/module/vad/c;->l:Lcom/vivo/speechsdk/module/vad/VadAudio;

    invoke-virtual {v4}, Lcom/vivo/speechsdk/module/vad/VadAudio;->getVadFlag()I

    move-result v4

    iget-object v5, p0, Lcom/vivo/speechsdk/module/vad/c;->l:Lcom/vivo/speechsdk/module/vad/VadAudio;

    invoke-virtual {v5}, Lcom/vivo/speechsdk/module/vad/VadAudio;->getVadFlag()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_5

    iget-object v5, p0, Lcom/vivo/speechsdk/module/vad/c;->r:Lcom/vivo/speechsdk/module/vad/d;

    invoke-virtual {v5}, Lcom/vivo/speechsdk/module/vad/d;->c()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v0, p0, Lcom/vivo/speechsdk/module/vad/c;->l:Lcom/vivo/speechsdk/module/vad/VadAudio;

    invoke-virtual {v0}, Lcom/vivo/speechsdk/module/vad/VadAudio;->getVadData()[S

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/speechsdk/common/utils/ByteUtils;->shortToByte([S)[B

    move-result-object v0

    :cond_4
    invoke-direct {p0, v4, v0}, Lcom/vivo/speechsdk/module/vad/c;->a(I[B)V

    goto :goto_1

    :cond_5
    const-string v0, "VadServiceImpl"

    const-string v4, "vad flag -1"

    invoke-static {v0, v4}, Lcom/vivo/speechsdk/common/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/vivo/speechsdk/module/vad/c;->l:Lcom/vivo/speechsdk/module/vad/VadAudio;

    invoke-virtual {v0}, Lcom/vivo/speechsdk/module/vad/VadAudio;->getFake2ChannelFlag()I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_6

    iput v4, p0, Lcom/vivo/speechsdk/module/vad/c;->g:I

    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/vivo/speechsdk/module/vad/c;->l:Lcom/vivo/speechsdk/module/vad/VadAudio;

    invoke-virtual {v0}, Lcom/vivo/speechsdk/module/vad/VadAudio;->clear()V

    iget-object v0, p0, Lcom/vivo/speechsdk/module/vad/c;->j:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/vivo/speechsdk/module/vad/c;->j:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2, p1, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_8
    iget-object p1, p0, Lcom/vivo/speechsdk/module/vad/c;->j:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    :cond_9
    return-void
.end method

.method static synthetic a()[B
    .locals 1

    sget-object v0, Lcom/vivo/speechsdk/module/vad/c;->x:[B

    return-object v0
.end method

.method static synthetic b(Lcom/vivo/speechsdk/module/vad/c;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/vivo/speechsdk/module/vad/c;->f:Z

    return p0
.end method

.method static synthetic b()[B
    .locals 1

    sget-object v0, Lcom/vivo/speechsdk/module/vad/c;->y:[B

    return-object v0
.end method

.method private c()I
    .locals 4

    iget-object v0, p0, Lcom/vivo/speechsdk/module/vad/c;->b:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/module/vad/c;->b:[I

    aget v0, v0, v2

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/module/vad/c;->b:[I

    const/4 v3, 0x2

    aget v0, v0, v3

    if-ne v0, v2, :cond_0

    return v2

    :cond_0
    return v1
.end method

.method static synthetic c(Lcom/vivo/speechsdk/module/vad/c;)Ljava/nio/ByteBuffer;
    .locals 0

    iget-object p0, p0, Lcom/vivo/speechsdk/module/vad/c;->j:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method static synthetic d(Lcom/vivo/speechsdk/module/vad/c;)I
    .locals 0

    iget p0, p0, Lcom/vivo/speechsdk/module/vad/c;->d:I

    return p0
.end method

.method static synthetic e(Lcom/vivo/speechsdk/module/vad/c;)Ljava/nio/ByteBuffer;
    .locals 0

    iget-object p0, p0, Lcom/vivo/speechsdk/module/vad/c;->k:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method static synthetic f(Lcom/vivo/speechsdk/module/vad/c;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/vivo/speechsdk/module/vad/c;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic g(Lcom/vivo/speechsdk/module/vad/c;)I
    .locals 0

    iget p0, p0, Lcom/vivo/speechsdk/module/vad/c;->s:I

    return p0
.end method

.method static synthetic h(Lcom/vivo/speechsdk/module/vad/c;)I
    .locals 0

    iget p0, p0, Lcom/vivo/speechsdk/module/vad/c;->g:I

    return p0
.end method

.method static synthetic i(Lcom/vivo/speechsdk/module/vad/c;)I
    .locals 0

    iget p0, p0, Lcom/vivo/speechsdk/module/vad/c;->h:I

    return p0
.end method

.method static synthetic j(Lcom/vivo/speechsdk/module/vad/c;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/vivo/speechsdk/module/vad/c;->t:Z

    return p0
.end method

.method static synthetic k(Lcom/vivo/speechsdk/module/vad/c;)Lcom/vivo/speechsdk/module/vad/d;
    .locals 0

    iget-object p0, p0, Lcom/vivo/speechsdk/module/vad/c;->r:Lcom/vivo/speechsdk/module/vad/d;

    return-object p0
.end method

.method static synthetic l(Lcom/vivo/speechsdk/module/vad/c;)Lcom/vivo/speechsdk/module/vad/b;
    .locals 0

    iget-object p0, p0, Lcom/vivo/speechsdk/module/vad/c;->m:Lcom/vivo/speechsdk/module/vad/b;

    return-object p0
.end method

.method static synthetic m(Lcom/vivo/speechsdk/module/vad/c;)I
    .locals 0

    iget p0, p0, Lcom/vivo/speechsdk/module/vad/c;->p:I

    return p0
.end method

.method static synthetic n(Lcom/vivo/speechsdk/module/vad/c;)Landroid/os/Looper;
    .locals 0

    iget-object p0, p0, Lcom/vivo/speechsdk/module/vad/c;->n:Landroid/os/Looper;

    return-object p0
.end method

.method static synthetic o(Lcom/vivo/speechsdk/module/vad/c;)I
    .locals 0

    iget p0, p0, Lcom/vivo/speechsdk/module/vad/c;->o:I

    return p0
.end method

.method static synthetic p(Lcom/vivo/speechsdk/module/vad/c;)Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 0

    iget-object p0, p0, Lcom/vivo/speechsdk/module/vad/c;->i:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object p0
.end method


# virtual methods
.method public check([B)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/vivo/speechsdk/module/vad/c;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/vad/c;->i:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public destroy()V
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/module/vad/c;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/module/vad/c;->i:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    iget-object v0, p0, Lcom/vivo/speechsdk/module/vad/c;->i:Ljava/util/concurrent/LinkedBlockingQueue;

    sget-object v1, Lcom/vivo/speechsdk/module/vad/c;->y:[B

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/vivo/speechsdk/module/vad/c;->r:Lcom/vivo/speechsdk/module/vad/d;

    invoke-virtual {v0}, Lcom/vivo/speechsdk/module/vad/d;->clear()V

    :goto_0
    return-void
.end method

.method public event(I)V
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/module/vad/c;->m:Lcom/vivo/speechsdk/module/vad/b;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    invoke-virtual {v0}, Lcom/vivo/speechsdk/module/vad/b;->a()V

    :cond_0
    return-void
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/vad/c;->r:Lcom/vivo/speechsdk/module/vad/d;

    invoke-virtual {v0}, Lcom/vivo/speechsdk/module/vad/d;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public start(Landroid/os/Bundle;Lcom/vivo/speechsdk/module/api/vad/VadListener;)I
    .locals 3

    iget-object v0, p0, Lcom/vivo/speechsdk/module/vad/c;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "key_vad_front_time"

    const/16 v1, 0x1388

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/vivo/speechsdk/module/vad/c;->o:I

    const-string v0, "key_vad_end_time"

    const/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/vivo/speechsdk/module/vad/c;->p:I

    new-instance p1, Lcom/vivo/speechsdk/module/vad/b;

    invoke-direct {p1, p2}, Lcom/vivo/speechsdk/module/vad/b;-><init>(Lcom/vivo/speechsdk/module/api/vad/VadListener;)V

    iput-object p1, p0, Lcom/vivo/speechsdk/module/vad/c;->m:Lcom/vivo/speechsdk/module/vad/b;

    new-instance p1, Ljava/lang/Thread;

    iget-object p2, p0, Lcom/vivo/speechsdk/module/vad/c;->v:Ljava/lang/Runnable;

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/vivo/speechsdk/module/vad/c;->u:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_0
    return v2
.end method

.method public stop()V
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/module/vad/c;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/module/vad/c;->i:Ljava/util/concurrent/LinkedBlockingQueue;

    sget-object v1, Lcom/vivo/speechsdk/module/vad/c;->x:[B

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
