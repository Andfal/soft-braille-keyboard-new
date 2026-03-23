.class final Lx2/q$a;
.super Lt2/g;
.source "SourceFile"

# interfaces
.implements Ls2/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx2/q;->U(Ljava/lang/CharSequence;[CIZI)Lw2/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lt2/g;",
        "Ls2/c<",
        "Ljava/lang/CharSequence;",
        "Ljava/lang/Integer;",
        "Ln2/h<",
        "+",
        "Ljava/lang/Integer;",
        "+",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic b:[C

.field final synthetic c:Z


# direct methods
.method constructor <init>([CZ)V
    .locals 0

    iput-object p1, p0, Lx2/q$a;->b:[C

    iput-boolean p2, p0, Lx2/q$a;->c:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lt2/g;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/CharSequence;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lx2/q$a;->d(Ljava/lang/CharSequence;I)Ln2/h;

    move-result-object p1

    return-object p1
.end method

.method public final d(Ljava/lang/CharSequence;I)Ln2/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "I)",
            "Ln2/h<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lx2/q$a;->b:[C

    iget-boolean v1, p0, Lx2/q$a;->c:Z

    invoke-static {p1, v0, p2, v1}, Lx2/q;->M(Ljava/lang/CharSequence;[CIZ)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Ln2/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln2/h;

    move-result-object p1

    :goto_0
    return-object p1
.end method
