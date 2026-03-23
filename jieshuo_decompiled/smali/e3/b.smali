.class public final Le3/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly2/x;


# instance fields
.field private final a:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Le3/b;->a:Z

    return-void
.end method


# virtual methods
.method public intercept(Ly2/x$a;)Ly2/Response;
    .locals 11

    const-string v0, "chain"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Le3/g;

    invoke-virtual {p1}, Le3/g;->g()Ld3/Exchange;

    move-result-object v0

    invoke-static {v0}, Lt2/f;->b(Ljava/lang/Object;)V

    invoke-virtual {p1}, Le3/g;->i()Ly2/Request;

    move-result-object p1

    invoke-virtual {p1}, Ly2/Request;->a()Ly2/b0;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, p1}, Ld3/Exchange;->v(Ly2/Request;)V

    invoke-virtual {p1}, Ly2/Request;->g()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Le3/f;->a(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v4, :cond_3

    if-eqz v1, :cond_3

    const-string v4, "Expect"

    invoke-virtual {p1, v4}, Ly2/Request;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v8, "100-continue"

    invoke-static {v8, v4, v6}, Lx2/g;->j(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Ld3/Exchange;->f()V

    invoke-virtual {v0, v6}, Ld3/Exchange;->q(Z)Ly2/Response$a;

    move-result-object v4

    invoke-virtual {v0}, Ld3/Exchange;->s()V

    const/4 v8, 0x0

    goto :goto_0

    :cond_0
    move-object v4, v7

    const/4 v8, 0x1

    :goto_0
    if-nez v4, :cond_2

    invoke-virtual {v1}, Ly2/b0;->isDuplex()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v0}, Ld3/Exchange;->f()V

    invoke-virtual {v0, p1, v6}, Ld3/Exchange;->c(Ly2/Request;Z)Lm3/a0;

    move-result-object v9

    invoke-static {v9}, Lm3/p;->a(Lm3/a0;)Lm3/f;

    move-result-object v9

    invoke-virtual {v1, v9}, Ly2/b0;->writeTo(Lm3/f;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p1, v5}, Ld3/Exchange;->c(Ly2/Request;Z)Lm3/a0;

    move-result-object v9

    invoke-static {v9}, Lm3/p;->a(Lm3/a0;)Lm3/f;

    move-result-object v9

    invoke-virtual {v1, v9}, Ly2/b0;->writeTo(Lm3/f;)V

    invoke-interface {v9}, Lm3/a0;->close()V

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ld3/Exchange;->o()V

    invoke-virtual {v0}, Ld3/Exchange;->h()Ld3/e;

    move-result-object v9

    invoke-virtual {v9}, Ld3/e;->v()Z

    move-result v9

    if-nez v9, :cond_4

    invoke-virtual {v0}, Ld3/Exchange;->n()V

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ld3/Exchange;->o()V

    move-object v4, v7

    const/4 v8, 0x1

    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ly2/b0;->isDuplex()Z

    move-result v1

    if-nez v1, :cond_6

    :cond_5
    invoke-virtual {v0}, Ld3/Exchange;->e()V

    :cond_6
    if-nez v4, :cond_7

    invoke-virtual {v0, v5}, Ld3/Exchange;->q(Z)Ly2/Response$a;

    move-result-object v4

    invoke-static {v4}, Lt2/f;->b(Ljava/lang/Object;)V

    if-eqz v8, :cond_7

    invoke-virtual {v0}, Ld3/Exchange;->s()V

    const/4 v8, 0x0

    :cond_7
    invoke-virtual {v4, p1}, Ly2/Response$a;->r(Ly2/Request;)Ly2/Response$a;

    move-result-object v1

    invoke-virtual {v0}, Ld3/Exchange;->h()Ld3/e;

    move-result-object v4

    invoke-virtual {v4}, Ld3/e;->r()Ly2/u;

    move-result-object v4

    invoke-virtual {v1, v4}, Ly2/Response$a;->i(Ly2/u;)Ly2/Response$a;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ly2/Response$a;->s(J)Ly2/Response$a;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v1, v9, v10}, Ly2/Response$a;->q(J)Ly2/Response$a;

    move-result-object v1

    invoke-virtual {v1}, Ly2/Response$a;->c()Ly2/Response;

    move-result-object v1

    invoke-virtual {v1}, Ly2/Response;->g()I

    move-result v4

    const/16 v9, 0x64

    if-ne v4, v9, :cond_9

    invoke-virtual {v0, v5}, Ld3/Exchange;->q(Z)Ly2/Response$a;

    move-result-object v1

    invoke-static {v1}, Lt2/f;->b(Ljava/lang/Object;)V

    if-eqz v8, :cond_8

    invoke-virtual {v0}, Ld3/Exchange;->s()V

    :cond_8
    invoke-virtual {v1, p1}, Ly2/Response$a;->r(Ly2/Request;)Ly2/Response$a;

    move-result-object p1

    invoke-virtual {v0}, Ld3/Exchange;->h()Ld3/e;

    move-result-object v1

    invoke-virtual {v1}, Ld3/e;->r()Ly2/u;

    move-result-object v1

    invoke-virtual {p1, v1}, Ly2/Response$a;->i(Ly2/u;)Ly2/Response$a;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Ly2/Response$a;->s(J)Ly2/Response$a;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ly2/Response$a;->q(J)Ly2/Response$a;

    move-result-object p1

    invoke-virtual {p1}, Ly2/Response$a;->c()Ly2/Response;

    move-result-object v1

    invoke-virtual {v1}, Ly2/Response;->g()I

    move-result v4

    :cond_9
    invoke-virtual {v0, v1}, Ld3/Exchange;->r(Ly2/Response;)V

    iget-boolean p1, p0, Le3/b;->a:Z

    if-eqz p1, :cond_a

    const/16 p1, 0x65

    if-ne v4, p1, :cond_a

    invoke-virtual {v1}, Ly2/Response;->A()Ly2/Response$a;

    move-result-object p1

    sget-object v1, Lz2/c;->c:Ly2/c0;

    goto :goto_2

    :cond_a
    invoke-virtual {v1}, Ly2/Response;->A()Ly2/Response$a;

    move-result-object p1

    invoke-virtual {v0, v1}, Ld3/Exchange;->p(Ly2/Response;)Ly2/c0;

    move-result-object v1

    :goto_2
    invoke-virtual {p1, v1}, Ly2/Response$a;->b(Ly2/c0;)Ly2/Response$a;

    move-result-object p1

    invoke-virtual {p1}, Ly2/Response$a;->c()Ly2/Response;

    move-result-object p1

    invoke-virtual {p1}, Ly2/Response;->G()Ly2/Request;

    move-result-object v1

    const-string v2, "Connection"

    invoke-virtual {v1, v2}, Ly2/Request;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "close"

    invoke-static {v3, v1, v6}, Lx2/g;->j(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_b

    const/4 v1, 0x2

    invoke-static {p1, v2, v7, v1, v7}, Ly2/Response;->l(Ly2/Response;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v6}, Lx2/g;->j(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_c

    :cond_b
    invoke-virtual {v0}, Ld3/Exchange;->n()V

    :cond_c
    const/16 v0, 0xcc

    if-eq v4, v0, :cond_d

    const/16 v0, 0xcd

    if-ne v4, v0, :cond_10

    :cond_d
    invoke-virtual {p1}, Ly2/Response;->b()Ly2/c0;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ly2/c0;->f()J

    move-result-wide v0

    goto :goto_3

    :cond_e
    const-wide/16 v0, -0x1

    :goto_3
    const-wide/16 v2, 0x0

    cmp-long v5, v0, v2

    if-lez v5, :cond_10

    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HTTP "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " had non-zero Content-Length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ly2/Response;->b()Ly2/c0;

    move-result-object p1

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Ly2/c0;->f()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    :cond_f
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    return-object p1
.end method
