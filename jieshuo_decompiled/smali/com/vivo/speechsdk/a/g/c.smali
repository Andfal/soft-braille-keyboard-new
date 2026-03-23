.class public Lcom/vivo/speechsdk/a/g/c;
.super Lcom/vivo/speechsdk/a/g/b;
.source "SourceFile"


# static fields
.field private static final n:Ljava/lang/String; = "CacheInterceptor"

.field private static final o:[B


# instance fields
.field private e:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "[B>;"
        }
    .end annotation
.end field

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Lcom/vivo/speechsdk/module/api/volume/IVolumeCalculater;

.field private j:Lcom/vivo/speechsdk/module/api/session/ISessionCollect;

.field private k:Z

.field private l:I

.field private m:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "STOP"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/vivo/speechsdk/a/g/c;->o:[B

    return-void
.end method

.method public constructor <init>(ZZLcom/vivo/speechsdk/module/api/session/ISessionCollect;)V
    .locals 1

    invoke-direct {p0}, Lcom/vivo/speechsdk/a/g/b;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/speechsdk/a/g/c;->f:Z

    iput-boolean v0, p0, Lcom/vivo/speechsdk/a/g/c;->g:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/speechsdk/a/g/c;->h:Z

    iput-boolean v0, p0, Lcom/vivo/speechsdk/a/g/c;->k:Z

    const/16 v0, 0x10

    iput v0, p0, Lcom/vivo/speechsdk/a/g/c;->l:I

    new-instance v0, Lcom/vivo/speechsdk/a/g/c$a;

    invoke-direct {v0, p0}, Lcom/vivo/speechsdk/a/g/c$a;-><init>(Lcom/vivo/speechsdk/a/g/c;)V

    iput-object v0, p0, Lcom/vivo/speechsdk/a/g/c;->m:Ljava/lang/Runnable;

    iput-boolean p2, p0, Lcom/vivo/speechsdk/a/g/c;->k:Z

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getInstance()Lcom/vivo/speechsdk/common/module/ModuleManager;

    move-result-object p1

    iget-object p2, p0, Lcom/vivo/speechsdk/b/e/a;->c:Landroid/os/Bundle;

    const-string v0, "Volume"

    invoke-virtual {p1, v0, p2}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getService(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vivo/speechsdk/module/api/volume/IVolumeCalculater;

    iput-object p1, p0, Lcom/vivo/speechsdk/a/g/c;->i:Lcom/vivo/speechsdk/module/api/volume/IVolumeCalculater;

    :cond_0
    iput-object p3, p0, Lcom/vivo/speechsdk/a/g/c;->j:Lcom/vivo/speechsdk/module/api/session/ISessionCollect;

    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lcom/vivo/speechsdk/a/g/c;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    return-void
.end method

.method static synthetic a(Lcom/vivo/speechsdk/a/g/c;)Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 0

    iget-object p0, p0, Lcom/vivo/speechsdk/a/g/c;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object p0
.end method

.method static synthetic a(Lcom/vivo/speechsdk/a/g/c;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/vivo/speechsdk/b/e/a;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/vivo/speechsdk/a/g/c;II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/vivo/speechsdk/b/e/a;->a(II)V

    return-void
.end method

.method static synthetic a(Lcom/vivo/speechsdk/a/g/c;IIILjava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/vivo/speechsdk/b/e/a;->a(IIILjava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/vivo/speechsdk/a/g/c;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/vivo/speechsdk/a/g/c;->g:Z

    return p1
.end method

.method static synthetic a()[B
    .locals 1

    sget-object v0, Lcom/vivo/speechsdk/a/g/c;->o:[B

    return-object v0
.end method

.method private b(IIILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/a/g/c;->j:Lcom/vivo/speechsdk/module/api/session/ISessionCollect;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/vivo/speechsdk/module/api/session/ISessionCollect;->event(IIILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/vivo/speechsdk/a/g/c;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/vivo/speechsdk/b/e/a;->b(I)V

    return-void
.end method

.method static synthetic b(Lcom/vivo/speechsdk/a/g/c;IIILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/vivo/speechsdk/a/g/c;->b(IIILjava/lang/Object;)V

    return-void
.end method

.method static synthetic b(Lcom/vivo/speechsdk/a/g/c;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/vivo/speechsdk/a/g/c;->f:Z

    return p0
.end method

.method static synthetic c(Lcom/vivo/speechsdk/a/g/c;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/vivo/speechsdk/a/g/c;->g:Z

    return p0
.end method

.method static synthetic d(Lcom/vivo/speechsdk/a/g/c;)Lcom/vivo/speechsdk/module/api/volume/IVolumeCalculater;
    .locals 0

    iget-object p0, p0, Lcom/vivo/speechsdk/a/g/c;->i:Lcom/vivo/speechsdk/module/api/volume/IVolumeCalculater;

    return-object p0
.end method

.method static synthetic e(Lcom/vivo/speechsdk/a/g/c;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/vivo/speechsdk/a/g/c;->k:Z

    return p0
.end method

.method static synthetic f(Lcom/vivo/speechsdk/a/g/c;)I
    .locals 0

    iget p0, p0, Lcom/vivo/speechsdk/a/g/c;->l:I

    return p0
.end method


# virtual methods
.method public bridge synthetic a(ILjava/lang/Object;II)V
    .locals 0

    check-cast p2, [B

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/vivo/speechsdk/a/g/c;->a(I[BII)V

    return-void
.end method

.method public a(I[BII)V
    .locals 5

    const/4 v0, 0x4

    const/4 v1, 0x2

    if-eqz p1, :cond_4

    if-eq p1, v1, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    if-eq p1, v0, :cond_0

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/vivo/speechsdk/a/g/c;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2, p2}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/vivo/speechsdk/a/g/c;->i:Lcom/vivo/speechsdk/module/api/volume/IVolumeCalculater;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lcom/vivo/speechsdk/module/api/volume/IVolumeCalculater;->destroy()V

    :cond_2
    iget-object v2, p0, Lcom/vivo/speechsdk/a/g/c;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    iget-object v2, p0, Lcom/vivo/speechsdk/a/g/c;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    sget-object v3, Lcom/vivo/speechsdk/a/g/c;->o:[B

    invoke-virtual {v2, v3}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/vivo/speechsdk/a/g/c;->e:Ljava/util/concurrent/LinkedBlockingQueue;

    sget-object v3, Lcom/vivo/speechsdk/a/g/c;->o:[B

    invoke-virtual {v2, v3}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/vivo/speechsdk/a/g/c;->i:Lcom/vivo/speechsdk/module/api/volume/IVolumeCalculater;

    if-eqz v2, :cond_5

    invoke-interface {v2}, Lcom/vivo/speechsdk/module/api/volume/IVolumeCalculater;->init()I

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/vivo/speechsdk/a/g/c;->i:Lcom/vivo/speechsdk/module/api/volume/IVolumeCalculater;

    :cond_5
    iget-object v2, p0, Lcom/vivo/speechsdk/b/e/a;->c:Landroid/os/Bundle;

    const-string v3, "key_inner_record"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/vivo/speechsdk/a/g/c;->f:Z

    iget-object v2, p0, Lcom/vivo/speechsdk/b/e/a;->c:Landroid/os/Bundle;

    const-string v3, "key_channel_config"

    invoke-virtual {v2, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/vivo/speechsdk/a/g/c;->l:I

    new-instance v2, Ljava/lang/Thread;

    iget-object v3, p0, Lcom/vivo/speechsdk/a/g/c;->m:Ljava/lang/Runnable;

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    :goto_0
    if-eq v0, p1, :cond_6

    if-eq v1, p1, :cond_6

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/vivo/speechsdk/b/e/a;->b(ILjava/lang/Object;II)V

    :cond_6
    return-void
.end method
