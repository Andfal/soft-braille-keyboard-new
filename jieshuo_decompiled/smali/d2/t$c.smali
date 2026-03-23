.class Ld2/t$c;
.super Ld2/t$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld2/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic e:Ld2/t;


# direct methods
.method public constructor <init>(Ld2/t;III)V
    .locals 0

    iput-object p1, p0, Ld2/t$c;->e:Ld2/t;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ld2/t$a;-><init>(Ld2/s;)V

    iput p2, p0, Ld2/t$a;->a:I

    iput p3, p0, Ld2/t$a;->b:I

    iput p4, p0, Ld2/t$a;->d:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    iget v0, p0, Ld2/t$a;->a:I

    iget v1, p0, Ld2/t$a;->b:I

    add-int/2addr v0, v1

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Ld2/t$a;->a:I

    return v0
.end method

.method public c(IIJ)Z
    .locals 7

    iget-object v0, p0, Ld2/t$c;->e:Ld2/t;

    iget-wide v1, v0, Ld2/t;->f:J

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    cmp-long v6, v1, v3

    if-gez v6, :cond_0

    return v5

    :cond_0
    sub-long/2addr p3, v1

    const-wide/32 v1, 0x3b9aca00

    cmp-long v3, p3, v1

    if-gez v3, :cond_1

    iget p3, p0, Ld2/t$a;->a:I

    iget p4, p0, Ld2/t$a;->b:I

    add-int/2addr p3, p4

    if-ne p1, p3, :cond_1

    add-int/2addr p4, p2

    iput p4, p0, Ld2/t$a;->b:I

    invoke-static {v0}, Ld2/t;->b(Ld2/t;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    return v5
.end method

.method public d()V
    .locals 3

    iget-object v0, p0, Ld2/t$c;->e:Ld2/t;

    invoke-static {v0}, Ld2/t;->a(Ld2/t;)Ld2/p;

    move-result-object v0

    iget v1, p0, Ld2/t$a;->a:I

    iget v2, p0, Ld2/t$a;->b:I

    invoke-virtual {v0, v1, v2}, Ld2/p;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ld2/t$a;->c:Ljava/lang/String;

    return-void
.end method

.method public e()V
    .locals 7

    iget-object v0, p0, Ld2/t$c;->e:Ld2/t;

    invoke-static {v0}, Ld2/t;->a(Ld2/t;)Ld2/p;

    move-result-object v1

    iget-object v0, p0, Ld2/t$a;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    iget v3, p0, Ld2/t$a;->a:I

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Ld2/p;->q([CIJZ)V

    return-void
.end method

.method public f()V
    .locals 7

    iget-object v0, p0, Ld2/t$a;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ld2/t$c;->d()V

    iget-object v0, p0, Ld2/t$c;->e:Ld2/t;

    invoke-static {v0}, Ld2/t;->a(Ld2/t;)Ld2/p;

    move-result-object v0

    iget v1, p0, Ld2/t$a;->b:I

    neg-int v1, v1

    invoke-virtual {v0, v1}, Ld2/p;->E(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ld2/t$c;->e:Ld2/t;

    invoke-static {v0}, Ld2/t;->a(Ld2/t;)Ld2/p;

    move-result-object v1

    iget v2, p0, Ld2/t$a;->a:I

    iget v3, p0, Ld2/t$a;->b:I

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Ld2/p;->c(IIJZ)V

    :goto_0
    return-void
.end method
