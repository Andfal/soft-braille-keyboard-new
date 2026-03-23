.class public Ld2/t;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld2/t$b;,
        Ld2/t$c;,
        Ld2/t$a;
    }
.end annotation


# instance fields
.field private a:Ld2/p;

.field private b:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ld2/t$a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field private d:I

.field private e:I

.field f:J


# direct methods
.method public constructor <init>(Ld2/p;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Ld2/t;->b:Ljava/util/LinkedList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Ld2/t;->c:Z

    iput v0, p0, Ld2/t;->d:I

    iput v0, p0, Ld2/t;->e:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ld2/t;->f:J

    iput-object p1, p0, Ld2/t;->a:Ld2/p;

    return-void
.end method

.method static bridge synthetic a(Ld2/t;)Ld2/p;
    .locals 0

    iget-object p0, p0, Ld2/t;->a:Ld2/p;

    return-object p0
.end method

.method static bridge synthetic b(Ld2/t;)V
    .locals 0

    invoke-direct {p0}, Ld2/t;->l()V

    return-void
.end method

.method private j(Ld2/t$a;)V
    .locals 1

    invoke-direct {p0}, Ld2/t;->l()V

    iget v0, p0, Ld2/t;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ld2/t;->e:I

    iget-object v0, p0, Ld2/t;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private l()V
    .locals 2

    :goto_0
    iget-object v0, p0, Ld2/t;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget v1, p0, Ld2/t;->e:I

    if-le v0, v1, :cond_0

    iget-object v0, p0, Ld2/t;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Ld2/t;->c:Z

    return-void
.end method

.method public final d()Z
    .locals 2

    iget v0, p0, Ld2/t;->e:I

    iget-object v1, p0, Ld2/t;->b:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final e()Z
    .locals 1

    iget v0, p0, Ld2/t;->e:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f(IIJ)V
    .locals 3

    invoke-virtual {p0}, Ld2/t;->e()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Ld2/t;->b:Ljava/util/LinkedList;

    iget v2, p0, Ld2/t;->e:I

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld2/t$a;

    instance-of v2, v0, Ld2/t$b;

    if-eqz v2, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Ld2/t$a;->c(IIJ)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ld2/t$a;->d()V

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    new-instance v0, Ld2/t$b;

    iget v2, p0, Ld2/t;->d:I

    invoke-direct {v0, p0, p1, p2, v2}, Ld2/t$b;-><init>(Ld2/t;III)V

    invoke-direct {p0, v0}, Ld2/t;->j(Ld2/t$a;)V

    iget-boolean p1, p0, Ld2/t;->c:Z

    if-nez p1, :cond_2

    iget p1, p0, Ld2/t;->d:I

    add-int/2addr p1, v1

    iput p1, p0, Ld2/t;->d:I

    :cond_2
    iput-wide p3, p0, Ld2/t;->f:J

    return-void
.end method

.method public g(IIJ)V
    .locals 3

    invoke-virtual {p0}, Ld2/t;->e()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Ld2/t;->b:Ljava/util/LinkedList;

    iget v2, p0, Ld2/t;->e:I

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld2/t$a;

    instance-of v2, v0, Ld2/t$c;

    if-eqz v2, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Ld2/t$a;->c(IIJ)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ld2/t$a;->d()V

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    new-instance v0, Ld2/t$c;

    iget v2, p0, Ld2/t;->d:I

    invoke-direct {v0, p0, p1, p2, v2}, Ld2/t$c;-><init>(Ld2/t;III)V

    invoke-direct {p0, v0}, Ld2/t;->j(Ld2/t$a;)V

    iget-boolean p1, p0, Ld2/t;->c:Z

    if-nez p1, :cond_2

    iget p1, p0, Ld2/t;->d:I

    add-int/2addr p1, v1

    iput p1, p0, Ld2/t;->d:I

    :cond_2
    iput-wide p3, p0, Ld2/t;->f:J

    return-void
.end method

.method public h()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Ld2/t;->c:Z

    iget v0, p0, Ld2/t;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ld2/t;->d:I

    return-void
.end method

.method public i()Z
    .locals 1

    iget-boolean v0, p0, Ld2/t;->c:Z

    return v0
.end method

.method public k()I
    .locals 4

    invoke-virtual {p0}, Ld2/t;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ld2/t;->b:Ljava/util/LinkedList;

    iget v1, p0, Ld2/t;->e:I

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld2/t$a;

    iget v1, v0, Ld2/t$a;->d:I

    :goto_0
    iget-object v2, p0, Ld2/t;->b:Ljava/util/LinkedList;

    iget v3, p0, Ld2/t;->e:I

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld2/t$a;

    iget v3, v2, Ld2/t$a;->d:I

    if-eq v3, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Ld2/t$a;->e()V

    iget v0, p0, Ld2/t;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ld2/t;->e:I

    invoke-virtual {p0}, Ld2/t;->d()Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v2

    :goto_1
    invoke-virtual {v0}, Ld2/t$a;->a()I

    move-result v0

    return v0

    :cond_1
    move-object v0, v2

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method public m()I
    .locals 4

    invoke-virtual {p0}, Ld2/t;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ld2/t;->b:Ljava/util/LinkedList;

    iget v1, p0, Ld2/t;->e:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld2/t$a;

    iget v1, v0, Ld2/t$a;->d:I

    :goto_0
    iget-object v2, p0, Ld2/t;->b:Ljava/util/LinkedList;

    iget v3, p0, Ld2/t;->e:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld2/t$a;

    iget v3, v2, Ld2/t$a;->d:I

    if-eq v3, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Ld2/t$a;->f()V

    iget v0, p0, Ld2/t;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ld2/t;->e:I

    invoke-virtual {p0}, Ld2/t;->e()Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v2

    :goto_1
    invoke-virtual {v0}, Ld2/t$a;->b()I

    move-result v0

    return v0

    :cond_1
    move-object v0, v2

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    return v0
.end method
