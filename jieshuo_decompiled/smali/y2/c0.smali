.class public abstract Ly2/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ly2/c0$a;
    }
.end annotation


# static fields
.field public static final a:Ly2/c0$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ly2/c0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ly2/c0$a;-><init>(Lt2/d;)V

    sput-object v0, Ly2/c0;->a:Ly2/c0$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final e()Ljava/nio/charset/Charset;
    .locals 2

    invoke-virtual {p0}, Ly2/c0;->g()Ly2/y;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lx2/d;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ly2/y;->c(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lx2/d;->a:Ljava/nio/charset/Charset;

    :goto_0
    return-object v0
.end method

.method public static final h(Ly2/y;Ljava/lang/String;)Ly2/c0;
    .locals 1

    sget-object v0, Ly2/c0;->a:Ly2/c0$a;

    invoke-virtual {v0, p0, p1}, Ly2/c0$a;->c(Ly2/y;Ljava/lang/String;)Ly2/c0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final b()Ljava/io/InputStream;
    .locals 1

    invoke-virtual {p0}, Ly2/c0;->i()Lm3/g;

    move-result-object v0

    invoke-interface {v0}, Lm3/g;->i0()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public final c()[B
    .locals 7

    invoke-virtual {p0}, Ly2/c0;->f()J

    move-result-wide v0

    const v2, 0x7fffffff

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-gtz v4, :cond_2

    invoke-virtual {p0}, Ly2/c0;->i()Lm3/g;

    move-result-object v2

    :try_start_0
    invoke-interface {v2}, Lm3/g;->r()[B

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lr2/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    array-length v2, v3

    const-wide/16 v4, -0x1

    cmp-long v6, v0, v4

    if-eqz v6, :cond_1

    int-to-long v4, v2

    cmp-long v6, v0, v4

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Content-Length ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ") and stream length ("

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") disagree"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    :goto_0
    return-object v3

    :catchall_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {v2, v0}, Lr2/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot buffer entire body for content length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public close()V
    .locals 1

    invoke-virtual {p0}, Ly2/c0;->i()Lm3/g;

    move-result-object v0

    invoke-static {v0}, Lz2/c;->j(Ljava/io/Closeable;)V

    return-void
.end method

.method public abstract f()J
.end method

.method public abstract g()Ly2/y;
.end method

.method public abstract i()Lm3/g;
.end method

.method public final j()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Ly2/c0;->i()Lm3/g;

    move-result-object v0

    :try_start_0
    invoke-direct {p0}, Ly2/c0;->e()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-static {v0, v1}, Lz2/c;->E(Lm3/g;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-interface {v0, v1}, Lm3/g;->F(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lr2/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Lr2/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
.end method
