.class public final Lx2/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Lu2/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx2/e;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lkotlin/ranges/h;",
        ">;",
        "Lu2/a;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Lkotlin/ranges/h;

.field private e:I

.field final synthetic f:Lx2/e;


# direct methods
.method constructor <init>(Lx2/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lx2/e$a;->f:Lx2/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lx2/e$a;->a:I

    invoke-static {p1}, Lx2/e;->e(Lx2/e;)I

    move-result v0

    invoke-static {p1}, Lx2/e;->c(Lx2/e;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lkotlin/ranges/l;->d(III)I

    move-result p1

    iput p1, p0, Lx2/e$a;->b:I

    iput p1, p0, Lx2/e$a;->c:I

    return-void
.end method

.method private final a()V
    .locals 6

    iget v0, p0, Lx2/e$a;->c:I

    const/4 v1, 0x0

    if-gez v0, :cond_0

    iput v1, p0, Lx2/e$a;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Lx2/e$a;->d:Lkotlin/ranges/h;

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lx2/e$a;->f:Lx2/e;

    invoke-static {v0}, Lx2/e;->d(Lx2/e;)I

    move-result v0

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-lez v0, :cond_1

    iget v0, p0, Lx2/e$a;->e:I

    add-int/2addr v0, v3

    iput v0, p0, Lx2/e$a;->e:I

    iget-object v4, p0, Lx2/e$a;->f:Lx2/e;

    invoke-static {v4}, Lx2/e;->d(Lx2/e;)I

    move-result v4

    if-ge v0, v4, :cond_2

    :cond_1
    iget v0, p0, Lx2/e$a;->c:I

    iget-object v4, p0, Lx2/e$a;->f:Lx2/e;

    invoke-static {v4}, Lx2/e;->c(Lx2/e;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-le v0, v4, :cond_3

    :cond_2
    iget v0, p0, Lx2/e$a;->b:I

    new-instance v1, Lkotlin/ranges/h;

    iget-object v4, p0, Lx2/e$a;->f:Lx2/e;

    invoke-static {v4}, Lx2/e;->c(Lx2/e;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Lx2/q;->F(Ljava/lang/CharSequence;)I

    move-result v4

    invoke-direct {v1, v0, v4}, Lkotlin/ranges/h;-><init>(II)V

    :goto_0
    iput-object v1, p0, Lx2/e$a;->d:Lkotlin/ranges/h;

    :goto_1
    iput v2, p0, Lx2/e$a;->c:I

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lx2/e$a;->f:Lx2/e;

    invoke-static {v0}, Lx2/e;->b(Lx2/e;)Ls2/c;

    move-result-object v0

    iget-object v4, p0, Lx2/e$a;->f:Lx2/e;

    invoke-static {v4}, Lx2/e;->c(Lx2/e;)Ljava/lang/CharSequence;

    move-result-object v4

    iget v5, p0, Lx2/e$a;->c:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ls2/c;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln2/h;

    if-nez v0, :cond_4

    iget v0, p0, Lx2/e$a;->b:I

    new-instance v1, Lkotlin/ranges/h;

    iget-object v4, p0, Lx2/e$a;->f:Lx2/e;

    invoke-static {v4}, Lx2/e;->c(Lx2/e;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Lx2/q;->F(Ljava/lang/CharSequence;)I

    move-result v4

    invoke-direct {v1, v0, v4}, Lkotlin/ranges/h;-><init>(II)V

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ln2/h;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {v0}, Ln2/h;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget v4, p0, Lx2/e$a;->b:I

    invoke-static {v4, v2}, Lkotlin/ranges/l;->g(II)Lkotlin/ranges/h;

    move-result-object v4

    iput-object v4, p0, Lx2/e$a;->d:Lkotlin/ranges/h;

    add-int/2addr v2, v0

    iput v2, p0, Lx2/e$a;->b:I

    if-nez v0, :cond_5

    const/4 v1, 0x1

    :cond_5
    add-int/2addr v2, v1

    goto :goto_1

    :goto_2
    iput v3, p0, Lx2/e$a;->a:I

    :goto_3
    return-void
.end method


# virtual methods
.method public b()Lkotlin/ranges/h;
    .locals 3

    iget v0, p0, Lx2/e$a;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lx2/e$a;->a()V

    :cond_0
    iget v0, p0, Lx2/e$a;->a:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lx2/e$a;->d:Lkotlin/ranges/h;

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    iput-object v2, p0, Lx2/e$a;->d:Lkotlin/ranges/h;

    iput v1, p0, Lx2/e$a;->a:I

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type kotlin.ranges.IntRange"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .locals 2

    iget v0, p0, Lx2/e$a;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lx2/e$a;->a()V

    :cond_0
    iget v0, p0, Lx2/e$a;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lx2/e$a;->b()Lkotlin/ranges/h;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
