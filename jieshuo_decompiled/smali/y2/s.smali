.class public abstract Ly2/s;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ly2/s$c;,
        Ly2/s$b;
    }
.end annotation


# static fields
.field public static final a:Ly2/s;

.field public static final b:Ly2/s$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ly2/s$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ly2/s$b;-><init>(Lt2/d;)V

    sput-object v0, Ly2/s;->b:Ly2/s$b;

    new-instance v0, Ly2/s$a;

    invoke-direct {v0}, Ly2/s$a;-><init>()V

    sput-object v0, Ly2/s;->a:Ly2/s;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public A(Ly2/Call;Ly2/u;)V
    .locals 0

    const-string p2, "call"

    invoke-static {p1, p2}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public B(Ly2/Call;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ly2/Call;Ly2/Response;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "cachedResponse"

    invoke-static {p2, p1}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public b(Ly2/Call;Ly2/Response;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "response"

    invoke-static {p2, p1}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public c(Ly2/Call;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public d(Ly2/Call;Ljava/io/IOException;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "ioe"

    invoke-static {p2, p1}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public e(Ly2/Call;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public f(Ly2/Call;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public g(Ly2/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Ly2/a0;)V
    .locals 0

    const-string p4, "call"

    invoke-static {p1, p4}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "inetSocketAddress"

    invoke-static {p2, p1}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "proxy"

    invoke-static {p3, p1}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public h(Ly2/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Ly2/a0;Ljava/io/IOException;)V
    .locals 0

    const-string p4, "call"

    invoke-static {p1, p4}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "inetSocketAddress"

    invoke-static {p2, p1}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "proxy"

    invoke-static {p3, p1}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "ioe"

    invoke-static {p5, p1}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public i(Ly2/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "inetSocketAddress"

    invoke-static {p2, p1}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "proxy"

    invoke-static {p3, p1}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public j(Ly2/Call;Ly2/i;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "connection"

    invoke-static {p2, p1}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public k(Ly2/Call;Ly2/i;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "connection"

    invoke-static {p2, p1}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public l(Ly2/Call;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly2/Call;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;)V"
        }
    .end annotation

    const-string v0, "call"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "domainName"

    invoke-static {p2, p1}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "inetAddressList"

    invoke-static {p3, p1}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public m(Ly2/Call;Ljava/lang/String;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "domainName"

    invoke-static {p2, p1}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public n(Ly2/Call;Ly2/w;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly2/Call;",
            "Ly2/w;",
            "Ljava/util/List<",
            "Ljava/net/Proxy;",
            ">;)V"
        }
    .end annotation

    const-string v0, "call"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "url"

    invoke-static {p2, p1}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "proxies"

    invoke-static {p3, p1}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public o(Ly2/Call;Ly2/w;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "url"

    invoke-static {p2, p1}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public p(Ly2/Call;J)V
    .locals 0

    const-string p2, "call"

    invoke-static {p1, p2}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public q(Ly2/Call;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public r(Ly2/Call;Ljava/io/IOException;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "ioe"

    invoke-static {p2, p1}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public s(Ly2/Call;Ly2/Request;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "request"

    invoke-static {p2, p1}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public t(Ly2/Call;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public u(Ly2/Call;J)V
    .locals 0

    const-string p2, "call"

    invoke-static {p1, p2}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public v(Ly2/Call;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public w(Ly2/Call;Ljava/io/IOException;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "ioe"

    invoke-static {p2, p1}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public x(Ly2/Call;Ly2/Response;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "response"

    invoke-static {p2, p1}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public y(Ly2/Call;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public z(Ly2/Call;Ly2/Response;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "response"

    invoke-static {p2, p1}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
