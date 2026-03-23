.class Lj0/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo0/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj0/b;->D(Lp0/d;)V
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

    iput-object p1, p0, Lj0/b$a;->a:Lj0/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ll1/h;)V
    .locals 1

    iget-object v0, p0, Lj0/b$a;->a:Lj0/b;

    invoke-static {v0}, Lj0/b;->C(Lj0/b;)Lm0/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj0/b$a;->a:Lj0/b;

    invoke-static {v0}, Lj0/b;->C(Lj0/b;)Lm0/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lm0/b;->e(Ll1/h;)V

    :cond_0
    return-void
.end method

.method public b(Ll1/h;)V
    .locals 1

    iget-object v0, p0, Lj0/b$a;->a:Lj0/b;

    invoke-static {v0}, Lj0/b;->C(Lj0/b;)Lm0/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj0/b$a;->a:Lj0/b;

    invoke-static {v0}, Lj0/b;->C(Lj0/b;)Lm0/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lm0/b;->f(Ll1/h;)V

    :cond_0
    return-void
.end method

.method public c(Ll1/h;)V
    .locals 1

    iget-object v0, p0, Lj0/b$a;->a:Lj0/b;

    invoke-static {v0}, Lj0/b;->C(Lj0/b;)Lm0/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj0/b$a;->a:Lj0/b;

    invoke-static {v0}, Lj0/b;->C(Lj0/b;)Lm0/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lm0/b;->a(Ll1/h;)V

    :cond_0
    return-void
.end method

.method public d(Ll1/h;)V
    .locals 1

    iget-object v0, p0, Lj0/b$a;->a:Lj0/b;

    invoke-static {v0}, Lj0/b;->C(Lj0/b;)Lm0/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj0/b$a;->a:Lj0/b;

    invoke-static {v0}, Lj0/b;->C(Lj0/b;)Lm0/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lm0/b;->g(Ll1/h;)V

    :cond_0
    return-void
.end method

.method public e(Ll1/h;)V
    .locals 1

    const-string p1, "TtsAdapter"

    const-string v0, "onSynthesizeStop"

    invoke-static {p1, v0}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
