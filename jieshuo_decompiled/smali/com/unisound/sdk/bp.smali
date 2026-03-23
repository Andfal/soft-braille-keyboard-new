.class public Lcom/unisound/sdk/bp;
.super Lcom/unisound/common/u;
.source "SourceFile"


# static fields
.field private static final a:I = 0x64

.field private static final b:I = 0x65

.field private static final c:I = 0x3e8

.field private static final d:I = 0x3e9


# instance fields
.field private e:Lcom/unisound/client/TextUnderstanderListener;

.field private f:Lcom/unisound/sdk/ca;

.field private g:Lcom/unisound/sdk/bz;

.field private h:Lcom/unisound/sdk/by;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/unisound/common/u;-><init>()V

    new-instance v0, Lcom/unisound/sdk/bq;

    invoke-direct {v0, p0}, Lcom/unisound/sdk/bq;-><init>(Lcom/unisound/sdk/bp;)V

    iput-object v0, p0, Lcom/unisound/sdk/bp;->h:Lcom/unisound/sdk/by;

    invoke-static {p1}, Lcom/unisound/common/k;->a(Landroid/content/Context;)V

    new-instance p1, Lcom/unisound/sdk/bz;

    invoke-direct {p1, p2, p3}, Lcom/unisound/sdk/bz;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/unisound/sdk/bp;->g:Lcom/unisound/sdk/bz;

    sget-object p2, Lcom/unisound/common/k;->x:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/unisound/sdk/aa;->e(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/unisound/sdk/bp;->g:Lcom/unisound/sdk/bz;

    sget-object p2, Lcom/unisound/common/k;->s:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/unisound/sdk/aa;->g(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/unisound/sdk/bp;->f:Lcom/unisound/sdk/ca;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/unisound/sdk/ca;->c()V

    :cond_0
    new-instance v0, Lcom/unisound/sdk/ca;

    iget-object v1, p0, Lcom/unisound/sdk/bp;->g:Lcom/unisound/sdk/bz;

    invoke-direct {v0, v1}, Lcom/unisound/sdk/ca;-><init>(Lcom/unisound/sdk/bz;)V

    iput-object v0, p0, Lcom/unisound/sdk/bp;->f:Lcom/unisound/sdk/ca;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/ca;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/unisound/sdk/bp;->f:Lcom/unisound/sdk/ca;

    iget-object v0, p0, Lcom/unisound/sdk/bp;->h:Lcom/unisound/sdk/by;

    invoke-virtual {p1, v0}, Lcom/unisound/sdk/ca;->a(Lcom/unisound/sdk/by;)V

    iget-object p1, p0, Lcom/unisound/sdk/bp;->f:Lcom/unisound/sdk/ca;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method protected a(I)V
    .locals 1

    iget-object p1, p0, Lcom/unisound/sdk/bp;->e:Lcom/unisound/client/TextUnderstanderListener;

    if-eqz p1, :cond_0

    const/16 v0, 0x3e9

    invoke-interface {p1, v0}, Lcom/unisound/client/TextUnderstanderListener;->onEvent(I)V

    :cond_0
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/unisound/sdk/bp;->e:Lcom/unisound/client/TextUnderstanderListener;

    if-eqz v0, :cond_0

    const/16 v1, 0x3e8

    invoke-interface {v0, v1, p1}, Lcom/unisound/client/TextUnderstanderListener;->onResult(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected cancel()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bp;->f:Lcom/unisound/sdk/ca;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/unisound/sdk/ca;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/sdk/bp;->f:Lcom/unisound/sdk/ca;

    :cond_0
    return-void
.end method

.method protected getOption(I)Ljava/lang/Object;
    .locals 1

    const/16 v0, 0x40c

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    const/4 p1, 0x0

    return-object p1

    :pswitch_0
    iget-object p1, p0, Lcom/unisound/sdk/bp;->g:Lcom/unisound/sdk/bz;

    invoke-virtual {p1}, Lcom/unisound/sdk/aa;->f()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_1
    iget-object p1, p0, Lcom/unisound/sdk/bp;->g:Lcom/unisound/sdk/bz;

    invoke-virtual {p1}, Lcom/unisound/sdk/aa;->m()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_2
    iget-object p1, p0, Lcom/unisound/sdk/bp;->g:Lcom/unisound/sdk/bz;

    invoke-virtual {p1}, Lcom/unisound/sdk/aa;->j()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_3
    iget-object p1, p0, Lcom/unisound/sdk/bp;->g:Lcom/unisound/sdk/bz;

    invoke-virtual {p1}, Lcom/unisound/sdk/aa;->i()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_4
    iget-object p1, p0, Lcom/unisound/sdk/bp;->g:Lcom/unisound/sdk/bz;

    invoke-virtual {p1}, Lcom/unisound/sdk/bz;->w()Lcom/unisound/sdk/bz;

    move-result-object p1

    return-object p1

    :pswitch_5
    iget-object p1, p0, Lcom/unisound/sdk/bp;->g:Lcom/unisound/sdk/bz;

    invoke-virtual {p1}, Lcom/unisound/sdk/bz;->s()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_6
    iget-object p1, p0, Lcom/unisound/sdk/bp;->g:Lcom/unisound/sdk/bz;

    invoke-virtual {p1}, Lcom/unisound/sdk/aa;->n()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object p1, Lcom/unisound/common/k;->x:Ljava/lang/String;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x3fd
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x406
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_1

    const/16 v1, 0x65

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/unisound/sdk/bp;->a(I)V

    return-void

    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/unisound/sdk/bp;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected init(Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected setListener(Lcom/unisound/client/TextUnderstanderListener;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/bp;->e:Lcom/unisound/client/TextUnderstanderListener;

    return-void
.end method

.method protected setOption(ILjava/lang/Object;)V
    .locals 2

    const-string v0, ":"

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    return-void

    :pswitch_1
    :try_start_0
    iget-object p1, p0, Lcom/unisound/sdk/bp;->g:Lcom/unisound/sdk/bz;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/unisound/sdk/aa;->f(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p1, "set gps Error."

    :goto_0
    invoke-static {p1}, Lcom/unisound/common/r;->e(Ljava/lang/String;)V

    return-void

    :pswitch_2
    :try_start_1
    iget-object p1, p0, Lcom/unisound/sdk/bp;->g:Lcom/unisound/sdk/bz;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/unisound/sdk/aa;->k(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    const-string p1, "set voiceID Error."

    goto :goto_0

    :pswitch_3
    :try_start_2
    iget-object p1, p0, Lcom/unisound/sdk/bp;->g:Lcom/unisound/sdk/bz;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/unisound/sdk/aa;->j(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    :catch_2
    const-string p1, "set city Error."

    goto :goto_0

    :pswitch_4
    :try_start_3
    iget-object p1, p0, Lcom/unisound/sdk/bp;->g:Lcom/unisound/sdk/bz;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/unisound/sdk/aa;->i(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    return-void

    :catch_3
    const-string p1, "set history Error."

    goto :goto_0

    :pswitch_5
    :try_start_4
    iget-object p1, p0, Lcom/unisound/sdk/bp;->g:Lcom/unisound/sdk/bz;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/unisound/sdk/aa;->g(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    return-void

    :catch_4
    const-string p1, "set nlu_appver Error."

    goto :goto_0

    :pswitch_6
    :try_start_5
    iget-object p1, p0, Lcom/unisound/sdk/bp;->g:Lcom/unisound/sdk/bz;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/unisound/sdk/aa;->d(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    return-void

    :catch_5
    const-string p1, "set nlu_ver Error."

    goto :goto_0

    :pswitch_7
    :try_start_6
    iget-object p1, p0, Lcom/unisound/sdk/bp;->g:Lcom/unisound/sdk/bz;

    check-cast p2, Lcom/unisound/sdk/bz;

    invoke-virtual {p1, p2}, Lcom/unisound/sdk/bz;->a(Lcom/unisound/sdk/bz;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    return-void

    :catch_6
    const-string p1, "set nlu_params Error."

    goto :goto_0

    :pswitch_8
    :try_start_7
    check-cast p2, Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8

    const-string p1, "nlu server set Error."

    if-eqz p2, :cond_0

    :try_start_8
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    const/4 v0, 0x0

    aget-object v0, p2, v0

    const/4 v1, 0x1

    :try_start_9
    aget-object p2, p2, v1

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    iget-object v1, p0, Lcom/unisound/sdk/bp;->g:Lcom/unisound/sdk/bz;

    invoke-virtual {v1, v0, p2}, Lcom/unisound/sdk/bz;->a(Ljava/lang/String;I)Z
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_7
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    return-void

    :catch_7
    :try_start_a
    invoke-static {p1}, Lcom/unisound/common/r;->e(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p1}, Lcom/unisound/common/r;->e(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8

    return-void

    :catch_8
    const-string p1, "set nlu_server_address Error."

    goto :goto_0

    :pswitch_9
    :try_start_b
    iget-object p1, p0, Lcom/unisound/sdk/bp;->g:Lcom/unisound/sdk/bz;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/unisound/sdk/aa;->l(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9

    return-void

    :catch_9
    const-string p1, "set nlu_scenario Error."

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3fd
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected setText(Ljava/lang/String;)V
    .locals 3

    const-string v0, ""

    const/16 v1, 0x64

    if-nez p1, :cond_0

    invoke-virtual {p0, v1, v0}, Lcom/unisound/common/u;->sendMessage(ILjava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0, v1, v0}, Lcom/unisound/common/u;->sendMessage(ILjava/lang/Object;)V

    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/unisound/sdk/bp;->b(Ljava/lang/String;)V

    return-void
.end method
