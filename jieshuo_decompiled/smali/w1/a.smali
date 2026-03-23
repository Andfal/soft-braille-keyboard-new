.class public final Lw1/a;
.super Lt1/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lt1/t<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Lt1/u;


# instance fields
.field private final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final b:Lt1/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt1/t<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lw1/a$a;

    invoke-direct {v0}, Lw1/a$a;-><init>()V

    sput-object v0, Lw1/a;->c:Lt1/u;

    return-void
.end method

.method public constructor <init>(Lt1/e;Lt1/t;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt1/e;",
            "Lt1/t<",
            "TE;>;",
            "Ljava/lang/Class<",
            "TE;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lt1/t;-><init>()V

    new-instance v0, Lw1/m;

    invoke-direct {v0, p1, p2, p3}, Lw1/m;-><init>(Lt1/e;Lt1/t;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lw1/a;->b:Lt1/t;

    iput-object p3, p0, Lw1/a;->a:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public b(La2/a;)Ljava/lang/Object;
    .locals 4

    invoke-virtual {p1}, La2/a;->M()La2/b;

    move-result-object v0

    sget-object v1, La2/b;->i:La2/b;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, La2/a;->H()V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, La2/a;->b()V

    :goto_0
    invoke-virtual {p1}, La2/a;->l()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lw1/a;->b:Lt1/t;

    invoke-virtual {v1, p1}, Lt1/t;->b(La2/a;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, La2/a;->h()V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    iget-object v1, p0, Lw1/a;->a:Ljava/lang/Class;

    invoke-static {v1, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, p1, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-object v1
.end method

.method public d(La2/c;Ljava/lang/Object;)V
    .locals 4

    if-nez p2, :cond_0

    invoke-virtual {p1}, La2/c;->x()La2/c;

    return-void

    :cond_0
    invoke-virtual {p1}, La2/c;->e()La2/c;

    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-static {p2, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lw1/a;->b:Lt1/t;

    invoke-virtual {v3, p1, v2}, Lt1/t;->d(La2/c;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, La2/c;->h()La2/c;

    return-void
.end method
