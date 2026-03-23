.class public Ly2/Response$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly2/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ly2/Request;

.field private b:Ly2/a0;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ly2/u;

.field private f:Ly2/v$a;

.field private g:Ly2/c0;

.field private h:Ly2/Response;

.field private i:Ly2/Response;

.field private j:Ly2/Response;

.field private k:J

.field private l:J

.field private m:Ld3/Exchange;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Ly2/Response$a;->c:I

    new-instance v0, Ly2/v$a;

    invoke-direct {v0}, Ly2/v$a;-><init>()V

    iput-object v0, p0, Ly2/Response$a;->f:Ly2/v$a;

    return-void
.end method

.method public constructor <init>(Ly2/Response;)V
    .locals 2

    const-string v0, "response"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Ly2/Response$a;->c:I

    invoke-virtual {p1}, Ly2/Response;->G()Ly2/Request;

    move-result-object v0

    iput-object v0, p0, Ly2/Response$a;->a:Ly2/Request;

    invoke-virtual {p1}, Ly2/Response;->C()Ly2/a0;

    move-result-object v0

    iput-object v0, p0, Ly2/Response$a;->b:Ly2/a0;

    invoke-virtual {p1}, Ly2/Response;->g()I

    move-result v0

    iput v0, p0, Ly2/Response$a;->c:I

    invoke-virtual {p1}, Ly2/Response;->x()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ly2/Response$a;->d:Ljava/lang/String;

    invoke-virtual {p1}, Ly2/Response;->i()Ly2/u;

    move-result-object v0

    iput-object v0, p0, Ly2/Response$a;->e:Ly2/u;

    invoke-virtual {p1}, Ly2/Response;->m()Ly2/v;

    move-result-object v0

    invoke-virtual {v0}, Ly2/v;->d()Ly2/v$a;

    move-result-object v0

    iput-object v0, p0, Ly2/Response$a;->f:Ly2/v$a;

    invoke-virtual {p1}, Ly2/Response;->b()Ly2/c0;

    move-result-object v0

    iput-object v0, p0, Ly2/Response$a;->g:Ly2/c0;

    invoke-virtual {p1}, Ly2/Response;->y()Ly2/Response;

    move-result-object v0

    iput-object v0, p0, Ly2/Response$a;->h:Ly2/Response;

    invoke-virtual {p1}, Ly2/Response;->e()Ly2/Response;

    move-result-object v0

    iput-object v0, p0, Ly2/Response$a;->i:Ly2/Response;

    invoke-virtual {p1}, Ly2/Response;->B()Ly2/Response;

    move-result-object v0

    iput-object v0, p0, Ly2/Response$a;->j:Ly2/Response;

    invoke-virtual {p1}, Ly2/Response;->H()J

    move-result-wide v0

    iput-wide v0, p0, Ly2/Response$a;->k:J

    invoke-virtual {p1}, Ly2/Response;->D()J

    move-result-wide v0

    iput-wide v0, p0, Ly2/Response$a;->l:J

    invoke-virtual {p1}, Ly2/Response;->h()Ld3/Exchange;

    move-result-object p1

    iput-object p1, p0, Ly2/Response$a;->m:Ld3/Exchange;

    return-void
.end method

.method private final e(Ly2/Response;)V
    .locals 1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ly2/Response;->b()Ly2/c0;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "priorResponse.body != null"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    return-void
.end method

.method private final f(Ljava/lang/String;Ly2/Response;)V
    .locals 3

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Ly2/Response;->b()Ly2/c0;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_7

    invoke-virtual {p2}, Ly2/Response;->y()Ly2/Response;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_6

    invoke-virtual {p2}, Ly2/Response;->e()Ly2/Response;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_5

    invoke-virtual {p2}, Ly2/Response;->B()Ly2/Response;

    move-result-object p2

    if-nez p2, :cond_3

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_4

    goto :goto_4

    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".priorResponse != null"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".cacheResponse != null"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".networkResponse != null"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".body != null"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_8
    :goto_4
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Ly2/Response$a;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ly2/Response$a;->f:Ly2/v$a;

    invoke-virtual {v0, p1, p2}, Ly2/v$a;->a(Ljava/lang/String;Ljava/lang/String;)Ly2/v$a;

    return-object p0
.end method

.method public b(Ly2/c0;)Ly2/Response$a;
    .locals 0

    iput-object p1, p0, Ly2/Response$a;->g:Ly2/c0;

    return-object p0
.end method

.method public c()Ly2/Response;
    .locals 18

    move-object/from16 v0, p0

    iget v5, v0, Ly2/Response$a;->c:I

    if-ltz v5, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_4

    iget-object v2, v0, Ly2/Response$a;->a:Ly2/Request;

    if-eqz v2, :cond_3

    iget-object v3, v0, Ly2/Response$a;->b:Ly2/a0;

    if-eqz v3, :cond_2

    iget-object v4, v0, Ly2/Response$a;->d:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v6, v0, Ly2/Response$a;->e:Ly2/u;

    iget-object v1, v0, Ly2/Response$a;->f:Ly2/v$a;

    invoke-virtual {v1}, Ly2/v$a;->e()Ly2/v;

    move-result-object v7

    iget-object v8, v0, Ly2/Response$a;->g:Ly2/c0;

    iget-object v9, v0, Ly2/Response$a;->h:Ly2/Response;

    iget-object v10, v0, Ly2/Response$a;->i:Ly2/Response;

    iget-object v11, v0, Ly2/Response$a;->j:Ly2/Response;

    iget-wide v12, v0, Ly2/Response$a;->k:J

    iget-wide v14, v0, Ly2/Response$a;->l:J

    iget-object v1, v0, Ly2/Response$a;->m:Ld3/Exchange;

    new-instance v17, Ly2/Response;

    move-object/from16 v16, v1

    move-object/from16 v1, v17

    invoke-direct/range {v1 .. v16}, Ly2/Response;-><init>(Ly2/Request;Ly2/a0;Ljava/lang/String;ILy2/u;Ly2/v;Ly2/c0;Ly2/Response;Ly2/Response;Ly2/Response;JJLd3/Exchange;)V

    return-object v17

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "message == null"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "protocol == null"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "request == null"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "code < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Ly2/Response$a;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public d(Ly2/Response;)Ly2/Response$a;
    .locals 1

    const-string v0, "cacheResponse"

    invoke-direct {p0, v0, p1}, Ly2/Response$a;->f(Ljava/lang/String;Ly2/Response;)V

    iput-object p1, p0, Ly2/Response$a;->i:Ly2/Response;

    return-object p0
.end method

.method public g(I)Ly2/Response$a;
    .locals 0

    iput p1, p0, Ly2/Response$a;->c:I

    return-object p0
.end method

.method public final h()I
    .locals 1

    iget v0, p0, Ly2/Response$a;->c:I

    return v0
.end method

.method public i(Ly2/u;)Ly2/Response$a;
    .locals 0

    iput-object p1, p0, Ly2/Response$a;->e:Ly2/u;

    return-object p0
.end method

.method public j(Ljava/lang/String;Ljava/lang/String;)Ly2/Response$a;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ly2/Response$a;->f:Ly2/v$a;

    invoke-virtual {v0, p1, p2}, Ly2/v$a;->h(Ljava/lang/String;Ljava/lang/String;)Ly2/v$a;

    return-object p0
.end method

.method public k(Ly2/v;)Ly2/Response$a;
    .locals 1

    const-string v0, "headers"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ly2/v;->d()Ly2/v$a;

    move-result-object p1

    iput-object p1, p0, Ly2/Response$a;->f:Ly2/v$a;

    return-object p0
.end method

.method public final l(Ld3/Exchange;)V
    .locals 1

    const-string v0, "deferredTrailers"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ly2/Response$a;->m:Ld3/Exchange;

    return-void
.end method

.method public m(Ljava/lang/String;)Ly2/Response$a;
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ly2/Response$a;->d:Ljava/lang/String;

    return-object p0
.end method

.method public n(Ly2/Response;)Ly2/Response$a;
    .locals 1

    const-string v0, "networkResponse"

    invoke-direct {p0, v0, p1}, Ly2/Response$a;->f(Ljava/lang/String;Ly2/Response;)V

    iput-object p1, p0, Ly2/Response$a;->h:Ly2/Response;

    return-object p0
.end method

.method public o(Ly2/Response;)Ly2/Response$a;
    .locals 0

    invoke-direct {p0, p1}, Ly2/Response$a;->e(Ly2/Response;)V

    iput-object p1, p0, Ly2/Response$a;->j:Ly2/Response;

    return-object p0
.end method

.method public p(Ly2/a0;)Ly2/Response$a;
    .locals 1

    const-string v0, "protocol"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ly2/Response$a;->b:Ly2/a0;

    return-object p0
.end method

.method public q(J)Ly2/Response$a;
    .locals 0

    iput-wide p1, p0, Ly2/Response$a;->l:J

    return-object p0
.end method

.method public r(Ly2/Request;)Ly2/Response$a;
    .locals 1

    const-string v0, "request"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ly2/Response$a;->a:Ly2/Request;

    return-object p0
.end method

.method public s(J)Ly2/Response$a;
    .locals 0

    iput-wide p1, p0, Ly2/Response$a;->k:J

    return-object p0
.end method
