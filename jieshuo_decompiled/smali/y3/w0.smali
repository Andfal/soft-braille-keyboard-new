.class public Ly3/w0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Lw3/g2;

.field private e:Ly3/r0;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Ly3/w0;->b:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Ly3/w0;->b:I

    invoke-virtual {p0, p2}, Ly3/w0;->i(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ly3/w0;->g(I)V

    return-void
.end method


# virtual methods
.method public a()Ly3/r0;
    .locals 1

    iget-object v0, p0, Ly3/w0;->e:Ly3/r0;

    return-object v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Ly3/w0;->a:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget v0, p0, Ly3/w0;->a:I

    invoke-static {v0}, Lw3/s3;->d(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Ly3/w0;->b:I

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ly3/w0;->c:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ly3/r0;)V
    .locals 0

    iput-object p1, p0, Ly3/w0;->e:Ly3/r0;

    return-void
.end method

.method public g(I)V
    .locals 3

    const/16 v0, 0x70

    if-eq p1, v0, :cond_1

    const/16 v0, 0x59

    if-eq p1, v0, :cond_1

    const/16 v0, 0x7d

    if-eq p1, v0, :cond_1

    const/16 v0, 0x9c

    if-eq p1, v0, :cond_1

    const/16 v0, 0x9d

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid declType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iput p1, p0, Ly3/w0;->a:I

    return-void
.end method

.method public h(I)V
    .locals 0

    iput p1, p0, Ly3/w0;->b:I

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ly3/w0;->c:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Symbol ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ly3/w0;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ly3/w0;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ly3/w0;->d:Lw3/g2;

    if-eqz v1, :cond_0

    const-string v1, " line="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ly3/w0;->d:Lw3/g2;

    invoke-virtual {v1}, Lw3/g2;->C()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
