.class public abstract Lk1/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk1/g;


# instance fields
.field private a:Ljava/net/URI;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lk1/f;->a:Ljava/net/URI;

    return-void
.end method


# virtual methods
.method public a(ILjava/util/Map;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lk1/f;->e(ILjava/util/Map;Ljava/lang/String;[BLjava/lang/Throwable;)V

    return-void
.end method

.method public b(Ljava/net/URI;)V
    .locals 0

    iput-object p1, p0, Lk1/f;->a:Ljava/net/URI;

    return-void
.end method

.method public c(Lk1/c;)V
    .locals 8

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "response: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lk1/c;->j()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TtsResponseHandler"

    invoke-static {v1, v0}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lk1/c;->j()I

    move-result v0

    invoke-virtual {p1}, Lk1/c;->i()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {p1}, Lk1/c;->k()Ljava/lang/String;

    move-result-object v2

    :try_start_0
    invoke-virtual {p1}, Lk1/c;->g()Ljava/io/InputStream;

    move-result-object v3

    const/16 v5, 0xc8

    if-ne v0, v5, :cond_1

    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v5, 0x400

    new-array v5, v5, [B

    :goto_0
    invoke-virtual {v1, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    const/4 v7, 0x0

    invoke-virtual {v3, v5, v7, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p0, v0, v4, v2, v1}, Lk1/f;->d(ILjava/util/Map;Ljava/lang/String;[B)V

    goto :goto_1

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "request fail statusCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lk1/c;->k()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move v3, v0

    invoke-virtual/range {v2 .. v7}, Lk1/f;->e(ILjava/util/Map;Ljava/lang/String;[BLjava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    move-object v7, v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {p1}, Lk1/c;->i()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {p1}, Lk1/c;->k()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object v2, p0

    move v3, v0

    invoke-virtual/range {v2 .. v7}, Lk1/f;->e(ILjava/util/Map;Ljava/lang/String;[BLjava/lang/Throwable;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public abstract d(ILjava/util/Map;Ljava/lang/String;[B)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            "[B)V"
        }
    .end annotation
.end method

.method public abstract e(ILjava/util/Map;Ljava/lang/String;[BLjava/lang/Throwable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            "[B",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation
.end method

.method public f()Ljava/net/URI;
    .locals 1

    iget-object v0, p0, Lk1/f;->a:Ljava/net/URI;

    return-object v0
.end method
