.class Lj0/b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo0/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj0/b;->I()V
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

    iput-object p1, p0, Lj0/b$c;->a:Lj0/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ll1/h;)V
    .locals 1

    iget-object v0, p0, Lj0/b$c;->a:Lj0/b;

    invoke-static {v0, p1}, Lj0/b;->F(Lj0/b;Ll1/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj0/b$c;->a:Lj0/b;

    invoke-static {v0}, Lj0/b;->H(Lj0/b;)Ls0/c;

    move-result-object v0

    invoke-interface {v0, p1}, Ls0/c;->a(Ll1/h;)V

    :cond_0
    return-void
.end method

.method public b(Ll1/h;)V
    .locals 1

    iget-object v0, p0, Lj0/b$c;->a:Lj0/b;

    invoke-static {v0, p1}, Lj0/b;->F(Lj0/b;Ll1/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj0/b$c;->a:Lj0/b;

    invoke-static {v0}, Lj0/b;->H(Lj0/b;)Ls0/c;

    move-result-object v0

    invoke-interface {v0, p1}, Ls0/c;->a(Ll1/h;)V

    :cond_0
    return-void
.end method

.method public c(Ll1/h;)V
    .locals 1

    iget-object v0, p0, Lj0/b$c;->a:Lj0/b;

    invoke-static {v0, p1}, Lj0/b;->F(Lj0/b;Ll1/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj0/b$c;->a:Lj0/b;

    invoke-static {v0}, Lj0/b;->H(Lj0/b;)Ls0/c;

    move-result-object v0

    invoke-interface {v0, p1}, Ls0/c;->a(Ll1/h;)V

    :cond_0
    return-void
.end method

.method public d(Ll1/h;)V
    .locals 0

    return-void
.end method

.method public e(Ll1/h;)V
    .locals 0

    return-void
.end method
