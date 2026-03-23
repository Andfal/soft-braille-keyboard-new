.class public Ly2/OkHttpClient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ly2/OkHttpClient$a;,
        Ly2/OkHttpClient$b;
    }
.end annotation


# static fields
.field private static final D:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ly2/a0;",
            ">;"
        }
    .end annotation
.end field

.field private static final E:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ly2/k;",
            ">;"
        }
    .end annotation
.end field

.field public static final F:Ly2/OkHttpClient$b;


# instance fields
.field private final A:I

.field private final B:J

.field private final C:Ld3/h;

.field private final a:Ly2/q;

.field private final b:Ly2/j;

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

.field private final e:Ly2/s$c;

.field private final f:Z

.field private final g:Ly2/b;

.field private final h:Z

.field private final i:Z

.field private final j:Ly2/o;

.field private final k:Ly2/r;

.field private final l:Ljava/net/Proxy;

.field private final m:Ljava/net/ProxySelector;

.field private final n:Ly2/b;

.field private final o:Ljavax/net/SocketFactory;

.field private final p:Ljavax/net/ssl/SSLSocketFactory;

.field private final q:Ljavax/net/ssl/X509TrustManager;

.field private final r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ly2/k;",
            ">;"
        }
    .end annotation
.end field

.field private final s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ly2/a0;",
            ">;"
        }
    .end annotation
.end field

.field private final t:Ljavax/net/ssl/HostnameVerifier;

.field private final u:Ly2/f;

.field private final v:Lk3/c;

.field private final w:I

.field private final x:I

.field private final y:I

.field private final z:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ly2/OkHttpClient$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ly2/OkHttpClient$b;-><init>(Lt2/d;)V

    sput-object v0, Ly2/OkHttpClient;->F:Ly2/OkHttpClient$b;

    const/4 v0, 0x2

    new-array v1, v0, [Ly2/a0;

    sget-object v2, Ly2/a0;->e:Ly2/a0;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Ly2/a0;->c:Ly2/a0;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {v1}, Lz2/c;->t([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Ly2/OkHttpClient;->D:Ljava/util/List;

    new-array v0, v0, [Ly2/k;

    sget-object v1, Ly2/k;->h:Ly2/k;

    aput-object v1, v0, v3

    sget-object v1, Ly2/k;->j:Ly2/k;

    aput-object v1, v0, v4

    invoke-static {v0}, Lz2/c;->t([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Ly2/OkHttpClient;->E:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    new-instance v0, Ly2/OkHttpClient$a;

    invoke-direct {v0}, Ly2/OkHttpClient$a;-><init>()V

    invoke-direct {p0, v0}, Ly2/OkHttpClient;-><init>(Ly2/OkHttpClient$a;)V

    return-void
.end method

.method public constructor <init>(Ly2/OkHttpClient$a;)V
    .locals 3

    const-string v0, "builder"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ly2/OkHttpClient$a;->p()Ly2/q;

    move-result-object v0

    iput-object v0, p0, Ly2/OkHttpClient;->a:Ly2/q;

    invoke-virtual {p1}, Ly2/OkHttpClient$a;->m()Ly2/j;

    move-result-object v0

    iput-object v0, p0, Ly2/OkHttpClient;->b:Ly2/j;

    invoke-virtual {p1}, Ly2/OkHttpClient$a;->v()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lz2/c;->P(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ly2/OkHttpClient;->c:Ljava/util/List;

    invoke-virtual {p1}, Ly2/OkHttpClient$a;->x()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lz2/c;->P(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ly2/OkHttpClient;->d:Ljava/util/List;

    invoke-virtual {p1}, Ly2/OkHttpClient$a;->r()Ly2/s$c;

    move-result-object v0

    iput-object v0, p0, Ly2/OkHttpClient;->e:Ly2/s$c;

    invoke-virtual {p1}, Ly2/OkHttpClient$a;->E()Z

    move-result v0

    iput-boolean v0, p0, Ly2/OkHttpClient;->f:Z

    invoke-virtual {p1}, Ly2/OkHttpClient$a;->g()Ly2/b;

    move-result-object v0

    iput-object v0, p0, Ly2/OkHttpClient;->g:Ly2/b;

    invoke-virtual {p1}, Ly2/OkHttpClient$a;->s()Z

    move-result v0

    iput-boolean v0, p0, Ly2/OkHttpClient;->h:Z

    invoke-virtual {p1}, Ly2/OkHttpClient$a;->t()Z

    move-result v0

    iput-boolean v0, p0, Ly2/OkHttpClient;->i:Z

    invoke-virtual {p1}, Ly2/OkHttpClient$a;->o()Ly2/o;

    move-result-object v0

    iput-object v0, p0, Ly2/OkHttpClient;->j:Ly2/o;

    invoke-virtual {p1}, Ly2/OkHttpClient$a;->h()Ly2/c;

    invoke-virtual {p1}, Ly2/OkHttpClient$a;->q()Ly2/r;

    move-result-object v0

    iput-object v0, p0, Ly2/OkHttpClient;->k:Ly2/r;

    invoke-virtual {p1}, Ly2/OkHttpClient$a;->A()Ljava/net/Proxy;

    move-result-object v0

    iput-object v0, p0, Ly2/OkHttpClient;->l:Ljava/net/Proxy;

    invoke-virtual {p1}, Ly2/OkHttpClient$a;->A()Ljava/net/Proxy;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lj3/a;->a:Lj3/a;

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ly2/OkHttpClient$a;->C()Ljava/net/ProxySelector;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    :goto_1
    iput-object v0, p0, Ly2/OkHttpClient;->m:Ljava/net/ProxySelector;

    invoke-virtual {p1}, Ly2/OkHttpClient$a;->B()Ly2/b;

    move-result-object v0

    iput-object v0, p0, Ly2/OkHttpClient;->n:Ly2/b;

    invoke-virtual {p1}, Ly2/OkHttpClient$a;->G()Ljavax/net/SocketFactory;

    move-result-object v0

    iput-object v0, p0, Ly2/OkHttpClient;->o:Ljavax/net/SocketFactory;

    invoke-virtual {p1}, Ly2/OkHttpClient$a;->n()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ly2/OkHttpClient;->r:Ljava/util/List;

    invoke-virtual {p1}, Ly2/OkHttpClient$a;->z()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Ly2/OkHttpClient;->s:Ljava/util/List;

    invoke-virtual {p1}, Ly2/OkHttpClient$a;->u()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v1

    iput-object v1, p0, Ly2/OkHttpClient;->t:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {p1}, Ly2/OkHttpClient$a;->i()I

    move-result v1

    iput v1, p0, Ly2/OkHttpClient;->w:I

    invoke-virtual {p1}, Ly2/OkHttpClient$a;->l()I

    move-result v1

    iput v1, p0, Ly2/OkHttpClient;->x:I

    invoke-virtual {p1}, Ly2/OkHttpClient$a;->D()I

    move-result v1

    iput v1, p0, Ly2/OkHttpClient;->y:I

    invoke-virtual {p1}, Ly2/OkHttpClient$a;->I()I

    move-result v1

    iput v1, p0, Ly2/OkHttpClient;->z:I

    invoke-virtual {p1}, Ly2/OkHttpClient$a;->y()I

    move-result v1

    iput v1, p0, Ly2/OkHttpClient;->A:I

    invoke-virtual {p1}, Ly2/OkHttpClient$a;->w()J

    move-result-wide v1

    iput-wide v1, p0, Ly2/OkHttpClient;->B:J

    invoke-virtual {p1}, Ly2/OkHttpClient$a;->F()Ld3/h;

    move-result-object v1

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    new-instance v1, Ld3/h;

    invoke-direct {v1}, Ld3/h;-><init>()V

    :goto_2
    iput-object v1, p0, Ly2/OkHttpClient;->C:Ld3/h;

    instance-of v1, v0, Ljava/util/Collection;

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ly2/k;

    invoke-virtual {v1}, Ly2/k;->f()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v2, 0x0

    :cond_6
    :goto_3
    if-eqz v2, :cond_7

    const/4 p1, 0x0

    iput-object p1, p0, Ly2/OkHttpClient;->p:Ljavax/net/ssl/SSLSocketFactory;

    iput-object p1, p0, Ly2/OkHttpClient;->v:Lk3/c;

    iput-object p1, p0, Ly2/OkHttpClient;->q:Ljavax/net/ssl/X509TrustManager;

    sget-object p1, Ly2/f;->c:Ly2/f;

    :goto_4
    iput-object p1, p0, Ly2/OkHttpClient;->u:Ly2/f;

    goto :goto_6

    :cond_7
    invoke-virtual {p1}, Ly2/OkHttpClient$a;->H()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Ly2/OkHttpClient$a;->H()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Ly2/OkHttpClient;->p:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {p1}, Ly2/OkHttpClient$a;->j()Lk3/c;

    move-result-object v0

    invoke-static {v0}, Lt2/f;->b(Ljava/lang/Object;)V

    iput-object v0, p0, Ly2/OkHttpClient;->v:Lk3/c;

    invoke-virtual {p1}, Ly2/OkHttpClient$a;->J()Ljavax/net/ssl/X509TrustManager;

    move-result-object v1

    invoke-static {v1}, Lt2/f;->b(Ljava/lang/Object;)V

    iput-object v1, p0, Ly2/OkHttpClient;->q:Ljavax/net/ssl/X509TrustManager;

    goto :goto_5

    :cond_8
    sget-object v0, Lh3/m;->c:Lh3/m$a;

    invoke-virtual {v0}, Lh3/m$a;->g()Lh3/m;

    move-result-object v1

    invoke-virtual {v1}, Lh3/m;->o()Ljavax/net/ssl/X509TrustManager;

    move-result-object v1

    iput-object v1, p0, Ly2/OkHttpClient;->q:Ljavax/net/ssl/X509TrustManager;

    invoke-virtual {v0}, Lh3/m$a;->g()Lh3/m;

    move-result-object v0

    invoke-static {v1}, Lt2/f;->b(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lh3/m;->n(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Ly2/OkHttpClient;->p:Ljavax/net/ssl/SSLSocketFactory;

    sget-object v0, Lk3/c;->a:Lk3/c$a;

    invoke-static {v1}, Lt2/f;->b(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lk3/c$a;->a(Ljavax/net/ssl/X509TrustManager;)Lk3/c;

    move-result-object v0

    iput-object v0, p0, Ly2/OkHttpClient;->v:Lk3/c;

    :goto_5
    invoke-virtual {p1}, Ly2/OkHttpClient$a;->k()Ly2/f;

    move-result-object p1

    invoke-static {v0}, Lt2/f;->b(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Ly2/f;->e(Lk3/c;)Ly2/f;

    move-result-object p1

    goto :goto_4

    :goto_6
    invoke-direct {p0}, Ly2/OkHttpClient;->K()V

    return-void
.end method

.method private final K()V
    .locals 4

    iget-object v0, p0, Ly2/OkHttpClient;->c:Ljava/util/List;

    const-string v1, "null cannot be cast to non-null type kotlin.collections.List<okhttp3.Interceptor?>"

    if-eqz v0, :cond_11

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x1

    xor-int/2addr v0, v3

    if-eqz v0, :cond_10

    iget-object v0, p0, Ly2/OkHttpClient;->d:Ljava/util/List;

    if-eqz v0, :cond_f

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v3

    if-eqz v0, :cond_e

    iget-object v0, p0, Ly2/OkHttpClient;->r:Ljava/util/List;

    instance-of v1, v0, Ljava/util/Collection;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ly2/k;

    invoke-virtual {v1}, Ly2/k;->f()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_a

    iget-object v0, p0, Ly2/OkHttpClient;->p:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    const-string v1, "Check failed."

    if-eqz v0, :cond_9

    iget-object v0, p0, Ly2/OkHttpClient;->v:Lk3/c;

    if-nez v0, :cond_4

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_8

    iget-object v0, p0, Ly2/OkHttpClient;->q:Ljavax/net/ssl/X509TrustManager;

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    :goto_3
    if-eqz v3, :cond_7

    iget-object v0, p0, Ly2/OkHttpClient;->u:Ly2/f;

    sget-object v2, Ly2/f;->c:Ly2/f;

    invoke-static {v0, v2}, Lt2/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_4

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iget-object v0, p0, Ly2/OkHttpClient;->p:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_d

    iget-object v0, p0, Ly2/OkHttpClient;->v:Lk3/c;

    if-eqz v0, :cond_c

    iget-object v0, p0, Ly2/OkHttpClient;->q:Ljavax/net/ssl/X509TrustManager;

    if-eqz v0, :cond_b

    :goto_4
    return-void

    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "x509TrustManager == null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "certificateChainCleaner == null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "sslSocketFactory == null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Null network interceptor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ly2/OkHttpClient;->d:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_f
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Null interceptor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ly2/OkHttpClient;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_11
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final synthetic a()Ljava/util/List;
    .locals 1

    sget-object v0, Ly2/OkHttpClient;->E:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic c()Ljava/util/List;
    .locals 1

    sget-object v0, Ly2/OkHttpClient;->D:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic d(Ly2/OkHttpClient;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 0

    iget-object p0, p0, Ly2/OkHttpClient;->p:Ljavax/net/ssl/SSLSocketFactory;

    return-object p0
.end method


# virtual methods
.method public A(Ly2/Request;Ly2/g0;)Ly2/f0;
    .locals 11

    const-string v0, "request"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ll3/d;

    sget-object v2, Lc3/e;->h:Lc3/e;

    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    iget v1, p0, Ly2/OkHttpClient;->A:I

    int-to-long v6, v1

    const/4 v8, 0x0

    iget-wide v9, p0, Ly2/OkHttpClient;->B:J

    move-object v1, v0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v10}, Ll3/d;-><init>(Lc3/e;Ly2/Request;Ly2/g0;Ljava/util/Random;JLl3/e;J)V

    invoke-virtual {v0, p0}, Ll3/d;->g(Ly2/OkHttpClient;)V

    return-object v0
.end method

.method public final B()I
    .locals 1

    iget v0, p0, Ly2/OkHttpClient;->A:I

    return v0
.end method

.method public final C()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ly2/a0;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ly2/OkHttpClient;->s:Ljava/util/List;

    return-object v0
.end method

.method public final D()Ljava/net/Proxy;
    .locals 1

    iget-object v0, p0, Ly2/OkHttpClient;->l:Ljava/net/Proxy;

    return-object v0
.end method

.method public final E()Ly2/b;
    .locals 1

    iget-object v0, p0, Ly2/OkHttpClient;->n:Ly2/b;

    return-object v0
.end method

.method public final F()Ljava/net/ProxySelector;
    .locals 1

    iget-object v0, p0, Ly2/OkHttpClient;->m:Ljava/net/ProxySelector;

    return-object v0
.end method

.method public final G()I
    .locals 1

    iget v0, p0, Ly2/OkHttpClient;->y:I

    return v0
.end method

.method public final H()Z
    .locals 1

    iget-boolean v0, p0, Ly2/OkHttpClient;->f:Z

    return v0
.end method

.method public final I()Ljavax/net/SocketFactory;
    .locals 1

    iget-object v0, p0, Ly2/OkHttpClient;->o:Ljavax/net/SocketFactory;

    return-object v0
.end method

.method public final J()Ljavax/net/ssl/SSLSocketFactory;
    .locals 2

    iget-object v0, p0, Ly2/OkHttpClient;->p:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "CLEARTEXT-only client"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final L()I
    .locals 1

    iget v0, p0, Ly2/OkHttpClient;->z:I

    return v0
.end method

.method public final M()Ljavax/net/ssl/X509TrustManager;
    .locals 1

    iget-object v0, p0, Ly2/OkHttpClient;->q:Ljavax/net/ssl/X509TrustManager;

    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final f()Ly2/b;
    .locals 1

    iget-object v0, p0, Ly2/OkHttpClient;->g:Ly2/b;

    return-object v0
.end method

.method public final g()Ly2/c;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final h()I
    .locals 1

    iget v0, p0, Ly2/OkHttpClient;->w:I

    return v0
.end method

.method public final i()Lk3/c;
    .locals 1

    iget-object v0, p0, Ly2/OkHttpClient;->v:Lk3/c;

    return-object v0
.end method

.method public final j()Ly2/f;
    .locals 1

    iget-object v0, p0, Ly2/OkHttpClient;->u:Ly2/f;

    return-object v0
.end method

.method public final k()I
    .locals 1

    iget v0, p0, Ly2/OkHttpClient;->x:I

    return v0
.end method

.method public final l()Ly2/j;
    .locals 1

    iget-object v0, p0, Ly2/OkHttpClient;->b:Ly2/j;

    return-object v0
.end method

.method public final m()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ly2/k;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ly2/OkHttpClient;->r:Ljava/util/List;

    return-object v0
.end method

.method public final n()Ly2/o;
    .locals 1

    iget-object v0, p0, Ly2/OkHttpClient;->j:Ly2/o;

    return-object v0
.end method

.method public final o()Ly2/q;
    .locals 1

    iget-object v0, p0, Ly2/OkHttpClient;->a:Ly2/q;

    return-object v0
.end method

.method public final p()Ly2/r;
    .locals 1

    iget-object v0, p0, Ly2/OkHttpClient;->k:Ly2/r;

    return-object v0
.end method

.method public final q()Ly2/s$c;
    .locals 1

    iget-object v0, p0, Ly2/OkHttpClient;->e:Ly2/s$c;

    return-object v0
.end method

.method public final r()Z
    .locals 1

    iget-boolean v0, p0, Ly2/OkHttpClient;->h:Z

    return v0
.end method

.method public final s()Z
    .locals 1

    iget-boolean v0, p0, Ly2/OkHttpClient;->i:Z

    return v0
.end method

.method public final t()Ld3/h;
    .locals 1

    iget-object v0, p0, Ly2/OkHttpClient;->C:Ld3/h;

    return-object v0
.end method

.method public final u()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    iget-object v0, p0, Ly2/OkHttpClient;->t:Ljavax/net/ssl/HostnameVerifier;

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

    iget-object v0, p0, Ly2/OkHttpClient;->c:Ljava/util/List;

    return-object v0
.end method

.method public final w()J
    .locals 2

    iget-wide v0, p0, Ly2/OkHttpClient;->B:J

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

    iget-object v0, p0, Ly2/OkHttpClient;->d:Ljava/util/List;

    return-object v0
.end method

.method public y()Ly2/OkHttpClient$a;
    .locals 1

    new-instance v0, Ly2/OkHttpClient$a;

    invoke-direct {v0, p0}, Ly2/OkHttpClient$a;-><init>(Ly2/OkHttpClient;)V

    return-object v0
.end method

.method public z(Ly2/Request;)Ly2/Call;
    .locals 2

    const-string v0, "request"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ld3/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Ld3/d;-><init>(Ly2/OkHttpClient;Ly2/Request;Z)V

    return-object v0
.end method
