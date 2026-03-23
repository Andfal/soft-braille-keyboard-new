.class Lo/w$a;
.super Lu/f$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/w;->h(Lu/s;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Z

.field final synthetic b:I

.field final synthetic c:I


# direct methods
.method constructor <init>([ZII)V
    .locals 0

    iput-object p1, p0, Lo/w$a;->a:[Z

    iput p2, p0, Lo/w$a;->b:I

    iput p3, p0, Lo/w$a;->c:I

    invoke-direct {p0}, Lu/f$a;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lu/j;)V
    .locals 5

    invoke-virtual {p1}, Lu/f;->h()Lu/r;

    move-result-object v0

    invoke-virtual {v0}, Lu/r;->d()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lu/d;->n()Lv/a;

    move-result-object v0

    check-cast v0, Lv/l;

    invoke-virtual {v0}, Lv/l;->j()I

    move-result v0

    iget-object v1, p0, Lo/w$a;->a:[Z

    const/4 v2, 0x0

    aget-boolean v3, v1, v2

    if-eqz v3, :cond_0

    iget v3, p0, Lo/w$a;->b:I

    iget v4, p0, Lo/w$a;->c:I

    sub-int/2addr v3, v4

    add-int/2addr v3, v0

    invoke-virtual {p1}, Lu/f;->j()Lu/n;

    move-result-object p1

    invoke-virtual {p1}, Lu/n;->l()I

    move-result p1

    if-ne v3, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    aput-boolean p1, v1, v2

    :cond_1
    return-void
.end method
