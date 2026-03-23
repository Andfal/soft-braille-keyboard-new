.class public Lp3/k;
.super Lp3/j;
.source "SourceFile"


# instance fields
.field private d:Z

.field private e:I

.field private f:Lp3/h;


# direct methods
.method public constructor <init>(II[BLp3/h;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/String;

    invoke-virtual {p4}, Lp3/h;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "UTF-16LE"

    goto :goto_0

    :cond_0
    const-string v2, "Cp1252"

    :goto_0
    invoke-direct {v1, p3, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, v0}, Lp3/j;-><init>(IILjava/lang/Object;)V

    invoke-virtual {p4}, Lp3/h;->c()Z

    move-result p3

    iput-boolean p3, p0, Lp3/k;->d:Z

    sub-int/2addr p2, p1

    iput p2, p0, Lp3/k;->e:I

    iput-object p4, p0, Lp3/k;->f:Lp3/h;

    return-void
.end method


# virtual methods
.method public d()Ljava/lang/StringBuffer;
    .locals 1

    iget-object v0, p0, Lp3/j;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/StringBuffer;

    return-object v0
.end method

.method public e(II)Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Lp3/k;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lp3/j;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/StringBuffer;

    div-int/2addr p1, v0

    div-int/2addr p2, v0

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    invoke-virtual {p0, p1}, Lp3/j;->c(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lp3/k;

    invoke-virtual {p0}, Lp3/k;->d()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lp3/k;->d()Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lp3/k;->d:Z

    iget-boolean v2, p0, Lp3/k;->d:Z

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lp3/k;->f:Lp3/h;

    iget-object p1, p1, Lp3/k;->f:Lp3/h;

    invoke-virtual {v0, p1}, Lp3/h;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method
