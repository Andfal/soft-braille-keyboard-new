.class public final Lz2/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[B

.field public static final b:Ly2/v;

.field public static final c:Ly2/c0;

.field public static final d:Ly2/b0;

.field private static final e:Lm3/s;

.field public static final f:Ljava/util/TimeZone;

.field private static final g:Lx2/f;

.field public static final h:Z

.field public static final i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v0, 0x0

    new-array v2, v0, [B

    sput-object v2, Lz2/c;->a:[B

    sget-object v1, Ly2/v;->b:Ly2/v$b;

    new-array v3, v0, [Ljava/lang/String;

    invoke-virtual {v1, v3}, Ly2/v$b;->h([Ljava/lang/String;)Ly2/v;

    move-result-object v1

    sput-object v1, Lz2/c;->b:Ly2/v;

    sget-object v1, Ly2/c0;->a:Ly2/c0$a;

    const/4 v3, 0x0

    const/4 v8, 0x1

    invoke-static {v1, v2, v3, v8, v3}, Ly2/c0$a;->e(Ly2/c0$a;[BLy2/y;ILjava/lang/Object;)Ly2/c0;

    move-result-object v1

    sput-object v1, Lz2/c;->c:Ly2/c0;

    sget-object v1, Ly2/b0;->Companion:Ly2/b0$a;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x7

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Ly2/b0$a;->k(Ly2/b0$a;[BLy2/y;IIILjava/lang/Object;)Ly2/b0;

    move-result-object v1

    sput-object v1, Lz2/c;->d:Ly2/b0;

    sget-object v1, Lm3/s;->d:Lm3/s$a;

    const/4 v2, 0x5

    new-array v2, v2, [Lm3/h;

    sget-object v3, Lm3/h;->e:Lm3/h$a;

    const-string v4, "efbbbf"

    invoke-virtual {v3, v4}, Lm3/h$a;->a(Ljava/lang/String;)Lm3/h;

    move-result-object v4

    aput-object v4, v2, v0

    const-string v4, "feff"

    invoke-virtual {v3, v4}, Lm3/h$a;->a(Ljava/lang/String;)Lm3/h;

    move-result-object v4

    aput-object v4, v2, v8

    const-string v4, "fffe"

    invoke-virtual {v3, v4}, Lm3/h$a;->a(Ljava/lang/String;)Lm3/h;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v2, v5

    const-string v4, "0000ffff"

    invoke-virtual {v3, v4}, Lm3/h$a;->a(Ljava/lang/String;)Lm3/h;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v2, v5

    const-string v4, "ffff0000"

    invoke-virtual {v3, v4}, Lm3/h$a;->a(Ljava/lang/String;)Lm3/h;

    move-result-object v3

    const/4 v4, 0x4

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lm3/s$a;->d([Lm3/h;)Lm3/s;

    move-result-object v1

    sput-object v1, Lz2/c;->e:Lm3/s;

    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Lt2/f;->b(Ljava/lang/Object;)V

    sput-object v1, Lz2/c;->f:Ljava/util/TimeZone;

    new-instance v1, Lx2/f;

    const-string v2, "([0-9a-fA-F]*:[0-9a-fA-F:.]*)|([\\d.]+)"

    invoke-direct {v1, v2}, Lx2/f;-><init>(Ljava/lang/String;)V

    sput-object v1, Lz2/c;->g:Lx2/f;

    sput-boolean v0, Lz2/c;->h:Z

    const-class v0, Ly2/OkHttpClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OkHttpClient::class.java.name"

    invoke-static {v0, v1}, Lt2/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "okhttp3."

    invoke-static {v0, v1}, Lx2/g;->Z(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Client"

    invoke-static {v0, v1}, Lx2/g;->a0(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lz2/c;->i:Ljava/lang/String;

    return-void
.end method

.method public static final A(Ljava/lang/String;I)I
    .locals 3

    const-string v0, "$this$indexOfNonWhitespace"

    invoke-static {p0, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    if-ge p1, v0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-eq v1, v2, :cond_0

    const/16 v2, 0x9

    if-eq v1, v2, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    return p0
.end method

.method public static final B([Ljava/lang/String;[Ljava/lang/String;Ljava/util/Comparator;)[Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/Comparator<",
            "-",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "$this$intersect"

    invoke-static {p0, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "comparator"

    invoke-static {p2, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p0, v3

    array-length v5, p1

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_1

    aget-object v7, p1, v6

    invoke-interface {p2, v4, v7}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v7

    if-nez v7, :cond_0

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    new-array p0, v2, [Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_3

    check-cast p0, [Ljava/lang/String;

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final C(Ljava/net/Socket;Lm3/g;)Z
    .locals 2

    const-string v0, "$this$isHealthy"

    invoke-static {p0, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->getSoTimeout()I

    move-result v1
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    invoke-interface {p1}, Lm3/g;->s()Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    xor-int/2addr p1, v0

    :try_start_2
    invoke-virtual {p0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    move v0, p1

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    throw p1
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    const/4 v0, 0x0

    :catch_1
    :goto_0
    return v0
.end method

.method public static final D(C)I
    .locals 2

    const/16 v0, 0x30

    if-le v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x39

    if-lt v1, p0, :cond_1

    sub-int/2addr p0, v0

    goto :goto_4

    :cond_1
    :goto_0
    const/16 v0, 0x61

    if-le v0, p0, :cond_2

    goto :goto_2

    :cond_2
    const/16 v1, 0x66

    if-lt v1, p0, :cond_3

    :goto_1
    sub-int/2addr p0, v0

    add-int/lit8 p0, p0, 0xa

    goto :goto_4

    :cond_3
    :goto_2
    const/16 v0, 0x41

    if-le v0, p0, :cond_4

    goto :goto_3

    :cond_4
    const/16 v1, 0x46

    if-lt v1, p0, :cond_5

    goto :goto_1

    :cond_5
    :goto_3
    const/4 p0, -0x1

    :goto_4
    return p0
.end method

.method public static final E(Lm3/g;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;
    .locals 1

    const-string v0, "$this$readBomAsCharset"

    invoke-static {p0, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "default"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lz2/c;->e:Lm3/s;

    invoke-interface {p0, v0}, Lm3/g;->a(Lm3/s;)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_5

    if-eqz p0, :cond_4

    const/4 p1, 0x1

    if-eq p0, p1, :cond_3

    const/4 p1, 0x2

    if-eq p0, p1, :cond_2

    const/4 p1, 0x3

    if-eq p0, p1, :cond_1

    const/4 p1, 0x4

    if-ne p0, p1, :cond_0

    sget-object p0, Lx2/d;->i:Lx2/d;

    invoke-virtual {p0}, Lx2/d;->b()Ljava/nio/charset/Charset;

    move-result-object p1

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    sget-object p0, Lx2/d;->i:Lx2/d;

    invoke-virtual {p0}, Lx2/d;->a()Ljava/nio/charset/Charset;

    move-result-object p1

    goto :goto_1

    :cond_2
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    const-string p0, "UTF_16LE"

    goto :goto_0

    :cond_3
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    const-string p0, "UTF_16BE"

    goto :goto_0

    :cond_4
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string p0, "UTF_8"

    :goto_0
    invoke-static {p1, p0}, Lt2/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-object p1
.end method

.method public static final F(Lm3/g;)I
    .locals 3

    const-string v0, "$this$readMedium"

    invoke-static {p0, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lm3/g;->readByte()B

    move-result v0

    const/16 v1, 0xff

    invoke-static {v0, v1}, Lz2/c;->b(BI)I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    invoke-interface {p0}, Lm3/g;->readByte()B

    move-result v2

    invoke-static {v2, v1}, Lz2/c;->b(BI)I

    move-result v2

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    invoke-interface {p0}, Lm3/g;->readByte()B

    move-result p0

    invoke-static {p0, v1}, Lz2/c;->b(BI)I

    move-result p0

    or-int/2addr p0, v0

    return p0
.end method

.method public static final G(Lm3/e;B)I
    .locals 3

    const-string v0, "$this$skipAll"

    invoke-static {p0, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lm3/e;->s()Z

    move-result v1

    if-nez v1, :cond_0

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v1, v2}, Lm3/e;->l(J)B

    move-result v1

    if-ne v1, p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Lm3/e;->readByte()B

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static final H(Lm3/c0;ILjava/util/concurrent/TimeUnit;)Z
    .locals 11

    const-string v0, "$this$skipAll"

    invoke-static {p0, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timeUnit"

    invoke-static {p2, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-interface {p0}, Lm3/c0;->timeout()Lm3/d0;

    move-result-object v2

    invoke-virtual {v2}, Lm3/d0;->e()Z

    move-result v2

    const-wide v3, 0x7fffffffffffffffL

    if-eqz v2, :cond_0

    invoke-interface {p0}, Lm3/c0;->timeout()Lm3/d0;

    move-result-object v2

    invoke-virtual {v2}, Lm3/d0;->c()J

    move-result-wide v5

    sub-long/2addr v5, v0

    goto :goto_0

    :cond_0
    move-wide v5, v3

    :goto_0
    invoke-interface {p0}, Lm3/c0;->timeout()Lm3/d0;

    move-result-object v2

    int-to-long v7, p1

    invoke-virtual {p2, v7, v8}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    invoke-static {v5, v6, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    add-long/2addr p1, v0

    invoke-virtual {v2, p1, p2}, Lm3/d0;->d(J)Lm3/d0;

    :try_start_0
    new-instance p1, Lm3/e;

    invoke-direct {p1}, Lm3/e;-><init>()V

    :goto_1
    const-wide/16 v7, 0x2000

    invoke-interface {p0, p1, v7, v8}, Lm3/c0;->Y(Lm3/e;J)J

    move-result-wide v7

    const-wide/16 v9, -0x1

    cmp-long p2, v7, v9

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lm3/e;->c()V
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    cmp-long p1, v5, v3

    invoke-interface {p0}, Lm3/c0;->timeout()Lm3/d0;

    move-result-object p0

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lm3/d0;->a()Lm3/d0;

    goto :goto_2

    :cond_2
    add-long/2addr v0, v5

    invoke-virtual {p0, v0, v1}, Lm3/d0;->d(J)Lm3/d0;

    :goto_2
    const/4 p0, 0x1

    goto :goto_5

    :catchall_0
    move-exception p1

    cmp-long p2, v5, v3

    invoke-interface {p0}, Lm3/c0;->timeout()Lm3/d0;

    move-result-object p0

    if-nez p2, :cond_3

    invoke-virtual {p0}, Lm3/d0;->a()Lm3/d0;

    goto :goto_3

    :cond_3
    add-long/2addr v0, v5

    invoke-virtual {p0, v0, v1}, Lm3/d0;->d(J)Lm3/d0;

    :goto_3
    throw p1

    :catch_0
    nop

    cmp-long p1, v5, v3

    invoke-interface {p0}, Lm3/c0;->timeout()Lm3/d0;

    move-result-object p0

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lm3/d0;->a()Lm3/d0;

    goto :goto_4

    :cond_4
    add-long/2addr v0, v5

    invoke-virtual {p0, v0, v1}, Lm3/d0;->d(J)Lm3/d0;

    :goto_4
    const/4 p0, 0x0

    :goto_5
    return p0
.end method

.method public static final I(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;
    .locals 1

    const-string v0, "name"

    invoke-static {p0, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lz2/c$b;

    invoke-direct {v0, p0, p1}, Lz2/c$b;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static final J(Ly2/v;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly2/v;",
            ")",
            "Ljava/util/List<",
            "Lg3/c;",
            ">;"
        }
    .end annotation

    const-string v0, "$this$toHeaderList"

    invoke-static {p0, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ly2/v;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lkotlin/ranges/l;->g(II)Lkotlin/ranges/h;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lo2/k;->n(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lo2/z;

    invoke-virtual {v2}, Lo2/z;->nextInt()I

    move-result v2

    new-instance v3, Lg3/c;

    invoke-virtual {p0, v2}, Ly2/v;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2}, Ly2/v;->f(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lg3/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static final K(Ljava/util/List;)Ly2/v;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lg3/c;",
            ">;)",
            "Ly2/v;"
        }
    .end annotation

    const-string v0, "$this$toHeaders"

    invoke-static {p0, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ly2/v$a;

    invoke-direct {v0}, Ly2/v$a;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg3/c;

    invoke-virtual {v1}, Lg3/c;->a()Lm3/h;

    move-result-object v2

    invoke-virtual {v1}, Lg3/c;->b()Lm3/h;

    move-result-object v1

    invoke-virtual {v2}, Lm3/h;->x()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lm3/h;->x()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ly2/v$a;->c(Ljava/lang/String;Ljava/lang/String;)Ly2/v$a;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ly2/v$a;->e()Ly2/v;

    move-result-object p0

    return-object p0
.end method

.method public static final L(I)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Integer.toHexString(this)"

    invoke-static {p0, v0}, Lt2/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final M(J)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p0

    const-string p1, "java.lang.Long.toHexString(this)"

    invoke-static {p0, p1}, Lt2/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final N(Ly2/w;Z)Ljava/lang/String;
    .locals 5

    const-string v0, "$this$toHostHeader"

    invoke-static {p0, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ly2/w;->h()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, ":"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4, v1, v2}, Lx2/g;->A(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ly2/w;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ly2/w;->h()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Ly2/w;->l()I

    move-result p1

    sget-object v1, Ly2/w;->l:Ly2/w$b;

    invoke-virtual {p0}, Ly2/w;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ly2/w$b;->c(Ljava/lang/String;)I

    move-result v1

    if-eq p1, v1, :cond_2

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ly2/w;->l()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public static synthetic O(Ly2/w;ZILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-static {p0, p1}, Lz2/c;->N(Ly2/w;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final P(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "$this$toImmutableList"

    invoke-static {p0, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lo2/k;->I(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    const-string v0, "Collections.unmodifiableList(toMutableList())"

    invoke-static {p0, v0}, Lt2/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final Q(Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;+TV;>;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    const-string v0, "$this$toImmutableMap"

    invoke-static {p0, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lo2/b0;->c()Ljava/util/Map;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    const-string v0, "Collections.unmodifiableMap(LinkedHashMap(this))"

    invoke-static {p0, v0}, Lt2/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method public static final R(Ljava/lang/String;J)J
    .locals 1

    const-string v0, "$this$toLongOrDefault"

    invoke-static {p0, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-wide p1
.end method

.method public static final S(Ljava/lang/String;I)I
    .locals 4

    if-eqz p0, :cond_2

    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const v0, 0x7fffffff

    int-to-long v1, v0

    cmp-long v3, p0, v1

    if-lez v3, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-gez v2, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    long-to-int v0, p0

    :goto_0
    return v0

    :catch_0
    :cond_2
    return p1
.end method

.method public static final T(Ljava/lang/String;II)Ljava/lang/String;
    .locals 1

    const-string v0, "$this$trimSubstring"

    invoke-static {p0, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lz2/c;->w(Ljava/lang/String;II)I

    move-result p1

    invoke-static {p0, p1, p2}, Lz2/c;->y(Ljava/lang/String;II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string p1, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {p0, p1}, Lt2/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static synthetic U(Ljava/lang/String;IIILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    :cond_1
    invoke-static {p0, p1, p2}, Lz2/c;->T(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final V(Ljava/lang/Exception;Ljava/util/List;)Ljava/lang/Throwable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Exception;",
            ">;)",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    const-string v0, "$this$withSuppressed"

    invoke-static {p0, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "suppressed"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    invoke-static {p0, v0}, Ln2/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public static final W(Lm3/f;I)V
    .locals 1

    const-string v0, "$this$writeMedium"

    invoke-static {p0, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    ushr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-interface {p0, v0}, Lm3/f;->writeByte(I)Lm3/f;

    ushr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-interface {p0, v0}, Lm3/f;->writeByte(I)Lm3/f;

    and-int/lit16 p1, p1, 0xff

    invoke-interface {p0, p1}, Lm3/f;->writeByte(I)Lm3/f;

    return-void
.end method

.method public static final a(Ljava/util/List;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TE;>;TE;)V"
        }
    .end annotation

    const-string v0, "$this$addIfAbsent"

    invoke-static {p0, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static final b(BI)I
    .locals 0

    and-int/2addr p0, p1

    return p0
.end method

.method public static final c(SI)I
    .locals 0

    and-int/2addr p0, p1

    return p0
.end method

.method public static final d(IJ)J
    .locals 2

    int-to-long v0, p0

    and-long p0, v0, p1

    return-wide p0
.end method

.method public static final e(Ly2/s;)Ly2/s$c;
    .locals 1

    const-string v0, "$this$asFactory"

    invoke-static {p0, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lz2/c$a;

    invoke-direct {v0, p0}, Lz2/c$a;-><init>(Ly2/s;)V

    return-object v0
.end method

.method public static final f(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "$this$canParseAsIpAddress"

    invoke-static {p0, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lz2/c;->g:Lx2/f;

    invoke-virtual {v0, p0}, Lx2/f;->a(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static final g(Ly2/w;Ly2/w;)Z
    .locals 2

    const-string v0, "$this$canReuseConnectionFor"

    invoke-static {p0, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ly2/w;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ly2/w;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lt2/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ly2/w;->l()I

    move-result v0

    invoke-virtual {p1}, Ly2/w;->l()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Ly2/w;->p()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ly2/w;->p()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lt2/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final h(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I
    .locals 7

    const-string v0, "name"

    invoke-static {p0, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-ltz v4, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_8

    if-eqz p3, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_7

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    const p3, 0x7fffffff

    int-to-long v5, p3

    cmp-long p3, p1, v5

    if-gtz p3, :cond_2

    const/4 p3, 0x1

    goto :goto_2

    :cond_2
    const/4 p3, 0x0

    :goto_2
    if-eqz p3, :cond_6

    cmp-long p3, p1, v2

    if-nez p3, :cond_4

    if-gtz v4, :cond_3

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_3
    if-eqz v0, :cond_5

    long-to-int p0, p1

    return p0

    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " too small."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " too large."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "unit == null"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " < 0"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final i(JJJ)V
    .locals 5

    or-long v0, p2, p4

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    cmp-long v0, p2, p0

    if-gtz v0, :cond_0

    sub-long/2addr p0, p2

    cmp-long p2, p0, p4

    if-ltz p2, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public static final j(Ljava/io/Closeable;)V
    .locals 1

    const-string v0, "$this$closeQuietly"

    invoke-static {p0, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    :catch_1
    move-exception p0

    throw p0
.end method

.method public static final k(Ljava/net/Socket;)V
    .locals 2

    const-string v0, "$this$closeQuietly"

    invoke-static {p0, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bio == null"

    invoke-static {v0, v1}, Lt2/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    throw p0

    :catch_2
    move-exception p0

    throw p0
.end method

.method public static final l([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    const-string v0, "$this$concat"

    invoke-static {p0, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string v0, "java.util.Arrays.copyOf(this, newSize)"

    invoke-static {p0, v0}, Lt2/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, [Ljava/lang/String;

    invoke-static {p0}, Lo2/d;->l([Ljava/lang/Object;)I

    move-result v0

    aput-object p1, p0, v0

    return-object p0
.end method

.method public static final m(Ljava/lang/String;CII)I
    .locals 1

    const-string v0, "$this$delimiterOffset"

    invoke-static {p0, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    if-ge p2, p3, :cond_1

    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, p1, :cond_0

    return p2

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return p3
.end method

.method public static final n(Ljava/lang/String;Ljava/lang/String;II)I
    .locals 4

    const-string v0, "$this$delimiterOffset"

    invoke-static {p0, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "delimiters"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    if-ge p2, p3, :cond_1

    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p1, v0, v3, v1, v2}, Lx2/g;->z(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return p2

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return p3
.end method

.method public static synthetic o(Ljava/lang/String;CIIILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p3

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lz2/c;->m(Ljava/lang/String;CII)I

    move-result p0

    return p0
.end method

.method public static final p(Lm3/c0;ILjava/util/concurrent/TimeUnit;)Z
    .locals 1

    const-string v0, "$this$discard"

    invoke-static {p0, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timeUnit"

    invoke-static {p2, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p0, p1, p2}, Lz2/c;->H(Lm3/c0;ILjava/util/concurrent/TimeUnit;)Z

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final varargs q(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    const-string v0, "format"

    invoke-static {p0, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lt2/m;->a:Lt2/m;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "java.lang.String.format(locale, format, *args)"

    invoke-static {p0, p1}, Lt2/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final r([Ljava/lang/String;[Ljava/lang/String;Ljava/util/Comparator;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/Comparator<",
            "-",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "$this$hasIntersection"

    invoke-static {p0, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "comparator"

    invoke-static {p2, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_5

    if-eqz p1, :cond_5

    array-length v0, p1

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_4

    :cond_2
    array-length v0, p0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v0, :cond_5

    aget-object v4, p0, v3

    array-length v5, p1

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v5, :cond_4

    aget-object v7, p1, v6

    invoke-interface {p2, v4, v7}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v7

    if-nez v7, :cond_3

    return v1

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    :goto_4
    return v2
.end method

.method public static final s(Ly2/Response;)J
    .locals 2

    const-string v0, "$this$headersContentLength"

    invoke-static {p0, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ly2/Response;->m()Ly2/v;

    move-result-object p0

    const-string v0, "Content-Length"

    invoke-virtual {p0, v0}, Ly2/v;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-wide/16 v0, -0x1

    if-eqz p0, :cond_0

    invoke-static {p0, v0, v1}, Lz2/c;->R(Ljava/lang/String;J)J

    move-result-wide v0

    :cond_0
    return-wide v0
.end method

.method public static final varargs t([Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    const-string v0, "elements"

    invoke-static {p0, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lo2/k;->h([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    const-string v0, "Collections.unmodifiable\u2026istOf(*elements.clone()))"

    invoke-static {p0, v0}, Lt2/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final u([Ljava/lang/String;Ljava/lang/String;Ljava/util/Comparator;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Comparator<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    const-string v0, "$this$indexOf"

    invoke-static {p0, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "comparator"

    invoke-static {p2, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p0, v2

    invoke-interface {p2, v3, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, -0x1

    :goto_2
    return v2
.end method

.method public static final v(Ljava/lang/String;)I
    .locals 4

    const-string v0, "$this$indexOfControlOrNonAscii"

    invoke-static {p0, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x1f

    invoke-static {v2, v3}, Lt2/f;->e(II)I

    move-result v3

    if-lez v3, :cond_1

    const/16 v3, 0x7f

    invoke-static {v2, v3}, Lt2/f;->e(II)I

    move-result v2

    if-ltz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v1

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public static final w(Ljava/lang/String;II)I
    .locals 2

    const-string v0, "$this$indexOfFirstNonAsciiWhitespace"

    invoke-static {p0, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    if-ge p1, p2, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return p2
.end method

.method public static synthetic x(Ljava/lang/String;IIILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    :cond_1
    invoke-static {p0, p1, p2}, Lz2/c;->w(Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public static final y(Ljava/lang/String;II)I
    .locals 2

    const-string v0, "$this$indexOfLastNonAsciiWhitespace"

    invoke-static {p0, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 p2, p2, -0x1

    if-lt p2, p1, :cond_1

    :goto_0
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    add-int/lit8 p2, p2, 0x1

    return p2

    :cond_0
    if-eq p2, p1, :cond_1

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_1
    return p1
.end method

.method public static synthetic z(Ljava/lang/String;IIILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    :cond_1
    invoke-static {p0, p1, p2}, Lz2/c;->y(Ljava/lang/String;II)I

    move-result p0

    return p0
.end method
