.class Lj2/g$d$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj2/g$d;->i(JJLjava/util/Set;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/util/Set;

.field final synthetic c:I

.field final synthetic d:Lj2/g$d;


# direct methods
.method constructor <init>(Lj2/g$d;ILjava/util/Set;I)V
    .locals 0

    iput-object p1, p0, Lj2/g$d$g;->d:Lj2/g$d;

    iput p2, p0, Lj2/g$d$g;->a:I

    iput-object p3, p0, Lj2/g$d$g;->b:Ljava/util/Set;

    iput p4, p0, Lj2/g$d$g;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lj2/g$d$g;->d:Lj2/g$d;

    invoke-static {v0}, Lj2/g$d;->c(Lj2/g$d;)Landroid/media/SoundPool;

    move-result-object v1

    iget-object v0, p0, Lj2/g$d$g;->d:Lj2/g$d;

    invoke-static {v0}, Lj2/g$d;->b(Lj2/g$d;)[I

    move-result-object v0

    iget v2, p0, Lj2/g$d$g;->a:I

    aget v2, v0, v2

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual/range {v1 .. v7}, Landroid/media/SoundPool;->play(IFFIIF)I

    iget-object v0, p0, Lj2/g$d$g;->b:Ljava/util/Set;

    const-string v1, "2"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj2/g$d$g;->d:Lj2/g$d;

    iget-object v0, v0, Lj2/g$d;->o:Lj2/g;

    invoke-static {v0}, Lj2/g;->c(Lj2/g;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lj2/g$d$g$a;

    invoke-direct {v1, p0}, Lj2/g$d$g$a;-><init>(Lj2/g$d$g;)V

    iget-object v2, p0, Lj2/g$d$g;->d:Lj2/g$d;

    invoke-static {v2}, Lj2/g$d;->d(Lj2/g$d;)[J

    move-result-object v2

    iget v3, p0, Lj2/g$d$g;->c:I

    aget-wide v3, v2, v3

    const-wide/16 v5, 0x3

    mul-long v3, v3, v5

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
