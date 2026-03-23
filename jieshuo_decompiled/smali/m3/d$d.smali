.class public final Lm3/d$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm3/c0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lm3/d;->w(Lm3/c0;)Lm3/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lm3/d;

.field final synthetic b:Lm3/c0;


# direct methods
.method constructor <init>(Lm3/d;Lm3/c0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm3/c0;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lm3/d$d;->a:Lm3/d;

    iput-object p2, p0, Lm3/d$d;->b:Lm3/c0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Y(Lm3/e;J)J
    .locals 2

    const-string v0, "sink"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lm3/d$d;->a:Lm3/d;

    invoke-virtual {v0}, Lm3/d;->r()V

    :try_start_0
    iget-object v1, p0, Lm3/d$d;->b:Lm3/c0;

    invoke-interface {v1, p1, p2, p3}, Lm3/c0;->Y(Lm3/e;J)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lm3/d;->s()Z

    move-result p3

    if-nez p3, :cond_0

    return-wide p1

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lm3/d;->m(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    invoke-virtual {v0}, Lm3/d;->s()Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Lm3/d;->m(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    :goto_0
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-virtual {v0}, Lm3/d;->s()Z

    move-result p2

    throw p1
.end method

.method public b()Lm3/d;
    .locals 1

    iget-object v0, p0, Lm3/d$d;->a:Lm3/d;

    return-object v0
.end method

.method public close()V
    .locals 3

    iget-object v0, p0, Lm3/d$d;->a:Lm3/d;

    invoke-virtual {v0}, Lm3/d;->r()V

    :try_start_0
    iget-object v1, p0, Lm3/d$d;->b:Lm3/c0;

    invoke-interface {v1}, Lm3/c0;->close()V

    sget-object v1, Ln2/m;->a:Ln2/m;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lm3/d;->s()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lm3/d;->m(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v0}, Lm3/d;->s()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Lm3/d;->m(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v1

    :goto_0
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-virtual {v0}, Lm3/d;->s()Z

    move-result v0

    throw v1
.end method

.method public bridge synthetic timeout()Lm3/d0;
    .locals 1

    invoke-virtual {p0}, Lm3/d$d;->b()Lm3/d;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncTimeout.source("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lm3/d$d;->b:Lm3/c0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
