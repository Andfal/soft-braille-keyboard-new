.class Lb4/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:J

.field private b:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lb4/b;->a:J

    const/4 v0, 0x0

    iput v0, p0, Lb4/b;->b:I

    return-void
.end method

.method constructor <init>(JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lb4/b;->a:J

    iput p3, p0, Lb4/b;->b:I

    return-void
.end method

.method static c(Lb4/b;Lb4/b;)Lb4/b;
    .locals 3

    new-instance v0, Lb4/b;

    iget-wide v1, p0, Lb4/b;->a:J

    iget p0, p0, Lb4/b;->b:I

    invoke-direct {v0, v1, v2, p0}, Lb4/b;-><init>(JI)V

    invoke-virtual {v0, p1}, Lb4/b;->h(Lb4/b;)V

    return-object v0
.end method

.method static i(Lb4/b;Lb4/b;)Lb4/b;
    .locals 3

    new-instance v0, Lb4/b;

    iget-wide v1, p0, Lb4/b;->a:J

    iget p0, p0, Lb4/b;->b:I

    invoke-direct {v0, v1, v2, p0}, Lb4/b;-><init>(JI)V

    invoke-virtual {v0, p1}, Lb4/b;->d(Lb4/b;)V

    return-object v0
.end method


# virtual methods
.method a()I
    .locals 1

    iget v0, p0, Lb4/b;->b:I

    return v0
.end method

.method b()J
    .locals 2

    iget-wide v0, p0, Lb4/b;->a:J

    return-wide v0
.end method

.method d(Lb4/b;)V
    .locals 13

    iget-wide v0, p0, Lb4/b;->a:J

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    const-wide v5, 0xffffffffL

    and-long/2addr v0, v5

    iget-wide v7, p1, Lb4/b;->a:J

    ushr-long v9, v7, v2

    and-long/2addr v7, v5

    mul-long v11, v3, v9

    mul-long v9, v9, v0

    mul-long v3, v3, v7

    mul-long v0, v0, v7

    ushr-long/2addr v0, v2

    and-long v7, v3, v5

    add-long/2addr v0, v7

    and-long/2addr v5, v9

    add-long/2addr v0, v5

    const-wide v5, 0x80000000L

    add-long/2addr v0, v5

    ushr-long/2addr v3, v2

    add-long/2addr v11, v3

    ushr-long v3, v9, v2

    add-long/2addr v11, v3

    ushr-long/2addr v0, v2

    add-long/2addr v11, v0

    iget v0, p0, Lb4/b;->b:I

    iget p1, p1, Lb4/b;->b:I

    add-int/lit8 p1, p1, 0x40

    add-int/2addr v0, p1

    iput v0, p0, Lb4/b;->b:I

    iput-wide v11, p0, Lb4/b;->a:J

    return-void
.end method

.method e()V
    .locals 8

    iget-wide v0, p0, Lb4/b;->a:J

    iget v2, p0, Lb4/b;->b:I

    :goto_0
    const-wide/high16 v3, -0x40000000000000L

    and-long/2addr v3, v0

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    const/16 v3, 0xa

    shl-long/2addr v0, v3

    add-int/lit8 v2, v2, -0xa

    goto :goto_0

    :cond_0
    :goto_1
    const-wide/high16 v3, -0x8000000000000000L

    and-long/2addr v3, v0

    cmp-long v7, v3, v5

    if-nez v7, :cond_1

    const/4 v3, 0x1

    shl-long/2addr v0, v3

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_1
    iput-wide v0, p0, Lb4/b;->a:J

    iput v2, p0, Lb4/b;->b:I

    return-void
.end method

.method f(I)V
    .locals 0

    iput p1, p0, Lb4/b;->b:I

    return-void
.end method

.method g(J)V
    .locals 0

    iput-wide p1, p0, Lb4/b;->a:J

    return-void
.end method

.method h(Lb4/b;)V
    .locals 4

    iget-wide v0, p0, Lb4/b;->a:J

    iget-wide v2, p1, Lb4/b;->a:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lb4/b;->a:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DiyFp f:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lb4/b;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", e:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lb4/b;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
