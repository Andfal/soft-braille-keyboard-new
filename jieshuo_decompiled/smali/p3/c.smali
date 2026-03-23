.class public Lp3/c;
.super Lp3/d;
.source "SourceFile"


# direct methods
.method public constructor <init>(II[B)V
    .locals 1

    new-instance v0, Lq3/a;

    invoke-direct {v0, p3}, Lq3/a;-><init>([B)V

    invoke-direct {p0, p1, p2, v0}, Lp3/d;-><init>(IILq3/a;)V

    return-void
.end method


# virtual methods
.method public d()[B
    .locals 1

    iget-object v0, p0, Lp3/j;->a:Ljava/lang/Object;

    check-cast v0, Lq3/a;

    invoke-virtual {v0}, Lq3/a;->a()[B

    move-result-object v0

    return-object v0
.end method
