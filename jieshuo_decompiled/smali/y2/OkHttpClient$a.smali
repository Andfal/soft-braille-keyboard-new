.class public final Ly2/OkHttpClient$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly2/OkHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private A:I

.field private B:J

.field private C:Ld3/h;

.field private a:Ly2/q;

.field private b:Ly2/j;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ly2/x;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ly2/x;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ly2/s$c;

.field private f:Z

.field private g:Ly2/b;

.field private h:Z

.field private i:Z

.field private j:Ly2/o;

.field private k:Ly2/r;

.field private l:Ljava/net/Proxy;

.field private m:Ljava/net/ProxySelector;

.field private n:Ly2/b;

.field private o:Ljavax/net/SocketFactory;

.field private p:Ljavax/net/ssl/SSLSocketFactory;

.field private q:Ljavax/net/ssl/X509TrustManager;

.field private r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ly2/k;",
            ">;"
        }
    .end annotation
.end field

.field private s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Ly2/a0;",
            ">;"
        }
    .end annotation
.end field

.field private t:Ljavax/net/ssl/HostnameVerifier;

.field private u:Ly2/f;

.field private v:Lk3/c;

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ly2/q;

    invoke-direct {v0}, Ly2/q;-><init>()V

    iput-object v0, p0, Ly2/OkHttpClient$a;->a:Ly2/q;

    new-instance v0, Ly2/j;

    invoke-direct {v0}, Ly2/j;-><init>()V

    iput-object v0, p0, Ly2/OkHttpClient$a;->b:Ly2/j;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ly2/OkHttpClient$a;->c:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ly2/OkHttpClient$a;->d:Ljava/util/List;

    sget-object v0, Ly2/s;->a:Ly2/s;

    invoke-static {v0}, Lz2/c;->e(Ly2/s;)Ly2/s$c;

    move-result-object v0

    iput-object v0, p0, Ly2/OkHttpClient$a;->e:Ly2/s$c;

    const/4 v0, 0x1

    iput-boolean v0, p0, Ly2/OkHttpClient$a;->f:Z

    sget-object v1, Ly2/b;->a:Ly2/b;

    iput-object v1, p0, Ly2/OkHttpClient$a;->g:Ly2/b;

    iput-boolean v0, p0, Ly2/OkHttpClient$a;->h:Z

    iput-boolean v0, p0, Ly2/OkHttpClient$a;->i:Z

    sget-object v0, Ly2/o;->a:Ly2/o;

    iput-object v0, p0, Ly2/OkHttpClient$a;->j:Ly2/o;

    sget-object v0, Ly2/r;->c:Ly2/r;

    iput-object v0, p0, Ly2/OkHttpClient$a;->k:Ly2/r;

    iput-object v1, p0, Ly2/OkHttpClient$a;->n:Ly2/b;

    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    const-string v1, "SocketFactory.getDefault()"

    invoke-static {v0, v1}, Lt2/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Ly2/OkHttpClient$a;->o:Ljavax/net/SocketFactory;

    sget-object v0, Ly2/OkHttpClient;->F:Ly2/OkHttpClient$b;

    invoke-virtual {v0}, Ly2/OkHttpClient$b;->a()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Ly2/OkHttpClient$a;->r:Ljava/util/List;

    invoke-virtual {v0}, Ly2/OkHttpClient$b;->b()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ly2/OkHttpClient$a;->s:Ljava/util/List;

    sget-object v0, Lk3/d;->a:Lk3/d;

    iput-object v0, p0, Ly2/OkHttpClient$a;->t:Ljavax/net/ssl/HostnameVerifier;

    sget-object v0, Ly2/f;->c:Ly2/f;

    iput-object v0, p0, Ly2/OkHttpClient$a;->u:Ly2/f;

    const/16 v0, 0x2710

    iput v0, p0, Ly2/OkHttpClient$a;->x:I

    iput v0, p0, Ly2/OkHttpClient$a;->y:I

    iput v0, p0, Ly2/OkHttpClient$a;->z:I

    const-wide/16 v0, 0x400

    iput-wide v0, p0, Ly2/OkHttpClient$a;->B:J

    return-void
.end method

.method public constructor <init>(Ly2/OkHttpClient;)V
    .locals 2

    const-string v0, "okHttpClient"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ly2/OkHttpClient$a;-><init>()V

    invoke-virtual {p1}, Ly2/OkHttpClient;->o()Ly2/q;

    move-result-object v0

    iput-object v0, p0, Ly2/OkHttpClient$a;->a:Ly2/q;

    invoke-virtual {p1}, Ly2/OkHttpClient;->l()Ly2/j;

    move-result-object v0

    iput-object v0, p0, Ly2/OkHttpClient$a;->b:Ly2/j;

    iget-object v0, p0, Ly2/OkHttpClient$a;->c:Ljava/util/List;

    invoke-virtual {p1}, Ly2/OkHttpClient;->v()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lo2/k;->p(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    iget-object v0, p0, Ly2/OkHttpClient$a;->d:Ljava/util/List;

    invoke-virtual {p1}, Ly2/OkHttpClient;->x()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lo2/k;->p(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    invoke-virtual {p1}, Ly2/OkHttpClient;->q()Ly2/s$c;

    move-result-object v0

    iput-object v0, p0, Ly2/OkHttpClient$a;->e:Ly2/s$c;

    invoke-virtual {p1}, Ly2/OkHttpClient;->H()Z

    move-result v0

    iput-boolean v0, p0, Ly2/OkHttpClient$a;->f:Z

    invoke-virtual {p1}, Ly2/OkHttpClient;->f()Ly2/b;

    move-result-object v0

    iput-object v0, p0, Ly2/OkHttpClient$a;->g:Ly2/b;

    invoke-virtual {p1}, Ly2/OkHttpClient;->r()Z

    move-result v0

    iput-boolean v0, p0, Ly2/OkHttpClient$a;->h:Z

    invoke-virtual {p1}, Ly2/OkHttpClient;->s()Z

    move-result v0

    iput-boolean v0, p0, Ly2/OkHttpClient$a;->i:Z

    invoke-virtual {p1}, Ly2/OkHttpClient;->n()Ly2/o;

    move-result-object v0

    iput-object v0, p0, Ly2/OkHttpClient$a;->j:Ly2/o;

    invoke-virtual {p1}, Ly2/OkHttpClient;->g()Ly2/c;

    invoke-virtual {p1}, Ly2/OkHttpClient;->p()Ly2/r;

    move-result-object v0

    iput-object v0, p0, Ly2/OkHttpClient$a;->k:Ly2/r;

    invoke-virtual {p1}, Ly2/OkHttpClient;->D()Ljava/net/Proxy;

    move-result-object v0

    iput-object v0, p0, Ly2/OkHttpClient$a;->l:Ljava/net/Proxy;

    invoke-virtual {p1}, Ly2/OkHttpClient;->F()Ljava/net/ProxySelector;

    move-result-object v0

    iput-object v0, p0, Ly2/OkHttpClient$a;->m:Ljava/net/ProxySelector;

    invoke-virtual {p1}, Ly2/OkHttpClient;->E()Ly2/b;

    move-result-object v0

    iput-object v0, p0, Ly2/OkHttpClient$a;->n:Ly2/b;

    invoke-virtual {p1}, Ly2/OkHttpClient;->I()Ljavax/net/SocketFactory;

    move-result-object v0

    iput-object v0, p0, Ly2/OkHttpClient$a;->o:Ljavax/net/SocketFactory;

    invoke-static {p1}, Ly2/OkHttpClient;->d(Ly2/OkHttpClient;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Ly2/OkHttpClient$a;->p:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {p1}, Ly2/OkHttpClient;->M()Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    iput-object v0, p0, Ly2/OkHttpClient$a;->q:Ljavax/net/ssl/X509TrustManager;

    invoke-virtual {p1}, Ly2/OkHttpClient;->m()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ly2/OkHttpClient$a;->r:Ljava/util/List;

    invoke-virtual {p1}, Ly2/OkHttpClient;->C()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ly2/OkHttpClient$a;->s:Ljava/util/List;

    invoke-virtual {p1}, Ly2/OkHttpClient;->u()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    iput-object v0, p0, Ly2/OkHttpClient$a;->t:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {p1}, Ly2/OkHttpClient;->j()Ly2/f;

    move-result-object v0

    iput-object v0, p0, Ly2/OkHttpClient$a;->u:Ly2/f;

    invoke-virtual {p1}, Ly2/OkHttpClient;->i()Lk3/c;

    move-result-object v0

    iput-object v0, p0, Ly2/OkHttpClient$a;->v:Lk3/c;

    invoke-virtual {p1}, Ly2/OkHttpClient;->h()I

    move-result v0

    iput v0, p0, Ly2/OkHttpClient$a;->w:I

    invoke-virtual {p1}, Ly2/OkHttpClient;->k()I

    move-result v0

    iput v0, p0, Ly2/OkHttpClient$a;->x:I

    invoke-virtual {p1}, Ly2/OkHttpClient;->G()I

    move-result v0

    iput v0, p0, Ly2/OkHttpClient$a;->y:I

    invoke-virtual {p1}, Ly2/OkHttpClient;->L()I

    move-result v0

    iput v0, p0, Ly2/OkHttpClient$a;->z:I

    invoke-virtual {p1}, Ly2/OkHttpClient;->B()I

    move-result v0

    iput v0, p0, Ly2/OkHttpClient$a;->A:I

    invoke-virtual {p1}, Ly2/OkHttpClient;->w()J

    move-result-wide v0

    iput-wide v0, p0, Ly2/OkHttpClient$a;->B:J

    invoke-virtual {p1}, Ly2/OkHttpClient;->t()Ld3/h;

    move-result-object p1

    iput-object p1, p0, Ly2/OkHttpClient$a;->C:Ld3/h;

    return-void
.end method


# virtual methods
.method public final A()Ljava/net/Proxy;
    .locals 1

    iget-object v0, p0, Ly2/OkHttpClient$a;->l:Ljava/net/Proxy;

    return-object v0
.end method

.method public final B()Ly2/b;
    .locals 1

    iget-object v0, p0, Ly2/OkHttpClient$a;->n:Ly2/b;

    return-object v0
.end method

.method public final C()Ljava/net/ProxySelector;
    .locals 1

    iget-object v0, p0, Ly2/OkHttpClient$a;->m:Ljava/net/ProxySelector;

    return-object v0
.end method

.method public final D()I
    .locals 1

    iget v0, p0, Ly2/OkHttpClient$a;->y:I

    return v0
.end method

.method public final E()Z
    .locals 1

    iget-boolean v0, p0, Ly2/OkHttpClient$a;->f:Z

    return v0
.end method

.method public final F()Ld3/h;
    .locals 1

    iget-object v0, p0, Ly2/OkHttpClient$a;->C:Ld3/h;

    return-object v0
.end method

.method public final G()Ljavax/net/SocketFactory;
    .locals 1

    iget-object v0, p0, Ly2/OkHttpClient$a;->o:Ljavax/net/SocketFactory;

    return-object v0
.end method

.method public final H()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    iget-object v0, p0, Ly2/OkHttpClient$a;->p:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public final I()I
    .locals 1

    iget v0, p0, Ly2/OkHttpClient$a;->z:I

    return v0
.end method

.method public final J()Ljavax/net/ssl/X509TrustManager;
    .locals 1

    iget-object v0, p0, Ly2/OkHttpClient$a;->q:Ljavax/net/ssl/X509TrustManager;

    return-object v0
.end method

.method public final K(JLjava/util/concurrent/TimeUnit;)Ly2/OkHttpClient$a;
    .locals 1

    const-string v0, "unit"

    invoke-static {p3, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "interval"

    invoke-static {v0, p1, p2, p3}, Lz2/c;->h(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    iput p1, p0, Ly2/OkHttpClient$a;->A:I

    return-object p0
.end method

.method public final L(Ljava/util/List;)Ly2/OkHttpClient$a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ly2/a0;",
            ">;)",
            "Ly2/OkHttpClient$a;"
        }
    .end annotation

    const-string v0, "protocols"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lo2/k;->I(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    sget-object v0, Ly2/a0;->f:Ly2/a0;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    sget-object v1, Ly2/a0;->c:Ly2/a0;

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_8

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v3, :cond_3

    :cond_2
    const/4 v2, 0x1

    :cond_3
    if-eqz v2, :cond_7

    sget-object v0, Ly2/a0;->b:Ly2/a0;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v3

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v3

    if-eqz v1, :cond_5

    sget-object v1, Ly2/a0;->d:Ly2/a0;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Ly2/OkHttpClient$a;->s:Ljava/util/List;

    invoke-static {p1, v1}, Lt2/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v3

    if-eqz v1, :cond_4

    iput-object v0, p0, Ly2/OkHttpClient$a;->C:Ld3/h;

    :cond_4
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    const-string v0, "Collections.unmodifiableList(protocolsCopy)"

    invoke-static {p1, v0}, Lt2/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ly2/OkHttpClient$a;->s:Ljava/util/List;

    return-object p0

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "protocols must not contain null"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "protocols must not contain http/1.0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "protocols containing h2_prior_knowledge cannot use other protocols: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "protocols must contain h2_prior_knowledge or http/1.1: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final M(JLjava/util/concurrent/TimeUnit;)Ly2/OkHttpClient$a;
    .locals 1

    const-string v0, "unit"

    invoke-static {p3, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timeout"

    invoke-static {v0, p1, p2, p3}, Lz2/c;->h(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    iput p1, p0, Ly2/OkHttpClient$a;->y:I

    return-object p0
.end method

.method public final N(Z)Ly2/OkHttpClient$a;
    .locals 0

    iput-boolean p1, p0, Ly2/OkHttpClient$a;->f:Z

    return-object p0
.end method

.method public final O(JLjava/util/concurrent/TimeUnit;)Ly2/OkHttpClient$a;
    .locals 1

    const-string v0, "unit"

    invoke-static {p3, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timeout"

    invoke-static {v0, p1, p2, p3}, Lz2/c;->h(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    iput p1, p0, Ly2/OkHttpClient$a;->z:I

    return-object p0
.end method

.method public final a()Ly2/OkHttpClient;
    .locals 1

    new-instance v0, Ly2/OkHttpClient;

    invoke-direct {v0, p0}, Ly2/OkHttpClient;-><init>(Ly2/OkHttpClient$a;)V

    return-object v0
.end method

.method public final b(Ly2/c;)Ly2/OkHttpClient$a;
    .locals 0

    return-object p0
.end method

.method public final c(JLjava/util/concurrent/TimeUnit;)Ly2/OkHttpClient$a;
    .locals 1

    const-string v0, "unit"

    invoke-static {p3, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timeout"

    invoke-static {v0, p1, p2, p3}, Lz2/c;->h(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    iput p1, p0, Ly2/OkHttpClient$a;->w:I

    return-object p0
.end method

.method public final d(JLjava/util/concurrent/TimeUnit;)Ly2/OkHttpClient$a;
    .locals 1

    const-string v0, "unit"

    invoke-static {p3, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timeout"

    invoke-static {v0, p1, p2, p3}, Lz2/c;->h(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    iput p1, p0, Ly2/OkHttpClient$a;->x:I

    return-object p0
.end method

.method public final e(Ly2/r;)Ly2/OkHttpClient$a;
    .locals 1

    const-string v0, "dns"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ly2/OkHttpClient$a;->k:Ly2/r;

    invoke-static {p1, v0}, Lt2/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Ly2/OkHttpClient$a;->C:Ld3/h;

    :cond_0
    iput-object p1, p0, Ly2/OkHttpClient$a;->k:Ly2/r;

    return-object p0
.end method

.method public final f(Ly2/s;)Ly2/OkHttpClient$a;
    .locals 1

    const-string v0, "eventListener"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lz2/c;->e(Ly2/s;)Ly2/s$c;

    move-result-object p1

    iput-object p1, p0, Ly2/OkHttpClient$a;->e:Ly2/s$c;

    return-object p0
.end method

.method public final g()Ly2/b;
    .locals 1

    iget-object v0, p0, Ly2/OkHttpClient$a;->g:Ly2/b;

    return-object v0
.end method

.method public final h()Ly2/c;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final i()I
    .locals 1

    iget v0, p0, Ly2/OkHttpClient$a;->w:I

    return v0
.end method

.method public final j()Lk3/c;
    .locals 1

    iget-object v0, p0, Ly2/OkHttpClient$a;->v:Lk3/c;

    return-object v0
.end method

.method public final k()Ly2/f;
    .locals 1

    iget-object v0, p0, Ly2/OkHttpClient$a;->u:Ly2/f;

    return-object v0
.end method

.method public final l()I
    .locals 1

    iget v0, p0, Ly2/OkHttpClient$a;->x:I

    return v0
.end method

.method public final m()Ly2/j;
    .locals 1

    iget-object v0, p0, Ly2/OkHttpClient$a;->b:Ly2/j;

    return-object v0
.end method

.method public final n()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ly2/k;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ly2/OkHttpClient$a;->r:Ljava/util/List;

    return-object v0
.end method

.method public final o()Ly2/o;
    .locals 1

    iget-object v0, p0, Ly2/OkHttpClient$a;->j:Ly2/o;

    return-object v0
.end method

.method public final p()Ly2/q;
    .locals 1

    iget-object v0, p0, Ly2/OkHttpClient$a;->a:Ly2/q;

    return-object v0
.end method

.method public final q()Ly2/r;
    .locals 1

    iget-object v0, p0, Ly2/OkHttpClient$a;->k:Ly2/r;

    return-object v0
.end method

.method public final r()Ly2/s$c;
    .locals 1

    iget-object v0, p0, Ly2/OkHttpClient$a;->e:Ly2/s$c;

    return-object v0
.end method

.method public final s()Z
    .locals 1

    iget-boolean v0, p0, Ly2/OkHttpClient$a;->h:Z

    return v0
.end method

.method public final t()Z
    .locals 1

    iget-boolean v0, p0, Ly2/OkHttpClient$a;->i:Z

    return v0
.end method

.method public final u()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    iget-object v0, p0, Ly2/OkHttpClient$a;->t:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public final v()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ly2/x;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ly2/OkHttpClient$a;->c:Ljava/util/List;

    return-object v0
.end method

.method public final w()J
    .locals 2

    iget-wide v0, p0, Ly2/OkHttpClient$a;->B:J

    return-wide v0
.end method

.method public final x()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ly2/x;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ly2/OkHttpClient$a;->d:Ljava/util/List;

    return-object v0
.end method

.method public final y()I
    .locals 1

    iget v0, p0, Ly2/OkHttpClient$a;->A:I

    return v0
.end method

.method public final z()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ly2/a0;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ly2/OkHttpClient$a;->s:Ljava/util/List;

    return-object v0
.end method
