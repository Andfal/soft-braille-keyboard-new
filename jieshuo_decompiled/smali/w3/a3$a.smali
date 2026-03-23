.class final Lw3/a3$a;
.super Lw3/a3$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw3/a3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field g:Ljava/lang/Object;

.field h:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lw3/a3$c;-><init>(Ljava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method b(Lw3/m;Lw3/z2;)Lw3/a3;
    .locals 5

    invoke-virtual {p0}, Lw3/a3$c;->a()I

    move-result p1

    new-instance v0, Lw3/x1;

    invoke-direct {v0}, Lw3/x1;-><init>()V

    sget-object v1, Lw3/u3$a;->a:Lw3/u3$a;

    invoke-static {v0, p2, v1}, Lw3/u2;->s1(Lw3/a3;Lw3/z2;Lw3/u3$a;)V

    and-int/lit8 v1, p1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v4, "enumerable"

    invoke-virtual {v0, v4, v1, v3}, Lw3/a3;->X(Ljava/lang/String;Ljava/lang/Object;I)V

    and-int/lit8 v1, p1, 0x4

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v4, "configurable"

    invoke-virtual {v0, v4, v1, v3}, Lw3/a3;->X(Ljava/lang/String;Ljava/lang/Object;I)V

    iget-object v1, p0, Lw3/a3$a;->g:Ljava/lang/Object;

    if-nez v1, :cond_3

    iget-object v1, p0, Lw3/a3$a;->h:Ljava/lang/Object;

    if-nez v1, :cond_3

    and-int/2addr p1, v2

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "writable"

    invoke-virtual {v0, v1, p1, v3}, Lw3/a3;->X(Ljava/lang/String;Ljava/lang/Object;I)V

    :cond_3
    iget-object p1, p0, Lw3/a3$c;->a:Ljava/lang/Object;

    if-nez p1, :cond_4

    const-string p1, "f"

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_3
    iget-object v1, p0, Lw3/a3$a;->g:Ljava/lang/Object;

    if-eqz v1, :cond_7

    instance-of v2, v1, Lw3/x0;

    const-string v4, "get"

    if-eqz v2, :cond_6

    check-cast v1, Lw3/x0;

    invoke-virtual {v1, p1, p2}, Lw3/x0;->a(Ljava/lang/String;Lw3/z2;)Lw3/d0;

    move-result-object v1

    :cond_5
    :goto_4
    invoke-virtual {v0, v4, v1, v3}, Lw3/a3;->X(Ljava/lang/String;Ljava/lang/Object;I)V

    goto :goto_5

    :cond_6
    instance-of v2, v1, Ljava/lang/reflect/Member;

    if-eqz v2, :cond_5

    new-instance v1, Lw3/e0;

    iget-object v2, p0, Lw3/a3$a;->g:Ljava/lang/Object;

    check-cast v2, Ljava/lang/reflect/Member;

    invoke-direct {v1, p1, v2, p2}, Lw3/e0;-><init>(Ljava/lang/String;Ljava/lang/reflect/Member;Lw3/z2;)V

    goto :goto_4

    :cond_7
    :goto_5
    iget-object v1, p0, Lw3/a3$a;->h:Ljava/lang/Object;

    if-eqz v1, :cond_a

    instance-of v2, v1, Lw3/x0;

    const-string v4, "set"

    if-eqz v2, :cond_8

    check-cast v1, Lw3/x0;

    invoke-virtual {v1, p1, p2}, Lw3/x0;->b(Ljava/lang/String;Lw3/z2;)Lw3/d0;

    move-result-object p1

    invoke-virtual {v0, v4, p1, v3}, Lw3/a3;->X(Ljava/lang/String;Ljava/lang/Object;I)V

    goto :goto_6

    :cond_8
    instance-of v2, v1, Ljava/lang/reflect/Member;

    if-eqz v2, :cond_9

    new-instance v1, Lw3/e0;

    iget-object v2, p0, Lw3/a3$a;->h:Ljava/lang/Object;

    check-cast v2, Ljava/lang/reflect/Member;

    invoke-direct {v1, p1, v2, p2}, Lw3/e0;-><init>(Ljava/lang/String;Ljava/lang/reflect/Member;Lw3/z2;)V

    :cond_9
    invoke-virtual {v0, v4, v1, v3}, Lw3/a3;->X(Ljava/lang/String;Ljava/lang/Object;I)V

    :cond_a
    :goto_6
    return-object v0
.end method

.method c(Lw3/z2;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lw3/a3$a;->g:Ljava/lang/Object;

    if-eqz v0, :cond_2

    instance-of v1, v0, Lw3/x0;

    if-eqz v1, :cond_1

    check-cast v0, Lw3/x0;

    iget-object v1, v0, Lw3/x0;->f:Ljava/lang/Object;

    if-nez v1, :cond_0

    sget-object v1, Lw3/u2;->y:[Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    move-object p1, v1

    move-object v1, v2

    :goto_0
    invoke-virtual {v0, p1, v1}, Lw3/x0;->h(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    instance-of v1, v0, Lw3/d0;

    if-eqz v1, :cond_2

    check-cast v0, Lw3/d0;

    invoke-static {}, Lw3/m;->p()Lw3/m;

    move-result-object v1

    invoke-interface {v0}, Lw3/z2;->i()Lw3/z2;

    move-result-object v2

    sget-object v3, Lw3/u2;->y:[Ljava/lang/Object;

    invoke-interface {v0, v1, v2, p1, v3}, Lw3/d0;->a(Lw3/m;Lw3/z2;Lw3/z2;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object p1, p0, Lw3/a3$c;->d:Ljava/lang/Object;

    instance-of v0, p1, Lw3/w0;

    if-eqz v0, :cond_3

    check-cast p1, Lw3/w0;

    :try_start_0
    invoke-virtual {p1}, Lw3/w0;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Lw3/w0;->e()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lw3/a3$c;->d:Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lw3/w0;->e()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lw3/a3$c;->d:Ljava/lang/Object;

    throw v0

    :cond_3
    :goto_1
    return-object p1
.end method

.method e(Ljava/lang/Object;Lw3/z2;Lw3/z2;)Z
    .locals 6

    iget-object v0, p0, Lw3/a3$a;->h:Ljava/lang/Object;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_4

    iget-object v0, p0, Lw3/a3$a;->g:Ljava/lang/Object;

    if-eqz v0, :cond_3

    invoke-static {}, Lw3/m;->p()Lw3/m;

    move-result-object p2

    invoke-virtual {p2}, Lw3/m;->L()Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0xb

    invoke-virtual {p2, v0}, Lw3/m;->E(I)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    return v3

    :cond_1
    :goto_0
    iget-object p2, p0, Lw3/a3$c;->a:Ljava/lang/Object;

    if-eqz p2, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Lw3/z2;->m()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "]."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lw3/a3$c;->a:Ljava/lang/Object;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_2
    const-string p2, ""

    :goto_1
    new-array p3, v1, [Ljava/lang/Object;

    aput-object p2, p3, v2

    invoke-static {p1}, Lw3/m;->l0(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p3, v3

    const-string p1, "msg.set.prop.no.setter"

    invoke-static {p1, p3}, Lw3/u2;->p2(Ljava/lang/String;[Ljava/lang/Object;)Lw3/w;

    move-result-object p1

    throw p1

    :cond_3
    invoke-super {p0, p1, p2, p3}, Lw3/a3$c;->e(Ljava/lang/Object;Lw3/z2;Lw3/z2;)Z

    move-result p1

    return p1

    :cond_4
    invoke-static {}, Lw3/m;->p()Lw3/m;

    move-result-object p2

    iget-object v0, p0, Lw3/a3$a;->h:Ljava/lang/Object;

    instance-of v4, v0, Lw3/x0;

    if-eqz v4, :cond_6

    check-cast v0, Lw3/x0;

    iget-object v4, v0, Lw3/x0;->b:[Ljava/lang/Class;

    array-length v5, v4

    sub-int/2addr v5, v3

    aget-object v4, v4, v5

    invoke-static {v4}, Lw3/e0;->d2(Ljava/lang/Class;)I

    move-result v4

    invoke-static {p2, p3, p1, v4}, Lw3/e0;->a2(Lw3/m;Lw3/z2;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    iget-object p2, v0, Lw3/x0;->f:Ljava/lang/Object;

    if-nez p2, :cond_5

    new-array p2, v3, [Ljava/lang/Object;

    aput-object p1, p2, v2

    goto :goto_2

    :cond_5
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p3, v1, v2

    aput-object p1, v1, v3

    move-object p3, p2

    move-object p2, v1

    :goto_2
    invoke-virtual {v0, p3, p2}, Lw3/x0;->h(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_6
    instance-of v1, v0, Lw3/d0;

    if-eqz v1, :cond_7

    check-cast v0, Lw3/d0;

    invoke-interface {v0}, Lw3/z2;->i()Lw3/z2;

    move-result-object v1

    new-array v4, v3, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-interface {v0, p2, v1, p3, v4}, Lw3/d0;->a(Lw3/m;Lw3/z2;Lw3/z2;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    :goto_3
    return v3
.end method
