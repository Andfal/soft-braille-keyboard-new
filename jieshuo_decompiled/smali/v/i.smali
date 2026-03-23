.class public final Lv/i;
.super Lv/r;
.source "SourceFile"


# instance fields
.field private c:Lv/j;


# virtual methods
.method public f()Ljava/lang/String;
    .locals 1

    const-string v0, "enum"

    return-object v0
.end method

.method public getType()Lw/c;
    .locals 1

    invoke-virtual {p0}, Lv/r;->g()Lv/w;

    move-result-object v0

    invoke-virtual {v0}, Lv/w;->g()Lw/c;

    move-result-object v0

    return-object v0
.end method

.method public i()Lv/j;
    .locals 3

    iget-object v0, p0, Lv/i;->c:Lv/j;

    if-nez v0, :cond_0

    new-instance v0, Lv/j;

    invoke-virtual {p0}, Lv/r;->g()Lv/w;

    move-result-object v1

    invoke-virtual {p0}, Lv/r;->h()Lv/t;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lv/j;-><init>(Lv/w;Lv/t;)V

    iput-object v0, p0, Lv/i;->c:Lv/j;

    :cond_0
    iget-object v0, p0, Lv/i;->c:Lv/j;

    return-object v0
.end method
