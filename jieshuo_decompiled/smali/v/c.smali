.class public final Lv/c;
.super Lv/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv/c$a;
    }
.end annotation


# instance fields
.field private final a:Lv/c$a;


# direct methods
.method public constructor <init>(Lv/c$a;)V
    .locals 1

    invoke-direct {p0}, Lv/a;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lx/o;->h()V

    iput-object p1, p0, Lv/c;->a:Lv/c$a;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "list == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lv/c;->a:Lv/c$a;

    const-string v1, ", "

    const-string v2, "}"

    const-string v3, "{"

    invoke-virtual {v0, v3, v1, v2}, Lx/h;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected e(Lv/a;)I
    .locals 1

    iget-object v0, p0, Lv/c;->a:Lv/c$a;

    check-cast p1, Lv/c;

    iget-object p1, p1, Lv/c;->a:Lv/c$a;

    invoke-virtual {v0, p1}, Lv/c$a;->p(Lv/c$a;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lv/c;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lv/c;->a:Lv/c$a;

    check-cast p1, Lv/c;

    iget-object p1, p1, Lv/c;->a:Lv/c$a;

    invoke-virtual {v0, p1}, Lx/h;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public f()Ljava/lang/String;
    .locals 1

    const-string v0, "array"

    return-object v0
.end method

.method public g()Lv/c$a;
    .locals 1

    iget-object v0, p0, Lv/c;->a:Lv/c$a;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lv/c;->a:Lv/c$a;

    invoke-virtual {v0}, Lx/h;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lv/c;->a:Lv/c$a;

    const-string v1, ", "

    const-string v2, "}"

    const-string v3, "array{"

    invoke-virtual {v0, v3, v1, v2}, Lx/h;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
