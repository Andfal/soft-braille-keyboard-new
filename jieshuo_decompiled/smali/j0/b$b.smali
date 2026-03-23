.class Lj0/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr0/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj0/b;->E(Ls0/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lj0/b;


# direct methods
.method constructor <init>(Lj0/b;)V
    .locals 0

    iput-object p1, p0, Lj0/b$b;->a:Lj0/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ll1/h;)V
    .locals 1

    iget-object v0, p0, Lj0/b$b;->a:Lj0/b;

    invoke-static {v0}, Lj0/b;->C(Lj0/b;)Lm0/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj0/b$b;->a:Lj0/b;

    invoke-static {v0}, Lj0/b;->C(Lj0/b;)Lm0/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lm0/b;->b(Ll1/h;)V

    :cond_0
    return-void
.end method

.method public b(Ll1/h;)V
    .locals 1

    iget-object v0, p0, Lj0/b$b;->a:Lj0/b;

    invoke-static {v0}, Lj0/b;->C(Lj0/b;)Lm0/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj0/b$b;->a:Lj0/b;

    invoke-static {v0}, Lj0/b;->C(Lj0/b;)Lm0/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lm0/b;->c(Ll1/h;)V

    :cond_0
    return-void
.end method

.method public c(Ll1/h;)V
    .locals 2

    iget-object v0, p0, Lj0/b$b;->a:Lj0/b;

    invoke-static {v0}, Lj0/b;->C(Lj0/b;)Lm0/b;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lj0/b$b;->a:Lj0/b;

    invoke-static {v0}, Lj0/b;->C(Lj0/b;)Lm0/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lm0/b;->d(Ll1/h;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPlayFinished exception e="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TtsAdapter"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method
