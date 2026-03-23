.class public final Lq/o;
.super Lq/p;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lq/p;",
        "Ljava/lang/Comparable<",
        "Lq/o;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Lv/j;


# direct methods
.method public constructor <init>(Lv/j;I)V
    .locals 0

    invoke-direct {p0, p2}, Lq/p;-><init>(I)V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lq/o;->b:Lv/j;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "field == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lq/o;->b:Lv/j;

    invoke-virtual {v0}, Lv/r;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lq/o;

    invoke-virtual {p0, p1}, Lq/o;->g(Lq/o;)I

    move-result p1

    return p1
.end method

.method public d(Lq/m;Lx/a;II)I
    .locals 4

    invoke-virtual {p1}, Lq/m;->i()Lq/t;

    move-result-object p1

    iget-object v0, p0, Lq/o;->b:Lv/j;

    invoke-virtual {p1, v0}, Lq/t;->s(Lv/j;)I

    move-result p1

    sub-int p3, p1, p3

    invoke-virtual {p0}, Lq/p;->e()I

    move-result v0

    invoke-interface {p2}, Lx/a;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/4 v2, 0x0

    aput-object p4, v1, v2

    iget-object p4, p0, Lq/o;->b:Lv/j;

    invoke-virtual {p4}, Lv/r;->a()Ljava/lang/String;

    move-result-object p4

    const/4 v3, 0x1

    aput-object p4, v1, v3

    const-string p4, "  [%x] %s"

    invoke-static {p4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-interface {p2, v2, p4}, Lx/a;->d(ILjava/lang/String;)V

    invoke-static {p3}, Lx/n;->a(I)I

    move-result p4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    field_idx:    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lx/i;->h(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, p4, v1}, Lx/a;->d(ILjava/lang/String;)V

    invoke-static {v0}, Lx/n;->a(I)I

    move-result p4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    access_flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lu/a;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, p4, v1}, Lx/a;->d(ILjava/lang/String;)V

    :cond_0
    invoke-interface {p2, p3}, Lx/q;->i(I)I

    invoke-interface {p2, v0}, Lx/q;->i(I)I

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lq/o;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lq/o;

    invoke-virtual {p0, p1}, Lq/o;->g(Lq/o;)I

    move-result p1

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public f(Lq/m;)V
    .locals 1

    invoke-virtual {p1}, Lq/m;->i()Lq/t;

    move-result-object p1

    iget-object v0, p0, Lq/o;->b:Lv/j;

    invoke-virtual {p1, v0}, Lq/t;->t(Lv/j;)Lq/s;

    return-void
.end method

.method public g(Lq/o;)I
    .locals 1

    iget-object v0, p0, Lq/o;->b:Lv/j;

    iget-object p1, p1, Lq/o;->b:Lv/j;

    invoke-virtual {v0, p1}, Lv/a;->d(Lv/a;)I

    move-result p1

    return p1
.end method

.method public h()Lv/j;
    .locals 1

    iget-object v0, p0, Lq/o;->b:Lv/j;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lq/o;->b:Lv/j;

    invoke-virtual {v0}, Lv/r;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const-class v1, Lq/o;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lq/p;->e()I

    move-result v1

    invoke-static {v1}, Lx/i;->e(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lq/o;->b:Lv/j;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
