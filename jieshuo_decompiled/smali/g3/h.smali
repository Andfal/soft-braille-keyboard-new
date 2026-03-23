.class public final Lg3/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg3/h$b;,
        Lg3/h$c;,
        Lg3/h$a;
    }
.end annotation


# static fields
.field private static final e:Ljava/util/logging/Logger;

.field public static final f:Lg3/h$a;


# instance fields
.field private final a:Lg3/h$b;

.field private final b:Lg3/d$a;

.field private final c:Lm3/g;

.field private final d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg3/h$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg3/h$a;-><init>(Lt2/d;)V

    sput-object v0, Lg3/h;->f:Lg3/h$a;

    const-class v0, Lg3/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    const-string v1, "Logger.getLogger(Http2::class.java.name)"

    invoke-static {v0, v1}, Lt2/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lg3/h;->e:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lm3/g;Z)V
    .locals 7

    const-string v0, "source"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg3/h;->c:Lm3/g;

    iput-boolean p2, p0, Lg3/h;->d:Z

    new-instance v2, Lg3/h$b;

    invoke-direct {v2, p1}, Lg3/h$b;-><init>(Lm3/g;)V

    iput-object v2, p0, Lg3/h;->a:Lg3/h$b;

    new-instance p1, Lg3/d$a;

    const/16 v3, 0x1000

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lg3/d$a;-><init>(Lm3/c0;IIILt2/d;)V

    iput-object p1, p0, Lg3/h;->b:Lg3/d$a;

    return-void
.end method

.method public static final synthetic b()Ljava/util/logging/Logger;
    .locals 1

    sget-object v0, Lg3/h;->e:Ljava/util/logging/Logger;

    return-object v0
.end method

.method private final f(Lg3/h$c;III)V
    .locals 4

    if-eqz p4, :cond_4

    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    and-int/lit8 v3, p3, 0x20

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_3

    and-int/lit8 v2, p3, 0x8

    if-eqz v2, :cond_2

    iget-object v1, p0, Lg3/h;->c:Lm3/g;

    invoke-interface {v1}, Lm3/g;->readByte()B

    move-result v1

    const/16 v2, 0xff

    invoke-static {v1, v2}, Lz2/c;->b(BI)I

    move-result v1

    :cond_2
    sget-object v2, Lg3/h;->f:Lg3/h$a;

    invoke-virtual {v2, p2, p3, v1}, Lg3/h$a;->b(III)I

    move-result p2

    iget-object p3, p0, Lg3/h;->c:Lm3/g;

    invoke-interface {p1, v0, p4, p3, p2}, Lg3/h$c;->h(ZILm3/g;I)V

    iget-object p1, p0, Lg3/h;->c:Lm3/g;

    int-to-long p2, v1

    invoke-interface {p1, p2, p3}, Lm3/g;->skip(J)V

    return-void

    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "PROTOCOL_ERROR: TYPE_DATA streamId == 0"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final g(Lg3/h$c;III)V
    .locals 3

    const/16 p3, 0x8

    if-lt p2, p3, :cond_3

    if-nez p4, :cond_2

    iget-object p4, p0, Lg3/h;->c:Lm3/g;

    invoke-interface {p4}, Lm3/g;->readInt()I

    move-result p4

    iget-object v0, p0, Lg3/h;->c:Lm3/g;

    invoke-interface {v0}, Lm3/g;->readInt()I

    move-result v0

    sub-int/2addr p2, p3

    sget-object p3, Lg3/b;->q:Lg3/b$a;

    invoke-virtual {p3, v0}, Lg3/b$a;->a(I)Lg3/b;

    move-result-object p3

    if-eqz p3, :cond_1

    sget-object v0, Lm3/h;->d:Lm3/h;

    if-lez p2, :cond_0

    iget-object v0, p0, Lg3/h;->c:Lm3/g;

    int-to-long v1, p2

    invoke-interface {v0, v1, v2}, Lm3/g;->d(J)Lm3/h;

    move-result-object v0

    :cond_0
    invoke-interface {p1, p4, p3, v0}, Lg3/h$c;->e(ILg3/b;Lm3/h;)V

    return-void

    :cond_1
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "TYPE_GOAWAY unexpected error code: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "TYPE_GOAWAY streamId != 0"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "TYPE_GOAWAY length < 8: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final h(IIII)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)",
            "Ljava/util/List<",
            "Lg3/c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lg3/h;->a:Lg3/h$b;

    invoke-virtual {v0, p1}, Lg3/h$b;->f(I)V

    iget-object p1, p0, Lg3/h;->a:Lg3/h$b;

    invoke-virtual {p1}, Lg3/h$b;->b()I

    move-result v0

    invoke-virtual {p1, v0}, Lg3/h$b;->g(I)V

    iget-object p1, p0, Lg3/h;->a:Lg3/h$b;

    invoke-virtual {p1, p2}, Lg3/h$b;->h(I)V

    iget-object p1, p0, Lg3/h;->a:Lg3/h$b;

    invoke-virtual {p1, p3}, Lg3/h$b;->e(I)V

    iget-object p1, p0, Lg3/h;->a:Lg3/h$b;

    invoke-virtual {p1, p4}, Lg3/h$b;->i(I)V

    iget-object p1, p0, Lg3/h;->b:Lg3/d$a;

    invoke-virtual {p1}, Lg3/d$a;->k()V

    iget-object p1, p0, Lg3/h;->b:Lg3/d$a;

    invoke-virtual {p1}, Lg3/d$a;->e()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private final i(Lg3/h$c;III)V
    .locals 3

    if-eqz p4, :cond_3

    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    and-int/lit8 v2, p3, 0x8

    if-eqz v2, :cond_1

    iget-object v1, p0, Lg3/h;->c:Lm3/g;

    invoke-interface {v1}, Lm3/g;->readByte()B

    move-result v1

    const/16 v2, 0xff

    invoke-static {v1, v2}, Lz2/c;->b(BI)I

    move-result v1

    :cond_1
    and-int/lit8 v2, p3, 0x20

    if-eqz v2, :cond_2

    invoke-direct {p0, p1, p4}, Lg3/h;->k(Lg3/h$c;I)V

    add-int/lit8 p2, p2, -0x5

    :cond_2
    sget-object v2, Lg3/h;->f:Lg3/h$a;

    invoke-virtual {v2, p2, p3, v1}, Lg3/h$a;->b(III)I

    move-result p2

    invoke-direct {p0, p2, v1, p3, p4}, Lg3/h;->h(IIII)Ljava/util/List;

    move-result-object p2

    const/4 p3, -0x1

    invoke-interface {p1, v0, p4, p3, p2}, Lg3/h$c;->d(ZIILjava/util/List;)V

    return-void

    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "PROTOCOL_ERROR: TYPE_HEADERS streamId == 0"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final j(Lg3/h$c;III)V
    .locals 1

    const/16 v0, 0x8

    if-ne p2, v0, :cond_2

    if-nez p4, :cond_1

    iget-object p2, p0, Lg3/h;->c:Lm3/g;

    invoke-interface {p2}, Lm3/g;->readInt()I

    move-result p2

    iget-object p4, p0, Lg3/h;->c:Lm3/g;

    invoke-interface {p4}, Lm3/g;->readInt()I

    move-result p4

    const/4 v0, 0x1

    and-int/2addr p3, v0

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1, v0, p2, p4}, Lg3/h$c;->i(ZII)V

    return-void

    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "TYPE_PING streamId != 0"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "TYPE_PING length != 8: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final k(Lg3/h$c;I)V
    .locals 5

    iget-object v0, p0, Lg3/h;->c:Lm3/g;

    invoke-interface {v0}, Lm3/g;->readInt()I

    move-result v0

    const-wide v1, 0x80000000L

    long-to-int v2, v1

    and-int v1, v0, v2

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const v3, 0x7fffffff

    and-int/2addr v0, v3

    iget-object v3, p0, Lg3/h;->c:Lm3/g;

    invoke-interface {v3}, Lm3/g;->readByte()B

    move-result v3

    const/16 v4, 0xff

    invoke-static {v3, v4}, Lz2/c;->b(BI)I

    move-result v3

    add-int/2addr v3, v2

    invoke-interface {p1, p2, v0, v3, v1}, Lg3/h$c;->j(IIIZ)V

    return-void
.end method

.method private final l(Lg3/h$c;III)V
    .locals 0

    const/4 p3, 0x5

    if-ne p2, p3, :cond_1

    if-eqz p4, :cond_0

    invoke-direct {p0, p1, p4}, Lg3/h;->k(Lg3/h$c;I)V

    return-void

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "TYPE_PRIORITY streamId == 0"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "TYPE_PRIORITY length: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " != 5"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final m(Lg3/h$c;III)V
    .locals 3

    if-eqz p4, :cond_1

    and-int/lit8 v0, p3, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg3/h;->c:Lm3/g;

    invoke-interface {v0}, Lm3/g;->readByte()B

    move-result v0

    const/16 v1, 0xff

    invoke-static {v0, v1}, Lz2/c;->b(BI)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lg3/h;->c:Lm3/g;

    invoke-interface {v1}, Lm3/g;->readInt()I

    move-result v1

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    sget-object v2, Lg3/h;->f:Lg3/h$a;

    add-int/lit8 p2, p2, -0x4

    invoke-virtual {v2, p2, p3, v0}, Lg3/h$a;->b(III)I

    move-result p2

    invoke-direct {p0, p2, v0, p3, p4}, Lg3/h;->h(IIII)Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p4, v1, p2}, Lg3/h$c;->k(IILjava/util/List;)V

    return-void

    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final u(Lg3/h$c;III)V
    .locals 0

    const/4 p3, 0x4

    if-ne p2, p3, :cond_2

    if-eqz p4, :cond_1

    iget-object p2, p0, Lg3/h;->c:Lm3/g;

    invoke-interface {p2}, Lm3/g;->readInt()I

    move-result p2

    sget-object p3, Lg3/b;->q:Lg3/b$a;

    invoke-virtual {p3, p2}, Lg3/b$a;->a(I)Lg3/b;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-interface {p1, p4, p3}, Lg3/h$c;->g(ILg3/b;)V

    return-void

    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "TYPE_RST_STREAM unexpected error code: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "TYPE_RST_STREAM streamId == 0"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "TYPE_RST_STREAM length: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " != 4"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final x(Lg3/h$c;III)V
    .locals 7

    if-nez p4, :cond_d

    const/4 p4, 0x1

    and-int/2addr p3, p4

    if-eqz p3, :cond_1

    if-nez p2, :cond_0

    invoke-interface {p1}, Lg3/h$c;->b()V

    return-void

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "FRAME_SIZE_ERROR ack frame should be empty!"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    rem-int/lit8 p3, p2, 0x6

    if-nez p3, :cond_c

    new-instance p3, Lg3/m;

    invoke-direct {p3}, Lg3/m;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0, p2}, Lkotlin/ranges/l;->g(II)Lkotlin/ranges/h;

    move-result-object p2

    const/4 v1, 0x6

    invoke-static {p2, v1}, Lkotlin/ranges/l;->f(Lkotlin/ranges/f;I)Lkotlin/ranges/f;

    move-result-object p2

    invoke-virtual {p2}, Lkotlin/ranges/f;->a()I

    move-result v1

    invoke-virtual {p2}, Lkotlin/ranges/f;->b()I

    move-result v2

    invoke-virtual {p2}, Lkotlin/ranges/f;->d()I

    move-result p2

    if-ltz p2, :cond_2

    if-gt v1, v2, :cond_b

    goto :goto_0

    :cond_2
    if-lt v1, v2, :cond_b

    :goto_0
    iget-object v3, p0, Lg3/h;->c:Lm3/g;

    invoke-interface {v3}, Lm3/g;->readShort()S

    move-result v3

    const v4, 0xffff

    invoke-static {v3, v4}, Lz2/c;->c(SI)I

    move-result v3

    iget-object v4, p0, Lg3/h;->c:Lm3/g;

    invoke-interface {v4}, Lm3/g;->readInt()I

    move-result v4

    const/4 v5, 0x2

    if-eq v3, v5, :cond_8

    const/4 v5, 0x3

    const/4 v6, 0x4

    if-eq v3, v5, :cond_7

    if-eq v3, v6, :cond_5

    const/4 v5, 0x5

    if-eq v3, v5, :cond_3

    goto :goto_1

    :cond_3
    const/16 v5, 0x4000

    if-lt v4, v5, :cond_4

    const v5, 0xffffff

    if-gt v4, v5, :cond_4

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    if-ltz v4, :cond_6

    const/4 v3, 0x7

    goto :goto_1

    :cond_6
    new-instance p1, Ljava/io/IOException;

    const-string p2, "PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    const/4 v3, 0x4

    goto :goto_1

    :cond_8
    if-eqz v4, :cond_a

    if-ne v4, p4, :cond_9

    goto :goto_1

    :cond_9
    new-instance p1, Ljava/io/IOException;

    const-string p2, "PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    :goto_1
    invoke-virtual {p3, v3, v4}, Lg3/m;->h(II)Lg3/m;

    if-eq v1, v2, :cond_b

    add-int/2addr v1, p2

    goto :goto_0

    :cond_b
    invoke-interface {p1, v0, p3}, Lg3/h$c;->c(ZLg3/m;)V

    return-void

    :cond_c
    new-instance p1, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "TYPE_SETTINGS length % 6 != 0: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    new-instance p1, Ljava/io/IOException;

    const-string p2, "TYPE_SETTINGS streamId != 0"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final y(Lg3/h$c;III)V
    .locals 3

    const/4 p3, 0x4

    if-ne p2, p3, :cond_1

    iget-object p2, p0, Lg3/h;->c:Lm3/g;

    invoke-interface {p2}, Lm3/g;->readInt()I

    move-result p2

    const-wide/32 v0, 0x7fffffff

    invoke-static {p2, v0, v1}, Lz2/c;->d(IJ)J

    move-result-wide p2

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-eqz v2, :cond_0

    invoke-interface {p1, p4, p2, p3}, Lg3/h$c;->f(IJ)V

    return-void

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "windowSizeIncrement was 0"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "TYPE_WINDOW_UPDATE length !=4: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final c(ZLg3/h$c;)Z
    .locals 11

    const-string v0, "handler"

    invoke-static {p2, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lg3/h;->c:Lm3/g;

    const-wide/16 v1, 0x9

    invoke-interface {v0, v1, v2}, Lm3/g;->c0(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lg3/h;->c:Lm3/g;

    invoke-static {v0}, Lz2/c;->F(Lm3/g;)I

    move-result v0

    const/16 v1, 0x4000

    if-gt v0, v1, :cond_3

    iget-object v1, p0, Lg3/h;->c:Lm3/g;

    invoke-interface {v1}, Lm3/g;->readByte()B

    move-result v1

    const/16 v2, 0xff

    invoke-static {v1, v2}, Lz2/c;->b(BI)I

    move-result v7

    iget-object v1, p0, Lg3/h;->c:Lm3/g;

    invoke-interface {v1}, Lm3/g;->readByte()B

    move-result v1

    invoke-static {v1, v2}, Lz2/c;->b(BI)I

    move-result v8

    iget-object v1, p0, Lg3/h;->c:Lm3/g;

    invoke-interface {v1}, Lm3/g;->readInt()I

    move-result v1

    const v2, 0x7fffffff

    and-int v9, v1, v2

    sget-object v10, Lg3/h;->e:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v10, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lg3/e;->e:Lg3/e;

    const/4 v2, 0x1

    move v3, v9

    move v4, v0

    move v5, v7

    move v6, v8

    invoke-virtual/range {v1 .. v6}, Lg3/e;->c(ZIIII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_2

    const/4 p1, 0x4

    if-ne v7, p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Expected a SETTINGS frame but was "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lg3/e;->e:Lg3/e;

    invoke-virtual {v0, v7}, Lg3/e;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    packed-switch v7, :pswitch_data_0

    iget-object p1, p0, Lg3/h;->c:Lm3/g;

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lm3/g;->skip(J)V

    goto :goto_1

    :pswitch_0
    invoke-direct {p0, p2, v0, v8, v9}, Lg3/h;->y(Lg3/h$c;III)V

    goto :goto_1

    :pswitch_1
    invoke-direct {p0, p2, v0, v8, v9}, Lg3/h;->g(Lg3/h$c;III)V

    goto :goto_1

    :pswitch_2
    invoke-direct {p0, p2, v0, v8, v9}, Lg3/h;->j(Lg3/h$c;III)V

    goto :goto_1

    :pswitch_3
    invoke-direct {p0, p2, v0, v8, v9}, Lg3/h;->m(Lg3/h$c;III)V

    goto :goto_1

    :pswitch_4
    invoke-direct {p0, p2, v0, v8, v9}, Lg3/h;->x(Lg3/h$c;III)V

    goto :goto_1

    :pswitch_5
    invoke-direct {p0, p2, v0, v8, v9}, Lg3/h;->u(Lg3/h$c;III)V

    goto :goto_1

    :pswitch_6
    invoke-direct {p0, p2, v0, v8, v9}, Lg3/h;->l(Lg3/h$c;III)V

    goto :goto_1

    :pswitch_7
    invoke-direct {p0, p2, v0, v8, v9}, Lg3/h;->i(Lg3/h$c;III)V

    goto :goto_1

    :pswitch_8
    invoke-direct {p0, p2, v0, v8, v9}, Lg3/h;->f(Lg3/h$c;III)V

    :goto_1
    const/4 p1, 0x1

    return p1

    :cond_3
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FRAME_SIZE_ERROR: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    const/4 p1, 0x0

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lg3/h;->c:Lm3/g;

    invoke-interface {v0}, Lm3/c0;->close()V

    return-void
.end method

.method public final e(Lg3/h$c;)V
    .locals 5

    const-string v0, "handler"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lg3/h;->d:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1, p1}, Lg3/h;->c(ZLg3/h$c;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Required SETTINGS preface not received"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object p1, p0, Lg3/h;->c:Lm3/g;

    sget-object v0, Lg3/e;->a:Lm3/h;

    invoke-virtual {v0}, Lm3/h;->t()I

    move-result v2

    int-to-long v2, v2

    invoke-interface {p1, v2, v3}, Lm3/g;->d(J)Lm3/h;

    move-result-object p1

    sget-object v2, Lg3/h;->e:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<< CONNECTION "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lm3/h;->j()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lz2/c;->q(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_2
    invoke-static {v0, p1}, Lt2/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    if-nez v0, :cond_3

    :goto_0
    return-void

    :cond_3
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a connection header but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lm3/h;->x()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
