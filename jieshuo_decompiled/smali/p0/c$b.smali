.class Lp0/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp0/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ll1/i;

.field final synthetic b:Lp0/c;


# direct methods
.method public constructor <init>(Lp0/c;Ll1/i;)V
    .locals 0

    iput-object p1, p0, Lp0/c$b;->b:Lp0/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lp0/c$b;->a:Ll1/i;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lp0/c$b;->b:Lp0/c;

    iget-object v2, p0, Lp0/c$b;->a:Ll1/i;

    invoke-static {v2}, Ll1/h;->p(Ll1/i;)Ll1/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lp0/a;->a(Ll1/h;)V

    iget-object v1, p0, Lp0/c$b;->b:Lp0/c;

    iget-object v1, v1, Lp0/a;->c:Lq0/b;

    iget-object v2, p0, Lp0/c$b;->a:Ll1/i;

    invoke-interface {v1, v2}, Lq0/b;->b(Ll1/i;)Ll0/f;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lp0/c$b;->b:Lp0/c;

    iget-object v2, p0, Lp0/c$b;->a:Ll1/i;

    invoke-static {v2}, Ll1/h;->p(Ll1/i;)Ll1/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lp0/a;->S(Ll1/h;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lp0/c$b;->b:Lp0/c;

    iget-object v3, p0, Lp0/c$b;->a:Ll1/i;

    invoke-static {v3, v1}, Ll1/h;->d(Ll1/i;Ll0/f;)Ll1/h;

    move-result-object v1

    invoke-virtual {v2, v1}, Lp0/a;->U(Ll1/h;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lp0/c$b;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
