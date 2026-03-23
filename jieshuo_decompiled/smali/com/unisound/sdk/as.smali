.class public Lcom/unisound/sdk/as;
.super Lcom/unisound/sdk/w;
.source "SourceFile"


# static fields
.field protected static e:Lcom/unisound/sdk/as; = null

.field protected static final f:I = 0x960

.field private static g:Ljava/lang/Object;


# instance fields
.field private h:Lcom/unisound/client/IAudioSource;

.field private i:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/unisound/sdk/as;->g:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcn/yunzhisheng/asr/a;Lcom/unisound/sdk/ap;Lcom/unisound/client/IAudioSource;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/unisound/sdk/w;-><init>(Lcn/yunzhisheng/asr/a;Lcom/unisound/sdk/ap;)V

    iput-object p3, p0, Lcom/unisound/sdk/as;->h:Lcom/unisound/client/IAudioSource;

    sput-object p0, Lcom/unisound/sdk/as;->e:Lcom/unisound/sdk/as;

    return-void
.end method

.method public static n()V
    .locals 1

    sget-object v0, Lcom/unisound/sdk/as;->e:Lcom/unisound/sdk/as;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/unisound/sdk/w;->k()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected a()Z
    .locals 1

    const/16 v0, 0x4b0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/unisound/sdk/as;->i:[B

    iget-object v0, p0, Lcom/unisound/sdk/as;->h:Lcom/unisound/client/IAudioSource;

    invoke-interface {v0}, Lcom/unisound/client/IAudioSource;->openAudioIn()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/unisound/sdk/w;->b(Z)V

    invoke-static {v0}, Lcom/unisound/sdk/w;->c(Z)V

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected b()V
    .locals 3

    sget-object v0, Lcom/unisound/sdk/as;->g:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v1}, Lcom/unisound/sdk/w;->b(Z)V

    iget-object v1, p0, Lcom/unisound/sdk/as;->h:Lcom/unisound/client/IAudioSource;

    invoke-interface {v1}, Lcom/unisound/client/IAudioSource;->closeAudioIn()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/unisound/sdk/as;->i:[B

    sget-object v2, Lcom/unisound/sdk/as;->e:Lcom/unisound/sdk/as;

    if-ne v2, p0, :cond_0

    sput-object v1, Lcom/unisound/sdk/as;->e:Lcom/unisound/sdk/as;

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected c()[B
    .locals 4

    const-string v0, "Record Read     "

    invoke-static {v0}, Lcom/unisound/common/r;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/sdk/as;->h:Lcom/unisound/client/IAudioSource;

    iget-object v1, p0, Lcom/unisound/sdk/as;->i:[B

    array-length v2, v1

    invoke-interface {v0, v1, v2}, Lcom/unisound/client/IAudioSource;->readData([BI)I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    iget-object v2, p0, Lcom/unisound/sdk/as;->i:[B

    invoke-static {v2, v1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    return-object v0

    :cond_0
    const/16 v2, -0x9

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1

    iput-boolean v3, p0, Lcom/unisound/sdk/w;->a:Z

    invoke-virtual {p0}, Lcom/unisound/sdk/w;->d()V

    const-string v0, "RecordingThread"

    const-string v2, "stop signal received"

    invoke-static {v0, v2}, Lcom/unisound/common/r;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/sdk/w;->d:[B

    invoke-static {v0, v1, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    return-object v0

    :cond_1
    if-gez v0, :cond_2

    iput-boolean v3, p0, Lcom/unisound/sdk/w;->a:Z

    invoke-virtual {p0}, Lcom/unisound/sdk/w;->d()V

    invoke-virtual {p0}, Lcom/unisound/sdk/w;->i()V

    iget-object v0, p0, Lcom/unisound/sdk/w;->d:[B

    invoke-static {v0, v1, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method
