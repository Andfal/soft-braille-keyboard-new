.class public Lcom/vivo/speechsdk/module/record/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vivo/speechsdk/module/api/record/IRecord;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/speechsdk/module/record/a$b;
    }
.end annotation


# static fields
.field private static final k:Ljava/lang/String; = "FileRecord"

.field public static final l:I = 0x1

.field public static final m:I = 0x0

.field private static final n:I = 0x64

.field private static final o:I = 0x65

.field private static final p:I = 0x66

.field private static final q:I = 0x67

.field private static final r:I = 0x68

.field private static final s:I = 0x69

.field private static final t:I = 0x2c

.field public static final u:I = 0x28

.field private static final v:I = 0x7d0


# instance fields
.field private volatile a:I

.field private b:J

.field private c:I

.field private d:I

.field private e:Ljava/lang/String;

.field private volatile f:I

.field private g:Lcom/vivo/speechsdk/module/api/record/RecordListener;

.field private h:Ljava/lang/Thread;

.field private i:Landroid/content/Context;

.field private final j:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IIII)V
    .locals 10

    const/16 v7, 0x28

    const-wide/16 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v9}, Lcom/vivo/speechsdk/module/record/a;-><init>(Landroid/content/Context;Ljava/lang/String;IIIIIJ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IIIIIJ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x28

    iput v0, p0, Lcom/vivo/speechsdk/module/record/a;->a:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vivo/speechsdk/module/record/a;->b:J

    const/16 v0, 0x500

    iput v0, p0, Lcom/vivo/speechsdk/module/record/a;->c:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/vivo/speechsdk/module/record/a;->d:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/vivo/speechsdk/module/record/a;->f:I

    new-instance v0, Lcom/vivo/speechsdk/module/record/a$a;

    invoke-direct {v0, p0}, Lcom/vivo/speechsdk/module/record/a$a;-><init>(Lcom/vivo/speechsdk/module/record/a;)V

    iput-object v0, p0, Lcom/vivo/speechsdk/module/record/a;->j:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/vivo/speechsdk/module/record/a;->i:Landroid/content/Context;

    iput p3, p0, Lcom/vivo/speechsdk/module/record/a;->d:I

    iput-object p2, p0, Lcom/vivo/speechsdk/module/record/a;->e:Ljava/lang/String;

    iput p7, p0, Lcom/vivo/speechsdk/module/record/a;->a:I

    iput-wide p8, p0, Lcom/vivo/speechsdk/module/record/a;->b:J

    mul-int p4, p4, p5

    mul-int p4, p4, p6

    div-int/lit8 p4, p4, 0x8

    div-int/lit8 p4, p4, 0x19

    iput p4, p0, Lcom/vivo/speechsdk/module/record/a;->c:I

    return-void
.end method

.method static synthetic a(Lcom/vivo/speechsdk/module/record/a;)I
    .locals 0

    iget p0, p0, Lcom/vivo/speechsdk/module/record/a;->f:I

    return p0
.end method

.method static synthetic a(Lcom/vivo/speechsdk/module/record/a;I)I
    .locals 0

    iput p1, p0, Lcom/vivo/speechsdk/module/record/a;->f:I

    return p1
.end method

.method static synthetic b(Lcom/vivo/speechsdk/module/record/a;)Lcom/vivo/speechsdk/module/api/record/RecordListener;
    .locals 0

    iget-object p0, p0, Lcom/vivo/speechsdk/module/record/a;->g:Lcom/vivo/speechsdk/module/api/record/RecordListener;

    return-object p0
.end method

.method static synthetic c(Lcom/vivo/speechsdk/module/record/a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/vivo/speechsdk/module/record/a;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/vivo/speechsdk/module/record/a;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/vivo/speechsdk/module/record/a;->i:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic e(Lcom/vivo/speechsdk/module/record/a;)I
    .locals 0

    iget p0, p0, Lcom/vivo/speechsdk/module/record/a;->d:I

    return p0
.end method

.method static synthetic f(Lcom/vivo/speechsdk/module/record/a;)J
    .locals 2

    iget-wide v0, p0, Lcom/vivo/speechsdk/module/record/a;->b:J

    return-wide v0
.end method

.method static synthetic g(Lcom/vivo/speechsdk/module/record/a;)I
    .locals 0

    iget p0, p0, Lcom/vivo/speechsdk/module/record/a;->c:I

    return p0
.end method

.method static synthetic h(Lcom/vivo/speechsdk/module/record/a;)I
    .locals 0

    iget p0, p0, Lcom/vivo/speechsdk/module/record/a;->a:I

    return p0
.end method

.method static synthetic i(Lcom/vivo/speechsdk/module/record/a;)Ljava/lang/Thread;
    .locals 0

    iget-object p0, p0, Lcom/vivo/speechsdk/module/record/a;->h:Ljava/lang/Thread;

    return-object p0
.end method


# virtual methods
.method public declared-synchronized init()I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/vivo/speechsdk/module/record/a;->f:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    const/16 v0, 0x65

    iput v0, p0, Lcom/vivo/speechsdk/module/record/a;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isInit()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/vivo/speechsdk/module/record/a;->f:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/vivo/speechsdk/module/record/a;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v1, 0x69

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized release()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/vivo/speechsdk/module/record/a;->f:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_0

    const/16 v0, 0x69

    iput v0, p0, Lcom/vivo/speechsdk/module/record/a;->f:I

    iget-object v0, p0, Lcom/vivo/speechsdk/module/record/a;->h:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    :try_start_1
    monitor-enter v0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v1, p0, Lcom/vivo/speechsdk/module/record/a;->h:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v0, p0, Lcom/vivo/speechsdk/module/record/a;->h:Ljava/lang/Thread;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Thread;->join(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catch_0
    move-exception v0

    :try_start_6
    const-string v1, "FileRecord"

    const-string v2, "join failed !!!"

    invoke-static {v1, v2, v0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setRecordBufferSize(I)V
    .locals 0

    iput p1, p0, Lcom/vivo/speechsdk/module/record/a;->c:I

    return-void
.end method

.method public setRecordInterval(I)V
    .locals 1

    iput p1, p0, Lcom/vivo/speechsdk/module/record/a;->a:I

    iget-object p1, p0, Lcom/vivo/speechsdk/module/record/a;->h:Ljava/lang/Thread;

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/vivo/speechsdk/module/record/a;->a:I

    if-ltz p1, :cond_0

    iget-object p1, p0, Lcom/vivo/speechsdk/module/record/a;->h:Ljava/lang/Thread;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/vivo/speechsdk/module/record/a;->h:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public declared-synchronized start(Lcom/vivo/speechsdk/module/api/record/RecordListener;)I
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/vivo/speechsdk/module/record/a;->g:Lcom/vivo/speechsdk/module/api/record/RecordListener;

    iget p1, p0, Lcom/vivo/speechsdk/module/record/a;->f:I

    const/16 v0, 0x65

    if-eq p1, v0, :cond_0

    iget p1, p0, Lcom/vivo/speechsdk/module/record/a;->f:I

    const/16 v0, 0x68

    if-ne p1, v0, :cond_1

    :cond_0
    const/16 p1, 0x66

    iput p1, p0, Lcom/vivo/speechsdk/module/record/a;->f:I

    new-instance p1, Ljava/lang/Thread;

    iget-object v0, p0, Lcom/vivo/speechsdk/module/record/a;->j:Ljava/lang/Runnable;

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/vivo/speechsdk/module/record/a;->h:Ljava/lang/Thread;

    const-string v0, "FileRecord"

    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/vivo/speechsdk/module/record/a;->h:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized stop()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/vivo/speechsdk/module/record/a;->f:I

    const/16 v1, 0x69

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/vivo/speechsdk/module/record/a;->f:I

    const/16 v1, 0x68

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/vivo/speechsdk/module/record/a;->f:I

    const/16 v2, 0x66

    if-ne v0, v2, :cond_0

    const/16 v0, 0x67

    iput v0, p0, Lcom/vivo/speechsdk/module/record/a;->f:I

    goto :goto_0

    :cond_0
    iput v1, p0, Lcom/vivo/speechsdk/module/record/a;->f:I

    :goto_0
    iget-object v0, p0, Lcom/vivo/speechsdk/module/record/a;->h:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_1

    :try_start_1
    monitor-enter v0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v1, p0, Lcom/vivo/speechsdk/module/record/a;->h:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v0, p0, Lcom/vivo/speechsdk/module/record/a;->h:Ljava/lang/Thread;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Thread;->join(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catch_0
    move-exception v0

    :try_start_6
    const-string v1, "FileRecord"

    const-string v2, "join failed !!!"

    invoke-static {v1, v2, v0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method
