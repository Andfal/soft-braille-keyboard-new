.class public Lq/l;
.super Lq/h0;
.source "SourceFile"


# instance fields
.field private final e:Lo/g;

.field private f:[B

.field private final g:Z

.field private final h:Lv/s;


# direct methods
.method public constructor <init>(Lo/g;ZLv/s;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lq/h0;-><init>(II)V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lq/l;->e:Lo/g;

    iput-boolean p2, p0, Lq/l;->g:Z

    iput-object p3, p0, Lq/l;->h:Lv/s;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "code == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private r(Lq/m;Ljava/lang/String;Ljava/io/PrintWriter;Lx/a;Z)[B
    .locals 0

    invoke-direct/range {p0 .. p5}, Lq/l;->s(Lq/m;Ljava/lang/String;Ljava/io/PrintWriter;Lx/a;Z)[B

    move-result-object p1

    return-object p1
.end method

.method private s(Lq/m;Ljava/lang/String;Ljava/io/PrintWriter;Lx/a;Z)[B
    .locals 9

    iget-object v0, p0, Lq/l;->e:Lo/g;

    invoke-virtual {v0}, Lo/g;->h()Lo/u;

    move-result-object v2

    iget-object v0, p0, Lq/l;->e:Lo/g;

    invoke-virtual {v0}, Lo/g;->g()Lo/p;

    move-result-object v3

    iget-object v0, p0, Lq/l;->e:Lo/g;

    invoke-virtual {v0}, Lo/g;->f()Lo/i;

    move-result-object v0

    invoke-virtual {v0}, Lo/i;->p()I

    move-result v5

    invoke-virtual {v0}, Lo/i;->s()I

    move-result v6

    new-instance v0, Lq/k;

    iget-boolean v7, p0, Lq/l;->g:Z

    iget-object v8, p0, Lq/l;->h:Lv/s;

    move-object v1, v0

    move-object v4, p1

    invoke-direct/range {v1 .. v8}, Lq/k;-><init>(Lo/u;Lo/p;Lq/m;IIZLv/s;)V

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    invoke-virtual {v0}, Lq/k;->d()[B

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p2, p3, p4, p5}, Lq/k;->f(Ljava/lang/String;Ljava/io/PrintWriter;Lx/a;Z)[B

    move-result-object p1

    :goto_0
    return-object p1
.end method


# virtual methods
.method public a(Lq/m;)V
    .locals 0

    return-void
.end method

.method public b()Lq/z;
    .locals 1

    sget-object v0, Lq/z;->r:Lq/z;

    return-object v0
.end method

.method protected m(Lq/l0;I)V
    .locals 6

    :try_start_0
    invoke-virtual {p1}, Lq/l0;->e()Lq/m;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lq/l;->r(Lq/m;Ljava/lang/String;Ljava/io/PrintWriter;Lx/a;Z)[B

    move-result-object p1

    iput-object p1, p0, Lq/l;->f:[B

    array-length p1, p1

    invoke-virtual {p0, p1}, Lq/h0;->n(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "...while placing debug info for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lq/l;->h:Lv/s;

    invoke-virtual {v0}, Lv/r;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lx/g;->b(Ljava/lang/Throwable;Ljava/lang/String;)Lx/g;

    move-result-object p1

    throw p1
.end method

.method public o()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unsupported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected p(Lq/m;Lx/a;)V
    .locals 7

    invoke-interface {p2}, Lx/a;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lq/h0;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " debug info"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lx/a;->a(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lq/l;->r(Lq/m;Ljava/lang/String;Ljava/io/PrintWriter;Lx/a;Z)[B

    :cond_0
    iget-object p1, p0, Lq/l;->f:[B

    invoke-interface {p2, p1}, Lx/q;->write([B)V

    return-void
.end method

.method public q(Lq/m;Lx/a;Ljava/lang/String;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lq/l;->r(Lq/m;Ljava/lang/String;Ljava/io/PrintWriter;Lx/a;Z)[B

    return-void
.end method
