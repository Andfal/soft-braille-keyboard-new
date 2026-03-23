.class Lj2/d$e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/iflytek/msc/ISynthesizerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj2/d$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation
.end field

.field private d:Z

.field final synthetic e:Lj2/d$e;


# direct methods
.method public constructor <init>(Lj2/d$e;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lj2/d$e$b;->e:Lj2/d$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lj2/d$e$b;->c:Ljava/util/ArrayList;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lj2/d$e$b;->d:Z

    iput p2, p0, Lj2/d$e$b;->a:I

    iput-object p3, p0, Lj2/d$e$b;->b:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic a(Lj2/d$e$b;)I
    .locals 0

    iget p0, p0, Lj2/d$e$b;->a:I

    return p0
.end method


# virtual methods
.method public onBusy()V
    .locals 2

    iget-object v0, p0, Lj2/d$e$b;->e:Lj2/d$e;

    iget-object v0, v0, Lj2/d$e;->l:Lj2/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lj2/d;->p(Lj2/d;Z)V

    iget-object v0, p0, Lj2/d$e$b;->e:Lj2/d$e;

    iget-object v0, v0, Lj2/d$e;->l:Lj2/d;

    invoke-static {v0}, Lj2/d;->c(Lj2/d;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lj2/d$e$b$a;

    invoke-direct {v1, p0}, Lj2/d$e$b$a;-><init>(Lj2/d$e$b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onFailed(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lj2/d$e$b;->e:Lj2/d$e;

    iget-object v0, v0, Lj2/d$e;->l:Lj2/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lj2/d;->p(Lj2/d;Z)V

    iget-object v0, p0, Lj2/d$e$b;->e:Lj2/d$e;

    iget-object v0, v0, Lj2/d$e;->l:Lj2/d;

    invoke-static {v0}, Lj2/d;->c(Lj2/d;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lj2/d$e$b$b;

    invoke-direct {v1, p0, p1}, Lj2/d$e$b$b;-><init>(Lj2/d$e$b;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onFinish(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lj2/d;->v()I

    move-result p1

    iget v0, p0, Lj2/d$e$b;->a:I

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lj2/d$e$b;->e:Lj2/d$e;

    invoke-static {p1}, Lj2/d$e;->a(Lj2/d$e;)Ljava/util/LinkedList;

    move-result-object p1

    invoke-static {}, Lj2/d;->t()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    iget-object p1, p0, Lj2/d$e$b;->e:Lj2/d$e;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lj2/d$e;->e(Lj2/d$e;Z)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 3

    invoke-static {}, Lj2/d;->v()I

    move-result v0

    iget v1, p0, Lj2/d$e$b;->a:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lj2/d$e$b;->e:Lj2/d$e;

    iget-object v0, v0, Lj2/d$e;->l:Lj2/d;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lj2/d;->p(Lj2/d;Z)V

    iget-object v0, p0, Lj2/d$e$b;->e:Lj2/d$e;

    invoke-static {v0}, Lj2/d$e;->c(Lj2/d$e;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, p0, Lj2/d$e$b;->e:Lj2/d$e;

    invoke-static {v0}, Lj2/d$e;->d(Lj2/d$e;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    :cond_0
    return-void
.end method

.method public onSynthesize([BII)V
    .locals 0

    iget-boolean p2, p0, Lj2/d$e$b;->d:Z

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lj2/d$e$b;->d:Z

    return-void

    :cond_0
    invoke-static {}, Lj2/d;->v()I

    move-result p2

    iget p3, p0, Lj2/d$e$b;->a:I

    if-ne p2, p3, :cond_1

    iget-object p2, p0, Lj2/d$e$b;->e:Lj2/d$e;

    invoke-static {p2}, Lj2/d$e;->a(Lj2/d$e;)Ljava/util/LinkedList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
