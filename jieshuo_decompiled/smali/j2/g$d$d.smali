.class Lj2/g$d$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj2/g$d;->h(JJLjava/util/Set;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/util/Set;

.field final synthetic c:J

.field final synthetic d:J

.field final synthetic e:I

.field final synthetic f:Lj2/g$d;


# direct methods
.method constructor <init>(Lj2/g$d;ILjava/util/Set;JJI)V
    .locals 0

    iput-object p1, p0, Lj2/g$d$d;->f:Lj2/g$d;

    iput p2, p0, Lj2/g$d$d;->a:I

    iput-object p3, p0, Lj2/g$d$d;->b:Ljava/util/Set;

    iput-wide p4, p0, Lj2/g$d$d;->c:J

    iput-wide p6, p0, Lj2/g$d$d;->d:J

    iput p8, p0, Lj2/g$d$d;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lj2/g$d$d;->f:Lj2/g$d;

    invoke-static {v0}, Lj2/g$d;->c(Lj2/g$d;)Landroid/media/SoundPool;

    move-result-object v1

    iget-object v0, p0, Lj2/g$d$d;->f:Lj2/g$d;

    invoke-static {v0}, Lj2/g$d;->b(Lj2/g$d;)[I

    move-result-object v0

    iget v2, p0, Lj2/g$d$d;->a:I

    aget v2, v0, v2

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual/range {v1 .. v7}, Landroid/media/SoundPool;->play(IFFIIF)I

    iget-object v0, p0, Lj2/g$d$d;->b:Ljava/util/Set;

    const-string v1, "1"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v1, 0x3

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj2/g$d$d;->f:Lj2/g$d;

    iget-object v0, v0, Lj2/g$d;->o:Lj2/g;

    invoke-static {v0}, Lj2/g;->c(Lj2/g;)Landroid/os/Handler;

    move-result-object v0

    new-instance v3, Lj2/g$d$d$a;

    invoke-direct {v3, p0}, Lj2/g$d$d$a;-><init>(Lj2/g$d$d;)V

    iget-object v4, p0, Lj2/g$d$d;->f:Lj2/g$d;

    invoke-static {v4}, Lj2/g$d;->d(Lj2/g$d;)[J

    move-result-object v4

    iget v5, p0, Lj2/g$d$d;->e:I

    aget-wide v5, v4, v5

    :goto_0
    mul-long v5, v5, v1

    invoke-virtual {v0, v3, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lj2/g$d$d;->b:Ljava/util/Set;

    const-string v3, "2"

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lj2/g$d$d;->f:Lj2/g$d;

    iget-object v0, v0, Lj2/g$d;->o:Lj2/g;

    invoke-static {v0}, Lj2/g;->c(Lj2/g;)Landroid/os/Handler;

    move-result-object v0

    new-instance v3, Lj2/g$d$d$b;

    invoke-direct {v3, p0}, Lj2/g$d$d$b;-><init>(Lj2/g$d$d;)V

    iget-object v4, p0, Lj2/g$d$d;->f:Lj2/g$d;

    invoke-static {v4}, Lj2/g$d;->d(Lj2/g$d;)[J

    move-result-object v4

    iget v5, p0, Lj2/g$d$d;->e:I

    aget-wide v5, v4, v5

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
