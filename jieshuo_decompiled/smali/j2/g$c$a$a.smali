.class Lj2/g$c$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj2/g$c$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lj2/g$c$a;


# direct methods
.method constructor <init>(Lj2/g$c$a;)V
    .locals 0

    iput-object p1, p0, Lj2/g$c$a$a;->a:Lj2/g$c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lj2/g$c$a$a;->a:Lj2/g$c$a;

    iget-object v0, v0, Lj2/g$c$a;->c:Lj2/g$c;

    invoke-static {v0}, Lj2/g$c;->c(Lj2/g$c;)Landroid/media/SoundPool;

    move-result-object v1

    iget-object v0, p0, Lj2/g$c$a$a;->a:Lj2/g$c$a;

    iget-object v0, v0, Lj2/g$c$a;->c:Lj2/g$c;

    invoke-static {v0}, Lj2/g$c;->b(Lj2/g$c;)[I

    move-result-object v0

    iget-object v2, p0, Lj2/g$c$a$a;->a:Lj2/g$c$a;

    iget v2, v2, Lj2/g$c$a;->b:I

    aget v2, v0, v2

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual/range {v1 .. v7}, Landroid/media/SoundPool;->play(IFFIIF)I

    return-void
.end method
