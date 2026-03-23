.class public abstract Lq0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq0/b;


# instance fields
.field protected a:Lo0/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ll0/f;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public b()Ll0/f;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected c(Ll1/h;)V
    .locals 1

    iget-object v0, p0, Lq0/a;->a:Lo0/b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lo0/b;->c(Ll1/h;)V

    :cond_0
    return-void
.end method

.method public h(Lo0/b;)V
    .locals 0

    iput-object p1, p0, Lq0/a;->a:Lo0/b;

    return-void
.end method
