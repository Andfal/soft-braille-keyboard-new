.class Lw3/c0;
.super Lw3/s1;
.source "SourceFile"


# instance fields
.field s:Ljava/lang/reflect/Field;

.field t:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lw3/z2;[Lw3/x0;Ljava/lang/reflect/Field;)V
    .locals 0

    invoke-direct {p0, p2}, Lw3/s1;-><init>([Lw3/x0;)V

    iput-object p3, p0, Lw3/c0;->s:Ljava/lang/reflect/Field;

    invoke-virtual {p0, p1}, Lw3/a3;->h(Lw3/z2;)V

    invoke-static {p1}, Lw3/a3;->v0(Lw3/z2;)Lw3/z2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lw3/a3;->A(Lw3/z2;)V

    return-void
.end method


# virtual methods
.method public e(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Lw3/u2;->p:Ljava/lang/Class;

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lw3/c0;->s:Ljava/lang/reflect/Field;

    iget-object v1, p0, Lw3/c0;->t:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lw3/c0;->s:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Lw3/m;->p()Lw3/m;

    move-result-object v2

    invoke-virtual {v2}, Lw3/m;->D()Lw3/z3;

    move-result-object v3

    invoke-virtual {v3, v2, p0, v0, v1}, Lw3/z3;->b(Lw3/m;Lw3/z2;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lw3/z2;

    if-eqz v1, :cond_1

    check-cast v0, Lw3/z2;

    invoke-interface {v0, p1}, Lw3/z2;->e(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    :cond_1
    return-object v0

    :catch_0
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    iget-object v0, p0, Lw3/c0;->s:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    const-string v0, "msg.java.internal.private"

    invoke-static {v0, p1}, Lw3/m;->d0(Ljava/lang/String;[Ljava/lang/Object;)Lw3/b0;

    move-result-object p1

    throw p1
.end method
