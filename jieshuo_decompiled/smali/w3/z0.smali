.class public final Lw3/z0;
.super Lw3/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw3/z0$a;
    }
.end annotation


# instance fields
.field private l:Lw3/z0$a;

.field private m:Lw3/z2;

.field private n:I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lw3/v;-><init>()V

    return-void
.end method

.method public constructor <init>(Lw3/z2;Lw3/z2;Lw3/z0$a;)V
    .locals 1

    const-string v0, "ArrayIterator"

    invoke-direct {p0, p1, v0}, Lw3/v;-><init>(Lw3/z2;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput p1, p0, Lw3/z0;->n:I

    iput-object p2, p0, Lw3/z0;->m:Lw3/z2;

    iput-object p3, p0, Lw3/z0;->l:Lw3/z0$a;

    return-void
.end method

.method static P1(Lw3/a3;Z)V
    .locals 2

    new-instance v0, Lw3/z0;

    invoke-direct {v0}, Lw3/z0;-><init>()V

    const-string v1, "ArrayIterator"

    invoke-static {p0, p1, v0, v1}, Lw3/v;->J1(Lw3/a3;ZLw3/n0;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected I1()Ljava/lang/String;
    .locals 1

    const-string v0, "ArrayIterator"

    return-object v0
.end method

.method protected K1(Lw3/m;Lw3/z2;)Z
    .locals 3

    iget p2, p0, Lw3/z0;->n:I

    int-to-long v0, p2

    iget-object p2, p0, Lw3/z0;->m:Lw3/z2;

    invoke-static {p1, p2}, Lw3/y0;->U1(Lw3/m;Lw3/z2;)J

    move-result-wide p1

    cmp-long v2, v0, p1

    if-ltz v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected O1(Lw3/m;Lw3/z2;)Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lw3/z0;->l:Lw3/z0$a;

    sget-object v1, Lw3/z0$a;->b:Lw3/z0$a;

    if-ne v0, v1, :cond_0

    iget p1, p0, Lw3/z0;->n:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, Lw3/z0;->n:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lw3/z0;->m:Lw3/z2;

    iget v1, p0, Lw3/z0;->n:I

    invoke-interface {v0, v1, v0}, Lw3/z2;->D(ILw3/z2;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lw3/z2;->a0:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    sget-object v0, Lw3/w3;->a:Ljava/lang/Object;

    :cond_1
    iget-object v1, p0, Lw3/z0;->l:Lw3/z0$a;

    sget-object v2, Lw3/z0$a;->a:Lw3/z0$a;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_2

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lw3/z0;->n:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v1, v4

    aput-object v0, v1, v3

    invoke-virtual {p1, p2, v1}, Lw3/m;->R(Lw3/z2;[Ljava/lang/Object;)Lw3/z2;

    move-result-object v0

    :cond_2
    iget p1, p0, Lw3/z0;->n:I

    add-int/2addr p1, v3

    iput p1, p0, Lw3/z0;->n:I

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    const-string v0, "Array Iterator"

    return-object v0
.end method
