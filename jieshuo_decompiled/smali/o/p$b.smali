.class public Lo/p$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lo/p$b;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:Lo/p$a;

.field private final c:Lu/n;

.field private final d:Lv/w;


# direct methods
.method public constructor <init>(ILo/p$a;Lu/n;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_1

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p3}, Lu/n;->j()Lu/h;

    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "spec.getLocalItem() == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "spec == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "disposition == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "address < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(Lo/p$b;)I
    .locals 4

    iget v0, p0, Lo/p$b;->a:I

    iget v1, p1, Lo/p$b;->a:I

    const/4 v2, -0x1

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v3, 0x1

    if-le v0, v1, :cond_1

    return v3

    :cond_1
    invoke-virtual {p0}, Lo/p$b;->i()Z

    move-result v0

    invoke-virtual {p1}, Lo/p$b;->i()Z

    move-result v1

    if-eq v0, v1, :cond_3

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2

    :cond_3
    iget-object v0, p0, Lo/p$b;->c:Lu/n;

    iget-object p1, p1, Lo/p$b;->c:Lu/n;

    invoke-virtual {v0, p1}, Lu/n;->f(Lu/n;)I

    move-result p1

    return p1
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lo/p$b;->a:I

    return v0
.end method

.method public c()Lo/p$a;
    .locals 1

    iget-object v0, p0, Lo/p$b;->b:Lo/p$a;

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lo/p$b;

    invoke-virtual {p0, p1}, Lo/p$b;->a(Lo/p$b;)I

    move-result p1

    return p1
.end method

.method public d()Lv/v;
    .locals 1

    iget-object v0, p0, Lo/p$b;->c:Lu/n;

    invoke-virtual {v0}, Lu/n;->j()Lu/h;

    const/4 v0, 0x0

    throw v0
.end method

.method public e()I
    .locals 1

    iget-object v0, p0, Lo/p$b;->c:Lu/n;

    invoke-virtual {v0}, Lu/n;->l()I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lo/p$b;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lo/p$b;

    invoke-virtual {p0, p1}, Lo/p$b;->a(Lo/p$b;)I

    move-result p1

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public f()Lu/n;
    .locals 1

    iget-object v0, p0, Lo/p$b;->c:Lu/n;

    return-object v0
.end method

.method public g()Lv/v;
    .locals 1

    iget-object v0, p0, Lo/p$b;->c:Lu/n;

    invoke-virtual {v0}, Lu/n;->j()Lu/h;

    const/4 v0, 0x0

    throw v0
.end method

.method public h()Lv/w;
    .locals 1

    iget-object v0, p0, Lo/p$b;->d:Lv/w;

    return-object v0
.end method

.method public i()Z
    .locals 2

    iget-object v0, p0, Lo/p$b;->b:Lo/p$a;

    sget-object v1, Lo/p$a;->a:Lo/p$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j(Lo/p$b;)Z
    .locals 0

    iget-object p1, p1, Lo/p$b;->c:Lu/n;

    invoke-virtual {p0, p1}, Lo/p$b;->k(Lu/n;)Z

    move-result p1

    return p1
.end method

.method public k(Lu/n;)Z
    .locals 1

    iget-object v0, p0, Lo/p$b;->c:Lu/n;

    invoke-virtual {v0, p1}, Lu/n;->h(Lu/n;)Z

    move-result p1

    return p1
.end method

.method public l(Lo/p$a;)Lo/p$b;
    .locals 3

    iget-object v0, p0, Lo/p$b;->b:Lo/p$a;

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lo/p$b;

    iget v1, p0, Lo/p$b;->a:I

    iget-object v2, p0, Lo/p$b;->c:Lu/n;

    invoke-direct {v0, v1, p1, v2}, Lo/p$b;-><init>(ILo/p$a;Lu/n;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lo/p$b;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lo/p$b;->b:Lo/p$a;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/p$b;->c:Lu/n;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
