.class Lw1/n$g0;
.super Lt1/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw1/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lt1/t<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lt1/t;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic b(La2/a;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lw1/n$g0;->e(La2/a;)Ljava/lang/Number;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic d(La2/c;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p0, p1, p2}, Lw1/n$g0;->f(La2/c;Ljava/lang/Number;)V

    return-void
.end method

.method public e(La2/a;)Ljava/lang/Number;
    .locals 2

    invoke-virtual {p1}, La2/a;->M()La2/b;

    move-result-object v0

    sget-object v1, La2/b;->i:La2/b;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, La2/a;->H()V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    :try_start_0
    invoke-virtual {p1}, La2/a;->B()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lt1/r;

    invoke-direct {v0, p1}, Lt1/r;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public f(La2/c;Ljava/lang/Number;)V
    .locals 0

    invoke-virtual {p1, p2}, La2/c;->N(Ljava/lang/Number;)La2/c;

    return-void
.end method
