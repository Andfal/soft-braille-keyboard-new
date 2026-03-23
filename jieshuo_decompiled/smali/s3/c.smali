.class public Ls3/c;
.super Ls3/d;
.source "SourceFile"


# instance fields
.field private t:Lr3/h;


# direct methods
.method protected constructor <init>(I[BI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ls3/d;-><init>(I[BI)V

    const/4 p1, 0x0

    iput-object p1, p0, Ls3/c;->t:Lr3/h;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ls3/d;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ls3/c;->t:Lr3/h;

    invoke-virtual {p0, p1}, Ls3/d;->l(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ls3/d;->q(I)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ls3/d;->n(B)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Ls3/d;->p(B)V

    return-void
.end method


# virtual methods
.method public i()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public t()Z
    .locals 1

    invoke-super {p0}, Ls3/d;->t()Z

    move-result v0

    return v0
.end method

.method public u()Lr3/h;
    .locals 1

    iget-object v0, p0, Ls3/c;->t:Lr3/h;

    return-object v0
.end method

.method public v(Lr3/h;)V
    .locals 0

    iput-object p1, p0, Ls3/c;->t:Lr3/h;

    return-void
.end method
