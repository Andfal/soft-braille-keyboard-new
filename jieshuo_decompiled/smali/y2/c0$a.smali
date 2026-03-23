.class public final Ly2/c0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly2/c0;
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

    invoke-direct {p0}, Ly2/c0$a;-><init>()V

    return-void
.end method

.method public static synthetic e(Ly2/c0$a;[BLy2/y;ILjava/lang/Object;)Ly2/c0;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Ly2/c0$a;->d([BLy2/y;)Ly2/c0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ly2/y;)Ly2/c0;
    .locals 3

    const-string v0, "$this$toResponseBody"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lx2/d;->a:Ljava/nio/charset/Charset;

    if-eqz p2, :cond_1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p2, v2, v1, v2}, Ly2/y;->d(Ly2/y;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/nio/charset/Charset;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v1, Ly2/y;->g:Ly2/y$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "; charset=utf-8"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ly2/y$a;->b(Ljava/lang/String;)Ly2/y;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object v0, v1

    :cond_1
    :goto_0
    new-instance v1, Lm3/e;

    invoke-direct {v1}, Lm3/e;-><init>()V

    invoke-virtual {v1, p1, v0}, Lm3/e;->f0(Ljava/lang/String;Ljava/nio/charset/Charset;)Lm3/e;

    move-result-object p1

    invoke-virtual {p1}, Lm3/e;->size()J

    move-result-wide v0

    invoke-virtual {p0, p1, p2, v0, v1}, Ly2/c0$a;->b(Lm3/g;Ly2/y;J)Ly2/c0;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lm3/g;Ly2/y;J)Ly2/c0;
    .locals 1

    const-string v0, "$this$asResponseBody"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ly2/c0$a$a;

    invoke-direct {v0, p1, p2, p3, p4}, Ly2/c0$a$a;-><init>(Lm3/g;Ly2/y;J)V

    return-object v0
.end method

.method public final c(Ly2/y;Ljava/lang/String;)Ly2/c0;
    .locals 1

    const-string v0, "content"

    invoke-static {p2, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2, p1}, Ly2/c0$a;->a(Ljava/lang/String;Ly2/y;)Ly2/c0;

    move-result-object p1

    return-object p1
.end method

.method public final d([BLy2/y;)Ly2/c0;
    .locals 3

    const-string v0, "$this$toResponseBody"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lm3/e;

    invoke-direct {v0}, Lm3/e;-><init>()V

    invoke-virtual {v0, p1}, Lm3/e;->S([B)Lm3/e;

    move-result-object v0

    array-length p1, p1

    int-to-long v1, p1

    invoke-virtual {p0, v0, p2, v1, v2}, Ly2/c0$a;->b(Lm3/g;Ly2/y;J)Ly2/c0;

    move-result-object p1

    return-object p1
.end method
