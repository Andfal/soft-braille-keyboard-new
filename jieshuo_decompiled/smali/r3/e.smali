.class public Lr3/e;
.super Lr3/g;
.source "SourceFile"

# interfaces
.implements Lr3/c;


# instance fields
.field private c:Lr3/h;


# direct methods
.method constructor <init>(Ls3/c;Lr3/b;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lr3/g;-><init>(Ls3/d;Lr3/b;)V

    invoke-virtual {p1}, Ls3/c;->u()Lr3/h;

    move-result-object p1

    iput-object p1, p0, Lr3/e;->c:Lr3/h;

    return-void
.end method


# virtual methods
.method public b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method d()Lr3/h;
    .locals 1

    iget-object v0, p0, Lr3/e;->c:Lr3/h;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    invoke-virtual {p0}, Lr3/g;->c()Ls3/d;

    move-result-object v0

    invoke-virtual {v0}, Ls3/d;->f()I

    move-result v0

    return v0
.end method
