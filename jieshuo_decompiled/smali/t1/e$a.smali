.class Lt1/e$a;
.super Lt1/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lt1/e;->e(Z)Lt1/t;
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


# instance fields
.field final synthetic a:Lt1/e;


# direct methods
.method constructor <init>(Lt1/e;)V
    .locals 0

    iput-object p1, p0, Lt1/e$a;->a:Lt1/e;

    invoke-direct {p0}, Lt1/t;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic b(La2/a;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lt1/e$a;->e(La2/a;)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic d(La2/c;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p0, p1, p2}, Lt1/e$a;->f(La2/c;Ljava/lang/Number;)V

    return-void
.end method

.method public e(La2/a;)Ljava/lang/Double;
    .locals 2

    invoke-virtual {p1}, La2/a;->M()La2/b;

    move-result-object v0

    sget-object v1, La2/b;->i:La2/b;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, La2/a;->H()V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, La2/a;->A()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public f(La2/c;Ljava/lang/Number;)V
    .locals 2

    if-nez p2, :cond_0

    invoke-virtual {p1}, La2/c;->x()La2/c;

    return-void

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lt1/e;->d(D)V

    invoke-virtual {p1, p2}, La2/c;->N(Ljava/lang/Number;)La2/c;

    return-void
.end method
