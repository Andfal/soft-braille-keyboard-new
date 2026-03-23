.class public final Ld3/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ld3/j$b;

.field private b:Ld3/j;

.field private c:I

.field private d:I

.field private e:I

.field private f:Ly2/d0;

.field private final g:Ld3/g;

.field private final h:Ly2/a;

.field private final i:Ld3/d;

.field private final j:Ly2/s;


# direct methods
.method public constructor <init>(Ld3/g;Ly2/a;Ld3/d;Ly2/s;)V
    .locals 1

    const-string v0, "connectionPool"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "address"

    invoke-static {p2, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "call"

    invoke-static {p3, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventListener"

    invoke-static {p4, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld3/c;->g:Ld3/g;

    iput-object p2, p0, Ld3/c;->h:Ly2/a;

    iput-object p3, p0, Ld3/c;->i:Ld3/d;

    iput-object p4, p0, Ld3/c;->j:Ly2/s;

    return-void
.end method

.method private final b(IIIIZ)Ld3/e;
    .locals 14

    move-object v1, p0

    iget-object v0, v1, Ld3/c;->i:Ld3/d;

    invoke-virtual {v0}, Ld3/d;->e()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, v1, Ld3/c;->i:Ld3/d;

    invoke-virtual {v0}, Ld3/d;->m()Ld3/e;

    move-result-object v2

    const/4 v0, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_6

    monitor-enter v2

    :try_start_0
    invoke-virtual {v2}, Ld3/e;->p()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v2}, Ld3/e;->A()Ly2/d0;

    move-result-object v5

    invoke-virtual {v5}, Ly2/d0;->a()Ly2/a;

    move-result-object v5

    invoke-virtual {v5}, Ly2/a;->l()Ly2/w;

    move-result-object v5

    invoke-virtual {p0, v5}, Ld3/c;->g(Ly2/w;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    move-object v5, v4

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v5, v1, Ld3/c;->i:Ld3/d;

    invoke-virtual {v5}, Ld3/d;->w()Ljava/net/Socket;

    move-result-object v5

    :goto_1
    sget-object v6, Ln2/m;->a:Ln2/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    iget-object v6, v1, Ld3/c;->i:Ld3/d;

    invoke-virtual {v6}, Ld3/d;->m()Ld3/e;

    move-result-object v6

    if-eqz v6, :cond_4

    if-nez v5, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_3

    return-object v2

    :cond_3
    const-string v0, "Check failed."

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    if-eqz v5, :cond_5

    invoke-static {v5}, Lz2/c;->k(Ljava/net/Socket;)V

    :cond_5
    iget-object v5, v1, Ld3/c;->j:Ly2/s;

    iget-object v6, v1, Ld3/c;->i:Ld3/d;

    invoke-virtual {v5, v6, v2}, Ly2/s;->k(Ly2/Call;Ly2/i;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_6
    :goto_3
    iput v3, v1, Ld3/c;->c:I

    iput v3, v1, Ld3/c;->d:I

    iput v3, v1, Ld3/c;->e:I

    iget-object v2, v1, Ld3/c;->g:Ld3/g;

    iget-object v5, v1, Ld3/c;->h:Ly2/a;

    iget-object v6, v1, Ld3/c;->i:Ld3/d;

    invoke-virtual {v2, v5, v6, v4, v3}, Ld3/g;->a(Ly2/a;Ld3/d;Ljava/util/List;Z)Z

    move-result v2

    if-eqz v2, :cond_7

    :goto_4
    iget-object v0, v1, Ld3/c;->i:Ld3/d;

    invoke-virtual {v0}, Ld3/d;->m()Ld3/e;

    move-result-object v0

    invoke-static {v0}, Lt2/f;->b(Ljava/lang/Object;)V

    :goto_5
    iget-object v2, v1, Ld3/c;->j:Ly2/s;

    iget-object v3, v1, Ld3/c;->i:Ld3/d;

    invoke-virtual {v2, v3, v0}, Ly2/s;->j(Ly2/Call;Ly2/i;)V

    return-object v0

    :cond_7
    iget-object v2, v1, Ld3/c;->f:Ly2/d0;

    if-eqz v2, :cond_8

    invoke-static {v2}, Lt2/f;->b(Ljava/lang/Object;)V

    iput-object v4, v1, Ld3/c;->f:Ly2/d0;

    :goto_6
    move-object v5, v4

    goto :goto_7

    :cond_8
    iget-object v2, v1, Ld3/c;->a:Ld3/j$b;

    if-eqz v2, :cond_9

    invoke-static {v2}, Lt2/f;->b(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ld3/j$b;->b()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, v1, Ld3/c;->a:Ld3/j$b;

    invoke-static {v2}, Lt2/f;->b(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ld3/j$b;->c()Ly2/d0;

    move-result-object v2

    goto :goto_6

    :cond_9
    iget-object v2, v1, Ld3/c;->b:Ld3/j;

    if-nez v2, :cond_a

    new-instance v2, Ld3/j;

    iget-object v5, v1, Ld3/c;->h:Ly2/a;

    iget-object v6, v1, Ld3/c;->i:Ld3/d;

    invoke-virtual {v6}, Ld3/d;->l()Ly2/OkHttpClient;

    move-result-object v6

    invoke-virtual {v6}, Ly2/OkHttpClient;->t()Ld3/h;

    move-result-object v6

    iget-object v7, v1, Ld3/c;->i:Ld3/d;

    iget-object v8, v1, Ld3/c;->j:Ly2/s;

    invoke-direct {v2, v5, v6, v7, v8}, Ld3/j;-><init>(Ly2/a;Ld3/h;Ly2/Call;Ly2/s;)V

    iput-object v2, v1, Ld3/c;->b:Ld3/j;

    :cond_a
    invoke-virtual {v2}, Ld3/j;->d()Ld3/j$b;

    move-result-object v2

    iput-object v2, v1, Ld3/c;->a:Ld3/j$b;

    invoke-virtual {v2}, Ld3/j$b;->a()Ljava/util/List;

    move-result-object v5

    iget-object v6, v1, Ld3/c;->i:Ld3/d;

    invoke-virtual {v6}, Ld3/d;->e()Z

    move-result v6

    if-nez v6, :cond_d

    iget-object v6, v1, Ld3/c;->g:Ld3/g;

    iget-object v7, v1, Ld3/c;->h:Ly2/a;

    iget-object v8, v1, Ld3/c;->i:Ld3/d;

    invoke-virtual {v6, v7, v8, v5, v3}, Ld3/g;->a(Ly2/a;Ld3/d;Ljava/util/List;Z)Z

    move-result v3

    if-eqz v3, :cond_b

    goto :goto_4

    :cond_b
    invoke-virtual {v2}, Ld3/j$b;->c()Ly2/d0;

    move-result-object v2

    :goto_7
    new-instance v3, Ld3/e;

    iget-object v6, v1, Ld3/c;->g:Ld3/g;

    invoke-direct {v3, v6, v2}, Ld3/e;-><init>(Ld3/g;Ly2/d0;)V

    iget-object v6, v1, Ld3/c;->i:Ld3/d;

    invoke-virtual {v6, v3}, Ld3/d;->y(Ld3/e;)V

    :try_start_1
    iget-object v12, v1, Ld3/c;->i:Ld3/d;

    iget-object v13, v1, Ld3/c;->j:Ly2/s;

    move-object v6, v3

    move v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    invoke-virtual/range {v6 .. v13}, Ld3/e;->f(IIIIZLy2/Call;Ly2/s;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    iget-object v6, v1, Ld3/c;->i:Ld3/d;

    invoke-virtual {v6, v4}, Ld3/d;->y(Ld3/e;)V

    iget-object v4, v1, Ld3/c;->i:Ld3/d;

    invoke-virtual {v4}, Ld3/d;->l()Ly2/OkHttpClient;

    move-result-object v4

    invoke-virtual {v4}, Ly2/OkHttpClient;->t()Ld3/h;

    move-result-object v4

    invoke-virtual {v3}, Ld3/e;->A()Ly2/d0;

    move-result-object v6

    invoke-virtual {v4, v6}, Ld3/h;->a(Ly2/d0;)V

    iget-object v4, v1, Ld3/c;->g:Ld3/g;

    iget-object v6, v1, Ld3/c;->h:Ly2/a;

    iget-object v7, v1, Ld3/c;->i:Ld3/d;

    invoke-virtual {v4, v6, v7, v5, v0}, Ld3/g;->a(Ly2/a;Ld3/d;Ljava/util/List;Z)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, v1, Ld3/c;->i:Ld3/d;

    invoke-virtual {v0}, Ld3/d;->m()Ld3/e;

    move-result-object v0

    invoke-static {v0}, Lt2/f;->b(Ljava/lang/Object;)V

    iput-object v2, v1, Ld3/c;->f:Ly2/d0;

    invoke-virtual {v3}, Ld3/e;->E()Ljava/net/Socket;

    move-result-object v2

    invoke-static {v2}, Lz2/c;->k(Ljava/net/Socket;)V

    goto/16 :goto_5

    :cond_c
    monitor-enter v3

    :try_start_2
    iget-object v0, v1, Ld3/c;->g:Ld3/g;

    invoke-virtual {v0, v3}, Ld3/g;->f(Ld3/e;)V

    iget-object v0, v1, Ld3/c;->i:Ld3/d;

    invoke-virtual {v0, v3}, Ld3/d;->d(Ld3/e;)V

    sget-object v0, Ln2/m;->a:Ln2/m;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v3

    iget-object v0, v1, Ld3/c;->j:Ly2/s;

    iget-object v2, v1, Ld3/c;->i:Ld3/d;

    invoke-virtual {v0, v2, v3}, Ly2/s;->j(Ly2/Call;Ly2/i;)V

    return-object v3

    :catchall_1
    move-exception v0

    monitor-exit v3

    throw v0

    :catchall_2
    move-exception v0

    iget-object v2, v1, Ld3/c;->i:Ld3/d;

    invoke-virtual {v2, v4}, Ld3/d;->y(Ld3/e;)V

    throw v0

    :cond_d
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Canceled"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Canceled"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final c(IIIIZZ)Ld3/e;
    .locals 2

    :goto_0
    invoke-direct/range {p0 .. p5}, Ld3/c;->b(IIIIZ)Ld3/e;

    move-result-object v0

    invoke-virtual {v0, p6}, Ld3/e;->u(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Ld3/e;->z()V

    iget-object v0, p0, Ld3/c;->f:Ly2/d0;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Ld3/c;->a:Ld3/j$b;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ld3/j$b;->b()Z

    move-result v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Ld3/c;->b:Ld3/j;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ld3/j;->b()Z

    move-result v1

    :cond_4
    if-eqz v1, :cond_5

    goto :goto_0

    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string p2, "exhausted all routes"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final f()Ly2/d0;
    .locals 4

    iget v0, p0, Ld3/c;->c:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_3

    iget v0, p0, Ld3/c;->d:I

    if-gt v0, v2, :cond_3

    iget v0, p0, Ld3/c;->e:I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ld3/c;->i:Ld3/d;

    invoke-virtual {v0}, Ld3/d;->m()Ld3/e;

    move-result-object v0

    if-eqz v0, :cond_3

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0}, Ld3/e;->q()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    monitor-exit v0

    return-object v1

    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ld3/e;->A()Ly2/d0;

    move-result-object v2

    invoke-virtual {v2}, Ly2/d0;->a()Ly2/a;

    move-result-object v2

    invoke-virtual {v2}, Ly2/a;->l()Ly2/w;

    move-result-object v2

    iget-object v3, p0, Ld3/c;->h:Ly2/a;

    invoke-virtual {v3}, Ly2/a;->l()Ly2/w;

    move-result-object v3

    invoke-static {v2, v3}, Lz2/c;->g(Ly2/w;Ly2/w;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_2

    monitor-exit v0

    return-object v1

    :cond_2
    :try_start_2
    invoke-virtual {v0}, Ld3/e;->A()Ly2/d0;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_3
    :goto_0
    return-object v1
.end method


# virtual methods
.method public final a(Ly2/OkHttpClient;Le3/g;)Le3/d;
    .locals 8

    const-string v0, "client"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chain"

    invoke-static {p2, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p2}, Le3/g;->f()I

    move-result v2

    invoke-virtual {p2}, Le3/g;->h()I

    move-result v3

    invoke-virtual {p2}, Le3/g;->j()I

    move-result v4

    invoke-virtual {p1}, Ly2/OkHttpClient;->B()I

    move-result v5

    invoke-virtual {p1}, Ly2/OkHttpClient;->H()Z

    move-result v6

    invoke-virtual {p2}, Le3/g;->i()Ly2/Request;

    move-result-object v0

    invoke-virtual {v0}, Ly2/Request;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GET"

    invoke-static {v0, v1}, Lt2/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v7, v0, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Ld3/c;->c(IIIIZZ)Ld3/e;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ld3/e;->w(Ly2/OkHttpClient;Le3/g;)Le3/d;

    move-result-object p1
    :try_end_0
    .catch Ld3/i; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Ld3/c;->h(Ljava/io/IOException;)V

    new-instance p2, Ld3/i;

    invoke-direct {p2, p1}, Ld3/i;-><init>(Ljava/io/IOException;)V

    throw p2

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ld3/i;->c()Ljava/io/IOException;

    move-result-object p2

    invoke-virtual {p0, p2}, Ld3/c;->h(Ljava/io/IOException;)V

    throw p1
.end method

.method public final d()Ly2/a;
    .locals 1

    iget-object v0, p0, Ld3/c;->h:Ly2/a;

    return-object v0
.end method

.method public final e()Z
    .locals 2

    iget v0, p0, Ld3/c;->c:I

    if-nez v0, :cond_0

    iget v0, p0, Ld3/c;->d:I

    if-nez v0, :cond_0

    iget v0, p0, Ld3/c;->e:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Ld3/c;->f:Ly2/d0;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-direct {p0}, Ld3/c;->f()Ly2/d0;

    move-result-object v0

    if-eqz v0, :cond_2

    iput-object v0, p0, Ld3/c;->f:Ly2/d0;

    return v1

    :cond_2
    iget-object v0, p0, Ld3/c;->a:Ld3/j$b;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ld3/j$b;->b()Z

    move-result v0

    if-ne v0, v1, :cond_3

    return v1

    :cond_3
    iget-object v0, p0, Ld3/c;->b:Ld3/j;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ld3/j;->b()Z

    move-result v0

    return v0

    :cond_4
    return v1
.end method

.method public final g(Ly2/w;)Z
    .locals 3

    const-string v0, "url"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ld3/c;->h:Ly2/a;

    invoke-virtual {v0}, Ly2/a;->l()Ly2/w;

    move-result-object v0

    invoke-virtual {p1}, Ly2/w;->l()I

    move-result v1

    invoke-virtual {v0}, Ly2/w;->l()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Ly2/w;->h()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ly2/w;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lt2/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final h(Ljava/io/IOException;)V
    .locals 2

    const-string v0, "e"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Ld3/c;->f:Ly2/d0;

    instance-of v0, p1, Lg3/n;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lg3/n;

    iget-object v0, v0, Lg3/n;->a:Lg3/b;

    sget-object v1, Lg3/b;->i:Lg3/b;

    if-ne v0, v1, :cond_0

    iget p1, p0, Ld3/c;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ld3/c;->c:I

    goto :goto_0

    :cond_0
    instance-of p1, p1, Lg3/a;

    if-eqz p1, :cond_1

    iget p1, p0, Ld3/c;->d:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ld3/c;->d:I

    goto :goto_0

    :cond_1
    iget p1, p0, Ld3/c;->e:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ld3/c;->e:I

    :goto_0
    return-void
.end method
