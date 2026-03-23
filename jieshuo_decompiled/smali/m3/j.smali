.class public abstract Lm3/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm3/a0;


# instance fields
.field private final a:Lm3/a0;


# direct methods
.method public constructor <init>(Lm3/a0;)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm3/j;->a:Lm3/a0;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lm3/j;->a:Lm3/a0;

    invoke-interface {v0}, Lm3/a0;->close()V

    return-void
.end method

.method public flush()V
    .locals 1

    iget-object v0, p0, Lm3/j;->a:Lm3/a0;

    invoke-interface {v0}, Lm3/a0;->flush()V

    return-void
.end method

.method public timeout()Lm3/d0;
    .locals 1

    iget-object v0, p0, Lm3/j;->a:Lm3/a0;

    invoke-interface {v0}, Lm3/a0;->timeout()Lm3/d0;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lm3/j;->a:Lm3/a0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lm3/e;J)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lm3/j;->a:Lm3/a0;

    invoke-interface {v0, p1, p2, p3}, Lm3/a0;->write(Lm3/e;J)V

    return-void
.end method
