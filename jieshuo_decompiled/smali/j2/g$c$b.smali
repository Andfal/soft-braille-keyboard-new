.class Lj2/g$c$b;
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

.field final synthetic b:Lj2/g$c;


# direct methods
.method constructor <init>(Lj2/g$c;I)V
    .locals 0

    iput-object p1, p0, Lj2/g$c$b;->b:Lj2/g$c;

    iput p2, p0, Lj2/g$c$b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lj2/g$c$b;->b:Lj2/g$c;

    invoke-static {v0}, Lj2/g$c;->c(Lj2/g$c;)Landroid/media/SoundPool;

    move-result-object v1

    iget-object v0, p0, Lj2/g$c$b;->b:Lj2/g$c;

    invoke-static {v0}, Lj2/g$c;->b(Lj2/g$c;)[I

    move-result-object v0

    iget v2, p0, Lj2/g$c$b;->a:I

    aget v2, v0, v2

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual/range {v1 .. v7}, Landroid/media/SoundPool;->play(IFFIIF)I

    return-void
.end method
