.class public Lw3/u0;
.super Lw3/s2;
.source "SourceFile"


# instance fields
.field private i:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;I)V
    .locals 2

    invoke-direct {p0}, Lw3/s2;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p2, p3, v0, v1}, Lw3/s2;->k(Ljava/lang/String;ILjava/lang/String;I)V

    iput-object p1, p0, Lw3/u0;->i:Ljava/lang/Object;

    instance-of v0, p1, Lw3/h1;

    if-eqz v0, :cond_2

    invoke-static {}, Lw3/m;->p()Lw3/m;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lw3/m;->E(I)Z

    move-result v0

    if-eqz v0, :cond_2

    check-cast p1, Lw3/h1;

    const-string v0, "fileName"

    invoke-virtual {p1, v0, p1}, Lw3/n0;->r(Ljava/lang/String;Lw3/z2;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1, v0, p1, p2}, Lw3/n0;->v(Ljava/lang/String;Lw3/z2;Ljava/lang/Object;)V

    :cond_0
    const-string p2, "lineNumber"

    invoke-virtual {p1, p2, p1}, Lw3/n0;->r(Ljava/lang/String;Lw3/z2;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p1, p3}, Lw3/n0;->v(Ljava/lang/String;Lw3/z2;Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p1, p0}, Lw3/h1;->Q1(Lw3/s2;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lw3/u0;->i:Ljava/lang/Object;

    if-nez v0, :cond_0

    const-string v0, "null"

    return-object v0

    :cond_0
    instance-of v1, v0, Lw3/h1;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :try_start_0
    invoke-static {v0}, Lw3/u2;->h2(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    iget-object v0, p0, Lw3/u0;->i:Ljava/lang/Object;

    instance-of v1, v0, Lw3/z2;

    if-eqz v1, :cond_2

    check-cast v0, Lw3/z2;

    invoke-static {v0}, Lw3/u2;->r(Lw3/z2;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public m()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lw3/u0;->i:Ljava/lang/Object;

    return-object v0
.end method
