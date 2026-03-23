.class public Lcom/vivo/speechsdk/module/net/utils/LogInterceptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly2/x;


# static fields
.field public static TAG:Ljava/lang/String; = "LogInterceptor"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public intercept(Ly2/x$a;)Ly2/Response;
    .locals 9

    invoke-interface {p1}, Ly2/x$a;->b()Ly2/Request;

    move-result-object v0

    sget-object v1, Lcom/vivo/speechsdk/module/net/utils/LogInterceptor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "request:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ly2/Request;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-interface {p1}, Ly2/x$a;->b()Ly2/Request;

    move-result-object v2

    invoke-interface {p1, v2}, Ly2/x$a;->a(Ly2/Request;)Ly2/Response;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sget-object v4, Lcom/vivo/speechsdk/module/net/utils/LogInterceptor;->TAG:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Ly2/Response;->G()Ly2/Request;

    move-result-object v7

    invoke-virtual {v7}, Ly2/Request;->i()Ly2/w;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    sub-long/2addr v2, v0

    long-to-double v0, v2

    const-wide v2, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v6, v1

    invoke-virtual {p1}, Ly2/Response;->m()Ly2/v;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, v6, v1

    const-string v0, "Received response for %s in %.1fms%n%s"

    invoke-static {v5, v0, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ly2/Response;->b()Ly2/c0;

    move-result-object v0

    invoke-virtual {v0}, Ly2/c0;->g()Ly2/y;

    move-result-object v0

    invoke-virtual {p1}, Ly2/Response;->b()Ly2/c0;

    move-result-object v1

    invoke-virtual {v1}, Ly2/c0;->j()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/vivo/speechsdk/module/net/utils/LogInterceptor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "response body:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vivo/speechsdk/common/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ly2/Response;->A()Ly2/Response$a;

    move-result-object p1

    invoke-static {v0, v1}, Ly2/c0;->h(Ly2/y;Ljava/lang/String;)Ly2/c0;

    move-result-object v0

    invoke-virtual {p1, v0}, Ly2/Response$a;->b(Ly2/c0;)Ly2/Response$a;

    move-result-object p1

    invoke-virtual {p1}, Ly2/Response$a;->c()Ly2/Response;

    move-result-object p1

    return-object p1
.end method
