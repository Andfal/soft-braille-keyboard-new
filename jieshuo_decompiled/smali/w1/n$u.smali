.class Lw1/n$u;
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
        "Lt1/j;",
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

    invoke-virtual {p0, p1}, Lw1/n$u;->e(La2/a;)Lt1/j;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic d(La2/c;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lt1/j;

    invoke-virtual {p0, p1, p2}, Lw1/n$u;->f(La2/c;Lt1/j;)V

    return-void
.end method

.method public e(La2/a;)Lt1/j;
    .locals 3

    sget-object v0, Lw1/n$b0;->a:[I

    invoke-virtual {p1}, La2/a;->M()La2/b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :pswitch_0
    new-instance v0, Lt1/m;

    invoke-direct {v0}, Lt1/m;-><init>()V

    invoke-virtual {p1}, La2/a;->c()V

    :goto_0
    invoke-virtual {p1}, La2/a;->l()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, La2/a;->D()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lw1/n$u;->e(La2/a;)Lt1/j;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lt1/m;->j(Ljava/lang/String;Lt1/j;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, La2/a;->i()V

    return-object v0

    :pswitch_1
    new-instance v0, Lt1/g;

    invoke-direct {v0}, Lt1/g;-><init>()V

    invoke-virtual {p1}, La2/a;->b()V

    :goto_1
    invoke-virtual {p1}, La2/a;->l()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Lw1/n$u;->e(La2/a;)Lt1/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lt1/g;->j(Lt1/j;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, La2/a;->h()V

    return-object v0

    :pswitch_2
    invoke-virtual {p1}, La2/a;->H()V

    sget-object p1, Lt1/l;->a:Lt1/l;

    return-object p1

    :pswitch_3
    new-instance v0, Lt1/o;

    invoke-virtual {p1}, La2/a;->K()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lt1/o;-><init>(Ljava/lang/String;)V

    return-object v0

    :pswitch_4
    new-instance v0, Lt1/o;

    invoke-virtual {p1}, La2/a;->y()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {v0, p1}, Lt1/o;-><init>(Ljava/lang/Boolean;)V

    return-object v0

    :pswitch_5
    invoke-virtual {p1}, La2/a;->K()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lt1/o;

    new-instance v1, Lv1/g;

    invoke-direct {v1, p1}, Lv1/g;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lt1/o;-><init>(Ljava/lang/Number;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public f(La2/c;Lt1/j;)V
    .locals 2

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Lt1/j;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p2}, Lt1/j;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lt1/j;->d()Lt1/o;

    move-result-object p2

    invoke-virtual {p2}, Lt1/o;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lt1/o;->n()Ljava/lang/Number;

    move-result-object p2

    invoke-virtual {p1, p2}, La2/c;->N(Ljava/lang/Number;)La2/c;

    goto/16 :goto_3

    :cond_1
    invoke-virtual {p2}, Lt1/o;->p()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lt1/o;->j()Z

    move-result p2

    invoke-virtual {p1, p2}, La2/c;->P(Z)La2/c;

    goto/16 :goto_3

    :cond_2
    invoke-virtual {p2}, Lt1/o;->o()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, La2/c;->O(Ljava/lang/String;)La2/c;

    goto/16 :goto_3

    :cond_3
    invoke-virtual {p2}, Lt1/j;->e()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, La2/c;->e()La2/c;

    invoke-virtual {p2}, Lt1/j;->a()Lt1/g;

    move-result-object p2

    invoke-virtual {p2}, Lt1/g;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt1/j;

    invoke-virtual {p0, p1, v0}, Lw1/n$u;->f(La2/c;Lt1/j;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, La2/c;->h()La2/c;

    goto :goto_3

    :cond_5
    invoke-virtual {p2}, Lt1/j;->h()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, La2/c;->f()La2/c;

    invoke-virtual {p2}, Lt1/j;->b()Lt1/m;

    move-result-object p2

    invoke-virtual {p2}, Lt1/m;->k()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, La2/c;->m(Ljava/lang/String;)La2/c;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt1/j;

    invoke-virtual {p0, p1, v0}, Lw1/n$u;->f(La2/c;Lt1/j;)V

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, La2/c;->i()La2/c;

    goto :goto_3

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t write "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    :goto_2
    invoke-virtual {p1}, La2/c;->x()La2/c;

    :goto_3
    return-void
.end method
