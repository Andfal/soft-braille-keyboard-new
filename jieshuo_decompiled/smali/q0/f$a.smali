.class Lq0/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq0/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ll1/h;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:Lq0/f$c;

.field private c:Ll1/i;

.field private d:Lq0/f$b;

.field private e:Ll1/h;

.field private f:Lk1/b;

.field final synthetic g:Lq0/f;


# direct methods
.method public constructor <init>(Lq0/f;ILq0/f$c;Ll1/i;Lq0/f$b;Ll1/h;)V
    .locals 0

    iput-object p1, p0, Lq0/f$a;->g:Lq0/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lq0/f$a;->a:I

    iput-object p3, p0, Lq0/f$a;->b:Lq0/f$c;

    iput-object p4, p0, Lq0/f$a;->c:Ll1/i;

    iput-object p5, p0, Lq0/f$a;->d:Lq0/f$b;

    iput-object p6, p0, Lq0/f$a;->e:Ll1/h;

    return-void
.end method


# virtual methods
.method public a()Ll1/h;
    .locals 7

    :try_start_0
    iget-object v0, p0, Lq0/f$a;->g:Lq0/f;

    iget v1, p0, Lq0/f$a;->a:I

    iget-object v2, p0, Lq0/f$a;->b:Lq0/f$c;

    iget-object v2, v2, Lq0/f$c;->a:Ljava/lang/String;

    iget-object v3, p0, Lq0/f$a;->c:Ll1/i;

    iget-object v4, p0, Lq0/f$a;->d:Lq0/f$b;

    invoke-static {v0, v1, v2, v3, v4}, Lq0/f;->j(Lq0/f;ILjava/lang/String;Ll1/i;Lq0/f$b;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lp1/a; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lq0/f$a;->d:Lq0/f$b;

    invoke-virtual {v1}, Lq0/f$b;->y()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lq0/f$a;->a:I

    const/4 v3, 0x1

    const-string v4, "OnlineSynthesizer"

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lq0/f$a;->d:Lq0/f$b;

    invoke-virtual {v2}, Lq0/f$b;->u()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lq0/f$a;->d:Lq0/f$b;

    invoke-virtual {v3}, Lq0/f$b;->h0()Ljava/lang/String;

    move-result-object v3

    const-string v5, "1"

    if-nez v3, :cond_1

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lq0/f$a;->b:Lq0/f$c;

    sget-object v3, Lb1/o;->b:Lb1/o;

    invoke-virtual {v3, v1}, Lb1/o;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lq0/f$a;->b:Lq0/f$c;

    sget-object v3, Lb1/o;->b:Lb1/o;

    invoke-virtual {v3, v1}, Lb1/o;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    iput-object v1, v2, Lq0/f$c;->b:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lq0/f$a;->b:Lq0/f$c;

    iget-object v3, p0, Lq0/f$a;->d:Lq0/f$b;

    invoke-virtual {v3}, Lq0/f$b;->h0()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lq0/f$c;->b:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lq0/f$a;->d:Lq0/f$b;

    invoke-virtual {v2}, Lq0/f$b;->h0()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lq0/f$a;->b:Lq0/f$c;

    iget-object v5, p0, Lq0/f$a;->d:Lq0/f$b;

    invoke-virtual {v5}, Lq0/f$b;->h0()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lq0/f$c;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "localDNS: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "serverIp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lq0/f$a;->b:Lq0/f$c;

    iget-object v2, v2, Lq0/f$c;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v1, p0, Lq0/f$a;->b:Lq0/f$c;

    iget-object v1, v1, Lq0/f$c;->b:Ljava/lang/String;

    if-nez v1, :cond_4

    invoke-static {}, Ld1/c;->b()Ld1/c;

    move-result-object v0

    sget-object v1, Lb1/n;->t:Lb1/n;

    :goto_2
    invoke-virtual {v0, v1}, Ld1/c;->h(Lb1/n;)Ll0/f;

    move-result-object v0

    iget-object v1, p0, Lq0/f$a;->e:Ll1/h;

    invoke-virtual {v1, v0}, Ll1/h;->k(Ll0/f;)V

    iget-object v0, p0, Lq0/f$a;->e:Ll1/h;

    return-object v0

    :cond_4
    new-instance v1, Lk1/b;

    invoke-direct {v1}, Lk1/b;-><init>()V

    iput-object v1, p0, Lq0/f$a;->f:Lk1/b;

    iget-object v1, p0, Lq0/f$a;->d:Lq0/f$b;

    invoke-virtual {v1}, Lq0/f$b;->g0()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "timeout="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lq0/f$a;->f:Lk1/b;

    invoke-virtual {v2, v1}, Lk1/b;->b(I)V

    new-instance v1, Lk1/h;

    iget-object v2, p0, Lq0/f$a;->e:Ll1/h;

    invoke-direct {v1, v2}, Lk1/h;-><init>(Ll1/h;)V

    iget-object v2, p0, Lq0/f$a;->d:Lq0/f$b;

    invoke-virtual {v2}, Lq0/f$b;->E()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v3, p0, Lq0/f$a;->d:Lq0/f$b;

    invoke-virtual {v3}, Lq0/f$b;->B()I

    move-result v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "--> proxy host="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "--port="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lq0/f$a;->f:Lk1/b;

    invoke-virtual {v5, v2, v3}, Lk1/b;->c(Ljava/lang/String;I)V

    :cond_5
    iget-object v2, p0, Lq0/f$a;->b:Lq0/f$c;

    iget-object v2, v2, Lq0/f$c;->b:Ljava/lang/String;

    if-nez v2, :cond_6

    invoke-static {}, Ld1/c;->b()Ld1/c;

    move-result-object v0

    sget-object v1, Lb1/n;->t:Lb1/n;

    invoke-virtual {v0, v1}, Ld1/c;->h(Lb1/n;)Ll0/f;

    move-result-object v0

    iget-object v1, p0, Lq0/f$a;->e:Ll1/h;

    invoke-virtual {v1, v0}, Ll1/h;->k(Ll0/f;)V

    goto :goto_3

    :cond_6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "before post"

    invoke-static {v4, v2}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lq0/f$a;->f:Lk1/b;

    iget-object v3, p0, Lq0/f$a;->b:Lq0/f$c;

    iget-object v3, v3, Lq0/f$c;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v0, v1}, Lk1/b;->e(Ljava/lang/String;Ljava/lang/String;Lk1/g;)V

    const-string v0, "after post"

    invoke-static {v4, v0}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_3
    iget-object v0, p0, Lq0/f$a;->e:Ll1/h;

    return-object v0

    :catch_0
    invoke-static {}, Ld1/c;->b()Ld1/c;

    move-result-object v0

    sget-object v1, Lb1/n;->k:Lb1/n;

    goto/16 :goto_2
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lq0/f$a;->f:Lk1/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lk1/b;->a()V

    :cond_0
    return-void
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lq0/f$a;->a()Ll1/h;

    move-result-object v0

    return-object v0
.end method
