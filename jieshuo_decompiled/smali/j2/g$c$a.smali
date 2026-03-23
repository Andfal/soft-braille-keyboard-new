.class Lj2/g$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj2/g$c;->f(II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lj2/g$c;


# direct methods
.method constructor <init>(Lj2/g$c;II)V
    .locals 0

    iput-object p1, p0, Lj2/g$c$a;->c:Lj2/g$c;

    iput p2, p0, Lj2/g$c$a;->a:I

    iput p3, p0, Lj2/g$c$a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lj2/g$c$a;->c:Lj2/g$c;

    invoke-static {v0}, Lj2/g$c;->c(Lj2/g$c;)Landroid/media/SoundPool;

    move-result-object v1

    iget-object v0, p0, Lj2/g$c$a;->c:Lj2/g$c;

    invoke-static {v0}, Lj2/g$c;->a(Lj2/g$c;)[I

    move-result-object v0

    iget v2, p0, Lj2/g$c$a;->a:I

    aget v2, v0, v2

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual/range {v1 .. v7}, Landroid/media/SoundPool;->play(IFFIIF)I

    iget-object v0, p0, Lj2/g$c$a;->c:Lj2/g$c;

    iget-object v0, v0, Lj2/g$c;->o:Lj2/g;

    invoke-static {v0}, Lj2/g;->c(Lj2/g;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lj2/g$c$a$a;

    invoke-direct {v1, p0}, Lj2/g$c$a$a;-><init>(Lj2/g$c$a;)V

    iget-object v2, p0, Lj2/g$c$a;->c:Lj2/g$c;

    invoke-static {v2}, Lj2/g$c;->d(Lj2/g$c;)[J

    move-result-object v2

    iget v3, p0, Lj2/g$c$a;->a:I

    aget-wide v3, v2, v3

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
