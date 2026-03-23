.class public Ly3/d0;
.super Ly3/e;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ly3/e;-><init>()V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ly3/e;-><init>(II)V

    invoke-virtual {p0, p3}, Ly3/d0;->v0(I)Ly3/d0;

    return-void
.end method


# virtual methods
.method public bridge synthetic d0(I)Lw3/g2;
    .locals 0

    invoke-virtual {p0, p1}, Ly3/d0;->v0(I)Ly3/d0;

    move-result-object p1

    return-object p1
.end method

.method public v0(I)Ly3/d0;
    .locals 3

    const/16 v0, 0x2b

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2a

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2d

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2c

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa3

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid node type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iput p1, p0, Lw3/g2;->a:I

    return-object p0
.end method
