.class Lq0/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo0/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq0/d;->a()Ll0/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lq0/d;


# direct methods
.method constructor <init>(Lq0/d;)V
    .locals 0

    iput-object p1, p0, Lq0/d$a;->a:Lq0/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ll1/h;)V
    .locals 0

    return-void
.end method

.method public b(Ll1/h;)V
    .locals 0

    return-void
.end method

.method public c(Ll1/h;)V
    .locals 2

    iget-object v0, p0, Lq0/d$a;->a:Lq0/d;

    invoke-virtual {p1}, Ll1/h;->n()I

    move-result v1

    invoke-static {v0, v1}, Lq0/d;->i(Lq0/d;I)I

    iget-object v0, p0, Lq0/d$a;->a:Lq0/d;

    invoke-virtual {p1}, Ll1/h;->r()I

    move-result v1

    invoke-static {v0, v1}, Lq0/d;->k(Lq0/d;I)I

    iget-object v0, p0, Lq0/d$a;->a:Lq0/d;

    invoke-virtual {v0, p1}, Lq0/a;->c(Ll1/h;)V

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
