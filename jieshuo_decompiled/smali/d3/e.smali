.class public final Ld3/e;
.super Lg3/f$d;
.source "SourceFile"

# interfaces
.implements Ly2/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld3/e$a;
    }
.end annotation


# static fields
.field public static final t:Ld3/e$a;


# instance fields
.field private c:Ljava/net/Socket;

.field private d:Ljava/net/Socket;

.field private e:Ly2/u;

.field private f:Ly2/a0;

.field private g:Lg3/f;

.field private h:Lm3/g;

.field private i:Lm3/f;

.field private j:Z

.field private k:Z

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private final p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/Reference<",
            "Ld3/d;",
            ">;>;"
        }
    .end annotation
.end field

.field private q:J

.field private final r:Ld3/g;

.field private final s:Ly2/d0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ld3/e$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ld3/e$a;-><init>(Lt2/d;)V

    sput-object v0, Ld3/e;->t:Ld3/e$a;

    return-void
.end method

.method public constructor <init>(Ld3/g;Ly2/d0;)V
    .locals 1

    const-string v0, "connectionPool"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "route"

    invoke-static {p2, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lg3/f$d;-><init>()V

    iput-object p1, p0, Ld3/e;->r:Ld3/g;

    iput-object p2, p0, Ld3/e;->s:Ly2/d0;

    const/4 p1, 0x1

    iput p1, p0, Ld3/e;->o:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ld3/e;->p:Ljava/util/List;

    const-wide p1, 0x7fffffffffffffffL

    iput-wide p1, p0, Ld3/e;->q:J

    return-void
.end method

.method private final B(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ly2/d0;",
            ">;)Z"
        }
    .end annotation

    instance-of v0, p1, Ljava/util/Collection;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly2/d0;

    invoke-virtual {v0}, Ly2/d0;->b()Ljava/net/Proxy;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v2

    sget-object v3, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    const/4 v4, 0x1

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Ld3/e;->s:Ly2/d0;

    invoke-virtual {v2}, Ly2/d0;->b()Ljava/net/Proxy;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v2

    sget-object v3, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Ld3/e;->s:Ly2/d0;

    invoke-virtual {v2}, Ly2/d0;->d()Ljava/net/InetSocketAddress;

    move-result-object v2

    invoke-virtual {v0}, Ly2/d0;->d()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-static {v2, v0}, Lt2/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_3
    :goto_1
    return v1
.end method

.method private final F(I)V
    .locals 7

    iget-object v0, p0, Ld3/e;->d:Ljava/net/Socket;

    invoke-static {v0}, Lt2/f;->b(Ljava/lang/Object;)V

    iget-object v1, p0, Ld3/e;->h:Lm3/g;

    invoke-static {v1}, Lt2/f;->b(Ljava/lang/Object;)V

    iget-object v2, p0, Ld3/e;->i:Lm3/f;

    invoke-static {v2}, Lt2/f;->b(Ljava/lang/Object;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    new-instance v4, Lg3/f$b;

    const/4 v5, 0x1

    sget-object v6, Lc3/e;->h:Lc3/e;

    invoke-direct {v4, v5, v6}, Lg3/f$b;-><init>(ZLc3/e;)V

    iget-object v5, p0, Ld3/e;->s:Ly2/d0;

    invoke-virtual {v5}, Ly2/d0;->a()Ly2/a;

    move-result-object v5

    invoke-virtual {v5}, Ly2/a;->l()Ly2/w;

    move-result-object v5

    invoke-virtual {v5}, Ly2/w;->h()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5, v1, v2}, Lg3/f$b;->m(Ljava/net/Socket;Ljava/lang/String;Lm3/g;Lm3/f;)Lg3/f$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lg3/f$b;->k(Lg3/f$d;)Lg3/f$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lg3/f$b;->l(I)Lg3/f$b;

    move-result-object p1

    invoke-virtual {p1}, Lg3/f$b;->a()Lg3/f;

    move-result-object p1

    iput-object p1, p0, Ld3/e;->g:Lg3/f;

    sget-object v0, Lg3/f;->D:Lg3/f$c;

    invoke-virtual {v0}, Lg3/f$c;->a()Lg3/m;

    move-result-object v0

    invoke-virtual {v0}, Lg3/m;->d()I

    move-result v0

    iput v0, p0, Ld3/e;->o:I

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-static {p1, v3, v0, v1, v0}, Lg3/f;->p0(Lg3/f;ZLc3/e;ILjava/lang/Object;)V

    return-void
.end method

.method private final G(Ly2/w;)Z
    .locals 4

    sget-boolean v0, Lz2/c;->h:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Thread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const-string v2, "Thread.currentThread()"

    invoke-static {v1, v2}, Lt2/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " MUST hold lock on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Ld3/e;->s:Ly2/d0;

    invoke-virtual {v0}, Ly2/d0;->a()Ly2/a;

    move-result-object v0

    invoke-virtual {v0}, Ly2/a;->l()Ly2/w;

    move-result-object v0

    invoke-virtual {p1}, Ly2/w;->l()I

    move-result v1

    invoke-virtual {v0}, Ly2/w;->l()I

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    :cond_2
    invoke-virtual {p1}, Ly2/w;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ly2/w;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lt2/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    return v1

    :cond_3
    iget-boolean v0, p0, Ld3/e;->k:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Ld3/e;->e:Ly2/u;

    if-eqz v0, :cond_4

    invoke-static {v0}, Lt2/f;->b(Ljava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Ld3/e;->e(Ly2/w;Ly2/u;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 v3, 0x1

    :cond_4
    return v3
.end method

.method public static final synthetic c(Ld3/e;)Ly2/u;
    .locals 0

    iget-object p0, p0, Ld3/e;->e:Ly2/u;

    return-object p0
.end method

.method private final e(Ly2/w;Ly2/u;)Z
    .locals 3

    invoke-virtual {p2}, Ly2/u;->d()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    sget-object v0, Lk3/d;->a:Lk3/d;

    invoke-virtual {p1}, Ly2/w;->h()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    check-cast p2, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0, p1, p2}, Lk3/d;->c(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type java.security.cert.X509Certificate"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private final h(IILy2/Call;Ly2/s;)V
    .locals 4

    iget-object v0, p0, Ld3/e;->s:Ly2/d0;

    invoke-virtual {v0}, Ly2/d0;->b()Ljava/net/Proxy;

    move-result-object v0

    iget-object v1, p0, Ld3/e;->s:Ly2/d0;

    invoke-virtual {v1}, Ly2/d0;->a()Ly2/a;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v3, Ld3/f;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    :goto_0
    new-instance v1, Ljava/net/Socket;

    invoke-direct {v1, v0}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ly2/a;->j()Ljavax/net/SocketFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v1

    invoke-static {v1}, Lt2/f;->b(Ljava/lang/Object;)V

    :goto_1
    iput-object v1, p0, Ld3/e;->c:Ljava/net/Socket;

    iget-object v2, p0, Ld3/e;->s:Ly2/d0;

    invoke-virtual {v2}, Ly2/d0;->d()Ljava/net/InetSocketAddress;

    move-result-object v2

    invoke-virtual {p4, p3, v2, v0}, Ly2/s;->i(Ly2/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;)V

    invoke-virtual {v1, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    :try_start_0
    sget-object p2, Lh3/m;->c:Lh3/m$a;

    invoke-virtual {p2}, Lh3/m$a;->g()Lh3/m;

    move-result-object p2

    iget-object p3, p0, Ld3/e;->s:Ly2/d0;

    invoke-virtual {p3}, Ly2/d0;->d()Ljava/net/InetSocketAddress;

    move-result-object p3

    invoke-virtual {p2, v1, p3, p1}, Lh3/m;->f(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {v1}, Lm3/p;->g(Ljava/net/Socket;)Lm3/c0;

    move-result-object p1

    invoke-static {p1}, Lm3/p;->b(Lm3/c0;)Lm3/g;

    move-result-object p1

    iput-object p1, p0, Ld3/e;->h:Lm3/g;

    invoke-static {v1}, Lm3/p;->d(Ljava/net/Socket;)Lm3/a0;

    move-result-object p1

    invoke-static {p1}, Lm3/p;->a(Lm3/a0;)Lm3/f;

    move-result-object p1

    iput-object p1, p0, Ld3/e;->i:Lm3/f;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string p3, "throw with null exception"

    invoke-static {p2, p3}, Lt2/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    :goto_2
    return-void

    :cond_2
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    new-instance p2, Ljava/net/ConnectException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Failed to connect to "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Ld3/e;->s:Ly2/d0;

    invoke-virtual {p4}, Ly2/d0;->d()Ljava/net/InetSocketAddress;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p2
.end method

.method private final i(Ld3/b;)V
    .locals 10

    iget-object v0, p0, Ld3/e;->s:Ly2/d0;

    invoke-virtual {v0}, Ly2/d0;->a()Ly2/a;

    move-result-object v0

    invoke-virtual {v0}, Ly2/a;->k()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    invoke-static {v1}, Lt2/f;->b(Ljava/lang/Object;)V

    iget-object v3, p0, Ld3/e;->c:Ljava/net/Socket;

    invoke-virtual {v0}, Ly2/a;->l()Ly2/w;

    move-result-object v4

    invoke-virtual {v4}, Ly2/w;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ly2/a;->l()Ly2/w;

    move-result-object v5

    invoke-virtual {v5}, Ly2/w;->l()I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v1, v3, v4, v5, v6}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v1

    if-eqz v1, :cond_6

    check-cast v1, Ljavax/net/ssl/SSLSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p1, v1}, Ld3/b;->a(Ljavax/net/ssl/SSLSocket;)Ly2/k;

    move-result-object p1

    invoke-virtual {p1}, Ly2/k;->h()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lh3/m;->c:Lh3/m$a;

    invoke-virtual {v3}, Lh3/m$a;->g()Lh3/m;

    move-result-object v3

    invoke-virtual {v0}, Ly2/a;->l()Ly2/w;

    move-result-object v4

    invoke-virtual {v4}, Ly2/w;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ly2/a;->f()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3, v1, v4, v5}, Lh3/m;->e(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    :cond_0
    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v3

    sget-object v4, Ly2/u;->e:Ly2/u$a;

    const-string v5, "sslSocketSession"

    invoke-static {v3, v5}, Lt2/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ly2/u$a;->a(Ljavax/net/ssl/SSLSession;)Ly2/u;

    move-result-object v4

    invoke-virtual {v0}, Ly2/a;->e()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v5

    invoke-static {v5}, Lt2/f;->b(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ly2/a;->l()Ly2/w;

    move-result-object v7

    invoke-virtual {v7}, Ly2/w;->h()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7, v3}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v4}, Ly2/u;->d()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v6

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type java.security.cert.X509Certificate"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    check-cast p1, Ljava/security/cert/X509Certificate;

    new-instance v3, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\n              |Hostname "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ly2/a;->l()Ly2/w;

    move-result-object v0

    invoke-virtual {v0}, Ly2/w;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not verified:\n              |    certificate: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ly2/f;->d:Ly2/f$b;

    invoke-virtual {v0, p1}, Ly2/f$b;->a(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n              |    DN: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v0

    const-string v5, "cert.subjectDN"

    invoke-static {v0, v5}, Lt2/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n              |    subjectAltNames: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lk3/d;->a:Lk3/d;

    invoke-virtual {v0, p1}, Lk3/d;->a(Ljava/security/cert/X509Certificate;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\n              "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2, v6, v2}, Lx2/g;->e(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    new-instance p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Hostname "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ly2/a;->l()Ly2/w;

    move-result-object v0

    invoke-virtual {v0}, Ly2/w;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not verified (no certificates)"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    invoke-virtual {v0}, Ly2/a;->a()Ly2/f;

    move-result-object v3

    invoke-static {v3}, Lt2/f;->b(Ljava/lang/Object;)V

    new-instance v5, Ly2/u;

    invoke-virtual {v4}, Ly2/u;->e()Ly2/e0;

    move-result-object v6

    invoke-virtual {v4}, Ly2/u;->a()Ly2/h;

    move-result-object v7

    invoke-virtual {v4}, Ly2/u;->c()Ljava/util/List;

    move-result-object v8

    new-instance v9, Ld3/e$b;

    invoke-direct {v9, v3, v4, v0}, Ld3/e$b;-><init>(Ly2/f;Ly2/u;Ly2/a;)V

    invoke-direct {v5, v6, v7, v8, v9}, Ly2/u;-><init>(Ly2/e0;Ly2/h;Ljava/util/List;Ls2/a;)V

    iput-object v5, p0, Ld3/e;->e:Ly2/u;

    invoke-virtual {v0}, Ly2/a;->l()Ly2/w;

    move-result-object v0

    invoke-virtual {v0}, Ly2/w;->h()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ld3/e$c;

    invoke-direct {v4, p0}, Ld3/e$c;-><init>(Ld3/e;)V

    invoke-virtual {v3, v0, v4}, Ly2/f;->b(Ljava/lang/String;Ls2/a;)V

    invoke-virtual {p1}, Ly2/k;->h()Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Lh3/m;->c:Lh3/m$a;

    invoke-virtual {p1}, Lh3/m$a;->g()Lh3/m;

    move-result-object p1

    invoke-virtual {p1, v1}, Lh3/m;->g(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object v2

    :cond_4
    iput-object v1, p0, Ld3/e;->d:Ljava/net/Socket;

    invoke-static {v1}, Lm3/p;->g(Ljava/net/Socket;)Lm3/c0;

    move-result-object p1

    invoke-static {p1}, Lm3/p;->b(Lm3/c0;)Lm3/g;

    move-result-object p1

    iput-object p1, p0, Ld3/e;->h:Lm3/g;

    invoke-static {v1}, Lm3/p;->d(Ljava/net/Socket;)Lm3/a0;

    move-result-object p1

    invoke-static {p1}, Lm3/p;->a(Lm3/a0;)Lm3/f;

    move-result-object p1

    iput-object p1, p0, Ld3/e;->i:Lm3/f;

    if-eqz v2, :cond_5

    sget-object p1, Ly2/a0;->i:Ly2/a0$a;

    invoke-virtual {p1, v2}, Ly2/a0$a;->a(Ljava/lang/String;)Ly2/a0;

    move-result-object p1

    goto :goto_0

    :cond_5
    sget-object p1, Ly2/a0;->c:Ly2/a0;

    :goto_0
    iput-object p1, p0, Ld3/e;->f:Ly2/a0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-object p1, Lh3/m;->c:Lh3/m$a;

    invoke-virtual {p1}, Lh3/m$a;->g()Lh3/m;

    move-result-object p1

    invoke-virtual {p1, v1}, Lh3/m;->b(Ljavax/net/ssl/SSLSocket;)V

    return-void

    :catchall_0
    move-exception p1

    move-object v2, v1

    goto :goto_1

    :cond_6
    :try_start_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type javax.net.ssl.SSLSocket"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    :goto_1
    if-eqz v2, :cond_7

    sget-object v0, Lh3/m;->c:Lh3/m$a;

    invoke-virtual {v0}, Lh3/m$a;->g()Lh3/m;

    move-result-object v0

    invoke-virtual {v0, v2}, Lh3/m;->b(Ljavax/net/ssl/SSLSocket;)V

    :cond_7
    if-eqz v2, :cond_8

    invoke-static {v2}, Lz2/c;->k(Ljava/net/Socket;)V

    :cond_8
    throw p1
.end method

.method private final j(IIILy2/Call;Ly2/s;)V
    .locals 6

    invoke-direct {p0}, Ld3/e;->l()Ly2/Request;

    move-result-object v0

    invoke-virtual {v0}, Ly2/Request;->i()Ly2/w;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x15

    if-ge v2, v3, :cond_1

    invoke-direct {p0, p1, p2, p4, p5}, Ld3/e;->h(IILy2/Call;Ly2/s;)V

    invoke-direct {p0, p2, p3, v0, v1}, Ld3/e;->k(IILy2/Request;Ly2/w;)Ly2/Request;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v3, p0, Ld3/e;->c:Ljava/net/Socket;

    if-eqz v3, :cond_0

    invoke-static {v3}, Lz2/c;->k(Ljava/net/Socket;)V

    :cond_0
    const/4 v3, 0x0

    iput-object v3, p0, Ld3/e;->c:Ljava/net/Socket;

    iput-object v3, p0, Ld3/e;->i:Lm3/f;

    iput-object v3, p0, Ld3/e;->h:Lm3/g;

    iget-object v4, p0, Ld3/e;->s:Ly2/d0;

    invoke-virtual {v4}, Ly2/d0;->d()Ljava/net/InetSocketAddress;

    move-result-object v4

    iget-object v5, p0, Ld3/e;->s:Ly2/d0;

    invoke-virtual {v5}, Ly2/d0;->b()Ljava/net/Proxy;

    move-result-object v5

    invoke-virtual {p5, p4, v4, v5, v3}, Ly2/s;->g(Ly2/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Ly2/a0;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final k(IILy2/Request;Ly2/w;)Ly2/Request;
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CONNECT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-static {p4, v1}, Lz2/c;->N(Ly2/w;Z)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " HTTP/1.1"

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    :goto_0
    iget-object v0, p0, Ld3/e;->h:Lm3/g;

    invoke-static {v0}, Lt2/f;->b(Ljava/lang/Object;)V

    iget-object v2, p0, Ld3/e;->i:Lm3/f;

    invoke-static {v2}, Lt2/f;->b(Ljava/lang/Object;)V

    new-instance v3, Lf3/b;

    const/4 v4, 0x0

    invoke-direct {v3, v4, p0, v0, v2}, Lf3/b;-><init>(Ly2/OkHttpClient;Ld3/e;Lm3/g;Lm3/f;)V

    invoke-interface {v0}, Lm3/c0;->timeout()Lm3/d0;

    move-result-object v5

    int-to-long v6, p1

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v6, v7, v8}, Lm3/d0;->g(JLjava/util/concurrent/TimeUnit;)Lm3/d0;

    invoke-interface {v2}, Lm3/a0;->timeout()Lm3/d0;

    move-result-object v5

    int-to-long v6, p2

    invoke-virtual {v5, v6, v7, v8}, Lm3/d0;->g(JLjava/util/concurrent/TimeUnit;)Lm3/d0;

    invoke-virtual {p3}, Ly2/Request;->e()Ly2/v;

    move-result-object v5

    invoke-virtual {v3, v5, p4}, Lf3/b;->z(Ly2/v;Ljava/lang/String;)V

    invoke-virtual {v3}, Lf3/b;->a()V

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lf3/b;->e(Z)Ly2/Response$a;

    move-result-object v5

    invoke-static {v5}, Lt2/f;->b(Ljava/lang/Object;)V

    invoke-virtual {v5, p3}, Ly2/Response$a;->r(Ly2/Request;)Ly2/Response$a;

    move-result-object p3

    invoke-virtual {p3}, Ly2/Response$a;->c()Ly2/Response;

    move-result-object p3

    invoke-virtual {v3, p3}, Lf3/b;->y(Ly2/Response;)V

    invoke-virtual {p3}, Ly2/Response;->g()I

    move-result v3

    const/16 v5, 0xc8

    if-eq v3, v5, :cond_3

    const/16 v0, 0x197

    if-ne v3, v0, :cond_2

    iget-object v0, p0, Ld3/e;->s:Ly2/d0;

    invoke-virtual {v0}, Ly2/d0;->a()Ly2/a;

    move-result-object v0

    invoke-virtual {v0}, Ly2/a;->h()Ly2/b;

    move-result-object v0

    iget-object v2, p0, Ld3/e;->s:Ly2/d0;

    invoke-interface {v0, v2, p3}, Ly2/b;->a(Ly2/d0;Ly2/Response;)Ly2/Request;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, "Connection"

    const/4 v3, 0x2

    invoke-static {p3, v2, v4, v3, v4}, Ly2/Response;->l(Ly2/Response;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string v2, "close"

    invoke-static {v2, p3, v1}, Lx2/g;->j(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p3

    if-eqz p3, :cond_0

    return-object v0

    :cond_0
    move-object p3, v0

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Failed to authenticate with proxy"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unexpected response code for CONNECT: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ly2/Response;->g()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    invoke-interface {v0}, Lm3/g;->n()Lm3/e;

    move-result-object p1

    invoke-virtual {p1}, Lm3/e;->s()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {v2}, Lm3/f;->n()Lm3/e;

    move-result-object p1

    invoke-virtual {p1}, Lm3/e;->s()Z

    move-result p1

    if-eqz p1, :cond_4

    return-object v4

    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "TLS tunnel buffered too many bytes!"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final l()Ly2/Request;
    .locals 4

    new-instance v0, Ly2/Request$a;

    invoke-direct {v0}, Ly2/Request$a;-><init>()V

    iget-object v1, p0, Ld3/e;->s:Ly2/d0;

    invoke-virtual {v1}, Ly2/d0;->a()Ly2/a;

    move-result-object v1

    invoke-virtual {v1}, Ly2/a;->l()Ly2/w;

    move-result-object v1

    invoke-virtual {v0, v1}, Ly2/Request$a;->i(Ly2/w;)Ly2/Request$a;

    move-result-object v0

    const-string v1, "CONNECT"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ly2/Request$a;->e(Ljava/lang/String;Ly2/b0;)Ly2/Request$a;

    move-result-object v0

    iget-object v1, p0, Ld3/e;->s:Ly2/d0;

    invoke-virtual {v1}, Ly2/d0;->a()Ly2/a;

    move-result-object v1

    invoke-virtual {v1}, Ly2/a;->l()Ly2/w;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lz2/c;->N(Ly2/w;Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Host"

    invoke-virtual {v0, v2, v1}, Ly2/Request$a;->c(Ljava/lang/String;Ljava/lang/String;)Ly2/Request$a;

    move-result-object v0

    const-string v1, "Proxy-Connection"

    const-string v2, "Keep-Alive"

    invoke-virtual {v0, v1, v2}, Ly2/Request$a;->c(Ljava/lang/String;Ljava/lang/String;)Ly2/Request$a;

    move-result-object v0

    const-string v1, "User-Agent"

    const-string v2, "okhttp/4.9.1"

    invoke-virtual {v0, v1, v2}, Ly2/Request$a;->c(Ljava/lang/String;Ljava/lang/String;)Ly2/Request$a;

    move-result-object v0

    invoke-virtual {v0}, Ly2/Request$a;->b()Ly2/Request;

    move-result-object v0

    new-instance v1, Ly2/Response$a;

    invoke-direct {v1}, Ly2/Response$a;-><init>()V

    invoke-virtual {v1, v0}, Ly2/Response$a;->r(Ly2/Request;)Ly2/Response$a;

    move-result-object v1

    sget-object v2, Ly2/a0;->c:Ly2/a0;

    invoke-virtual {v1, v2}, Ly2/Response$a;->p(Ly2/a0;)Ly2/Response$a;

    move-result-object v1

    const/16 v2, 0x197

    invoke-virtual {v1, v2}, Ly2/Response$a;->g(I)Ly2/Response$a;

    move-result-object v1

    const-string v2, "Preemptive Authenticate"

    invoke-virtual {v1, v2}, Ly2/Response$a;->m(Ljava/lang/String;)Ly2/Response$a;

    move-result-object v1

    sget-object v2, Lz2/c;->c:Ly2/c0;

    invoke-virtual {v1, v2}, Ly2/Response$a;->b(Ly2/c0;)Ly2/Response$a;

    move-result-object v1

    const-wide/16 v2, -0x1

    invoke-virtual {v1, v2, v3}, Ly2/Response$a;->s(J)Ly2/Response$a;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ly2/Response$a;->q(J)Ly2/Response$a;

    move-result-object v1

    const-string v2, "Proxy-Authenticate"

    const-string v3, "OkHttp-Preemptive"

    invoke-virtual {v1, v2, v3}, Ly2/Response$a;->j(Ljava/lang/String;Ljava/lang/String;)Ly2/Response$a;

    move-result-object v1

    invoke-virtual {v1}, Ly2/Response$a;->c()Ly2/Response;

    move-result-object v1

    iget-object v2, p0, Ld3/e;->s:Ly2/d0;

    invoke-virtual {v2}, Ly2/d0;->a()Ly2/a;

    move-result-object v2

    invoke-virtual {v2}, Ly2/a;->h()Ly2/b;

    move-result-object v2

    iget-object v3, p0, Ld3/e;->s:Ly2/d0;

    invoke-interface {v2, v3, v1}, Ly2/b;->a(Ly2/d0;Ly2/Response;)Ly2/Request;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v0, v1

    :cond_0
    return-object v0
.end method

.method private final m(Ld3/b;ILy2/Call;Ly2/s;)V
    .locals 1

    iget-object v0, p0, Ld3/e;->s:Ly2/d0;

    invoke-virtual {v0}, Ly2/d0;->a()Ly2/a;

    move-result-object v0

    invoke-virtual {v0}, Ly2/a;->k()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object p1, p0, Ld3/e;->s:Ly2/d0;

    invoke-virtual {p1}, Ly2/d0;->a()Ly2/a;

    move-result-object p1

    invoke-virtual {p1}, Ly2/a;->f()Ljava/util/List;

    move-result-object p1

    sget-object p3, Ly2/a0;->f:Ly2/a0;

    invoke-interface {p1, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Ld3/e;->c:Ljava/net/Socket;

    iput-object p1, p0, Ld3/e;->d:Ljava/net/Socket;

    iput-object p3, p0, Ld3/e;->f:Ly2/a0;

    invoke-direct {p0, p2}, Ld3/e;->F(I)V

    return-void

    :cond_0
    iget-object p1, p0, Ld3/e;->c:Ljava/net/Socket;

    iput-object p1, p0, Ld3/e;->d:Ljava/net/Socket;

    sget-object p1, Ly2/a0;->c:Ly2/a0;

    iput-object p1, p0, Ld3/e;->f:Ly2/a0;

    return-void

    :cond_1
    invoke-virtual {p4, p3}, Ly2/s;->B(Ly2/Call;)V

    invoke-direct {p0, p1}, Ld3/e;->i(Ld3/b;)V

    iget-object p1, p0, Ld3/e;->e:Ly2/u;

    invoke-virtual {p4, p3, p1}, Ly2/s;->A(Ly2/Call;Ly2/u;)V

    iget-object p1, p0, Ld3/e;->f:Ly2/a0;

    sget-object p3, Ly2/a0;->e:Ly2/a0;

    if-ne p1, p3, :cond_2

    invoke-direct {p0, p2}, Ld3/e;->F(I)V

    :cond_2
    return-void
.end method


# virtual methods
.method public A()Ly2/d0;
    .locals 1

    iget-object v0, p0, Ld3/e;->s:Ly2/d0;

    return-object v0
.end method

.method public final C(J)V
    .locals 0

    iput-wide p1, p0, Ld3/e;->q:J

    return-void
.end method

.method public final D(Z)V
    .locals 0

    iput-boolean p1, p0, Ld3/e;->j:Z

    return-void
.end method

.method public E()Ljava/net/Socket;
    .locals 1

    iget-object v0, p0, Ld3/e;->d:Ljava/net/Socket;

    invoke-static {v0}, Lt2/f;->b(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final declared-synchronized H(Ld3/d;Ljava/io/IOException;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "call"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p2, Lg3/n;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    move-object v0, p2

    check-cast v0, Lg3/n;

    iget-object v0, v0, Lg3/n;->a:Lg3/b;

    sget-object v2, Lg3/b;->i:Lg3/b;

    if-ne v0, v2, :cond_0

    iget p1, p0, Ld3/e;->n:I

    add-int/2addr p1, v1

    iput p1, p0, Ld3/e;->n:I

    if-le p1, v1, :cond_5

    iput-boolean v1, p0, Ld3/e;->j:Z

    iget p1, p0, Ld3/e;->l:I

    :goto_0
    add-int/2addr p1, v1

    iput p1, p0, Ld3/e;->l:I

    goto :goto_1

    :cond_0
    check-cast p2, Lg3/n;

    iget-object p2, p2, Lg3/n;->a:Lg3/b;

    sget-object v0, Lg3/b;->j:Lg3/b;

    if-ne p2, v0, :cond_1

    invoke-virtual {p1}, Ld3/d;->e()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    iput-boolean v1, p0, Ld3/e;->j:Z

    iget p1, p0, Ld3/e;->l:I

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ld3/e;->v()Z

    move-result v0

    if-eqz v0, :cond_3

    instance-of v0, p2, Lg3/a;

    if-eqz v0, :cond_5

    :cond_3
    iput-boolean v1, p0, Ld3/e;->j:Z

    iget v0, p0, Ld3/e;->m:I

    if-nez v0, :cond_5

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Ld3/d;->l()Ly2/OkHttpClient;

    move-result-object p1

    iget-object v0, p0, Ld3/e;->s:Ly2/d0;

    invoke-virtual {p0, p1, v0, p2}, Ld3/e;->g(Ly2/OkHttpClient;Ly2/d0;Ljava/io/IOException;)V

    :cond_4
    iget p1, p0, Ld3/e;->l:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_5
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Lg3/f;Lg3/m;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "connection"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "settings"

    invoke-static {p2, p1}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lg3/m;->d()I

    move-result p1

    iput p1, p0, Ld3/e;->o:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b(Lg3/i;)V
    .locals 2

    const-string v0, "stream"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lg3/b;->i:Lg3/b;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lg3/i;->d(Lg3/b;Ljava/io/IOException;)V

    return-void
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Ld3/e;->c:Ljava/net/Socket;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lz2/c;->k(Ljava/net/Socket;)V

    :cond_0
    return-void
.end method

.method public final f(IIIIZLy2/Call;Ly2/s;)V
    .locals 16

    move-object/from16 v7, p0

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    const-string v0, "call"

    invoke-static {v8, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventListener"

    invoke-static {v9, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v7, Ld3/e;->f:Ly2/a0;

    const/4 v10, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_d

    iget-object v0, v7, Ld3/e;->s:Ly2/d0;

    invoke-virtual {v0}, Ly2/d0;->a()Ly2/a;

    move-result-object v0

    invoke-virtual {v0}, Ly2/a;->b()Ljava/util/List;

    move-result-object v0

    new-instance v11, Ld3/b;

    invoke-direct {v11, v0}, Ld3/b;-><init>(Ljava/util/List;)V

    iget-object v1, v7, Ld3/e;->s:Ly2/d0;

    invoke-virtual {v1}, Ly2/d0;->a()Ly2/a;

    move-result-object v1

    invoke-virtual {v1}, Ly2/a;->k()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    if-nez v1, :cond_3

    sget-object v1, Ly2/k;->j:Ly2/k;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v7, Ld3/e;->s:Ly2/d0;

    invoke-virtual {v0}, Ly2/d0;->a()Ly2/a;

    move-result-object v0

    invoke-virtual {v0}, Ly2/a;->l()Ly2/w;

    move-result-object v0

    invoke-virtual {v0}, Ly2/w;->h()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lh3/m;->c:Lh3/m$a;

    invoke-virtual {v1}, Lh3/m$a;->g()Lh3/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lh3/m;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Ld3/i;

    new-instance v2, Ljava/net/UnknownServiceException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CLEARTEXT communication to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not permitted by network security policy"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ld3/i;-><init>(Ljava/io/IOException;)V

    throw v1

    :cond_2
    new-instance v0, Ld3/i;

    new-instance v1, Ljava/net/UnknownServiceException;

    const-string v2, "CLEARTEXT communication not enabled for client"

    invoke-direct {v1, v2}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ld3/i;-><init>(Ljava/io/IOException;)V

    throw v0

    :cond_3
    iget-object v0, v7, Ld3/e;->s:Ly2/d0;

    invoke-virtual {v0}, Ly2/d0;->a()Ly2/a;

    move-result-object v0

    invoke-virtual {v0}, Ly2/a;->f()Ljava/util/List;

    move-result-object v0

    sget-object v1, Ly2/a0;->f:Ly2/a0;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    :goto_1
    const/4 v12, 0x0

    move-object v13, v12

    :goto_2
    :try_start_0
    iget-object v0, v7, Ld3/e;->s:Ly2/d0;

    invoke-virtual {v0}, Ly2/d0;->c()Z

    move-result v0

    if-eqz v0, :cond_5

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    invoke-direct/range {v1 .. v6}, Ld3/e;->j(IIILy2/Call;Ly2/s;)V

    iget-object v0, v7, Ld3/e;->c:Ljava/net/Socket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    if-nez v0, :cond_4

    goto :goto_4

    :cond_4
    move/from16 v14, p1

    move/from16 v15, p2

    goto :goto_3

    :cond_5
    move/from16 v14, p1

    move/from16 v15, p2

    :try_start_1
    invoke-direct {v7, v14, v15, v8, v9}, Ld3/e;->h(IILy2/Call;Ly2/s;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    move/from16 v6, p4

    :try_start_2
    invoke-direct {v7, v11, v6, v8, v9}, Ld3/e;->m(Ld3/b;ILy2/Call;Ly2/s;)V

    iget-object v0, v7, Ld3/e;->s:Ly2/d0;

    invoke-virtual {v0}, Ly2/d0;->d()Ljava/net/InetSocketAddress;

    move-result-object v0

    iget-object v1, v7, Ld3/e;->s:Ly2/d0;

    invoke-virtual {v1}, Ly2/d0;->b()Ljava/net/Proxy;

    move-result-object v1

    iget-object v2, v7, Ld3/e;->f:Ly2/a0;

    invoke-virtual {v9, v8, v0, v1, v2}, Ly2/s;->g(Ly2/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Ly2/a0;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_4
    iget-object v0, v7, Ld3/e;->s:Ly2/d0;

    invoke-virtual {v0}, Ly2/d0;->c()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, v7, Ld3/e;->c:Ljava/net/Socket;

    if-eqz v0, :cond_6

    goto :goto_5

    :cond_6
    new-instance v0, Ld3/i;

    new-instance v1, Ljava/net/ProtocolException;

    const-string v2, "Too many tunnel connections attempted: 21"

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ld3/i;-><init>(Ljava/io/IOException;)V

    throw v0

    :cond_7
    :goto_5
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, v7, Ld3/e;->q:J

    return-void

    :catch_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    goto :goto_6

    :catch_2
    move-exception v0

    move/from16 v14, p1

    move/from16 v15, p2

    :goto_6
    move/from16 v6, p4

    :goto_7
    iget-object v1, v7, Ld3/e;->d:Ljava/net/Socket;

    if-eqz v1, :cond_8

    invoke-static {v1}, Lz2/c;->k(Ljava/net/Socket;)V

    :cond_8
    iget-object v1, v7, Ld3/e;->c:Ljava/net/Socket;

    if-eqz v1, :cond_9

    invoke-static {v1}, Lz2/c;->k(Ljava/net/Socket;)V

    :cond_9
    iput-object v12, v7, Ld3/e;->d:Ljava/net/Socket;

    iput-object v12, v7, Ld3/e;->c:Ljava/net/Socket;

    iput-object v12, v7, Ld3/e;->h:Lm3/g;

    iput-object v12, v7, Ld3/e;->i:Lm3/f;

    iput-object v12, v7, Ld3/e;->e:Ly2/u;

    iput-object v12, v7, Ld3/e;->f:Ly2/a0;

    iput-object v12, v7, Ld3/e;->g:Lg3/f;

    iput v10, v7, Ld3/e;->o:I

    iget-object v1, v7, Ld3/e;->s:Ly2/d0;

    invoke-virtual {v1}, Ly2/d0;->d()Ljava/net/InetSocketAddress;

    move-result-object v3

    iget-object v1, v7, Ld3/e;->s:Ly2/d0;

    invoke-virtual {v1}, Ly2/d0;->b()Ljava/net/Proxy;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v1, p7

    move-object/from16 v2, p6

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Ly2/s;->h(Ly2/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Ly2/a0;Ljava/io/IOException;)V

    if-nez v13, :cond_a

    new-instance v13, Ld3/i;

    invoke-direct {v13, v0}, Ld3/i;-><init>(Ljava/io/IOException;)V

    goto :goto_8

    :cond_a
    invoke-virtual {v13, v0}, Ld3/i;->a(Ljava/io/IOException;)V

    :goto_8
    if-eqz p5, :cond_b

    invoke-virtual {v11, v0}, Ld3/b;->b(Ljava/io/IOException;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto/16 :goto_2

    :cond_b
    throw v13

    :cond_c
    new-instance v0, Ld3/i;

    new-instance v1, Ljava/net/UnknownServiceException;

    const-string v2, "H2_PRIOR_KNOWLEDGE cannot be used with HTTPS"

    invoke-direct {v1, v2}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ld3/i;-><init>(Ljava/io/IOException;)V

    throw v0

    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already connected"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final g(Ly2/OkHttpClient;Ly2/d0;Ljava/io/IOException;)V
    .locals 3

    const-string v0, "client"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "failedRoute"

    invoke-static {p2, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "failure"

    invoke-static {p3, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Ly2/d0;->b()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v1, :cond_0

    invoke-virtual {p2}, Ly2/d0;->a()Ly2/a;

    move-result-object v0

    invoke-virtual {v0}, Ly2/a;->i()Ljava/net/ProxySelector;

    move-result-object v1

    invoke-virtual {v0}, Ly2/a;->l()Ly2/w;

    move-result-object v0

    invoke-virtual {v0}, Ly2/w;->q()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {p2}, Ly2/d0;->b()Ljava/net/Proxy;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v2

    invoke-virtual {v1, v0, v2, p3}, Ljava/net/ProxySelector;->connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V

    :cond_0
    invoke-virtual {p1}, Ly2/OkHttpClient;->t()Ld3/h;

    move-result-object p1

    invoke-virtual {p1, p2}, Ld3/h;->b(Ly2/d0;)V

    return-void
.end method

.method public final n()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/ref/Reference<",
            "Ld3/d;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Ld3/e;->p:Ljava/util/List;

    return-object v0
.end method

.method public final o()J
    .locals 2

    iget-wide v0, p0, Ld3/e;->q:J

    return-wide v0
.end method

.method public final p()Z
    .locals 1

    iget-boolean v0, p0, Ld3/e;->j:Z

    return v0
.end method

.method public final q()I
    .locals 1

    iget v0, p0, Ld3/e;->l:I

    return v0
.end method

.method public r()Ly2/u;
    .locals 1

    iget-object v0, p0, Ld3/e;->e:Ly2/u;

    return-object v0
.end method

.method public final declared-synchronized s()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Ld3/e;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ld3/e;->m:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final t(Ly2/a;Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly2/a;",
            "Ljava/util/List<",
            "Ly2/d0;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "address"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v0, Lz2/c;->h:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Thread "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "Thread.currentThread()"

    invoke-static {v0, v1}, Lt2/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " MUST hold lock on "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Ld3/e;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Ld3/e;->o:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_9

    iget-boolean v0, p0, Ld3/e;->j:Z

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Ld3/e;->s:Ly2/d0;

    invoke-virtual {v0}, Ly2/d0;->a()Ly2/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Ly2/a;->d(Ly2/a;)Z

    move-result v0

    if-nez v0, :cond_3

    return v2

    :cond_3
    invoke-virtual {p1}, Ly2/a;->l()Ly2/w;

    move-result-object v0

    invoke-virtual {v0}, Ly2/w;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ld3/e;->A()Ly2/d0;

    move-result-object v1

    invoke-virtual {v1}, Ly2/d0;->a()Ly2/a;

    move-result-object v1

    invoke-virtual {v1}, Ly2/a;->l()Ly2/w;

    move-result-object v1

    invoke-virtual {v1}, Ly2/w;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lt2/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    return v1

    :cond_4
    iget-object v0, p0, Ld3/e;->g:Lg3/f;

    if-nez v0, :cond_5

    return v2

    :cond_5
    if-eqz p2, :cond_9

    invoke-direct {p0, p2}, Ld3/e;->B(Ljava/util/List;)Z

    move-result p2

    if-nez p2, :cond_6

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Ly2/a;->e()Ljavax/net/ssl/HostnameVerifier;

    move-result-object p2

    sget-object v0, Lk3/d;->a:Lk3/d;

    if-eq p2, v0, :cond_7

    return v2

    :cond_7
    invoke-virtual {p1}, Ly2/a;->l()Ly2/w;

    move-result-object p2

    invoke-direct {p0, p2}, Ld3/e;->G(Ly2/w;)Z

    move-result p2

    if-nez p2, :cond_8

    return v2

    :cond_8
    :try_start_0
    invoke-virtual {p1}, Ly2/a;->a()Ly2/f;

    move-result-object p2

    invoke-static {p2}, Lt2/f;->b(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ly2/a;->l()Ly2/w;

    move-result-object p1

    invoke-virtual {p1}, Ly2/w;->h()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ld3/e;->r()Ly2/u;

    move-result-object v0

    invoke-static {v0}, Lt2/f;->b(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ly2/u;->d()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Ly2/f;->a(Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    :cond_9
    :goto_1
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connection{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ld3/e;->s:Ly2/d0;

    invoke-virtual {v1}, Ly2/d0;->a()Ly2/a;

    move-result-object v1

    invoke-virtual {v1}, Ly2/a;->l()Ly2/w;

    move-result-object v1

    invoke-virtual {v1}, Ly2/w;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ld3/e;->s:Ly2/d0;

    invoke-virtual {v1}, Ly2/d0;->a()Ly2/a;

    move-result-object v1

    invoke-virtual {v1}, Ly2/a;->l()Ly2/w;

    move-result-object v1

    invoke-virtual {v1}, Ly2/w;->l()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, " proxy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ld3/e;->s:Ly2/d0;

    invoke-virtual {v1}, Ly2/d0;->b()Ljava/net/Proxy;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " hostAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ld3/e;->s:Ly2/d0;

    invoke-virtual {v1}, Ly2/d0;->d()Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " cipherSuite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ld3/e;->e:Ly2/u;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ly2/u;->a()Ly2/h;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "none"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ld3/e;->f:Ly2/a0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u(Z)Z
    .locals 7

    sget-boolean v0, Lz2/c;->h:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Thread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const-string v2, "Thread.currentThread()"

    invoke-static {v1, v2}, Lt2/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " MUST NOT hold lock on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_1
    :goto_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-object v2, p0, Ld3/e;->c:Ljava/net/Socket;

    invoke-static {v2}, Lt2/f;->b(Ljava/lang/Object;)V

    iget-object v3, p0, Ld3/e;->d:Ljava/net/Socket;

    invoke-static {v3}, Lt2/f;->b(Ljava/lang/Object;)V

    iget-object v4, p0, Ld3/e;->h:Lm3/g;

    invoke-static {v4}, Lt2/f;->b(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/net/Socket;->isClosed()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v3}, Ljava/net/Socket;->isClosed()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v3}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v3}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v2, p0, Ld3/e;->g:Lg3/f;

    if-eqz v2, :cond_3

    invoke-virtual {v2, v0, v1}, Lg3/f;->W(J)Z

    move-result p1

    return p1

    :cond_3
    monitor-enter p0

    :try_start_0
    iget-wide v5, p0, Ld3/e;->q:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long/2addr v0, v5

    monitor-exit p0

    const-wide v5, 0x2540be400L

    cmp-long v2, v0, v5

    if-ltz v2, :cond_4

    if-eqz p1, :cond_4

    invoke-static {v3, v4}, Lz2/c;->C(Ljava/net/Socket;Lm3/g;)Z

    move-result p1

    return p1

    :cond_4
    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_5
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public final v()Z
    .locals 1

    iget-object v0, p0, Ld3/e;->g:Lg3/f;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final w(Ly2/OkHttpClient;Le3/g;)Le3/d;
    .locals 6

    const-string v0, "client"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chain"

    invoke-static {p2, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ld3/e;->d:Ljava/net/Socket;

    invoke-static {v0}, Lt2/f;->b(Ljava/lang/Object;)V

    iget-object v1, p0, Ld3/e;->h:Lm3/g;

    invoke-static {v1}, Lt2/f;->b(Ljava/lang/Object;)V

    iget-object v2, p0, Ld3/e;->i:Lm3/f;

    invoke-static {v2}, Lt2/f;->b(Ljava/lang/Object;)V

    iget-object v3, p0, Ld3/e;->g:Lg3/f;

    if-eqz v3, :cond_0

    new-instance v0, Lg3/g;

    invoke-direct {v0, p1, p0, p2, v3}, Lg3/g;-><init>(Ly2/OkHttpClient;Ld3/e;Le3/g;Lg3/f;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Le3/g;->k()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    invoke-interface {v1}, Lm3/c0;->timeout()Lm3/d0;

    move-result-object v0

    invoke-virtual {p2}, Le3/g;->h()I

    move-result v3

    int-to-long v3, v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v3, v4, v5}, Lm3/d0;->g(JLjava/util/concurrent/TimeUnit;)Lm3/d0;

    invoke-interface {v2}, Lm3/a0;->timeout()Lm3/d0;

    move-result-object v0

    invoke-virtual {p2}, Le3/g;->j()I

    move-result p2

    int-to-long v3, p2

    invoke-virtual {v0, v3, v4, v5}, Lm3/d0;->g(JLjava/util/concurrent/TimeUnit;)Lm3/d0;

    new-instance v0, Lf3/b;

    invoke-direct {v0, p1, p0, v1, v2}, Lf3/b;-><init>(Ly2/OkHttpClient;Ld3/e;Lm3/g;Lm3/f;)V

    :goto_0
    return-object v0
.end method

.method public final x(Ld3/Exchange;)Ll3/d$d;
    .locals 8

    const-string v0, "exchange"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ld3/e;->d:Ljava/net/Socket;

    invoke-static {v0}, Lt2/f;->b(Ljava/lang/Object;)V

    iget-object v6, p0, Ld3/e;->h:Lm3/g;

    invoke-static {v6}, Lt2/f;->b(Ljava/lang/Object;)V

    iget-object v7, p0, Ld3/e;->i:Lm3/f;

    invoke-static {v7}, Lt2/f;->b(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    invoke-virtual {p0}, Ld3/e;->z()V

    new-instance v0, Ld3/e$d;

    const/4 v5, 0x1

    move-object v1, v0

    move-object v2, p1

    move-object v3, v6

    move-object v4, v7

    invoke-direct/range {v1 .. v7}, Ld3/e$d;-><init>(Ld3/Exchange;Lm3/g;Lm3/f;ZLm3/g;Lm3/f;)V

    return-object v0
.end method

.method public final declared-synchronized y()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Ld3/e;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized z()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Ld3/e;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
