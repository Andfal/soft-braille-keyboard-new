.class public final Lg3/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le3/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg3/g$a;
    }
.end annotation


# static fields
.field private static final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final i:Lg3/g$a;


# instance fields
.field private volatile a:Lg3/i;

.field private final b:Ly2/a0;

.field private volatile c:Z

.field private final d:Ld3/e;

.field private final e:Le3/g;

.field private final f:Lg3/f;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v0, Lg3/g$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg3/g$a;-><init>(Lt2/d;)V

    sput-object v0, Lg3/g;->i:Lg3/g$a;

    const-string v2, "connection"

    const-string v3, "host"

    const-string v4, "keep-alive"

    const-string v5, "proxy-connection"

    const-string v6, "te"

    const-string v7, "transfer-encoding"

    const-string v8, "encoding"

    const-string v9, "upgrade"

    const-string v10, ":method"

    const-string v11, ":path"

    const-string v12, ":scheme"

    const-string v13, ":authority"

    filled-new-array/range {v2 .. v13}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lz2/c;->t([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lg3/g;->g:Ljava/util/List;

    const-string v1, "connection"

    const-string v2, "host"

    const-string v3, "keep-alive"

    const-string v4, "proxy-connection"

    const-string v5, "te"

    const-string v6, "transfer-encoding"

    const-string v7, "encoding"

    const-string v8, "upgrade"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lz2/c;->t([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lg3/g;->h:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ly2/OkHttpClient;Ld3/e;Le3/g;Lg3/f;)V
    .locals 1

    const-string v0, "client"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connection"

    invoke-static {p2, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chain"

    invoke-static {p3, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "http2Connection"

    invoke-static {p4, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lg3/g;->d:Ld3/e;

    iput-object p3, p0, Lg3/g;->e:Le3/g;

    iput-object p4, p0, Lg3/g;->f:Lg3/f;

    invoke-virtual {p1}, Ly2/OkHttpClient;->C()Ljava/util/List;

    move-result-object p1

    sget-object p2, Ly2/a0;->f:Ly2/a0;

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p2, Ly2/a0;->e:Ly2/a0;

    :goto_0
    iput-object p2, p0, Lg3/g;->b:Ly2/a0;

    return-void
.end method

.method public static final synthetic h()Ljava/util/List;
    .locals 1

    sget-object v0, Lg3/g;->g:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic i()Ljava/util/List;
    .locals 1

    sget-object v0, Lg3/g;->h:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lg3/g;->a:Lg3/i;

    invoke-static {v0}, Lt2/f;->b(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lg3/i;->n()Lm3/a0;

    move-result-object v0

    invoke-interface {v0}, Lm3/a0;->close()V

    return-void
.end method

.method public b(Ly2/Request;J)Lm3/a0;
    .locals 0

    const-string p2, "request"

    invoke-static {p1, p2}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lg3/g;->a:Lg3/i;

    invoke-static {p1}, Lt2/f;->b(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lg3/i;->n()Lm3/a0;

    move-result-object p1

    return-object p1
.end method

.method public c(Ly2/Response;)J
    .locals 2

    const-string v0, "response"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Le3/e;->b(Ly2/Response;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lz2/c;->s(Ly2/Response;)J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public cancel()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lg3/g;->c:Z

    iget-object v0, p0, Lg3/g;->a:Lg3/i;

    if-eqz v0, :cond_0

    sget-object v1, Lg3/b;->j:Lg3/b;

    invoke-virtual {v0, v1}, Lg3/i;->f(Lg3/b;)V

    :cond_0
    return-void
.end method

.method public d(Ly2/Response;)Lm3/c0;
    .locals 1

    const-string v0, "response"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lg3/g;->a:Lg3/i;

    invoke-static {p1}, Lt2/f;->b(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lg3/i;->p()Lg3/i$c;

    move-result-object p1

    return-object p1
.end method

.method public e(Z)Ly2/Response$a;
    .locals 3

    iget-object v0, p0, Lg3/g;->a:Lg3/i;

    invoke-static {v0}, Lt2/f;->b(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lg3/i;->C()Ly2/v;

    move-result-object v0

    sget-object v1, Lg3/g;->i:Lg3/g$a;

    iget-object v2, p0, Lg3/g;->b:Ly2/a0;

    invoke-virtual {v1, v0, v2}, Lg3/g$a;->b(Ly2/v;Ly2/a0;)Ly2/Response$a;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Ly2/Response$a;->h()I

    move-result p1

    const/16 v1, 0x64

    if-ne p1, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public f(Ly2/Request;)V
    .locals 3

    const-string v0, "request"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lg3/g;->a:Lg3/i;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ly2/Request;->a()Ly2/b0;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lg3/g;->i:Lg3/g$a;

    invoke-virtual {v1, p1}, Lg3/g$a;->a(Ly2/Request;)Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, Lg3/g;->f:Lg3/f;

    invoke-virtual {v1, p1, v0}, Lg3/f;->Z(Ljava/util/List;Z)Lg3/i;

    move-result-object p1

    iput-object p1, p0, Lg3/g;->a:Lg3/i;

    iget-boolean p1, p0, Lg3/g;->c:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lg3/g;->a:Lg3/i;

    invoke-static {p1}, Lt2/f;->b(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lg3/i;->v()Lm3/d0;

    move-result-object p1

    iget-object v0, p0, Lg3/g;->e:Le3/g;

    invoke-virtual {v0}, Le3/g;->h()I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Lm3/d0;->g(JLjava/util/concurrent/TimeUnit;)Lm3/d0;

    iget-object p1, p0, Lg3/g;->a:Lg3/i;

    invoke-static {p1}, Lt2/f;->b(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lg3/i;->E()Lm3/d0;

    move-result-object p1

    iget-object v0, p0, Lg3/g;->e:Le3/g;

    invoke-virtual {v0}, Le3/g;->j()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1, v2}, Lm3/d0;->g(JLjava/util/concurrent/TimeUnit;)Lm3/d0;

    return-void

    :cond_2
    iget-object p1, p0, Lg3/g;->a:Lg3/i;

    invoke-static {p1}, Lt2/f;->b(Ljava/lang/Object;)V

    sget-object v0, Lg3/b;->j:Lg3/b;

    invoke-virtual {p1, v0}, Lg3/i;->f(Lg3/b;)V

    new-instance p1, Ljava/io/IOException;

    const-string v0, "Canceled"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lg3/g;->f:Lg3/f;

    invoke-virtual {v0}, Lg3/f;->flush()V

    return-void
.end method

.method public getConnection()Ld3/e;
    .locals 1

    iget-object v0, p0, Lg3/g;->d:Ld3/e;

    return-object v0
.end method
