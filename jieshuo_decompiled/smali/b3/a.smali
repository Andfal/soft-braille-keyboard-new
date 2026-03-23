.class public final Lb3/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly2/x;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb3/a$a;
    }
.end annotation


# static fields
.field public static final a:Lb3/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lb3/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lb3/a$a;-><init>(Lt2/d;)V

    sput-object v0, Lb3/a;->a:Lb3/a$a;

    return-void
.end method

.method public constructor <init>(Ly2/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public intercept(Ly2/x$a;)Ly2/Response;
    .locals 6

    const-string v0, "chain"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ly2/x$a;->call()Ly2/Call;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    new-instance v3, Lb3/b$b;

    invoke-interface {p1}, Ly2/x$a;->b()Ly2/Request;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v1, v2, v4, v5}, Lb3/b$b;-><init>(JLy2/Request;Ly2/Response;)V

    invoke-virtual {v3}, Lb3/b$b;->b()Lb3/b;

    move-result-object v1

    invoke-virtual {v1}, Lb3/b;->b()Ly2/Request;

    move-result-object v2

    invoke-virtual {v1}, Lb3/b;->a()Ly2/Response;

    move-result-object v1

    instance-of v3, v0, Ld3/d;

    if-nez v3, :cond_0

    move-object v3, v5

    goto :goto_0

    :cond_0
    move-object v3, v0

    :goto_0
    check-cast v3, Ld3/d;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ld3/d;->n()Ly2/s;

    move-result-object v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    sget-object v3, Ly2/s;->a:Ly2/s;

    :goto_1
    if-nez v2, :cond_2

    if-nez v1, :cond_2

    new-instance v1, Ly2/Response$a;

    invoke-direct {v1}, Ly2/Response$a;-><init>()V

    invoke-interface {p1}, Ly2/x$a;->b()Ly2/Request;

    move-result-object p1

    invoke-virtual {v1, p1}, Ly2/Response$a;->r(Ly2/Request;)Ly2/Response$a;

    move-result-object p1

    sget-object v1, Ly2/a0;->c:Ly2/a0;

    invoke-virtual {p1, v1}, Ly2/Response$a;->p(Ly2/a0;)Ly2/Response$a;

    move-result-object p1

    const/16 v1, 0x1f8

    invoke-virtual {p1, v1}, Ly2/Response$a;->g(I)Ly2/Response$a;

    move-result-object p1

    const-string v1, "Unsatisfiable Request (only-if-cached)"

    invoke-virtual {p1, v1}, Ly2/Response$a;->m(Ljava/lang/String;)Ly2/Response$a;

    move-result-object p1

    sget-object v1, Lz2/c;->c:Ly2/c0;

    invoke-virtual {p1, v1}, Ly2/Response$a;->b(Ly2/c0;)Ly2/Response$a;

    move-result-object p1

    const-wide/16 v1, -0x1

    invoke-virtual {p1, v1, v2}, Ly2/Response$a;->s(J)Ly2/Response$a;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ly2/Response$a;->q(J)Ly2/Response$a;

    move-result-object p1

    invoke-virtual {p1}, Ly2/Response$a;->c()Ly2/Response;

    move-result-object p1

    invoke-virtual {v3, v0, p1}, Ly2/s;->z(Ly2/Call;Ly2/Response;)V

    return-object p1

    :cond_2
    if-nez v2, :cond_3

    invoke-static {v1}, Lt2/f;->b(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ly2/Response;->A()Ly2/Response$a;

    move-result-object p1

    sget-object v2, Lb3/a;->a:Lb3/a$a;

    invoke-static {v2, v1}, Lb3/a$a;->b(Lb3/a$a;Ly2/Response;)Ly2/Response;

    move-result-object v1

    invoke-virtual {p1, v1}, Ly2/Response$a;->d(Ly2/Response;)Ly2/Response$a;

    move-result-object p1

    invoke-virtual {p1}, Ly2/Response$a;->c()Ly2/Response;

    move-result-object p1

    invoke-virtual {v3, v0, p1}, Ly2/s;->b(Ly2/Call;Ly2/Response;)V

    return-object p1

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v3, v0, v1}, Ly2/s;->a(Ly2/Call;Ly2/Response;)V

    :cond_4
    :try_start_0
    invoke-interface {p1, v2}, Ly2/x$a;->a(Ly2/Request;)Ly2/Response;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_7

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ly2/Response;->g()I

    move-result v0

    const/16 v2, 0x130

    if-eq v0, v2, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v1}, Ly2/Response;->A()Ly2/Response$a;

    move-result-object v0

    sget-object v2, Lb3/a;->a:Lb3/a$a;

    invoke-virtual {v1}, Ly2/Response;->m()Ly2/v;

    move-result-object v3

    invoke-virtual {p1}, Ly2/Response;->m()Ly2/v;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lb3/a$a;->a(Lb3/a$a;Ly2/v;Ly2/v;)Ly2/v;

    move-result-object v3

    invoke-virtual {v0, v3}, Ly2/Response$a;->k(Ly2/v;)Ly2/Response$a;

    move-result-object v0

    invoke-virtual {p1}, Ly2/Response;->H()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ly2/Response$a;->s(J)Ly2/Response$a;

    move-result-object v0

    invoke-virtual {p1}, Ly2/Response;->D()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ly2/Response$a;->q(J)Ly2/Response$a;

    move-result-object v0

    invoke-static {v2, v1}, Lb3/a$a;->b(Lb3/a$a;Ly2/Response;)Ly2/Response;

    move-result-object v1

    invoke-virtual {v0, v1}, Ly2/Response$a;->d(Ly2/Response;)Ly2/Response$a;

    move-result-object v0

    invoke-static {v2, p1}, Lb3/a$a;->b(Lb3/a$a;Ly2/Response;)Ly2/Response;

    move-result-object v1

    invoke-virtual {v0, v1}, Ly2/Response$a;->n(Ly2/Response;)Ly2/Response$a;

    move-result-object v0

    invoke-virtual {v0}, Ly2/Response$a;->c()Ly2/Response;

    invoke-virtual {p1}, Ly2/Response;->b()Ly2/c0;

    move-result-object p1

    invoke-static {p1}, Lt2/f;->b(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ly2/c0;->close()V

    invoke-static {v5}, Lt2/f;->b(Ljava/lang/Object;)V

    throw v5

    :cond_6
    :goto_2
    invoke-virtual {v1}, Ly2/Response;->b()Ly2/c0;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-static {v0}, Lz2/c;->j(Ljava/io/Closeable;)V

    :cond_7
    invoke-static {p1}, Lt2/f;->b(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ly2/Response;->A()Ly2/Response$a;

    move-result-object v0

    sget-object v2, Lb3/a;->a:Lb3/a$a;

    invoke-static {v2, v1}, Lb3/a$a;->b(Lb3/a$a;Ly2/Response;)Ly2/Response;

    move-result-object v1

    invoke-virtual {v0, v1}, Ly2/Response$a;->d(Ly2/Response;)Ly2/Response$a;

    move-result-object v0

    invoke-static {v2, p1}, Lb3/a$a;->b(Lb3/a$a;Ly2/Response;)Ly2/Response;

    move-result-object p1

    invoke-virtual {v0, p1}, Ly2/Response$a;->n(Ly2/Response;)Ly2/Response$a;

    move-result-object p1

    invoke-virtual {p1}, Ly2/Response$a;->c()Ly2/Response;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    throw p1
.end method
