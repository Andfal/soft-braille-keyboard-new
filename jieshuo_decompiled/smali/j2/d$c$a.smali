.class Lj2/d$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/iflytek/msc/ISynthesizerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj2/d$c;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:La/f;

.field final synthetic b:Lj2/d$c;


# direct methods
.method constructor <init>(Lj2/d$c;La/f;)V
    .locals 0

    iput-object p1, p0, Lj2/d$c$a;->b:Lj2/d$c;

    iput-object p2, p0, Lj2/d$c$a;->a:La/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBusy()V
    .locals 2

    iget-object v0, p0, Lj2/d$c$a;->b:Lj2/d$c;

    iget-object v0, v0, Lj2/d$c;->c:Lj2/d;

    invoke-static {v0}, Lj2/d;->c(Lj2/d;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lj2/d$c$a$a;

    invoke-direct {v1, p0}, Lj2/d$c$a$a;-><init>(Lj2/d$c$a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onFailed(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lj2/d$c$a;->b:Lj2/d$c;

    iget-object v0, v0, Lj2/d$c;->c:Lj2/d;

    invoke-static {v0}, Lj2/d;->c(Lj2/d;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lj2/d$c$a$b;

    invoke-direct {v1, p0, p1}, Lj2/d$c$a$b;-><init>(Lj2/d$c$a;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onFinish(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lj2/d;->v()I

    move-result p1

    iget-object v0, p0, Lj2/d$c$a;->b:Lj2/d$c;

    invoke-static {v0}, Lj2/d$c;->a(Lj2/d$c;)I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lj2/d$c$a;->a:La/f;

    invoke-virtual {p1}, La/f;->closeAudioOut()V

    :cond_0
    iget-object p1, p0, Lj2/d$c$a;->b:Lj2/d$c;

    iget-object p1, p1, Lj2/d$c;->c:Lj2/d;

    invoke-static {p1}, Lj2/d;->c(Lj2/d;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lj2/d$c$a$c;

    invoke-direct {v0, p0}, Lj2/d$c$a$c;-><init>(Lj2/d$c$a;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onStart()V
    .locals 1

    iget-object v0, p0, Lj2/d$c$a;->a:La/f;

    invoke-virtual {v0}, La/f;->openAudioOut()I

    return-void
.end method

.method public onSynthesize([BII)V
    .locals 0

    invoke-static {}, Lj2/d;->v()I

    move-result p2

    iget-object p3, p0, Lj2/d$c$a;->b:Lj2/d$c;

    invoke-static {p3}, Lj2/d$c;->a(Lj2/d$c;)I

    move-result p3

    if-ne p2, p3, :cond_0

    iget-object p2, p0, Lj2/d$c$a;->a:La/f;

    array-length p3, p1

    invoke-virtual {p2, p1, p3}, La/f;->writeData([BI)I

    :cond_0
    return-void
.end method
