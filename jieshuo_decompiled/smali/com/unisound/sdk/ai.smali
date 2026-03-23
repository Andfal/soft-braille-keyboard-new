.class public Lcom/unisound/sdk/ai;
.super Ljava/lang/Thread;
.source "SourceFile"


# static fields
.field private static final a:I = 0x1e


# instance fields
.field private b:Lcom/unisound/sdk/ag;

.field private c:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "[B>;"
        }
    .end annotation
.end field

.field private d:Lcom/unisound/sdk/ae;

.field private e:Lcom/unisound/sdk/an;

.field private f:Ljava/lang/String;

.field private volatile g:Z

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/unisound/sdk/an;Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/sdk/ai;->b:Lcom/unisound/sdk/ag;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/unisound/sdk/ai;->c:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Lcom/unisound/sdk/ae;

    invoke-direct {v0}, Lcom/unisound/sdk/ae;-><init>()V

    iput-object v0, p0, Lcom/unisound/sdk/ai;->d:Lcom/unisound/sdk/ae;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/sdk/ai;->f:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/unisound/sdk/ai;->g:Z

    iput-object v0, p0, Lcom/unisound/sdk/ai;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/unisound/sdk/ai;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/unisound/sdk/ai;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/unisound/sdk/ai;->k:Ljava/lang/String;

    iput-object p2, p0, Lcom/unisound/sdk/ai;->l:Landroid/content/Context;

    iput-object p1, p0, Lcom/unisound/sdk/ai;->e:Lcom/unisound/sdk/an;

    const/4 p1, 0x1

    sput-boolean p1, Lcom/unisound/sdk/ae;->a:Z

    iput-object p3, p0, Lcom/unisound/sdk/ai;->i:Ljava/lang/String;

    return-void
.end method

.method private a(ILcn/yunzhisheng/asr/JniUscClient;)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/ai;->b:Lcom/unisound/sdk/ag;

    invoke-virtual {p0}, Lcom/unisound/sdk/ai;->b()V

    invoke-static {p2}, Lcom/unisound/common/r;->a(Lcn/yunzhisheng/asr/JniUscClient;)Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/unisound/sdk/ag;->a(I)V

    :cond_0
    return-void
.end method

.method private a(Lcn/yunzhisheng/asr/JniUscClient;)V
    .locals 10

    iget-object v0, p0, Lcom/unisound/sdk/ai;->e:Lcom/unisound/sdk/an;

    invoke-virtual {v0}, Lcom/unisound/sdk/an;->Y()Lcom/unisound/sdk/ch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unisound/sdk/ch;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x3f7

    const/16 v2, 0x8

    invoke-virtual {p1, v1, v2}, Lcn/yunzhisheng/asr/JniUscClient;->a(II)I

    const/16 v1, 0x3fc

    const/4 v3, 0x1

    invoke-virtual {p1, v1, v3}, Lcn/yunzhisheng/asr/JniUscClient;->a(II)I

    iget-object v1, p0, Lcom/unisound/sdk/ai;->e:Lcom/unisound/sdk/an;

    invoke-virtual {v1}, Lcom/unisound/sdk/an;->aj()Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x3fb

    invoke-virtual {p1, v4, v1}, Lcn/yunzhisheng/asr/JniUscClient;->a(ILjava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/unisound/sdk/ch;->e()I

    move-result v1

    if-ne v1, v3, :cond_0

    const-string v1, "register"

    :goto_0
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lcom/unisound/sdk/ch;->e()I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    const-string v1, "matchSingle"

    goto :goto_0

    :cond_1
    :goto_1
    const-string v1, ";"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "userName="

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/unisound/sdk/ch;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "appkey="

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/unisound/sdk/ai;->e:Lcom/unisound/sdk/an;

    invoke-virtual {v4}, Lcom/unisound/sdk/an;->ab()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "returnType="

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "json"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "scene="

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/unisound/sdk/ch;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vpr params:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unisound/common/r;->c(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/sdk/ai;->j:Ljava/lang/String;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v0, "vpr_init"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "vpr_md5_check"

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/unisound/sdk/ai;->e:Lcom/unisound/sdk/an;

    invoke-virtual {v0}, Lcom/unisound/sdk/an;->aj()Ljava/lang/String;

    move-result-object v0

    const-string v1, "vpr_secret"

    invoke-interface {v6, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "vpr_sendParams"

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v6, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "initVPR"

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lcom/unisound/common/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private a(Lcn/yunzhisheng/asr/JniUscClient;Lcom/unisound/common/ac;)V
    .locals 2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/unisound/common/ac;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1f

    invoke-virtual {p2}, Lcom/unisound/common/ac;->c()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcn/yunzhisheng/asr/JniUscClient;->a(II)I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateAsrScene "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/unisound/common/ac;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " res : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/unisound/common/r;->e(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Lcom/unisound/common/ac;->a(Z)V

    :cond_0
    return-void
.end method

.method private a(Lcn/yunzhisheng/asr/JniUscClient;Ljava/lang/String;)V
    .locals 7

    iget-object p1, p0, Lcom/unisound/sdk/ai;->e:Lcom/unisound/sdk/an;

    invoke-virtual {p1}, Lcom/unisound/sdk/an;->Z()Lcom/unisound/sdk/bz;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/unisound/sdk/aa;->b(J)V

    invoke-virtual {p1}, Lcom/unisound/sdk/bz;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/unisound/sdk/bz;->x()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/sdk/ai;->k:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetRecognition --> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " NluParams : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/unisound/sdk/bz;->x()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unisound/common/r;->c(Ljava/lang/String;)V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v0, "nlu_sendParams"

    invoke-virtual {p1}, Lcom/unisound/sdk/bz;->x()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "initNLU"

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Lcom/unisound/common/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/ai;->b:Lcom/unisound/sdk/ag;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/unisound/sdk/ag;->a(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    const-string v0, "}{\"asr_recongize\""

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "}"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    const-string v0, "\\}\\{\"asr_recongize\""

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    :goto_0
    array-length v0, p1

    if-ge v3, v0, :cond_2

    if-nez v3, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, p1, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v3

    goto :goto_1

    :cond_0
    array-length v0, p1

    sub-int/2addr v0, v2

    const-string v4, "{\"asr_recongize\""

    if-ne v3, v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, p1, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v3

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, p1, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v3

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object p1

    :cond_3
    const-string v0, "}{\"gender\""

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "\\}\\{\"gender\""

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    :goto_2
    array-length v0, p1

    if-ge v3, v0, :cond_6

    if-nez v3, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, p1, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v3

    goto :goto_3

    :cond_4
    array-length v0, p1

    sub-int/2addr v0, v2

    const-string v4, "{\"gender\""

    if-ne v3, v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, p1, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v3

    goto :goto_3

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, p1, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v3

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    return-object p1

    :cond_7
    new-array v0, v2, [Ljava/lang/String;

    aput-object p1, v0, v3

    return-object v0
.end method

.method private b(Lcn/yunzhisheng/asr/JniUscClient;)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PN="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/unisound/common/k;->s:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "OS=0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CR="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/unisound/common/k;->r:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NT="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/unisound/sdk/ai;->e:Lcom/unisound/sdk/an;

    iget v3, v3, Lcom/unisound/sdk/an;->aP:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MD="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/unisound/common/k;->t:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SV="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/unisound/common/af;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RPT="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/unisound/sdk/ai;->e:Lcom/unisound/sdk/an;

    invoke-virtual {v3}, Lcom/unisound/sdk/an;->an()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/unisound/sdk/ai;->e:Lcom/unisound/sdk/an;

    invoke-virtual {v3}, Lcom/unisound/sdk/an;->ak()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NPT="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/unisound/sdk/ai;->e:Lcom/unisound/sdk/an;

    invoke-virtual {v3}, Lcom/unisound/sdk/an;->ap()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IP="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/unisound/sdk/ai;->l:Landroid/content/Context;

    invoke-static {v3}, Lcom/unisound/common/x;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EC="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/unisound/sdk/ai;->e:Lcom/unisound/sdk/an;

    invoke-virtual {v3}, Lcom/unisound/sdk/an;->ao()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/unisound/common/r;->q:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcn/yunzhisheng/asr/JniUscClient;->k:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcn/yunzhisheng/asr/JniUscClient;->l:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xf

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcn/yunzhisheng/asr/JniUscClient;->a(ILjava/lang/String;)I

    iget-object p1, p0, Lcom/unisound/sdk/ai;->e:Lcom/unisound/sdk/an;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/unisound/sdk/an;->s(I)V

    iget-object p1, p0, Lcom/unisound/sdk/ai;->e:Lcom/unisound/sdk/an;

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/unisound/sdk/an;->b(J)V

    iget-object p1, p0, Lcom/unisound/sdk/ai;->e:Lcom/unisound/sdk/an;

    const-string v1, ""

    invoke-virtual {p1, v1}, Lcom/unisound/sdk/an;->q(Ljava/lang/String;)V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string p1, "nlu_sendParams"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "collected_info = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/unisound/common/r;->c(Ljava/lang/String;)V

    const-string v2, "collectedInfo"

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/unisound/common/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private c(Lcn/yunzhisheng/asr/JniUscClient;)V
    .locals 4

    iget-object v0, p0, Lcom/unisound/sdk/ai;->e:Lcom/unisound/sdk/an;

    invoke-virtual {v0}, Lcom/unisound/sdk/an;->ac()Lcom/unisound/sdk/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unisound/sdk/g;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/16 v2, 0x22

    invoke-virtual {v0}, Lcom/unisound/sdk/g;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcn/yunzhisheng/asr/JniUscClient;->a(ILjava/lang/String;)I

    const-string v2, "engine_parameter"

    invoke-virtual {v0}, Lcom/unisound/sdk/g;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetRecognition --> AsrParams : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/unisound/sdk/g;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, ":"

    const-string v3, "="

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "\\n"

    const-string v3, ";"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unisound/common/r;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/sdk/ai;->e:Lcom/unisound/sdk/an;

    invoke-virtual {v0}, Lcom/unisound/sdk/an;->aa()Lcom/unisound/common/ac;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/unisound/sdk/ai;->a(Lcn/yunzhisheng/asr/JniUscClient;Lcom/unisound/common/ac;)V

    iget-object v0, p0, Lcom/unisound/sdk/ai;->e:Lcom/unisound/sdk/an;

    iget-boolean v1, v0, Lcom/unisound/sdk/an;->aw:Z

    if-eqz v1, :cond_1

    iget-boolean v0, v0, Lcom/unisound/sdk/an;->az:Z

    const/16 v1, 0x14

    if-eqz v0, :cond_0

    const-string v0, "open"

    goto :goto_0

    :cond_0
    const-string v0, "close"

    :goto_0
    invoke-virtual {p1, v1, v0}, Lcn/yunzhisheng/asr/JniUscClient;->a(ILjava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/unisound/sdk/ai;->e:Lcom/unisound/sdk/an;

    iget v0, v0, Lcom/unisound/sdk/an;->aM:I

    if-eqz v0, :cond_2

    const/16 v1, 0x20

    invoke-virtual {p1, v1, v0}, Lcn/yunzhisheng/asr/JniUscClient;->a(II)I

    :cond_2
    iget-object v0, p0, Lcom/unisound/sdk/ai;->e:Lcom/unisound/sdk/an;

    invoke-virtual {v0}, Lcom/unisound/sdk/an;->ag()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcn/yunzhisheng/asr/JniUscClient;->a(Z)I

    :cond_3
    iget-object v0, p0, Lcom/unisound/sdk/ai;->e:Lcom/unisound/sdk/an;

    invoke-virtual {v0}, Lcom/unisound/sdk/an;->ab()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {p1, v1, v0}, Lcn/yunzhisheng/asr/JniUscClient;->a(ILjava/lang/String;)I

    const/16 v0, 0x8

    sget-object v1, Lcom/unisound/common/k;->q:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcn/yunzhisheng/asr/JniUscClient;->a(ILjava/lang/String;)I

    const/16 v0, 0xe

    sget-object v1, Lcom/unisound/common/k;->x:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcn/yunzhisheng/asr/JniUscClient;->a(ILjava/lang/String;)I

    const/16 v0, 0x16

    sget-object v1, Lcom/unisound/common/k;->x:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcn/yunzhisheng/asr/JniUscClient;->a(ILjava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetRecognition --> appkey = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unisound/sdk/ai;->e:Lcom/unisound/sdk/an;

    invoke-virtual {v1}, Lcom/unisound/sdk/an;->ab()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", imei = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/unisound/common/k;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", userId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/unisound/common/k;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", udid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/unisound/common/k;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unisound/common/r;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/sdk/ai;->e:Lcom/unisound/sdk/an;

    invoke-virtual {v0}, Lcom/unisound/sdk/an;->ai()Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x11

    const-string v1, "req_audio_url"

    invoke-virtual {p1, v0, v1}, Lcn/yunzhisheng/asr/JniUscClient;->a(ILjava/lang/String;)I

    :cond_4
    return-void
.end method

.method private d(Lcn/yunzhisheng/asr/JniUscClient;)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/ai;->b:Lcom/unisound/sdk/ag;

    invoke-virtual {p0}, Lcom/unisound/sdk/ai;->b()V

    invoke-static {p1}, Lcom/unisound/common/r;->a(Lcn/yunzhisheng/asr/JniUscClient;)Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/unisound/sdk/ag;->h()V

    :cond_0
    return-void
.end method

.method private e(Lcn/yunzhisheng/asr/JniUscClient;)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/ai;->b:Lcom/unisound/sdk/ag;

    invoke-virtual {p0}, Lcom/unisound/sdk/ai;->b()V

    invoke-static {p1}, Lcom/unisound/common/r;->a(Lcn/yunzhisheng/asr/JniUscClient;)Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/unisound/sdk/ag;->l()V

    :cond_0
    return-void
.end method

.method private h()Lcn/yunzhisheng/asr/JniUscClient;
    .locals 11

    new-instance v0, Lcn/yunzhisheng/asr/JniUscClient;

    invoke-direct {v0}, Lcn/yunzhisheng/asr/JniUscClient;-><init>()V

    const-string v1, "init"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/unisound/common/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unisound/sdk/ai;->e:Lcom/unisound/sdk/an;

    invoke-virtual {v1}, Lcom/unisound/sdk/an;->ad()Lcom/unisound/common/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unisound/common/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/unisound/common/a;->c()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcn/yunzhisheng/asr/JniUscClient;->a(Ljava/lang/String;I)J

    move-result-wide v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NetRecognition -- > server = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/unisound/common/a;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " port = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/unisound/common/a;->c()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/unisound/common/r;->c(Ljava/lang/String;)V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v5, "server"

    invoke-virtual {v1}, Lcom/unisound/common/a;->a()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/unisound/common/a;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v5, "port"

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "create"

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v7, v4

    invoke-static/range {v5 .. v10}, Lcom/unisound/common/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v5, 0x0

    cmp-long v1, v2, v5

    if-nez v1, :cond_0

    const-string v5, "create"

    const-string v6, "error"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "handle=0"

    move-object v7, v4

    invoke-static/range {v5 .. v10}, Lcom/unisound/common/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "juc.create() returns "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unisound/common/r;->c(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/unisound/sdk/ai;->e:Lcom/unisound/sdk/an;

    iget v1, v1, Lcom/unisound/sdk/an;->aR:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcn/yunzhisheng/asr/JniUscClient;->a(II)I

    iget-object v1, p0, Lcom/unisound/sdk/ai;->e:Lcom/unisound/sdk/an;

    iget v1, v1, Lcom/unisound/sdk/an;->aS:I

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1}, Lcn/yunzhisheng/asr/JniUscClient;->a(II)I

    iget-object v1, p0, Lcom/unisound/sdk/ai;->e:Lcom/unisound/sdk/an;

    iget v1, v1, Lcom/unisound/sdk/an;->aQ:I

    const/4 v3, 0x6

    invoke-virtual {v0, v3, v1}, Lcn/yunzhisheng/asr/JniUscClient;->a(II)I

    iget-object v1, p0, Lcom/unisound/sdk/ai;->e:Lcom/unisound/sdk/an;

    iget v1, v1, Lcom/unisound/sdk/an;->aT:I

    const/4 v3, 0x4

    invoke-virtual {v0, v3, v1}, Lcn/yunzhisheng/asr/JniUscClient;->a(II)I

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/unisound/sdk/ai;->e:Lcom/unisound/sdk/an;

    iget v1, v1, Lcom/unisound/sdk/an;->aR:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "enable_vad"

    invoke-interface {v6, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/unisound/sdk/ai;->e:Lcom/unisound/sdk/an;

    iget v1, v1, Lcom/unisound/sdk/an;->aS:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "vad_timeout"

    invoke-interface {v6, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/unisound/sdk/ai;->e:Lcom/unisound/sdk/an;

    iget v1, v1, Lcom/unisound/sdk/an;->aQ:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "pcm_compress"

    invoke-interface {v6, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/unisound/sdk/ai;->e:Lcom/unisound/sdk/an;

    iget v1, v1, Lcom/unisound/sdk/an;->aT:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "result_timeout"

    invoke-interface {v6, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "create"

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lcom/unisound/common/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/unisound/sdk/ai;->a(Lcn/yunzhisheng/asr/JniUscClient;)V

    const-string v1, "Start"

    invoke-direct {p0, v0, v1}, Lcom/unisound/sdk/ai;->a(Lcn/yunzhisheng/asr/JniUscClient;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/unisound/sdk/ai;->c(Lcn/yunzhisheng/asr/JniUscClient;)V

    invoke-direct {p0, v0}, Lcom/unisound/sdk/ai;->b(Lcn/yunzhisheng/asr/JniUscClient;)V

    iget-object v1, p0, Lcom/unisound/sdk/ai;->e:Lcom/unisound/sdk/an;

    invoke-virtual {v1}, Lcom/unisound/sdk/an;->Y()Lcom/unisound/sdk/ch;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unisound/sdk/ch;->d()Z

    move-result v1

    const/16 v3, 0xc9

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/unisound/sdk/ai;->e:Lcom/unisound/sdk/an;

    invoke-virtual {v1}, Lcom/unisound/sdk/an;->Z()Lcom/unisound/sdk/bz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unisound/sdk/bz;->v()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/unisound/sdk/ai;->e:Lcom/unisound/sdk/an;

    invoke-virtual {v1}, Lcom/unisound/sdk/an;->V()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/unisound/sdk/ai;->j:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "filterName=vpr;"

    :goto_0
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcn/yunzhisheng/asr/JniUscClient;->a(ILjava/lang/String;)I

    goto/16 :goto_1

    :cond_1
    iget-object v1, p0, Lcom/unisound/sdk/ai;->e:Lcom/unisound/sdk/an;

    invoke-virtual {v1}, Lcom/unisound/sdk/an;->Y()Lcom/unisound/sdk/ch;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unisound/sdk/ch;->d()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/unisound/sdk/ai;->e:Lcom/unisound/sdk/an;

    invoke-virtual {v1}, Lcom/unisound/sdk/an;->Z()Lcom/unisound/sdk/bz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unisound/sdk/bz;->v()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/unisound/sdk/ai;->e:Lcom/unisound/sdk/an;

    invoke-virtual {v1}, Lcom/unisound/sdk/an;->V()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/unisound/sdk/ai;->k:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "filterName=search;"

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/unisound/sdk/ai;->e:Lcom/unisound/sdk/an;

    invoke-virtual {v1}, Lcom/unisound/sdk/an;->Y()Lcom/unisound/sdk/ch;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unisound/sdk/ch;->d()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/unisound/sdk/ai;->e:Lcom/unisound/sdk/an;

    invoke-virtual {v1}, Lcom/unisound/sdk/an;->Z()Lcom/unisound/sdk/bz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unisound/sdk/bz;->v()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/unisound/sdk/ai;->e:Lcom/unisound/sdk/an;

    invoke-virtual {v1}, Lcom/unisound/sdk/an;->V()Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/unisound/sdk/ai;->j:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/unisound/sdk/ai;->k:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "filterName=vpr,search;"

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/unisound/sdk/ai;->e:Lcom/unisound/sdk/an;

    invoke-virtual {v1}, Lcom/unisound/sdk/an;->Y()Lcom/unisound/sdk/ch;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unisound/sdk/ch;->d()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/unisound/sdk/ai;->e:Lcom/unisound/sdk/an;

    invoke-virtual {v1}, Lcom/unisound/sdk/an;->Z()Lcom/unisound/sdk/bz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unisound/sdk/bz;->v()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/unisound/sdk/ai;->e:Lcom/unisound/sdk/an;

    invoke-virtual {v1}, Lcom/unisound/sdk/an;->V()Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/unisound/sdk/ai;->j:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "additionalService=wx_adapt;filterName=vpr;"

    goto/16 :goto_0

    :cond_4
    iget-object v1, p0, Lcom/unisound/sdk/ai;->e:Lcom/unisound/sdk/an;

    invoke-virtual {v1}, Lcom/unisound/sdk/an;->Y()Lcom/unisound/sdk/ch;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unisound/sdk/ch;->d()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/unisound/sdk/ai;->e:Lcom/unisound/sdk/an;

    invoke-virtual {v1}, Lcom/unisound/sdk/an;->Z()Lcom/unisound/sdk/bz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unisound/sdk/bz;->v()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/unisound/sdk/ai;->e:Lcom/unisound/sdk/an;

    invoke-virtual {v1}, Lcom/unisound/sdk/an;->V()Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/unisound/sdk/ai;->k:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "additionalService=wx_adapt;filterName=search;"

    goto/16 :goto_0

    :cond_5
    iget-object v1, p0, Lcom/unisound/sdk/ai;->e:Lcom/unisound/sdk/an;

    invoke-virtual {v1}, Lcom/unisound/sdk/an;->Y()Lcom/unisound/sdk/ch;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unisound/sdk/ch;->d()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/unisound/sdk/ai;->e:Lcom/unisound/sdk/an;

    invoke-virtual {v1}, Lcom/unisound/sdk/an;->Z()Lcom/unisound/sdk/bz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unisound/sdk/bz;->v()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/unisound/sdk/ai;->e:Lcom/unisound/sdk/an;

    invoke-virtual {v1}, Lcom/unisound/sdk/an;->V()Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/unisound/sdk/ai;->j:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/unisound/sdk/ai;->k:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "additionalService=wx_adapt;filterName=vpr,search;"

    goto/16 :goto_0

    :cond_6
    :goto_1
    sput v2, Lcom/unisound/common/r;->q:I

    const-string v1, "juc init success"

    invoke-static {v1}, Lcom/unisound/common/r;->c(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/unisound/sdk/ag;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/ai;->b:Lcom/unisound/sdk/ag;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iget-object v1, p0, Lcom/unisound/sdk/ai;->c:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a([B)V
    .locals 3

    iget-object v0, p0, Lcom/unisound/sdk/ai;->d:Lcom/unisound/sdk/ae;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Lcom/unisound/sdk/ae;->a([BII)Z

    iget-object v0, p0, Lcom/unisound/sdk/ai;->d:Lcom/unisound/sdk/ae;

    invoke-virtual {v0}, Lcom/unisound/sdk/ae;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/unisound/sdk/ai;->c:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unisound/sdk/ai;->g:Z

    return v0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unisound/sdk/ai;->g:Z

    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/sdk/ai;->b:Lcom/unisound/sdk/ag;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unisound/sdk/ai;->g:Z

    return-void
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/ai;->b:Lcom/unisound/sdk/ag;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/ai;->f:Ljava/lang/String;

    return-object v0
.end method

.method public f()V
    .locals 2

    invoke-virtual {p0}, Lcom/unisound/sdk/ai;->c()V

    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/32 v0, 0x9858

    :try_start_0
    invoke-virtual {p0, v0, v1}, Ljava/lang/Thread;->join(J)V

    const-string v0, "RecognitionThread::waitEnd()"

    invoke-static {v0}, Lcom/unisound/common/r;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/ai;->h:Ljava/lang/String;

    return-object v0
.end method

.method public run()V
    .locals 19

    move-object/from16 v0, p0

    const-string v1, "NetRecogniton -> run start"

    invoke-static {v1}, Lcom/unisound/common/r;->c(Ljava/lang/String;)V

    const-string v1, "RecognitionThread start"

    invoke-static {v1}, Lcom/unisound/common/r;->g(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/unisound/sdk/ai;->h()Lcn/yunzhisheng/asr/JniUscClient;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RecognitionThread : Service Mode =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/unisound/sdk/ai;->e:Lcom/unisound/sdk/an;

    invoke-virtual {v3}, Lcom/unisound/sdk/an;->U()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/unisound/common/r;->c(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/unisound/sdk/ai;->e:Lcom/unisound/sdk/an;

    invoke-virtual {v2}, Lcom/unisound/sdk/an;->U()I

    move-result v2

    const/16 v3, 0x3f7

    invoke-virtual {v1, v3, v2}, Lcn/yunzhisheng/asr/JniUscClient;->a(II)I

    iget-object v2, v0, Lcom/unisound/sdk/ai;->i:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v4, 0xce

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/unisound/sdk/ai;->i:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v4, v2}, Lcn/yunzhisheng/asr/JniUscClient;->a(ILjava/lang/String;)I

    goto :goto_1

    :cond_0
    iget-object v2, v0, Lcom/unisound/sdk/ai;->e:Lcom/unisound/sdk/an;

    invoke-virtual {v2}, Lcom/unisound/sdk/an;->ab()Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x9

    invoke-virtual {v1, v5, v2}, Lcn/yunzhisheng/asr/JniUscClient;->a(ILjava/lang/String;)I

    iget-object v2, v0, Lcom/unisound/sdk/ai;->e:Lcom/unisound/sdk/an;

    invoke-virtual {v2}, Lcom/unisound/sdk/an;->aj()Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0xcc

    invoke-virtual {v1, v5, v2}, Lcn/yunzhisheng/asr/JniUscClient;->a(ILjava/lang/String;)I

    invoke-virtual {v1}, Lcn/yunzhisheng/asr/JniUscClient;->g()I

    move-result v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NetRecognition --> loginstate = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/unisound/common/r;->c(Ljava/lang/String;)V

    if-nez v2, :cond_15

    invoke-virtual {v1, v4}, Lcn/yunzhisheng/asr/JniUscClient;->c(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/unisound/sdk/ai;->i:Ljava/lang/String;

    goto :goto_0

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NetRecognition --> loginToken = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/unisound/sdk/ai;->i:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/unisound/common/r;->c(Ljava/lang/String;)V

    iput-object v3, v0, Lcom/unisound/sdk/ai;->f:Ljava/lang/String;

    const-string v2, "NetRecognition --> start called "

    invoke-static {v2}, Lcom/unisound/common/r;->c(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcn/yunzhisheng/asr/JniUscClient;->a()I

    move-result v2

    const/16 v4, 0x15

    invoke-virtual {v1, v4}, Lcn/yunzhisheng/asr/JniUscClient;->c(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/unisound/sdk/ai;->f:Ljava/lang/String;

    iget-object v5, v0, Lcom/unisound/sdk/ai;->e:Lcom/unisound/sdk/an;

    invoke-virtual {v5, v4}, Lcom/unisound/sdk/an;->q(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NetRecognition --> sessionId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/unisound/sdk/ai;->f:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/unisound/common/r;->c(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/unisound/sdk/ai;->f:Ljava/lang/String;

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v6, 0xa

    if-le v4, v6, :cond_1

    iget-object v4, v0, Lcom/unisound/sdk/ai;->f:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_1
    move-object v4, v3

    :goto_2
    const-string v6, ", sessionId = "

    const-string v7, "start"

    if-eqz v2, :cond_2

    const-string v8, "error"

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Lcom/unisound/common/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NetRecognition --> start error occured! , startCode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/unisound/sdk/ai;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/unisound/common/r;->c(Ljava/lang/String;)V

    invoke-direct {v0, v2, v1}, Lcom/unisound/sdk/ai;->a(ILcn/yunzhisheng/asr/JniUscClient;)V

    invoke-virtual {v1}, Lcn/yunzhisheng/asr/JniUscClient;->e()V

    iget-object v1, v0, Lcom/unisound/sdk/ai;->e:Lcom/unisound/sdk/an;

    invoke-virtual {v1}, Lcom/unisound/sdk/an;->ae()V

    return-void

    :cond_2
    const-string v8, "success"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Lcom/unisound/common/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/unisound/sdk/ai;->d()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcn/yunzhisheng/asr/JniUscClient;->d()I

    const-string v7, "cancel"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v12, "cancel(start)"

    invoke-static/range {v7 .. v12}, Lcom/unisound/common/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "NetRecognition --> cancel(start)"

    invoke-static {v2}, Lcom/unisound/common/r;->c(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcn/yunzhisheng/asr/JniUscClient;->e()V

    return-void

    :cond_3
    const-wide/16 v7, 0x0

    :cond_4
    :try_start_0
    iget-object v2, v0, Lcom/unisound/sdk/ai;->c:Ljava/util/concurrent/BlockingQueue;

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v10, 0x1e

    invoke-interface {v2, v10, v11, v9}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    const/4 v9, 0x1

    if-eqz v2, :cond_e

    array-length v10, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v10, v9, :cond_5

    aget-byte v10, v2, v5

    const/16 v11, 0x64

    if-eq v10, v11, :cond_f

    const/16 v11, 0x63

    if-ne v10, v11, :cond_5

    goto/16 :goto_6

    :cond_5
    :try_start_1
    array-length v10, v2

    invoke-virtual {v1, v2, v10}, Lcn/yunzhisheng/asr/JniUscClient;->a([BI)I

    move-result v10

    array-length v2, v2

    int-to-long v11, v2

    add-long/2addr v11, v7

    if-eqz v10, :cond_c

    if-ne v10, v9, :cond_6

    goto/16 :goto_4

    :cond_6
    const/4 v2, 0x2

    if-ne v10, v2, :cond_9

    invoke-virtual {v1}, Lcn/yunzhisheng/asr/JniUscClient;->c()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    :cond_7
    iget-object v7, v0, Lcom/unisound/sdk/ai;->e:Lcom/unisound/sdk/an;

    invoke-virtual {v7}, Lcom/unisound/sdk/an;->ag()Z

    move-result v7

    if-eqz v7, :cond_d

    :cond_8
    const-string v13, "getResult"

    const-string v14, "partial"

    const/4 v15, 0x0

    const-string v16, "partial"

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v13 .. v18}, Lcom/unisound/common/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "NetRecognition --> partial="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/unisound/common/r;->b(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Lcom/unisound/sdk/ai;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x0

    :goto_3
    array-length v8, v2

    if-ge v7, v8, :cond_d

    aget-object v8, v2, v7

    invoke-direct {v0, v8, v5}, Lcom/unisound/sdk/ai;->a(Ljava/lang/String;Z)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_9
    const/16 v2, -0x7532

    if-ne v10, v2, :cond_a

    const-string v13, "recognition"

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-string v18, "max speech timeout"

    invoke-static/range {v13 .. v18}, Lcom/unisound/common/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "NetRecognition --> max speech timeout"

    invoke-static {v2}, Lcom/unisound/common/r;->c(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/unisound/sdk/ai;->e(Lcn/yunzhisheng/asr/JniUscClient;)V

    goto/16 :goto_5

    :cond_a
    const/16 v2, -0x7531

    if-ne v10, v2, :cond_b

    const-string v13, "recognition"

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-string v18, "vad timeout"

    invoke-static/range {v13 .. v18}, Lcom/unisound/common/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "NetRecognition --> vad timeout"

    invoke-static {v2}, Lcom/unisound/common/r;->c(Ljava/lang/String;)V

    goto :goto_5

    :cond_b
    const-string v13, "recognition"

    const-string v14, "error"

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    invoke-static/range {v13 .. v18}, Lcom/unisound/common/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NetRecognition --> error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/unisound/common/r;->c(Ljava/lang/String;)V

    invoke-direct {v0, v10, v1}, Lcom/unisound/sdk/ai;->a(ILcn/yunzhisheng/asr/JniUscClient;)V

    invoke-virtual {v1}, Lcn/yunzhisheng/asr/JniUscClient;->e()V

    iget-object v2, v0, Lcom/unisound/sdk/ai;->e:Lcom/unisound/sdk/an;

    invoke-virtual {v2}, Lcom/unisound/sdk/an;->ae()V

    return-void

    :cond_c
    :goto_4
    iget-object v2, v0, Lcom/unisound/sdk/ai;->e:Lcom/unisound/sdk/an;

    invoke-virtual {v2}, Lcom/unisound/sdk/an;->ag()Z

    move-result v2

    if-eqz v2, :cond_d

    const/16 v2, 0x22

    invoke-virtual {v1, v2}, Lcn/yunzhisheng/asr/JniUscClient;->c(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/unisound/sdk/ai;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "-changeable-"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v7, v0, Lcom/unisound/sdk/ai;->h:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "NetRecognition --> tempResult = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/unisound/sdk/ai;->h:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/unisound/common/r;->c(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v5}, Lcom/unisound/sdk/ai;->a(Ljava/lang/String;Z)V

    :cond_d
    :goto_5
    move-wide v7, v11

    :cond_e
    iget-boolean v2, v0, Lcom/unisound/sdk/ai;->g:Z

    if-eqz v2, :cond_14

    iget-object v2, v0, Lcom/unisound/sdk/ai;->c:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_14

    const-string v2, "NetRecognition --> break"

    invoke-static {v2}, Lcom/unisound/common/r;->c(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_f
    :goto_6
    iget-object v2, v0, Lcom/unisound/sdk/ai;->e:Lcom/unisound/sdk/an;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v2, v10, v11}, Lcom/unisound/sdk/an;->a(J)V

    iput-object v3, v0, Lcom/unisound/sdk/ai;->h:Ljava/lang/String;

    const-string v2, "Stop"

    invoke-direct {v0, v1, v2}, Lcom/unisound/sdk/ai;->a(Lcn/yunzhisheng/asr/JniUscClient;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NetRecognition --> stop called , bufferLength = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/unisound/common/r;->c(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcn/yunzhisheng/asr/JniUscClient;->b()I

    move-result v2

    if-gez v2, :cond_10

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NetRecognition --> stop error occured! , stopCode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/unisound/sdk/ai;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/unisound/common/r;->c(Ljava/lang/String;)V

    const-string v4, "stop"

    const-string v5, "error"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lcom/unisound/common/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v2, v1}, Lcom/unisound/sdk/ai;->a(ILcn/yunzhisheng/asr/JniUscClient;)V

    invoke-virtual {v1}, Lcn/yunzhisheng/asr/JniUscClient;->e()V

    return-void

    :cond_10
    const-string v10, "stop"

    const-string v11, "success"

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v10 .. v15}, Lcom/unisound/common/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/unisound/sdk/ai;->e:Lcom/unisound/sdk/an;

    iget v3, v2, Lcom/unisound/sdk/an;->aM:I

    if-eqz v3, :cond_11

    const/16 v3, 0x19

    invoke-virtual {v1, v3}, Lcn/yunzhisheng/asr/JniUscClient;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/unisound/common/m;->a(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/unisound/sdk/an;->aO:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NetRecognition --> asrRspSpeakerInfo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/unisound/sdk/ai;->e:Lcom/unisound/sdk/an;

    iget v3, v3, Lcom/unisound/sdk/an;->aO:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/unisound/common/r;->c(Ljava/lang/String;)V

    :cond_11
    invoke-virtual {v1}, Lcn/yunzhisheng/asr/JniUscClient;->c()Ljava/lang/String;

    move-result-object v2

    const-string v10, "getResult"

    const-string v11, "last"

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v13, v2

    invoke-static/range {v10 .. v15}, Lcom/unisound/common/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NetRecognition --> lastResult = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/unisound/common/r;->c(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Lcom/unisound/sdk/ai;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    :goto_7
    array-length v4, v2

    if-ge v3, v4, :cond_13

    array-length v4, v2

    sub-int/2addr v4, v9

    if-eq v3, v4, :cond_12

    aget-object v4, v2, v3

    invoke-direct {v0, v4, v5}, Lcom/unisound/sdk/ai;->a(Ljava/lang/String;Z)V

    goto :goto_8

    :cond_12
    aget-object v4, v2, v3

    invoke-direct {v0, v4, v9}, Lcom/unisound/sdk/ai;->a(Ljava/lang/String;Z)V

    :goto_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_13
    invoke-direct {v0, v1}, Lcom/unisound/sdk/ai;->d(Lcn/yunzhisheng/asr/JniUscClient;)V

    const-string v2, "NetRecognition --> released"

    invoke-static {v2}, Lcom/unisound/common/r;->c(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcn/yunzhisheng/asr/JniUscClient;->e()V

    iget-object v1, v0, Lcom/unisound/sdk/ai;->c:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    const-string v1, "RecognitionThread stop"

    invoke-static {v1}, Lcom/unisound/common/r;->g(Ljava/lang/String;)V

    const-string v1, "NetRecognition --> run stop"

    invoke-static {v1}, Lcom/unisound/common/r;->c(Ljava/lang/String;)V

    return-void

    :cond_14
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/unisound/sdk/ai;->d()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lcn/yunzhisheng/asr/JniUscClient;->d()I

    const-string v9, "recognition"

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-string v14, "cancel(recognizer)"

    invoke-static/range {v9 .. v14}, Lcom/unisound/common/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "NetRecognition --> cancel(recognizer)"

    invoke-static {v2}, Lcom/unisound/common/r;->c(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcn/yunzhisheng/asr/JniUscClient;->e()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    const-string v2, "NetRecognition --> exception"

    invoke-static {v2}, Lcom/unisound/common/r;->e(Ljava/lang/String;)V

    const-string v6, "recognition"

    const-string v7, "error"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const v2, -0xf231

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "recognition exception"

    invoke-static/range {v6 .. v11}, Lcom/unisound/common/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v2, v1}, Lcom/unisound/sdk/ai;->a(ILcn/yunzhisheng/asr/JniUscClient;)V

    sput v2, Lcn/yunzhisheng/asr/JniUscClient;->k:I

    sput v5, Lcn/yunzhisheng/asr/JniUscClient;->l:I

    invoke-virtual {v1}, Lcn/yunzhisheng/asr/JniUscClient;->e()V

    return-void

    :cond_15
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NetRecognition --> Login Error , login = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/unisound/common/r;->e(Ljava/lang/String;)V

    invoke-direct {v0, v2, v1}, Lcom/unisound/sdk/ai;->a(ILcn/yunzhisheng/asr/JniUscClient;)V

    invoke-virtual {v1}, Lcn/yunzhisheng/asr/JniUscClient;->e()V

    iget-object v1, v0, Lcom/unisound/sdk/ai;->e:Lcom/unisound/sdk/an;

    invoke-virtual {v1}, Lcom/unisound/sdk/an;->ae()V

    return-void
.end method
