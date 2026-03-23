.class public Lcom/unisound/sdk/u;
.super Lcom/unisound/sdk/an;
.source "SourceFile"


# instance fields
.field private aV:I

.field private aW:I

.field private aX:I

.field private aY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private aZ:Ljava/lang/String;

.field private ba:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/unisound/sdk/an;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/unisound/sdk/u;->aV:I

    iput v0, p0, Lcom/unisound/sdk/u;->aW:I

    iput v0, p0, Lcom/unisound/sdk/u;->aX:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/sdk/u;->aZ:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/sdk/u;->ba:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public O()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/u;->aZ:Ljava/lang/String;

    return-object v0
.end method

.method public P()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/u;->ba:Ljava/lang/String;

    return-object v0
.end method

.method public Q()I
    .locals 1

    iget v0, p0, Lcom/unisound/sdk/u;->aV:I

    return v0
.end method

.method public R()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/unisound/sdk/u;->aY:Ljava/util/List;

    return-object v0
.end method

.method public S()I
    .locals 1

    iget v0, p0, Lcom/unisound/sdk/u;->aW:I

    return v0
.end method

.method public T()I
    .locals 1

    iget v0, p0, Lcom/unisound/sdk/u;->aX:I

    return v0
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 2

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "grammaTag"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "loadGrammaSuccess"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "/"

    const-string v0, ""

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/unisound/sdk/u;->ba:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/unisound/sdk/u;->aY:Ljava/util/List;

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/u;->aZ:Ljava/lang/String;

    return-void
.end method

.method public n(I)Z
    .locals 3

    iget v0, p0, Lcom/unisound/sdk/u;->aV:I

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/unisound/sdk/u;->aY:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne p1, v2, :cond_1

    iput p1, p0, Lcom/unisound/sdk/u;->aV:I

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public o(I)Z
    .locals 3

    iget v0, p0, Lcom/unisound/sdk/u;->aW:I

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/unisound/sdk/u;->aY:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne p1, v2, :cond_1

    iput p1, p0, Lcom/unisound/sdk/u;->aW:I

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public p(I)V
    .locals 0

    iput p1, p0, Lcom/unisound/sdk/u;->aX:I

    return-void
.end method
