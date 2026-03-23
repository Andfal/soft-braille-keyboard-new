.class public Ly3/v0;
.super Ly3/c0;
.source "SourceFile"


# static fields
.field private static final t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ly3/u0;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private p:Ly3/e;

.field private q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ly3/u0;",
            ">;"
        }
    .end annotation
.end field

.field private r:I

.field private s:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Ly3/v0;->t:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ly3/c0;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Ly3/v0;->r:I

    iput v0, p0, Ly3/v0;->s:I

    const/16 v0, 0x75

    iput v0, p0, Lw3/g2;->a:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ly3/c0;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Ly3/v0;->r:I

    iput v0, p0, Ly3/v0;->s:I

    const/16 v0, 0x75

    iput v0, p0, Lw3/g2;->a:I

    iput p1, p0, Ly3/e;->h:I

    return-void
.end method


# virtual methods
.method public E0(Ly3/u0;)V
    .locals 1

    invoke-virtual {p0, p1}, Ly3/e;->f0(Ljava/lang/Object;)V

    iget-object v0, p0, Ly3/v0;->q:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ly3/v0;->q:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Ly3/v0;->q:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, p0}, Ly3/e;->s0(Ly3/e;)V

    return-void
.end method

.method public F0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ly3/u0;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ly3/v0;->q:Ljava/util/List;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Ly3/v0;->t:Ljava/util/List;

    :goto_0
    return-object v0
.end method

.method public G0()Ly3/e;
    .locals 1

    iget-object v0, p0, Ly3/v0;->p:Ly3/e;

    return-object v0
.end method

.method public H0(Ly3/e;)V
    .locals 0

    invoke-virtual {p0, p1}, Ly3/e;->f0(Ljava/lang/Object;)V

    iput-object p1, p0, Ly3/v0;->p:Ly3/e;

    invoke-virtual {p1, p0}, Ly3/e;->s0(Ly3/e;)V

    return-void
.end method

.method public I0(I)V
    .locals 0

    iput p1, p0, Ly3/v0;->r:I

    return-void
.end method

.method public J0(I)V
    .locals 0

    iput p1, p0, Ly3/v0;->s:I

    return-void
.end method
