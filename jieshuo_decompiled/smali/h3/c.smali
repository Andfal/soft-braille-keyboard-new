.class public final Lh3/c;
.super Lh3/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh3/c$a;
    }
.end annotation


# static fields
.field private static final e:Z

.field public static final f:Lh3/c$a;


# instance fields
.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Li3/m;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lh3/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lh3/c$a;-><init>(Lt2/d;)V

    sput-object v0, Lh3/c;->f:Lh3/c$a;

    sget-object v0, Lh3/m;->c:Lh3/m$a;

    invoke-virtual {v0}, Lh3/m$a;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lh3/c;->e:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lh3/m;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [Li3/m;

    sget-object v1, Li3/c;->a:Li3/c$a;

    invoke-virtual {v1}, Li3/c$a;->a()Li3/m;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Li3/l;

    sget-object v2, Li3/h;->g:Li3/h$a;

    invoke-virtual {v2}, Li3/h$a;->d()Li3/l$a;

    move-result-object v2

    invoke-direct {v1, v2}, Li3/l;-><init>(Li3/l$a;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Li3/l;

    sget-object v2, Li3/k;->b:Li3/k$b;

    invoke-virtual {v2}, Li3/k$b;->a()Li3/l$a;

    move-result-object v2

    invoke-direct {v1, v2}, Li3/l;-><init>(Li3/l$a;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Li3/l;

    sget-object v2, Li3/i;->b:Li3/i$b;

    invoke-virtual {v2}, Li3/i$b;->a()Li3/l$a;

    move-result-object v2

    invoke-direct {v1, v2}, Li3/l;-><init>(Li3/l$a;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Lo2/k;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Li3/m;

    invoke-interface {v3}, Li3/m;->b()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iput-object v1, p0, Lh3/c;->d:Ljava/util/List;

    return-void
.end method

.method public static final synthetic p()Z
    .locals 1

    sget-boolean v0, Lh3/c;->e:Z

    return v0
.end method


# virtual methods
.method public c(Ljavax/net/ssl/X509TrustManager;)Lk3/c;
    .locals 1

    const-string v0, "trustManager"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Li3/d;->d:Li3/d$a;

    invoke-virtual {v0, p1}, Li3/d$a;->a(Ljavax/net/ssl/X509TrustManager;)Li3/d;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lh3/m;->c(Ljavax/net/ssl/X509TrustManager;)Lk3/c;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public e(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLSocket;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Ly2/a0;",
            ">;)V"
        }
    .end annotation

    const-string v0, "sslSocket"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "protocols"

    invoke-static {p3, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lh3/c;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Li3/m;

    invoke-interface {v2, p1}, Li3/m;->a(Ljavax/net/ssl/SSLSocket;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Li3/m;

    if-eqz v1, :cond_2

    invoke-interface {v1, p1, p2, p3}, Li3/m;->d(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method public g(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 4

    const-string v0, "sslSocket"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lh3/c;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Li3/m;

    invoke-interface {v3, p1}, Li3/m;->a(Ljavax/net/ssl/SSLSocket;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    check-cast v1, Li3/m;

    if-eqz v1, :cond_2

    invoke-interface {v1, p1}, Li3/m;->c(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object v2

    :cond_2
    return-object v2
.end method

.method public i(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "hostname"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lh3/a;->a()Landroid/security/NetworkSecurityPolicy;

    move-result-object v0

    invoke-static {v0, p1}, Lh3/b;->a(Landroid/security/NetworkSecurityPolicy;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
