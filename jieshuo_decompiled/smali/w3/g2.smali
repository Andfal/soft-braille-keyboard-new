.class public Lw3/g2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw3/g2$a;,
        Lw3/g2$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lw3/g2;",
        ">;"
    }
.end annotation


# static fields
.field private static final g:Lw3/g2;


# instance fields
.field protected a:I

.field protected b:Lw3/g2;

.field protected c:Lw3/g2;

.field protected d:Lw3/g2;

.field protected e:I

.field protected f:Lw3/g2$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lw3/g2;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lw3/g2;-><init>(I)V

    sput-object v0, Lw3/g2;->g:Lw3/g2;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lw3/g2;->e:I

    iput p1, p0, Lw3/g2;->a:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lw3/g2;->a:I

    iput p2, p0, Lw3/g2;->e:I

    return-void
.end method

.method public constructor <init>(ILw3/g2;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lw3/g2;->e:I

    iput p1, p0, Lw3/g2;->a:I

    iput-object p2, p0, Lw3/g2;->d:Lw3/g2;

    iput-object p2, p0, Lw3/g2;->c:Lw3/g2;

    const/4 p1, 0x0

    iput-object p1, p2, Lw3/g2;->b:Lw3/g2;

    return-void
.end method

.method public constructor <init>(ILw3/g2;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lw3/g2;-><init>(ILw3/g2;)V

    iput p3, p0, Lw3/g2;->e:I

    return-void
.end method

.method public constructor <init>(ILw3/g2;Lw3/g2;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lw3/g2;->e:I

    iput p1, p0, Lw3/g2;->a:I

    iput-object p2, p0, Lw3/g2;->c:Lw3/g2;

    iput-object p3, p0, Lw3/g2;->d:Lw3/g2;

    iput-object p3, p2, Lw3/g2;->b:Lw3/g2;

    const/4 p1, 0x0

    iput-object p1, p3, Lw3/g2;->b:Lw3/g2;

    return-void
.end method

.method public constructor <init>(ILw3/g2;Lw3/g2;Lw3/g2;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lw3/g2;->e:I

    iput p1, p0, Lw3/g2;->a:I

    iput-object p2, p0, Lw3/g2;->c:Lw3/g2;

    iput-object p4, p0, Lw3/g2;->d:Lw3/g2;

    iput-object p3, p2, Lw3/g2;->b:Lw3/g2;

    iput-object p4, p3, Lw3/g2;->b:Lw3/g2;

    const/4 p1, 0x0

    iput-object p1, p4, Lw3/g2;->b:Lw3/g2;

    return-void
.end method

.method public constructor <init>(ILw3/g2;Lw3/g2;Lw3/g2;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lw3/g2;-><init>(ILw3/g2;Lw3/g2;Lw3/g2;)V

    iput p5, p0, Lw3/g2;->e:I

    return-void
.end method

.method private M(I)Lw3/g2$b;
    .locals 2

    iget-object v0, p0, Lw3/g2;->f:Lw3/g2$b;

    :goto_0
    if-eqz v0, :cond_0

    iget v1, v0, Lw3/g2$b;->b:I

    if-eq p1, v1, :cond_0

    iget-object v0, v0, Lw3/g2$b;->a:Lw3/g2$b;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static N(D)Lw3/g2;
    .locals 1

    new-instance v0, Ly3/k0;

    invoke-direct {v0}, Ly3/k0;-><init>()V

    invoke-virtual {v0, p0, p1}, Ly3/k0;->w0(D)V

    return-object v0
.end method

.method public static O(ILjava/lang/String;)Lw3/g2;
    .locals 1

    new-instance v0, Ly3/i0;

    invoke-direct {v0}, Ly3/i0;-><init>()V

    invoke-virtual {v0, p1}, Ly3/i0;->x0(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lw3/g2;->d0(I)Lw3/g2;

    return-object v0
.end method

.method public static P(Ljava/lang/String;)Lw3/g2;
    .locals 1

    const/16 v0, 0x29

    invoke-static {v0, p0}, Lw3/g2;->O(ILjava/lang/String;)Lw3/g2;

    move-result-object p0

    return-object p0
.end method

.method public static Q()Lw3/g2;
    .locals 2

    new-instance v0, Lw3/g2;

    const/16 v1, 0x86

    invoke-direct {v0, v1}, Lw3/g2;-><init>(I)V

    return-object v0
.end method

.method static bridge synthetic d()Lw3/g2;
    .locals 1

    sget-object v0, Lw3/g2;->g:Lw3/g2;

    return-object v0
.end method

.method private k()I
    .locals 3

    iget v0, p0, Lw3/g2;->a:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_b

    const/16 v1, 0x32

    if-eq v0, v1, :cond_a

    const/16 v1, 0x49

    if-eq v0, v1, :cond_9

    const/16 v1, 0x84

    const/4 v2, 0x1

    if-eq v0, v1, :cond_3

    const/16 v1, 0x90

    if-eq v0, v1, :cond_3

    const/16 v1, 0xa8

    if-eq v0, v1, :cond_9

    const/16 v1, 0x7b

    if-eq v0, v1, :cond_2

    const/16 v1, 0x7c

    if-eq v0, v1, :cond_a

    packed-switch v0, :pswitch_data_0

    return v2

    :pswitch_0
    iget-object v0, p0, Lw3/g2;->c:Lw3/g2;

    if-eqz v0, :cond_0

    invoke-direct {v0}, Lw3/g2;->k()I

    move-result v0

    return v0

    :cond_0
    return v2

    :pswitch_1
    invoke-direct {p0}, Lw3/g2;->p()I

    move-result v0

    return v0

    :pswitch_2
    iget-object v0, p0, Lw3/g2;->b:Lw3/g2;

    if-eqz v0, :cond_1

    invoke-direct {v0}, Lw3/g2;->k()I

    move-result v0

    return v0

    :cond_1
    return v2

    :cond_2
    invoke-direct {p0}, Lw3/g2;->m()I

    move-result v0

    return v0

    :cond_3
    iget-object v0, p0, Lw3/g2;->c:Lw3/g2;

    if-nez v0, :cond_4

    return v2

    :cond_4
    iget v1, v0, Lw3/g2;->a:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_8

    const/16 v2, 0x53

    if-eq v1, v2, :cond_7

    const/16 v2, 0x75

    if-eq v1, v2, :cond_6

    const/16 v2, 0x85

    if-eq v1, v2, :cond_5

    invoke-direct {p0}, Lw3/g2;->l()I

    move-result v0

    return v0

    :cond_5
    invoke-direct {v0}, Lw3/g2;->o()I

    move-result v0

    return v0

    :cond_6
    invoke-direct {v0}, Lw3/g2;->q()I

    move-result v0

    return v0

    :cond_7
    invoke-direct {v0}, Lw3/g2;->r()I

    move-result v0

    return v0

    :cond_8
    invoke-direct {v0}, Lw3/g2;->n()I

    move-result v0

    return v0

    :cond_9
    const/16 v0, 0x8

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0

    :cond_b
    iget-object v0, p0, Lw3/g2;->c:Lw3/g2;

    if-eqz v0, :cond_c

    return v1

    :cond_c
    const/4 v0, 0x2

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x86
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private l()I
    .locals 3

    iget-object v0, p0, Lw3/g2;->c:Lw3/g2;

    const/4 v1, 0x1

    :goto_0
    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    and-int/lit8 v1, v1, -0x2

    invoke-direct {v0}, Lw3/g2;->k()I

    move-result v2

    or-int/2addr v1, v2

    iget-object v0, v0, Lw3/g2;->b:Lw3/g2;

    goto :goto_0

    :cond_0
    return v1
.end method

.method private m()I
    .locals 3

    move-object v0, p0

    check-cast v0, Ly3/c0;

    invoke-virtual {v0}, Ly3/c0;->y0()Ly3/c0;

    move-result-object v0

    const/16 v1, 0x12

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lw3/g2;->R(II)V

    const/4 v0, 0x0

    return v0
.end method

.method private n()I
    .locals 2

    iget-object v0, p0, Lw3/g2;->b:Lw3/g2;

    move-object v1, p0

    check-cast v1, Ly3/c0;

    iget-object v1, v1, Ly3/c0;->m:Lw3/g2;

    invoke-direct {v0}, Lw3/g2;->k()I

    move-result v0

    if-eqz v1, :cond_0

    invoke-direct {v1}, Lw3/g2;->k()I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    :cond_0
    or-int/lit8 v0, v0, 0x1

    :goto_0
    return v0
.end method

.method private o()I
    .locals 3

    iget-object v0, p0, Lw3/g2;->b:Lw3/g2;

    invoke-direct {v0}, Lw3/g2;->k()I

    move-result v0

    const/16 v1, 0x12

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lw3/g2;->z(II)I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method private p()I
    .locals 3

    iget-object v0, p0, Lw3/g2;->c:Lw3/g2;

    :goto_0
    iget-object v1, v0, Lw3/g2;->b:Lw3/g2;

    iget-object v2, p0, Lw3/g2;->d:Lw3/g2;

    if-eq v1, v2, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget v1, v0, Lw3/g2;->a:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    move-object v1, v0

    check-cast v1, Ly3/c0;

    iget-object v1, v1, Ly3/c0;->m:Lw3/g2;

    iget-object v1, v1, Lw3/g2;->b:Lw3/g2;

    invoke-direct {v1}, Lw3/g2;->k()I

    move-result v1

    iget-object v0, v0, Lw3/g2;->c:Lw3/g2;

    iget v0, v0, Lw3/g2;->a:I

    const/16 v2, 0x2d

    if-ne v0, v2, :cond_2

    and-int/lit8 v1, v1, -0x2

    :cond_2
    const/16 v0, 0x12

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lw3/g2;->z(II)I

    move-result v0

    or-int/2addr v0, v1

    return v0
.end method

.method private q()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private r()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private s(I)Lw3/g2$b;
    .locals 2

    invoke-direct {p0, p1}, Lw3/g2;->M(I)Lw3/g2$b;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lw3/g2$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lw3/g2$b;-><init>(Lw3/h2;)V

    iput p1, v0, Lw3/g2$b;->b:I

    iget-object p1, p0, Lw3/g2;->f:Lw3/g2$b;

    iput-object p1, v0, Lw3/g2$b;->a:Lw3/g2$b;

    iput-object v0, p0, Lw3/g2;->f:Lw3/g2$b;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public A()Lw3/g2;
    .locals 1

    iget-object v0, p0, Lw3/g2;->d:Lw3/g2;

    return-object v0
.end method

.method public B()Lw3/g2;
    .locals 2

    move-object v0, p0

    :goto_0
    iget-object v1, v0, Lw3/g2;->b:Lw3/g2;

    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public C()I
    .locals 1

    iget v0, p0, Lw3/g2;->e:I

    return v0
.end method

.method public D()Lw3/g2;
    .locals 1

    iget-object v0, p0, Lw3/g2;->b:Lw3/g2;

    return-object v0
.end method

.method public E(I)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lw3/g2;->M(I)Lw3/g2$b;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object p1, p1, Lw3/g2$b;->d:Ljava/lang/Object;

    return-object p1
.end method

.method public F()Ly3/r0;
    .locals 1

    move-object v0, p0

    check-cast v0, Ly3/i0;

    invoke-virtual {v0}, Ly3/i0;->F()Ly3/r0;

    move-result-object v0

    return-object v0
.end method

.method public final G()Ljava/lang/String;
    .locals 1

    move-object v0, p0

    check-cast v0, Ly3/i0;

    invoke-virtual {v0}, Ly3/i0;->v0()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public H()I
    .locals 1

    iget v0, p0, Lw3/g2;->a:I

    return v0
.end method

.method public I()Z
    .locals 1

    iget-object v0, p0, Lw3/g2;->c:Lw3/g2;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public J()Z
    .locals 2

    invoke-direct {p0}, Lw3/g2;->k()I

    move-result v0

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_1

    and-int/lit8 v0, v0, 0xb

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final K()I
    .locals 2

    iget v0, p0, Lw3/g2;->a:I

    const/16 v1, 0x86

    if-eq v0, v1, :cond_0

    const/16 v1, 0x49

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa8

    if-eq v0, v1, :cond_0

    invoke-static {}, Lw3/v0;->b()Ljava/lang/RuntimeException;

    :cond_0
    const/16 v0, 0xf

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lw3/g2;->z(II)I

    move-result v0

    return v0
.end method

.method public L(I)V
    .locals 2

    iget v0, p0, Lw3/g2;->a:I

    const/16 v1, 0x86

    if-eq v0, v1, :cond_0

    const/16 v1, 0x49

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa8

    if-eq v0, v1, :cond_0

    invoke-static {}, Lw3/v0;->b()Ljava/lang/RuntimeException;

    :cond_0
    const/16 v0, 0xf

    invoke-virtual {p0, v0, p1}, Lw3/g2;->R(II)V

    return-void
.end method

.method public R(II)V
    .locals 0

    invoke-direct {p0, p1}, Lw3/g2;->s(I)Lw3/g2$b;

    move-result-object p1

    iput p2, p1, Lw3/g2$b;->c:I

    return-void
.end method

.method public S(ILjava/lang/Object;)V
    .locals 0

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lw3/g2;->V(I)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lw3/g2;->s(I)Lw3/g2$b;

    move-result-object p1

    iput-object p2, p1, Lw3/g2$b;->d:Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public T(Lw3/g2;)V
    .locals 2

    invoke-virtual {p0, p1}, Lw3/g2;->t(Lw3/g2;)Lw3/g2;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lw3/g2;->c:Lw3/g2;

    iget-object v1, v1, Lw3/g2;->b:Lw3/g2;

    iput-object v1, p0, Lw3/g2;->c:Lw3/g2;

    goto :goto_0

    :cond_0
    iget-object v1, p1, Lw3/g2;->b:Lw3/g2;

    iput-object v1, v0, Lw3/g2;->b:Lw3/g2;

    :goto_0
    iget-object v1, p0, Lw3/g2;->d:Lw3/g2;

    if-ne p1, v1, :cond_1

    iput-object v0, p0, Lw3/g2;->d:Lw3/g2;

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p1, Lw3/g2;->b:Lw3/g2;

    return-void
.end method

.method public U()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lw3/g2;->d:Lw3/g2;

    iput-object v0, p0, Lw3/g2;->c:Lw3/g2;

    return-void
.end method

.method public V(I)V
    .locals 4

    iget-object v0, p0, Lw3/g2;->f:Lw3/g2$b;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    :goto_0
    iget v2, v0, Lw3/g2$b;->b:I

    if-eq v2, p1, :cond_1

    iget-object v1, v0, Lw3/g2$b;->a:Lw3/g2$b;

    if-nez v1, :cond_0

    return-void

    :cond_0
    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_0

    :cond_1
    iget-object p1, v0, Lw3/g2$b;->a:Lw3/g2$b;

    if-nez v1, :cond_2

    iput-object p1, p0, Lw3/g2;->f:Lw3/g2$b;

    goto :goto_1

    :cond_2
    iput-object p1, v1, Lw3/g2$b;->a:Lw3/g2$b;

    :cond_3
    :goto_1
    return-void
.end method

.method public W(Lw3/g2;Lw3/g2;)V
    .locals 1

    iget-object v0, p1, Lw3/g2;->b:Lw3/g2;

    iput-object v0, p2, Lw3/g2;->b:Lw3/g2;

    iget-object v0, p0, Lw3/g2;->c:Lw3/g2;

    if-ne p1, v0, :cond_0

    iput-object p2, p0, Lw3/g2;->c:Lw3/g2;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lw3/g2;->t(Lw3/g2;)Lw3/g2;

    move-result-object v0

    iput-object p2, v0, Lw3/g2;->b:Lw3/g2;

    :goto_0
    iget-object v0, p0, Lw3/g2;->d:Lw3/g2;

    if-ne p1, v0, :cond_1

    iput-object p2, p0, Lw3/g2;->d:Lw3/g2;

    :cond_1
    const/4 p2, 0x0

    iput-object p2, p1, Lw3/g2;->b:Lw3/g2;

    return-void
.end method

.method public X(Lw3/g2;Lw3/g2;)V
    .locals 2

    iget-object v0, p1, Lw3/g2;->b:Lw3/g2;

    iget-object v1, v0, Lw3/g2;->b:Lw3/g2;

    iput-object v1, p2, Lw3/g2;->b:Lw3/g2;

    iput-object p2, p1, Lw3/g2;->b:Lw3/g2;

    iget-object p1, p0, Lw3/g2;->d:Lw3/g2;

    if-ne v0, p1, :cond_0

    iput-object p2, p0, Lw3/g2;->d:Lw3/g2;

    :cond_0
    const/4 p1, 0x0

    iput-object p1, v0, Lw3/g2;->b:Lw3/g2;

    return-void
.end method

.method public final Y(D)V
    .locals 1

    move-object v0, p0

    check-cast v0, Ly3/k0;

    invoke-virtual {v0, p1, p2}, Ly3/k0;->w0(D)V

    return-void
.end method

.method public Z(Ly3/j;)V
    .locals 1

    const/16 v0, 0x18

    invoke-virtual {p0, v0, p1}, Lw3/g2;->S(ILjava/lang/Object;)V

    return-void
.end method

.method public a0(I)V
    .locals 0

    iput p1, p0, Lw3/g2;->e:I

    return-void
.end method

.method public b0(Ly3/r0;)V
    .locals 1

    if-nez p1, :cond_0

    invoke-static {}, Lw3/v0;->b()Ljava/lang/RuntimeException;

    :cond_0
    instance-of v0, p0, Ly3/i0;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Ly3/i0;

    invoke-virtual {v0, p1}, Ly3/i0;->b0(Ly3/r0;)V

    return-void

    :cond_1
    invoke-static {}, Lw3/v0;->b()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public final c0(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    invoke-static {}, Lw3/v0;->b()Ljava/lang/RuntimeException;

    :cond_0
    move-object v0, p0

    check-cast v0, Ly3/i0;

    invoke-virtual {v0, p1}, Ly3/i0;->x0(Ljava/lang/String;)V

    return-void
.end method

.method public d0(I)Lw3/g2;
    .locals 0

    iput p1, p0, Lw3/g2;->a:I

    return-object p0
.end method

.method public e(Lw3/g2;Lw3/g2;)V
    .locals 1

    iget-object v0, p1, Lw3/g2;->b:Lw3/g2;

    if-nez v0, :cond_1

    iget-object v0, p2, Lw3/g2;->b:Lw3/g2;

    iput-object v0, p1, Lw3/g2;->b:Lw3/g2;

    iput-object p1, p2, Lw3/g2;->b:Lw3/g2;

    iget-object v0, p0, Lw3/g2;->d:Lw3/g2;

    if-ne v0, p2, :cond_0

    iput-object p1, p0, Lw3/g2;->d:Lw3/g2;

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "newChild had siblings in addChildAfter"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public f(Lw3/g2;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p1, Lw3/g2;->b:Lw3/g2;

    iget-object v0, p0, Lw3/g2;->d:Lw3/g2;

    if-nez v0, :cond_0

    iput-object p1, p0, Lw3/g2;->d:Lw3/g2;

    iput-object p1, p0, Lw3/g2;->c:Lw3/g2;

    return-void

    :cond_0
    iput-object p1, v0, Lw3/g2;->b:Lw3/g2;

    iput-object p1, p0, Lw3/g2;->d:Lw3/g2;

    return-void
.end method

.method public h(Lw3/g2;)V
    .locals 1

    iget-object v0, p0, Lw3/g2;->c:Lw3/g2;

    iput-object v0, p1, Lw3/g2;->b:Lw3/g2;

    iput-object p1, p0, Lw3/g2;->c:Lw3/g2;

    iget-object v0, p0, Lw3/g2;->d:Lw3/g2;

    if-nez v0, :cond_0

    iput-object p1, p0, Lw3/g2;->d:Lw3/g2;

    :cond_0
    return-void
.end method

.method public i(Lw3/g2;)V
    .locals 1

    iget-object v0, p0, Lw3/g2;->d:Lw3/g2;

    if-eqz v0, :cond_0

    iput-object p1, v0, Lw3/g2;->b:Lw3/g2;

    :cond_0
    invoke-virtual {p1}, Lw3/g2;->B()Lw3/g2;

    move-result-object v0

    iput-object v0, p0, Lw3/g2;->d:Lw3/g2;

    iget-object v0, p0, Lw3/g2;->c:Lw3/g2;

    if-nez v0, :cond_1

    iput-object p1, p0, Lw3/g2;->c:Lw3/g2;

    :cond_1
    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lw3/g2;",
            ">;"
        }
    .end annotation

    new-instance v0, Lw3/g2$a;

    invoke-direct {v0, p0}, Lw3/g2$a;-><init>(Lw3/g2;)V

    return-object v0
.end method

.method public j(Lw3/g2;)V
    .locals 2

    invoke-virtual {p1}, Lw3/g2;->B()Lw3/g2;

    move-result-object v0

    iget-object v1, p0, Lw3/g2;->c:Lw3/g2;

    iput-object v1, v0, Lw3/g2;->b:Lw3/g2;

    iput-object p1, p0, Lw3/g2;->c:Lw3/g2;

    iget-object p1, p0, Lw3/g2;->d:Lw3/g2;

    if-nez p1, :cond_0

    iput-object v0, p0, Lw3/g2;->d:Lw3/g2;

    :cond_0
    return-void
.end method

.method public t(Lw3/g2;)Lw3/g2;
    .locals 2

    iget-object v0, p0, Lw3/g2;->c:Lw3/g2;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    :goto_0
    iget-object v1, v0, Lw3/g2;->b:Lw3/g2;

    if-eq v1, p1, :cond_2

    if-eqz v1, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "node is not a child"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lw3/g2;->a:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final v()D
    .locals 2

    move-object v0, p0

    check-cast v0, Ly3/k0;

    invoke-virtual {v0}, Ly3/k0;->v0()D

    move-result-wide v0

    return-wide v0
.end method

.method public w(I)I
    .locals 0

    invoke-direct {p0, p1}, Lw3/g2;->M(I)Lw3/g2$b;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lw3/v0;->b()Ljava/lang/RuntimeException;

    :cond_0
    iget p1, p1, Lw3/g2$b;->c:I

    return p1
.end method

.method public x()Lw3/g2;
    .locals 1

    iget-object v0, p0, Lw3/g2;->c:Lw3/g2;

    return-object v0
.end method

.method public z(II)I
    .locals 0

    invoke-direct {p0, p1}, Lw3/g2;->M(I)Lw3/g2$b;

    move-result-object p1

    if-nez p1, :cond_0

    return p2

    :cond_0
    iget p1, p1, Lw3/g2$b;->c:I

    return p1
.end method
