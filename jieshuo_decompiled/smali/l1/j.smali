.class public Ll1/j;
.super Lm1/a;
.source "SourceFile"


# instance fields
.field private a:Ll1/b;

.field private b:Ll1/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lm1/a;-><init>()V

    new-instance v0, Ll1/b;

    invoke-direct {v0}, Ll1/b;-><init>()V

    iput-object v0, p0, Ll1/j;->a:Ll1/b;

    new-instance v0, Ll1/a;

    invoke-direct {v0}, Ll1/a;-><init>()V

    iput-object v0, p0, Ll1/j;->b:Ll1/a;

    return-void
.end method

.method private f(Lb1/g;Ljava/lang/String;)I
    .locals 4

    iget-object v0, p0, Ll1/j;->a:Ll1/b;

    invoke-virtual {v0}, Ll1/b;->h()Lq0/e$a;

    move-result-object v0

    iget-object v1, p0, Ll1/j;->a:Ll1/b;

    invoke-virtual {v1}, Ll1/b;->c()Lq0/f$b;

    move-result-object v1

    iget-object v2, p0, Ll1/j;->b:Ll1/a;

    invoke-virtual {v2}, Ll1/a;->c()Lt0/b$a;

    move-result-object v2

    sget-object v3, Ll1/j$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v3, p1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    invoke-virtual {v0, p2}, Ll1/d;->o(Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_1
    invoke-virtual {v1, p2}, Lq0/f$b;->a0(Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_2
    invoke-virtual {v1, p2}, Lq0/f$b;->c0(Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_3
    invoke-virtual {v0, p2}, Lq0/e$a;->I(Ljava/lang/String;)I

    goto/16 :goto_2

    :pswitch_4
    :try_start_0
    invoke-static {p2}, Lb1/l;->valueOf(Ljava/lang/String;)Lb1/l;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p1, Lb1/l;->f:Lb1/l;

    :goto_0
    iget-object p2, p0, Ll1/j;->a:Ll1/b;

    invoke-virtual {p2, p1}, Ll1/b;->f(Lb1/l;)V

    goto/16 :goto_2

    :pswitch_5
    invoke-virtual {v1, p2}, Lq0/f$b;->Y(Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_6
    invoke-virtual {v1, p2}, Lq0/f$b;->x(Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_7
    invoke-virtual {v1, p2}, Lq0/f$b;->A(Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_8
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v1, p1}, Lq0/f$b;->v(I)V

    goto/16 :goto_2

    :pswitch_9
    invoke-virtual {v1, p2}, Lq0/f$b;->D(Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_a
    invoke-virtual {v0, p2}, Lq0/e$a;->H(Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_b
    invoke-virtual {v0, p2}, Lq0/e$a;->w(Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_c
    :try_start_1
    invoke-static {p2}, Lb1/j;->valueOf(Ljava/lang/String;)Lb1/j;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    sget-object p1, Lb1/j;->a:Lb1/j;

    :goto_1
    iget-object p2, p0, Ll1/j;->a:Ll1/b;

    invoke-virtual {p2, p1}, Ll1/b;->d(Lb1/j;)V

    goto/16 :goto_2

    :pswitch_d
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget-object p2, p0, Ll1/j;->b:Ll1/a;

    invoke-virtual {p2, p1}, Ll1/a;->d(I)V

    goto/16 :goto_2

    :pswitch_e
    invoke-virtual {v1, p2}, Lq0/f$b;->I(Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_f
    invoke-virtual {v1, p2}, Lq0/f$b;->G(Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_10
    invoke-virtual {v0, p2}, Lq0/e$a;->t(Ljava/lang/String;)I

    move-result p1

    return p1

    :pswitch_11
    invoke-virtual {v1, p2}, Lq0/f$b;->U(Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_12
    invoke-virtual {v1, p2}, Lq0/f$b;->Q(Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_13
    invoke-virtual {v1, p2}, Lq0/f$b;->O(Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_14
    invoke-virtual {v1, p2}, Lq0/f$b;->W(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_15
    iget-object p1, p0, Ll1/j;->a:Ll1/b;

    invoke-virtual {p1, p2}, Ll1/b;->l(Ljava/lang/String;)I

    move-result p1

    return p1

    :pswitch_16
    invoke-virtual {v1, p2}, Ll1/d;->j(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ll1/d;->j(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_17
    invoke-virtual {v0, p2}, Lq0/e$a;->x(Ljava/lang/String;)I

    move-result p1

    return p1

    :pswitch_18
    invoke-virtual {v1, p2}, Lq0/f$b;->S(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_19
    invoke-static {p2}, Lb1/c;->a(Ljava/lang/String;)Lb1/c;

    move-result-object p1

    invoke-virtual {v1, p1}, Lq0/f$b;->w(Lb1/c;)V

    goto :goto_2

    :pswitch_1a
    invoke-static {p2}, Lb1/b;->a(Ljava/lang/String;)Lb1/b;

    move-result-object p1

    invoke-virtual {v1, p1}, Lq0/f$b;->t(Lb1/b;)I

    move-result p1

    return p1

    :pswitch_1b
    invoke-virtual {v1, p2}, Lq0/f$b;->M(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_1c
    invoke-virtual {v1, p2}, Lq0/f$b;->K(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_1d
    invoke-virtual {v2, p2}, Ll1/c;->c(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_1e
    invoke-static {p2}, Lb1/d;->a(Ljava/lang/String;)Lb1/d;

    move-result-object p1

    invoke-virtual {v1, p1}, Ll1/d;->i(Lb1/d;)V

    goto :goto_2

    :pswitch_1f
    invoke-virtual {v0, p2}, Lq0/e$a;->G(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_20
    invoke-virtual {v0, p2}, Lq0/e$a;->E(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_21
    invoke-virtual {v0, p2}, Lq0/e$a;->C(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_22
    invoke-virtual {v0, p2}, Lq0/e$a;->A(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_23
    iget-object p1, p0, Ll1/j;->a:Ll1/b;

    invoke-virtual {p1, p2}, Ll1/b;->k(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_24
    iget-object p1, p0, Ll1/j;->a:Ll1/b;

    invoke-virtual {p1, p2}, Ll1/b;->i(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_25
    iget-object p1, p0, Ll1/j;->a:Ll1/b;

    invoke-virtual {p1, p2}, Ll1/b;->g(Ljava/lang/String;)V

    :goto_2
    const/4 p1, 0x0

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public c(Lb1/g;Ljava/lang/String;)I
    .locals 0

    invoke-direct {p0, p1, p2}, Ll1/j;->f(Lb1/g;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public d()Ll1/b;
    .locals 1

    iget-object v0, p0, Ll1/j;->a:Ll1/b;

    return-object v0
.end method

.method public g()Ll1/a;
    .locals 1

    iget-object v0, p0, Ll1/j;->b:Ll1/a;

    return-object v0
.end method

.method public h()Lq0/f$b;
    .locals 1

    iget-object v0, p0, Ll1/j;->a:Ll1/b;

    invoke-virtual {v0}, Ll1/b;->c()Lq0/f$b;

    move-result-object v0

    return-object v0
.end method

.method public i()Lq0/e$a;
    .locals 1

    iget-object v0, p0, Ll1/j;->a:Ll1/b;

    invoke-virtual {v0}, Ll1/b;->h()Lq0/e$a;

    move-result-object v0

    return-object v0
.end method

.method public j()Lt0/b$a;
    .locals 1

    iget-object v0, p0, Ll1/j;->b:Ll1/a;

    invoke-virtual {v0}, Ll1/a;->c()Lt0/b$a;

    move-result-object v0

    return-object v0
.end method
