.class public Lw3/d1;
.super Lw3/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw3/d1$b;
    }
.end annotation


# instance fields
.field private l:Ljava/lang/String;

.field private m:Lw3/d1$b;

.field private transient n:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lw3/h0$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lw3/v;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyIterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lw3/d1;->n:Ljava/util/Iterator;

    iput-object p1, p0, Lw3/d1;->l:Ljava/lang/String;

    invoke-static {}, Ljava/util/Collections;->emptyIterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lw3/d1;->n:Ljava/util/Iterator;

    sget-object p1, Lw3/d1$b;->c:Lw3/d1$b;

    iput-object p1, p0, Lw3/d1;->m:Lw3/d1$b;

    return-void
.end method

.method public constructor <init>(Lw3/z2;Ljava/lang/String;Lw3/d1$b;Ljava/util/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw3/z2;",
            "Ljava/lang/String;",
            "Lw3/d1$b;",
            "Ljava/util/Iterator<",
            "Lw3/h0$a;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lw3/v;-><init>(Lw3/z2;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Collections;->emptyIterator()Ljava/util/Iterator;

    iput-object p2, p0, Lw3/d1;->l:Ljava/lang/String;

    iput-object p4, p0, Lw3/d1;->n:Ljava/util/Iterator;

    iput-object p3, p0, Lw3/d1;->m:Lw3/d1$b;

    return-void
.end method

.method static P1(Lw3/a3;Ljava/lang/String;Z)V
    .locals 1

    new-instance v0, Lw3/d1;

    invoke-direct {v0, p1}, Lw3/d1;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2, v0, p1}, Lw3/v;->J1(Lw3/a3;ZLw3/n0;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected K1(Lw3/m;Lw3/z2;)Z
    .locals 0

    iget-object p1, p0, Lw3/d1;->n:Ljava/util/Iterator;

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method protected O1(Lw3/m;Lw3/z2;)Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lw3/d1;->n:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw3/h0$a;

    sget-object v1, Lw3/d1$a;->a:[I

    iget-object v2, p0, Lw3/d1;->m:Lw3/d1$b;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    const/4 v4, 0x3

    if-ne v1, v4, :cond_0

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v3, v0, Lw3/h0$a;->a:Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v1, v4

    iget-object v0, v0, Lw3/h0$a;->b:Ljava/lang/Object;

    aput-object v0, v1, v2

    invoke-virtual {p1, p2, v1}, Lw3/m;->R(Lw3/z2;[Ljava/lang/Object;)Lw3/z2;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    iget-object p1, v0, Lw3/h0$a;->b:Ljava/lang/Object;

    return-object p1

    :cond_2
    iget-object p1, v0, Lw3/h0$a;->a:Ljava/lang/Object;

    return-object p1
.end method

.method public m()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lw3/d1;->l:Ljava/lang/String;

    return-object v0
.end method
