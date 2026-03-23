.class public final Lg3/g$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg3/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lt2/d;)V
    .locals 0

    invoke-direct {p0}, Lg3/g$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ly2/Request;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly2/Request;",
            ")",
            "Ljava/util/List<",
            "Lg3/c;",
            ">;"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ly2/Request;->e()Ly2/v;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ly2/v;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v2, Lg3/c;

    sget-object v3, Lg3/c;->f:Lm3/h;

    invoke-virtual {p1}, Ly2/Request;->g()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lg3/c;-><init>(Lm3/h;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lg3/c;

    sget-object v3, Lg3/c;->g:Lm3/h;

    sget-object v4, Le3/i;->a:Le3/i;

    invoke-virtual {p1}, Ly2/Request;->i()Ly2/w;

    move-result-object v5

    invoke-virtual {v4, v5}, Le3/i;->c(Ly2/w;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lg3/c;-><init>(Lm3/h;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "Host"

    invoke-virtual {p1, v2}, Ly2/Request;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v3, Lg3/c;

    sget-object v4, Lg3/c;->i:Lm3/h;

    invoke-direct {v3, v4, v2}, Lg3/c;-><init>(Lm3/h;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v2, Lg3/c;

    sget-object v3, Lg3/c;->h:Lm3/h;

    invoke-virtual {p1}, Ly2/Request;->i()Ly2/w;

    move-result-object p1

    invoke-virtual {p1}, Ly2/w;->p()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v3, p1}, Lg3/c;-><init>(Lm3/h;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ly2/v;->size()I

    move-result p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_4

    invoke-virtual {v0, v2}, Ly2/v;->b(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "Locale.US"

    invoke-static {v4, v5}, Lt2/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v3, :cond_3

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "(this as java.lang.String).toLowerCase(locale)"

    invoke-static {v3, v4}, Lt2/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lg3/g;->h()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "te"

    invoke-static {v3, v4}, Lt2/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0, v2}, Ly2/v;->f(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "trailers"

    invoke-static {v4, v5}, Lt2/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    new-instance v4, Lg3/c;

    invoke-virtual {v0, v2}, Ly2/v;->f(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Lg3/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    return-object v1
.end method

.method public final b(Ly2/v;Ly2/a0;)Ly2/Response$a;
    .locals 7

    const-string v0, "headerBlock"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "protocol"

    invoke-static {p2, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ly2/v$a;

    invoke-direct {v0}, Ly2/v$a;-><init>()V

    invoke-virtual {p1}, Ly2/v;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    invoke-virtual {p1, v3}, Ly2/v;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3}, Ly2/v;->f(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, ":status"

    invoke-static {v4, v6}, Lt2/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object v2, Le3/k;->d:Le3/k$a;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HTTP/1.1 "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Le3/k$a;->a(Ljava/lang/String;)Le3/k;

    move-result-object v2

    goto :goto_1

    :cond_0
    invoke-static {}, Lg3/g;->i()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v0, v4, v5}, Ly2/v$a;->c(Ljava/lang/String;Ljava/lang/String;)Ly2/v$a;

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    new-instance p1, Ly2/Response$a;

    invoke-direct {p1}, Ly2/Response$a;-><init>()V

    invoke-virtual {p1, p2}, Ly2/Response$a;->p(Ly2/a0;)Ly2/Response$a;

    move-result-object p1

    iget p2, v2, Le3/k;->b:I

    invoke-virtual {p1, p2}, Ly2/Response$a;->g(I)Ly2/Response$a;

    move-result-object p1

    iget-object p2, v2, Le3/k;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ly2/Response$a;->m(Ljava/lang/String;)Ly2/Response$a;

    move-result-object p1

    invoke-virtual {v0}, Ly2/v$a;->e()Ly2/v;

    move-result-object p2

    invoke-virtual {p1, p2}, Ly2/Response$a;->k(Ly2/v;)Ly2/Response$a;

    move-result-object p1

    return-object p1

    :cond_3
    new-instance p1, Ljava/net/ProtocolException;

    const-string p2, "Expected \':status\' header not present"

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
