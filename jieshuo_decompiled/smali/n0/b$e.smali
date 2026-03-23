.class Ln0/b$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln0/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ln0/f$b;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lq0/f$b;

.field final synthetic b:Ln0/b;


# direct methods
.method public constructor <init>(Ln0/b;Lq0/f$b;)V
    .locals 0

    iput-object p1, p0, Ln0/b$e;->b:Ln0/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ln0/b$e;->a:Lq0/f$b;

    return-void
.end method


# virtual methods
.method public a()Ln0/f$b;
    .locals 8

    iget-object v0, p0, Ln0/b$e;->a:Lq0/f$b;

    invoke-virtual {v0}, Lq0/f$b;->P()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ln0/b$e;->a:Lq0/f$b;

    invoke-virtual {v1}, Lq0/f$b;->H()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ln0/b$e;->a:Lq0/f$b;

    invoke-virtual {v2}, Lq0/f$b;->J()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ln0/b$e;->a:Lq0/f$b;

    invoke-virtual {v3}, Lq0/f$b;->R()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Ln0/b$e;->a:Lq0/f$b;

    invoke-virtual {v4}, Lq0/f$b;->y()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "AuthClient"

    invoke-static {v6, v5}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "key="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ak="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sk="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ln0/f;

    invoke-direct {v3}, Ln0/f;-><init>()V

    invoke-virtual {v3, v0}, Ln0/f;->g(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ln0/f;->i(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ln0/f;->k(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ln0/f;->d(Ljava/lang/String;)V

    iget-object v0, p0, Ln0/b$e;->b:Ln0/b;

    invoke-static {v0}, Ln0/b;->a(Ln0/b;)Lh1/c;

    move-result-object v0

    invoke-virtual {v0, v3}, Lh1/c;->a(Lh1/b;)Lh1/a;

    move-result-object v0

    check-cast v0, Ln0/f$b;

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ln0/b$e;->a()Ln0/f$b;

    move-result-object v0

    return-object v0
.end method
