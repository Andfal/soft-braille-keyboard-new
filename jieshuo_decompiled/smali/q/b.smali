.class public final Lq/b;
.super Lq/h0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq/b$a;
    }
.end annotation


# static fields
.field private static final g:Lq/b$a;


# instance fields
.field private e:Lq/q0;

.field private f:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lq/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lq/b$a;-><init>(Lq/a;)V

    sput-object v0, Lq/b;->g:Lq/b$a;

    return-void
.end method

.method static bridge synthetic q(Lq/b;)Lq/q0;
    .locals 0

    iget-object p0, p0, Lq/b;->e:Lq/q0;

    return-object p0
.end method

.method public static s([Lq/b;)V
    .locals 1

    sget-object v0, Lq/b;->g:Lq/b$a;

    invoke-static {p0, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-void
.end method


# virtual methods
.method public a(Lq/m;)V
    .locals 0

    invoke-virtual {p1}, Lq/m;->s()Lq/r0;

    const/4 p1, 0x0

    throw p1
.end method

.method public b()Lq/z;
    .locals 1

    sget-object v0, Lq/z;->s:Lq/z;

    return-object v0
.end method

.method protected g(Lq/h0;)I
    .locals 0

    check-cast p1, Lq/b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    throw p1
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method protected m(Lq/l0;I)V
    .locals 2

    new-instance p2, Lx/d;

    invoke-direct {p2}, Lx/d;-><init>()V

    new-instance v0, Lq/v0;

    invoke-virtual {p1}, Lq/l0;->e()Lq/m;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lq/v0;-><init>(Lq/m;Lx/a;)V

    const/4 p1, 0x0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lq/v0;->e(Lt/a;Z)V

    invoke-virtual {p2}, Lx/d;->r()[B

    move-result-object p1

    iput-object p1, p0, Lq/b;->f:[B

    array-length p1, p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lq/h0;->n(I)V

    return-void
.end method

.method public o()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method protected p(Lq/m;Lx/a;)V
    .locals 0

    invoke-interface {p2}, Lx/a;->k()Z

    const/4 p1, 0x0

    throw p1
.end method

.method public r(Lx/a;Ljava/lang/String;)V
    .locals 0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "visibility: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    throw p1
.end method
