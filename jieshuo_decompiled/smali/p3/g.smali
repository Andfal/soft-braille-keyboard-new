.class public Lp3/g;
.super Lp3/j;
.source "SourceFile"


# direct methods
.method public constructor <init>(II[B)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lp3/j;-><init>(IILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public d()[B
    .locals 1

    iget-object v0, p0, Lp3/j;->a:Ljava/lang/Object;

    check-cast v0, [B

    return-object v0
.end method
