.class final Lf3/b$g;
.super Lf3/b$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf3/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "g"
.end annotation


# instance fields
.field private d:Z

.field final synthetic e:Lf3/b;


# direct methods
.method public constructor <init>(Lf3/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lf3/b$g;->e:Lf3/b;

    invoke-direct {p0, p1}, Lf3/b$a;-><init>(Lf3/b;)V

    return-void
.end method


# virtual methods
.method public Y(Lm3/e;J)J
    .locals 5

    const-string v0, "sink"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    cmp-long v3, p2, v0

    if-ltz v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lf3/b$a;->b()Z

    move-result v0

    xor-int/2addr v0, v2

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lf3/b$g;->d:Z

    const-wide/16 v3, -0x1

    if-eqz v0, :cond_1

    return-wide v3

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lf3/b$a;->Y(Lm3/e;J)J

    move-result-wide p1

    cmp-long p3, p1, v3

    if-nez p3, :cond_2

    iput-boolean v2, p0, Lf3/b$g;->d:Z

    invoke-virtual {p0}, Lf3/b$a;->c()V

    return-wide v3

    :cond_2
    return-wide p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "byteCount < 0: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public close()V
    .locals 1

    invoke-virtual {p0}, Lf3/b$a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lf3/b$g;->d:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lf3/b$a;->c()V

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lf3/b$a;->e(Z)V

    return-void
.end method
