.class public abstract Lx0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg1/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lg1/b;"
    }
.end annotation


# instance fields
.field protected a:Lx0/b;


# direct methods
.method public constructor <init>(Lx0/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx0/a;->a:Lx0/b;

    return-void
.end method


# virtual methods
.method public C(Lx0/c;)Lx0/e;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public D()V
    .locals 0

    return-void
.end method

.method public E(Lx0/a;)V
    .locals 1

    iget-object v0, p0, Lx0/a;->a:Lx0/b;

    invoke-virtual {v0, p1}, Lx0/b;->T(Lx0/a;)V

    return-void
.end method

.method public b()Ll0/f;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public f()V
    .locals 0

    return-void
.end method
