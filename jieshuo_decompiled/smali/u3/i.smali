.class public Lu3/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:S

.field private final b:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_0

    iput p1, p0, Lu3/i;->b:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Illegal offset: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(IS[B)V
    .locals 0

    invoke-direct {p0, p1}, Lu3/i;-><init>(I)V

    invoke-virtual {p0, p2, p3}, Lu3/i;->c(S[B)V

    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 0

    invoke-direct {p0, p1}, Lu3/i;-><init>(I)V

    invoke-virtual {p0, p2}, Lu3/i;->b([B)V

    return-void
.end method


# virtual methods
.method public a()S
    .locals 1

    iget-short v0, p0, Lu3/i;->a:S

    return v0
.end method

.method public b([B)V
    .locals 1

    iget v0, p0, Lu3/i;->b:I

    invoke-static {p1, v0}, Lu3/g;->f([BI)S

    move-result p1

    iput-short p1, p0, Lu3/i;->a:S

    return-void
.end method

.method public c(S[B)V
    .locals 0

    iput-short p1, p0, Lu3/i;->a:S

    invoke-virtual {p0, p2}, Lu3/i;->d([B)V

    return-void
.end method

.method public d([B)V
    .locals 2

    iget v0, p0, Lu3/i;->b:I

    iget-short v1, p0, Lu3/i;->a:S

    invoke-static {p1, v0, v1}, Lu3/g;->j([BIS)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-short v0, p0, Lu3/i;->a:S

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
