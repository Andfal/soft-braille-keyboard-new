.class public Lcom/vivo/speechsdk/b/h/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static g:I

.field private static final h:Ljava/lang/Object;

.field private static final i:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/vivo/speechsdk/b/h/b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:[B

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/vivo/speechsdk/b/h/b;->h:Ljava/lang/Object;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/vivo/speechsdk/b/h/b;->i:Ljava/util/LinkedList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([BIIIIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vivo/speechsdk/b/h/b;->a:[B

    iput p2, p0, Lcom/vivo/speechsdk/b/h/b;->b:I

    iput p3, p0, Lcom/vivo/speechsdk/b/h/b;->c:I

    iput p4, p0, Lcom/vivo/speechsdk/b/h/b;->d:I

    iput p5, p0, Lcom/vivo/speechsdk/b/h/b;->e:I

    iput-boolean p6, p0, Lcom/vivo/speechsdk/b/h/b;->f:Z

    return-void
.end method

.method public constructor <init>([BIIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vivo/speechsdk/b/h/b;->a:[B

    iput p2, p0, Lcom/vivo/speechsdk/b/h/b;->b:I

    iput p3, p0, Lcom/vivo/speechsdk/b/h/b;->c:I

    iput-boolean p4, p0, Lcom/vivo/speechsdk/b/h/b;->f:Z

    return-void
.end method

.method public static a()V
    .locals 2

    sget-object v0, Lcom/vivo/speechsdk/b/h/b;->h:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput v1, Lcom/vivo/speechsdk/b/h/b;->g:I

    sget-object v1, Lcom/vivo/speechsdk/b/h/b;->i:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static a(Lcom/vivo/speechsdk/b/h/b;)V
    .locals 2

    sget-object v0, Lcom/vivo/speechsdk/b/h/b;->h:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p0, :cond_0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/vivo/speechsdk/b/h/b;->a:[B

    const/4 v1, 0x0

    iput v1, p0, Lcom/vivo/speechsdk/b/h/b;->b:I

    iput v1, p0, Lcom/vivo/speechsdk/b/h/b;->c:I

    iput v1, p0, Lcom/vivo/speechsdk/b/h/b;->d:I

    iput v1, p0, Lcom/vivo/speechsdk/b/h/b;->e:I

    iput-boolean v1, p0, Lcom/vivo/speechsdk/b/h/b;->f:Z

    sget-object v1, Lcom/vivo/speechsdk/b/h/b;->i:Ljava/util/LinkedList;

    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget p0, Lcom/vivo/speechsdk/b/h/b;->g:I

    add-int/lit8 p0, p0, 0x1

    sput p0, Lcom/vivo/speechsdk/b/h/b;->g:I

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static b()Lcom/vivo/speechsdk/b/h/b;
    .locals 2

    sget-object v0, Lcom/vivo/speechsdk/b/h/b;->h:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget v1, Lcom/vivo/speechsdk/b/h/b;->g:I

    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/vivo/speechsdk/b/h/b;->g:I

    sget-object v1, Lcom/vivo/speechsdk/b/h/b;->i:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vivo/speechsdk/b/h/b;

    monitor-exit v0

    return-object v1

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lcom/vivo/speechsdk/b/h/b;

    invoke-direct {v0}, Lcom/vivo/speechsdk/b/h/b;-><init>()V

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
