.class public Lf4/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>([BIII)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lf4/a;->a:Ljava/util/ArrayList;

    new-instance v0, Lp3/i;

    const/4 v1, 0x2

    invoke-direct {v0, p1, p2, p3, v1}, Lp3/i;-><init>([BIII)V

    invoke-virtual {v0}, Lp3/i;->e()I

    move-result p2

    const/4 p3, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_1

    invoke-virtual {v0, v1}, Lp3/i;->b(I)Lp3/g;

    move-result-object v2

    invoke-virtual {v2}, Lp3/g;->d()[B

    move-result-object v2

    invoke-static {v2}, Lu3/g;->e([B)S

    move-result v2

    mul-int/lit16 v2, v2, 0x200

    new-instance v3, Lp3/b;

    invoke-direct {v3, p1, v2, p4}, Lp3/b;-><init>([BII)V

    invoke-virtual {v3}, Lp3/f;->c()I

    move-result v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_0

    iget-object v5, p0, Lf4/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Lp3/b;->d(I)Lp3/c;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lf4/a;->a:Ljava/util/ArrayList;

    return-object v0
.end method
