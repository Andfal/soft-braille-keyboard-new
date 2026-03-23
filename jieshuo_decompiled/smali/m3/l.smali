.class public Lm3/l;
.super Lm3/d0;
.source "SourceFile"


# instance fields
.field private f:Lm3/d0;


# direct methods
.method public constructor <init>(Lm3/d0;)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lm3/d0;-><init>()V

    iput-object p1, p0, Lm3/l;->f:Lm3/d0;

    return-void
.end method


# virtual methods
.method public a()Lm3/d0;
    .locals 1

    iget-object v0, p0, Lm3/l;->f:Lm3/d0;

    invoke-virtual {v0}, Lm3/d0;->a()Lm3/d0;

    move-result-object v0

    return-object v0
.end method

.method public b()Lm3/d0;
    .locals 1

    iget-object v0, p0, Lm3/l;->f:Lm3/d0;

    invoke-virtual {v0}, Lm3/d0;->b()Lm3/d0;

    move-result-object v0

    return-object v0
.end method

.method public c()J
    .locals 2

    iget-object v0, p0, Lm3/l;->f:Lm3/d0;

    invoke-virtual {v0}, Lm3/d0;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public d(J)Lm3/d0;
    .locals 1

    iget-object v0, p0, Lm3/l;->f:Lm3/d0;

    invoke-virtual {v0, p1, p2}, Lm3/d0;->d(J)Lm3/d0;

    move-result-object p1

    return-object p1
.end method

.method public e()Z
    .locals 1

    iget-object v0, p0, Lm3/l;->f:Lm3/d0;

    invoke-virtual {v0}, Lm3/d0;->e()Z

    move-result v0

    return v0
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Lm3/l;->f:Lm3/d0;

    invoke-virtual {v0}, Lm3/d0;->f()V

    return-void
.end method

.method public g(JLjava/util/concurrent/TimeUnit;)Lm3/d0;
    .locals 1

    const-string v0, "unit"

    invoke-static {p3, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lm3/l;->f:Lm3/d0;

    invoke-virtual {v0, p1, p2, p3}, Lm3/d0;->g(JLjava/util/concurrent/TimeUnit;)Lm3/d0;

    move-result-object p1

    return-object p1
.end method

.method public h()J
    .locals 2

    iget-object v0, p0, Lm3/l;->f:Lm3/d0;

    invoke-virtual {v0}, Lm3/d0;->h()J

    move-result-wide v0

    return-wide v0
.end method

.method public final i()Lm3/d0;
    .locals 1

    iget-object v0, p0, Lm3/l;->f:Lm3/d0;

    return-object v0
.end method

.method public final j(Lm3/d0;)Lm3/l;
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lm3/l;->f:Lm3/d0;

    return-object p0
.end method
