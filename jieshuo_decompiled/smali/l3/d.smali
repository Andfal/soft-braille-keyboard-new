.class public final Ll3/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly2/f0;
.implements Ll3/g$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll3/d$c;,
        Ll3/d$a;,
        Ll3/d$d;,
        Ll3/d$e;,
        Ll3/d$b;
    }
.end annotation


# static fields
.field public static final A:Ll3/d$b;

.field private static final z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ly2/a0;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Ly2/Call;

.field private c:Lc3/a;

.field private d:Ll3/g;

.field private e:Ll3/h;

.field private f:Lc3/d;

.field private g:Ljava/lang/String;

.field private h:Ll3/d$d;

.field private final i:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lm3/h;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private k:J

.field private l:Z

.field private m:I

.field private n:Ljava/lang/String;

.field private o:Z

.field private p:I

.field private q:I

.field private r:I

.field private s:Z

.field private final t:Ly2/Request;

.field private final u:Ly2/g0;

.field private final v:Ljava/util/Random;

.field private final w:J

.field private x:Ll3/e;

.field private y:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ll3/d$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ll3/d$b;-><init>(Lt2/d;)V

    sput-object v0, Ll3/d;->A:Ll3/d$b;

    sget-object v0, Ly2/a0;->c:Ly2/a0;

    invoke-static {v0}, Lo2/k;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Ll3/d;->z:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lc3/e;Ly2/Request;Ly2/g0;Ljava/util/Random;JLl3/e;J)V
    .locals 1

    const-string v0, "taskRunner"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "originalRequest"

    invoke-static {p2, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p3, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "random"

    invoke-static {p4, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ll3/d;->t:Ly2/Request;

    iput-object p3, p0, Ll3/d;->u:Ly2/g0;

    iput-object p4, p0, Ll3/d;->v:Ljava/util/Random;

    iput-wide p5, p0, Ll3/d;->w:J

    iput-object p7, p0, Ll3/d;->x:Ll3/e;

    iput-wide p8, p0, Ll3/d;->y:J

    invoke-virtual {p1}, Lc3/e;->i()Lc3/d;

    move-result-object p1

    iput-object p1, p0, Ll3/d;->f:Lc3/d;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Ll3/d;->i:Ljava/util/ArrayDeque;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Ll3/d;->j:Ljava/util/ArrayDeque;

    const/4 p1, -0x1

    iput p1, p0, Ll3/d;->m:I

    const-string p1, "GET"

    invoke-virtual {p2}, Ly2/Request;->g()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lt2/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p2, Lm3/h;->e:Lm3/h$a;

    const/16 p1, 0x10

    new-array p3, p1, [B

    invoke-virtual {p4, p3}, Ljava/util/Random;->nextBytes([B)V

    sget-object p1, Ln2/m;->a:Ln2/m;

    const/4 p4, 0x0

    const/4 p5, 0x0

    const/4 p6, 0x3

    const/4 p7, 0x0

    invoke-static/range {p2 .. p7}, Lm3/h$a;->f(Lm3/h$a;[BIIILjava/lang/Object;)Lm3/h;

    move-result-object p1

    invoke-virtual {p1}, Lm3/h;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ll3/d;->a:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Request must be GET: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ly2/Request;->g()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static final synthetic a(Ll3/d;)Ljava/util/ArrayDeque;
    .locals 0

    iget-object p0, p0, Ll3/d;->j:Ljava/util/ArrayDeque;

    return-object p0
.end method

.method public static final synthetic b(Ll3/d;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ll3/d;->g:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic c(Ll3/d;Ll3/e;)Z
    .locals 0

    invoke-direct {p0, p1}, Ll3/d;->k(Ll3/e;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic d(Ll3/d;Ll3/e;)V
    .locals 0

    iput-object p1, p0, Ll3/d;->x:Ll3/e;

    return-void
.end method

.method private final k(Ll3/e;)Z
    .locals 2

    iget-boolean v0, p1, Ll3/e;->f:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p1, Ll3/e;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object p1, p1, Ll3/e;->d:Ljava/lang/Integer;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0x8

    if-gt v0, p1, :cond_2

    const/16 v0, 0xf

    if-ge v0, p1, :cond_3

    :cond_2
    return v1

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method private final m()V
    .locals 8

    sget-boolean v0, Lz2/c;->h:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Thread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    const-string v3, "Thread.currentThread()"

    invoke-static {v2, v3}, Lt2/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " MUST hold lock on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v3, p0, Ll3/d;->c:Lc3/a;

    if-eqz v3, :cond_2

    iget-object v2, p0, Ll3/d;->f:Lc3/d;

    const-wide/16 v4, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lc3/d;->j(Lc3/d;Lc3/a;JILjava/lang/Object;)V

    :cond_2
    return-void
.end method

.method private final declared-synchronized n(Lm3/h;I)Z
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ll3/d;->o:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Ll3/d;->l:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Ll3/d;->k:J

    invoke-virtual {p1}, Lm3/h;->t()I

    move-result v0

    int-to-long v4, v0

    add-long/2addr v2, v4

    const-wide/32 v4, 0x1000000

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    const/16 p1, 0x3e9

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Ll3/d;->close(ILjava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    :cond_1
    :try_start_1
    iget-wide v0, p0, Ll3/d;->k:J

    invoke-virtual {p1}, Lm3/h;->t()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Ll3/d;->k:J

    iget-object v0, p0, Ll3/d;->j:Ljava/util/ArrayDeque;

    new-instance v1, Ll3/d$c;

    invoke-direct {v1, p2, p1}, Ll3/d$c;-><init>(ILm3/h;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Ll3/d;->m()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public cancel()V
    .locals 1

    iget-object v0, p0, Ll3/d;->b:Ly2/Call;

    invoke-static {v0}, Lt2/f;->b(Ljava/lang/Object;)V

    invoke-interface {v0}, Ly2/Call;->cancel()V

    return-void
.end method

.method public close(ILjava/lang/String;)Z
    .locals 2

    const-wide/32 v0, 0xea60

    invoke-virtual {p0, p1, p2, v0, v1}, Ll3/d;->f(ILjava/lang/String;J)Z

    move-result p1

    return p1
.end method

.method public final e(Ly2/Response;Ld3/Exchange;)V
    .locals 7

    const-string v0, "response"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ly2/Response;->g()I

    move-result v0

    const/16 v1, 0x65

    const/16 v2, 0x27

    if-ne v0, v1, :cond_4

    const-string v0, "Connection"

    const/4 v1, 0x0

    const/4 v3, 0x2

    invoke-static {p1, v0, v1, v3, v1}, Ly2/Response;->l(Ly2/Response;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "Upgrade"

    const/4 v5, 0x1

    invoke-static {v4, v0, v5}, Lx2/g;->j(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {p1, v4, v1, v3, v1}, Ly2/Response;->l(Ly2/Response;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "websocket"

    invoke-static {v4, v0, v5}, Lx2/g;->j(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v0, "Sec-WebSocket-Accept"

    invoke-static {p1, v0, v1, v3, v1}, Ly2/Response;->l(Ly2/Response;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lm3/h;->e:Lm3/h$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Ll3/d;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "258EAFA5-E914-47DA-95CA-C5AB0DC85B11"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lm3/h$a;->c(Ljava/lang/String;)Lm3/h;

    move-result-object v0

    invoke-virtual {v0}, Lm3/h;->r()Lm3/h;

    move-result-object v0

    invoke-virtual {v0}, Lm3/h;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lt2/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v5

    if-nez v1, :cond_1

    if-eqz p2, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/net/ProtocolException;

    const-string p2, "Web Socket exchange missing: bad interceptor?"

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p2, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected \'Sec-WebSocket-Accept\' header value \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' but was \'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    new-instance p1, Ljava/net/ProtocolException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected \'Upgrade\' header value \'websocket\' but was \'"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/net/ProtocolException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected \'Connection\' header value \'Upgrade\' but was \'"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p2, Ljava/net/ProtocolException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected HTTP 101 response but was \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ly2/Response;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ly2/Response;->x()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final declared-synchronized f(ILjava/lang/String;J)Z
    .locals 8

    monitor-enter p0

    :try_start_0
    sget-object v0, Ll3/f;->a:Ll3/f;

    invoke-virtual {v0, p1}, Ll3/f;->c(I)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_2

    sget-object v2, Lm3/h;->e:Lm3/h$a;

    invoke-virtual {v2, p2}, Lm3/h$a;->c(Ljava/lang/String;)Lm3/h;

    move-result-object v2

    invoke-virtual {v2}, Lm3/h;->t()I

    move-result v3

    int-to-long v3, v3

    const-wide/16 v5, 0x7b

    cmp-long v7, v3, v5

    if-gtz v7, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "reason.size() > 123: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    const/4 v2, 0x0

    :goto_1
    iget-boolean p2, p0, Ll3/d;->o:Z

    if-nez p2, :cond_4

    iget-boolean p2, p0, Ll3/d;->l:Z

    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    iput-boolean v1, p0, Ll3/d;->l:Z

    iget-object p2, p0, Ll3/d;->j:Ljava/util/ArrayDeque;

    new-instance v0, Ll3/d$a;

    invoke-direct {v0, p1, v2, p3, p4}, Ll3/d$a;-><init>(ILm3/h;J)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Ll3/d;->m()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    :cond_4
    :goto_2
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final g(Ly2/OkHttpClient;)V
    .locals 4

    const-string v0, "client"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ll3/d;->t:Ly2/Request;

    const-string v1, "Sec-WebSocket-Extensions"

    invoke-virtual {v0, v1}, Ly2/Request;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance p1, Ljava/net/ProtocolException;

    const-string v0, "Request header not permitted: \'Sec-WebSocket-Extensions\'"

    invoke-direct {p1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ll3/d;->h(Ljava/lang/Exception;Ly2/Response;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Ly2/OkHttpClient;->y()Ly2/OkHttpClient$a;

    move-result-object p1

    sget-object v0, Ly2/s;->a:Ly2/s;

    invoke-virtual {p1, v0}, Ly2/OkHttpClient$a;->f(Ly2/s;)Ly2/OkHttpClient$a;

    move-result-object p1

    sget-object v0, Ll3/d;->z:Ljava/util/List;

    invoke-virtual {p1, v0}, Ly2/OkHttpClient$a;->L(Ljava/util/List;)Ly2/OkHttpClient$a;

    move-result-object p1

    invoke-virtual {p1}, Ly2/OkHttpClient$a;->a()Ly2/OkHttpClient;

    move-result-object p1

    iget-object v0, p0, Ll3/d;->t:Ly2/Request;

    invoke-virtual {v0}, Ly2/Request;->h()Ly2/Request$a;

    move-result-object v0

    const-string v2, "websocket"

    const-string v3, "Upgrade"

    invoke-virtual {v0, v3, v2}, Ly2/Request$a;->c(Ljava/lang/String;Ljava/lang/String;)Ly2/Request$a;

    move-result-object v0

    const-string v2, "Connection"

    invoke-virtual {v0, v2, v3}, Ly2/Request$a;->c(Ljava/lang/String;Ljava/lang/String;)Ly2/Request$a;

    move-result-object v0

    const-string v2, "Sec-WebSocket-Key"

    iget-object v3, p0, Ll3/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ly2/Request$a;->c(Ljava/lang/String;Ljava/lang/String;)Ly2/Request$a;

    move-result-object v0

    const-string v2, "Sec-WebSocket-Version"

    const-string v3, "13"

    invoke-virtual {v0, v2, v3}, Ly2/Request$a;->c(Ljava/lang/String;Ljava/lang/String;)Ly2/Request$a;

    move-result-object v0

    const-string v2, "permessage-deflate"

    invoke-virtual {v0, v1, v2}, Ly2/Request$a;->c(Ljava/lang/String;Ljava/lang/String;)Ly2/Request$a;

    move-result-object v0

    invoke-virtual {v0}, Ly2/Request$a;->b()Ly2/Request;

    move-result-object v0

    new-instance v1, Ld3/d;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v0, v2}, Ld3/d;-><init>(Ly2/OkHttpClient;Ly2/Request;Z)V

    iput-object v1, p0, Ll3/d;->b:Ly2/Call;

    invoke-static {v1}, Lt2/f;->b(Ljava/lang/Object;)V

    new-instance p1, Ll3/d$f;

    invoke-direct {p1, p0, v0}, Ll3/d$f;-><init>(Ll3/d;Ly2/Request;)V

    invoke-interface {v1, p1}, Ly2/Call;->b(Ly2/e;)V

    return-void
.end method

.method public final h(Ljava/lang/Exception;Ly2/Response;)V
    .locals 4

    const-string v0, "e"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ll3/d;->o:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Ll3/d;->o:Z

    iget-object v0, p0, Ll3/d;->h:Ll3/d$d;

    const/4 v1, 0x0

    iput-object v1, p0, Ll3/d;->h:Ll3/d$d;

    iget-object v2, p0, Ll3/d;->d:Ll3/g;

    iput-object v1, p0, Ll3/d;->d:Ll3/g;

    iget-object v3, p0, Ll3/d;->e:Ll3/h;

    iput-object v1, p0, Ll3/d;->e:Ll3/h;

    iget-object v1, p0, Ll3/d;->f:Lc3/d;

    invoke-virtual {v1}, Lc3/d;->n()V

    sget-object v1, Ln2/m;->a:Ln2/m;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    :try_start_2
    iget-object v1, p0, Ll3/d;->u:Ly2/g0;

    invoke-virtual {v1, p0, p1, p2}, Ly2/g0;->onFailure(Ly2/f0;Ljava/lang/Throwable;Ly2/Response;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lz2/c;->j(Ljava/io/Closeable;)V

    :cond_1
    if-eqz v2, :cond_2

    invoke-static {v2}, Lz2/c;->j(Ljava/io/Closeable;)V

    :cond_2
    if-eqz v3, :cond_3

    invoke-static {v3}, Lz2/c;->j(Ljava/io/Closeable;)V

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_4

    invoke-static {v0}, Lz2/c;->j(Ljava/io/Closeable;)V

    :cond_4
    if-eqz v2, :cond_5

    invoke-static {v2}, Lz2/c;->j(Ljava/io/Closeable;)V

    :cond_5
    if-eqz v3, :cond_6

    invoke-static {v3}, Lz2/c;->j(Ljava/io/Closeable;)V

    :cond_6
    throw p1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final i()Ly2/g0;
    .locals 1

    iget-object v0, p0, Ll3/d;->u:Ly2/g0;

    return-object v0
.end method

.method public final j(Ljava/lang/String;Ll3/d$d;)V
    .locals 16

    move-object/from16 v10, p0

    move-object/from16 v0, p1

    move-object/from16 v11, p2

    const-string v1, "name"

    invoke-static {v0, v1}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "streams"

    invoke-static {v11, v1}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v12, v10, Ll3/d;->x:Ll3/e;

    invoke-static {v12}, Lt2/f;->b(Ljava/lang/Object;)V

    monitor-enter p0

    :try_start_0
    iput-object v0, v10, Ll3/d;->g:Ljava/lang/String;

    iput-object v11, v10, Ll3/d;->h:Ll3/d$d;

    new-instance v9, Ll3/h;

    invoke-virtual/range {p2 .. p2}, Ll3/d$d;->b()Z

    move-result v2

    invoke-virtual/range {p2 .. p2}, Ll3/d$d;->c()Lm3/f;

    move-result-object v3

    iget-object v4, v10, Ll3/d;->v:Ljava/util/Random;

    iget-boolean v5, v12, Ll3/e;->a:Z

    invoke-virtual/range {p2 .. p2}, Ll3/d$d;->b()Z

    move-result v1

    invoke-virtual {v12, v1}, Ll3/e;->a(Z)Z

    move-result v6

    iget-wide v7, v10, Ll3/d;->y:J

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Ll3/h;-><init>(ZLm3/f;Ljava/util/Random;ZZJ)V

    iput-object v9, v10, Ll3/d;->e:Ll3/h;

    new-instance v1, Ll3/d$e;

    invoke-direct {v1, v10}, Ll3/d$e;-><init>(Ll3/d;)V

    iput-object v1, v10, Ll3/d;->c:Lc3/a;

    iget-wide v1, v10, Ll3/d;->w:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v13

    iget-object v15, v10, Ll3/d;->f:Lc3/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ping"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v9, Ll3/d$g;

    move-object v1, v9

    move-object v2, v3

    move-wide v4, v13

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object v0, v9

    move-object v9, v12

    invoke-direct/range {v1 .. v9}, Ll3/d$g;-><init>(Ljava/lang/String;Ljava/lang/String;JLl3/d;Ljava/lang/String;Ll3/d$d;Ll3/e;)V

    invoke-virtual {v15, v0, v13, v14}, Lc3/d;->i(Lc3/a;J)V

    :cond_0
    iget-object v0, v10, Ll3/d;->j:Ljava/util/ArrayDeque;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    invoke-direct/range {p0 .. p0}, Ll3/d;->m()V

    :cond_1
    sget-object v0, Ln2/m;->a:Ln2/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    new-instance v0, Ll3/g;

    invoke-virtual/range {p2 .. p2}, Ll3/d$d;->b()Z

    move-result v2

    invoke-virtual/range {p2 .. p2}, Ll3/d$d;->e()Lm3/g;

    move-result-object v3

    iget-boolean v5, v12, Ll3/e;->a:Z

    invoke-virtual/range {p2 .. p2}, Ll3/d$d;->b()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v12, v1}, Ll3/e;->a(Z)Z

    move-result v6

    move-object v1, v0

    move-object/from16 v4, p0

    invoke-direct/range {v1 .. v6}, Ll3/g;-><init>(ZLm3/g;Ll3/g$a;ZZ)V

    iput-object v0, v10, Ll3/d;->d:Ll3/g;

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final l()V
    .locals 2

    :goto_0
    iget v0, p0, Ll3/d;->m:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ll3/d;->d:Ll3/g;

    invoke-static {v0}, Lt2/f;->b(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ll3/g;->b()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final o()Z
    .locals 27

    move-object/from16 v15, p0

    new-instance v0, Lt2/j;

    invoke-direct {v0}, Lt2/j;-><init>()V

    const/4 v1, 0x0

    iput-object v1, v0, Lt2/j;->a:Ljava/lang/Object;

    new-instance v14, Lt2/h;

    invoke-direct {v14}, Lt2/h;-><init>()V

    const/4 v2, -0x1

    iput v2, v14, Lt2/h;->a:I

    new-instance v13, Lt2/j;

    invoke-direct {v13}, Lt2/j;-><init>()V

    iput-object v1, v13, Lt2/j;->a:Ljava/lang/Object;

    new-instance v12, Lt2/j;

    invoke-direct {v12}, Lt2/j;-><init>()V

    iput-object v1, v12, Lt2/j;->a:Ljava/lang/Object;

    new-instance v11, Lt2/j;

    invoke-direct {v11}, Lt2/j;-><init>()V

    iput-object v1, v11, Lt2/j;->a:Ljava/lang/Object;

    new-instance v10, Lt2/j;

    invoke-direct {v10}, Lt2/j;-><init>()V

    iput-object v1, v10, Lt2/j;->a:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    iget-boolean v3, v15, Ll3/d;->o:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    monitor-exit p0

    return v4

    :cond_0
    :try_start_1
    iget-object v9, v15, Ll3/d;->e:Ll3/h;

    iget-object v3, v15, Ll3/d;->i:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Lm3/h;

    if-nez v8, :cond_4

    iget-object v3, v15, Ll3/d;->j:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v0, Lt2/j;->a:Ljava/lang/Object;

    instance-of v5, v3, Ll3/d$a;

    if-eqz v5, :cond_3

    iget v3, v15, Ll3/d;->m:I

    iput v3, v14, Lt2/h;->a:I

    iget-object v4, v15, Ll3/d;->n:Ljava/lang/String;

    iput-object v4, v13, Lt2/j;->a:Ljava/lang/Object;

    if-eq v3, v2, :cond_1

    iget-object v2, v15, Ll3/d;->h:Ll3/d$d;

    iput-object v2, v12, Lt2/j;->a:Ljava/lang/Object;

    iput-object v1, v15, Ll3/d;->h:Ll3/d$d;

    iget-object v2, v15, Ll3/d;->d:Ll3/g;

    iput-object v2, v11, Lt2/j;->a:Ljava/lang/Object;

    iput-object v1, v15, Ll3/d;->d:Ll3/g;

    iget-object v2, v15, Ll3/d;->e:Ll3/h;

    iput-object v2, v10, Lt2/j;->a:Ljava/lang/Object;

    iput-object v1, v15, Ll3/d;->e:Ll3/h;

    iget-object v1, v15, Ll3/d;->f:Lc3/d;

    invoke-virtual {v1}, Lc3/d;->n()V

    goto/16 :goto_0

    :cond_1
    iget-object v1, v0, Lt2/j;->a:Ljava/lang/Object;

    if-eqz v1, :cond_2

    check-cast v1, Ll3/d$a;

    invoke-virtual {v1}, Ll3/d$a;->a()J

    move-result-wide v1

    iget-object v7, v15, Ll3/d;->f:Lc3/d;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v15, Ll3/d;->g:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " cancel"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v5

    const/16 v16, 0x1

    new-instance v3, Ll3/d$h;

    move-object v1, v3

    move-object v2, v4

    move-object/from16 v17, v3

    move/from16 v3, v16

    move-wide/from16 v18, v5

    move/from16 v5, v16

    move-object/from16 v6, p0

    move-object/from16 v20, v7

    move-object v7, v9

    move-object/from16 v16, v8

    move-object/from16 v21, v9

    move-object v9, v0

    move-object/from16 v22, v10

    move-object v10, v14

    move-object/from16 v23, v11

    move-object v11, v13

    move-object/from16 v24, v12

    move-object/from16 v25, v13

    move-object/from16 v13, v23

    move-object/from16 v26, v14

    move-object/from16 v14, v22

    invoke-direct/range {v1 .. v14}, Ll3/d$h;-><init>(Ljava/lang/String;ZLjava/lang/String;ZLl3/d;Ll3/h;Lm3/h;Lt2/j;Lt2/h;Lt2/j;Lt2/j;Lt2/j;Lt2/j;)V

    move-object/from16 v4, v17

    move-wide/from16 v2, v18

    move-object/from16 v1, v20

    invoke-virtual {v1, v4, v2, v3}, Lc3/d;->i(Lc3/a;J)V

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type okhttp3.internal.ws.RealWebSocket.Close"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    :cond_3
    move-object/from16 v16, v8

    move-object/from16 v21, v9

    move-object/from16 v22, v10

    move-object/from16 v23, v11

    move-object/from16 v24, v12

    move-object/from16 v25, v13

    move-object/from16 v26, v14

    if-nez v3, :cond_5

    monitor-exit p0

    return v4

    :cond_4
    :goto_0
    move-object/from16 v16, v8

    move-object/from16 v21, v9

    move-object/from16 v22, v10

    move-object/from16 v23, v11

    move-object/from16 v24, v12

    move-object/from16 v25, v13

    move-object/from16 v26, v14

    :cond_5
    :goto_1
    :try_start_2
    sget-object v1, Ln2/m;->a:Ln2/m;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    monitor-exit p0

    move-object/from16 v3, v16

    if-eqz v3, :cond_6

    :try_start_3
    invoke-static/range {v21 .. v21}, Lt2/f;->b(Ljava/lang/Object;)V

    move-object/from16 v1, v21

    invoke-virtual {v1, v3}, Ll3/h;->g(Lm3/h;)V

    :goto_2
    move-object/from16 v1, v24

    goto :goto_3

    :cond_6
    move-object/from16 v1, v21

    iget-object v0, v0, Lt2/j;->a:Ljava/lang/Object;

    instance-of v2, v0, Ll3/d$c;

    if-eqz v2, :cond_8

    if-eqz v0, :cond_7

    check-cast v0, Ll3/d$c;

    invoke-static {v1}, Lt2/f;->b(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ll3/d$c;->b()I

    move-result v2

    invoke-virtual {v0}, Ll3/d$c;->a()Lm3/h;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ll3/h;->e(ILm3/h;)V

    monitor-enter p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    iget-wide v1, v15, Ll3/d;->k:J

    invoke-virtual {v0}, Ll3/d$c;->a()Lm3/h;

    move-result-object v0

    invoke-virtual {v0}, Lm3/h;->t()I

    move-result v0

    int-to-long v3, v0

    sub-long/2addr v1, v3

    iput-wide v1, v15, Ll3/d;->k:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    monitor-exit p0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_7
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type okhttp3.internal.ws.RealWebSocket.Message"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    instance-of v2, v0, Ll3/d$a;

    if-eqz v2, :cond_e

    if-eqz v0, :cond_d

    check-cast v0, Ll3/d$a;

    invoke-static {v1}, Lt2/f;->b(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ll3/d$a;->b()I

    move-result v2

    invoke-virtual {v0}, Ll3/d$a;->c()Lm3/h;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ll3/h;->b(ILm3/h;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move-object/from16 v1, v24

    :try_start_6
    iget-object v0, v1, Lt2/j;->a:Ljava/lang/Object;

    check-cast v0, Ll3/d$d;

    if-eqz v0, :cond_9

    iget-object v0, v15, Ll3/d;->u:Ly2/g0;

    move-object/from16 v2, v26

    iget v2, v2, Lt2/h;->a:I

    move-object/from16 v3, v25

    iget-object v3, v3, Lt2/j;->a:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lt2/f;->b(Ljava/lang/Object;)V

    invoke-virtual {v0, v15, v2, v3}, Ly2/g0;->onClosed(Ly2/f0;ILjava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_9
    :goto_3
    iget-object v0, v1, Lt2/j;->a:Ljava/lang/Object;

    check-cast v0, Ll3/d$d;

    if-eqz v0, :cond_a

    invoke-static {v0}, Lz2/c;->j(Ljava/io/Closeable;)V

    :cond_a
    move-object/from16 v2, v23

    iget-object v0, v2, Lt2/j;->a:Ljava/lang/Object;

    check-cast v0, Ll3/g;

    if-eqz v0, :cond_b

    invoke-static {v0}, Lz2/c;->j(Ljava/io/Closeable;)V

    :cond_b
    move-object/from16 v3, v22

    iget-object v0, v3, Lt2/j;->a:Ljava/lang/Object;

    check-cast v0, Ll3/h;

    if-eqz v0, :cond_c

    invoke-static {v0}, Lz2/c;->j(Ljava/io/Closeable;)V

    :cond_c
    const/4 v0, 0x1

    return v0

    :catchall_1
    move-exception v0

    move-object/from16 v3, v22

    move-object/from16 v2, v23

    goto :goto_4

    :cond_d
    move-object/from16 v3, v22

    move-object/from16 v2, v23

    move-object/from16 v1, v24

    :try_start_7
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v4, "null cannot be cast to non-null type okhttp3.internal.ws.RealWebSocket.Close"

    invoke-direct {v0, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    move-object/from16 v3, v22

    move-object/from16 v2, v23

    move-object/from16 v1, v24

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v0

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object/from16 v3, v22

    move-object/from16 v2, v23

    move-object/from16 v1, v24

    :goto_4
    iget-object v1, v1, Lt2/j;->a:Ljava/lang/Object;

    check-cast v1, Ll3/d$d;

    if-eqz v1, :cond_f

    invoke-static {v1}, Lz2/c;->j(Ljava/io/Closeable;)V

    :cond_f
    iget-object v1, v2, Lt2/j;->a:Ljava/lang/Object;

    check-cast v1, Ll3/g;

    if-eqz v1, :cond_10

    invoke-static {v1}, Lz2/c;->j(Ljava/io/Closeable;)V

    :cond_10
    iget-object v1, v3, Lt2/j;->a:Ljava/lang/Object;

    check-cast v1, Ll3/h;

    if-eqz v1, :cond_11

    invoke-static {v1}, Lz2/c;->j(Ljava/io/Closeable;)V

    :cond_11
    throw v0

    :catchall_4
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onReadClose(ILjava/lang/String;)V
    .locals 4

    const-string v0, "reason"

    invoke-static {p2, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_b

    monitor-enter p0

    :try_start_0
    iget v3, p0, Ll3/d;->m:I

    if-ne v3, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_a

    iput p1, p0, Ll3/d;->m:I

    iput-object p2, p0, Ll3/d;->n:Ljava/lang/String;

    iget-boolean v0, p0, Ll3/d;->l:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ll3/d;->j:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ll3/d;->h:Ll3/d$d;

    iput-object v1, p0, Ll3/d;->h:Ll3/d$d;

    iget-object v2, p0, Ll3/d;->d:Ll3/g;

    iput-object v1, p0, Ll3/d;->d:Ll3/g;

    iget-object v3, p0, Ll3/d;->e:Ll3/h;

    iput-object v1, p0, Ll3/d;->e:Ll3/h;

    iget-object v1, p0, Ll3/d;->f:Lc3/d;

    invoke-virtual {v1}, Lc3/d;->n()V

    move-object v1, v0

    goto :goto_2

    :cond_2
    move-object v2, v1

    move-object v3, v2

    :goto_2
    sget-object v0, Ln2/m;->a:Ln2/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    :try_start_1
    iget-object v0, p0, Ll3/d;->u:Ly2/g0;

    invoke-virtual {v0, p0, p1, p2}, Ly2/g0;->onClosing(Ly2/f0;ILjava/lang/String;)V

    if-eqz v1, :cond_3

    iget-object v0, p0, Ll3/d;->u:Ly2/g0;

    invoke-virtual {v0, p0, p1, p2}, Ly2/g0;->onClosed(Ly2/f0;ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    if-eqz v1, :cond_4

    invoke-static {v1}, Lz2/c;->j(Ljava/io/Closeable;)V

    :cond_4
    if-eqz v2, :cond_5

    invoke-static {v2}, Lz2/c;->j(Ljava/io/Closeable;)V

    :cond_5
    if-eqz v3, :cond_6

    invoke-static {v3}, Lz2/c;->j(Ljava/io/Closeable;)V

    :cond_6
    return-void

    :catchall_0
    move-exception p1

    if-eqz v1, :cond_7

    invoke-static {v1}, Lz2/c;->j(Ljava/io/Closeable;)V

    :cond_7
    if-eqz v2, :cond_8

    invoke-static {v2}, Lz2/c;->j(Ljava/io/Closeable;)V

    :cond_8
    if-eqz v3, :cond_9

    invoke-static {v3}, Lz2/c;->j(Ljava/io/Closeable;)V

    :cond_9
    throw p1

    :cond_a
    :try_start_2
    const-string p1, "already closed"

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_b
    const-string p1, "Failed requirement."

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public onReadMessage(Ljava/lang/String;)V
    .locals 1

    const-string v0, "text"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ll3/d;->u:Ly2/g0;

    invoke-virtual {v0, p0, p1}, Ly2/g0;->onMessage(Ly2/f0;Ljava/lang/String;)V

    return-void
.end method

.method public onReadMessage(Lm3/h;)V
    .locals 1

    const-string v0, "bytes"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ll3/d;->u:Ly2/g0;

    invoke-virtual {v0, p0, p1}, Ly2/g0;->onMessage(Ly2/f0;Lm3/h;)V

    return-void
.end method

.method public declared-synchronized onReadPing(Lm3/h;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "payload"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Ll3/d;->o:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Ll3/d;->l:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ll3/d;->j:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ll3/d;->i:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Ll3/d;->m()V

    iget p1, p0, Ll3/d;->q:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ll3/d;->q:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onReadPong(Lm3/h;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "payload"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget p1, p0, Ll3/d;->r:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ll3/d;->r:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Ll3/d;->s:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final p()V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ll3/d;->o:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Ll3/d;->e:Ll3/h;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Ll3/d;->s:Z

    const/4 v2, -0x1

    if-eqz v1, :cond_1

    iget v1, p0, Ll3/d;->p:I

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_0
    iget v3, p0, Ll3/d;->p:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, p0, Ll3/d;->p:I

    iput-boolean v4, p0, Ll3/d;->s:Z

    sget-object v3, Ln2/m;->a:Ln2/m;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    new-instance v0, Ljava/net/SocketTimeoutException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sent ping but didn\'t receive pong within "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Ll3/d;->w:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "ms (after "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr v1, v4

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " successful ping/pongs)"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v3}, Ll3/d;->h(Ljava/lang/Exception;Ly2/Response;)V

    return-void

    :cond_2
    :try_start_2
    sget-object v1, Lm3/h;->d:Lm3/h;

    invoke-virtual {v0, v1}, Ll3/h;->f(Lm3/h;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0, v3}, Ll3/d;->h(Ljava/lang/Exception;Ly2/Response;)V

    :goto_1
    return-void

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public send(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "text"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lm3/h;->e:Lm3/h$a;

    invoke-virtual {v0, p1}, Lm3/h$a;->c(Ljava/lang/String;)Lm3/h;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Ll3/d;->n(Lm3/h;I)Z

    move-result p1

    return p1
.end method

.method public send(Lm3/h;)Z
    .locals 1

    const-string v0, "bytes"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Ll3/d;->n(Lm3/h;I)Z

    move-result p1

    return p1
.end method
