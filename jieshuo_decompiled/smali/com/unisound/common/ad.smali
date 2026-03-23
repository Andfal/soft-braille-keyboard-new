.class public Lcom/unisound/common/ad;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/String; = "http://10.30.2.13:8089/data-process-service/rtc"

.field private static b:I = 0x6


# instance fields
.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/unisound/common/ac;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/unisound/sdk/an;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/unisound/common/ad;->c:Ljava/util/List;

    return-void
.end method

.method private b()I
    .locals 2

    const/4 v0, 0x1

    :goto_0
    sget v1, Lcom/unisound/common/ad;->b:I

    if-ge v0, v1, :cond_1

    invoke-direct {p0, v0}, Lcom/unisound/common/ad;->b(I)Lcom/unisound/common/ac;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private b(I)Lcom/unisound/common/ac;
    .locals 4

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/unisound/common/ad;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/unisound/common/ac;

    invoke-virtual {v2}, Lcom/unisound/common/ac;->c()I

    move-result v3

    if-ne v3, p1, :cond_1

    return-object v2

    :cond_2
    return-object v1
.end method

.method private c(Ljava/lang/String;)Lcom/unisound/common/ac;
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/unisound/common/ad;->a(Ljava/lang/String;)Lcom/unisound/common/ac;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    invoke-direct {p0}, Lcom/unisound/common/ad;->b()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    new-instance v1, Lcom/unisound/common/ac;

    invoke-direct {v1, v0, p1}, Lcom/unisound/common/ac;-><init>(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/unisound/common/ad;->c:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lcom/unisound/common/ad;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public a(I)Lcom/unisound/common/ac;
    .locals 1

    iget-object v0, p0, Lcom/unisound/common/ad;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    iget-object v0, p0, Lcom/unisound/common/ad;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/unisound/common/ac;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Ljava/lang/String;)Lcom/unisound/common/ac;
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/unisound/common/ad;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/unisound/common/ac;

    invoke-virtual {v2}, Lcom/unisound/common/ac;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_2
    return-object v1
.end method

.method public a(Ljava/lang/String;Ljava/util/List;Lcom/unisound/common/ae;)Lcom/unisound/common/ap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/unisound/common/ae;",
            ")",
            "Lcom/unisound/common/ap;"
        }
    .end annotation

    new-instance v0, Lcom/unisound/common/ap;

    invoke-direct {v0}, Lcom/unisound/common/ap;-><init>()V

    sget-object v1, Lcom/unisound/common/ad;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/unisound/common/ap;->a(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/unisound/common/ad;->a(Ljava/lang/String;)Lcom/unisound/common/ac;

    move-result-object v1

    new-instance v2, Lcom/unisound/client/ErrorCode;

    invoke-direct {v2}, Lcom/unisound/client/ErrorCode;-><init>()V

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/unisound/common/ad;->a()I

    move-result v1

    sget v3, Lcom/unisound/common/ad;->b:I

    const v4, -0xf626

    if-lt v1, v3, :cond_0

    invoke-virtual {v2, v4}, Lcom/unisound/client/ErrorCode;->createProfessionError(I)Lcom/unisound/sdk/bw;

    move-result-object p1

    invoke-interface {p3, v0, p1}, Lcom/unisound/common/ae;->a(Lcom/unisound/common/ap;Lcom/unisound/sdk/bw;)V

    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/unisound/common/ad;->c(Ljava/lang/String;)Lcom/unisound/common/ac;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {v2, v4}, Lcom/unisound/client/ErrorCode;->createProfessionError(I)Lcom/unisound/sdk/bw;

    move-result-object p1

    invoke-interface {p3, v0, p1}, Lcom/unisound/common/ae;->a(Lcom/unisound/common/ap;Lcom/unisound/sdk/bw;)V

    return-object v0

    :cond_1
    iget-object p1, p0, Lcom/unisound/common/ad;->d:Lcom/unisound/sdk/an;

    invoke-virtual {p1}, Lcom/unisound/sdk/an;->ab()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v1, p2}, Lcom/unisound/common/ap;->a(Ljava/lang/String;Lcom/unisound/common/ac;Ljava/util/List;)V

    invoke-virtual {v0, p3}, Lcom/unisound/common/ap;->a(Lcom/unisound/common/ae;)V

    return-object v0
.end method

.method public a(Lcom/unisound/common/ac;)V
    .locals 2

    iget-object v0, p0, Lcom/unisound/common/ad;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unisound/common/ac;

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lcom/unisound/common/ad;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Lcom/unisound/sdk/an;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/common/ad;->d:Lcom/unisound/sdk/an;

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/data-process-service/rtc"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/unisound/common/ad;->a:Ljava/lang/String;

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/unisound/common/ad;->a(Ljava/lang/String;)Lcom/unisound/common/ac;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/unisound/common/ad;->a(Lcom/unisound/common/ac;)V

    :cond_0
    return-void
.end method
