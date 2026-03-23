.class public Lcom/unisound/common/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Z

.field private g:Z


# direct methods
.method public constructor <init>(Lcom/unisound/common/a;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "117.121.55.35"

    iput-object v0, p0, Lcom/unisound/common/a;->a:Ljava/lang/String;

    const/16 v1, 0x50

    iput v1, p0, Lcom/unisound/common/a;->b:I

    const-string v2, ""

    iput-object v2, p0, Lcom/unisound/common/a;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/unisound/common/a;->d:Ljava/lang/String;

    iput v1, p0, Lcom/unisound/common/a;->e:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unisound/common/a;->f:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unisound/common/a;->g:Z

    iget-object v1, p1, Lcom/unisound/common/a;->a:Ljava/lang/String;

    iput-object v1, p0, Lcom/unisound/common/a;->a:Ljava/lang/String;

    iget v1, p1, Lcom/unisound/common/a;->b:I

    iput v1, p0, Lcom/unisound/common/a;->b:I

    iget-object v1, p1, Lcom/unisound/common/a;->d:Ljava/lang/String;

    iput-object v1, p0, Lcom/unisound/common/a;->d:Ljava/lang/String;

    iget p1, p1, Lcom/unisound/common/a;->e:I

    iput p1, p0, Lcom/unisound/common/a;->e:I

    iput-boolean v0, p0, Lcom/unisound/common/a;->g:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/common/a;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unisound/common/a;->f:Z

    iput-object p1, p0, Lcom/unisound/common/a;->a:Ljava/lang/String;

    iput p2, p0, Lcom/unisound/common/a;->b:I

    iput p4, p0, Lcom/unisound/common/a;->e:I

    iput-object p3, p0, Lcom/unisound/common/a;->d:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/unisound/common/a;->g:Z

    return-void
.end method

.method private f()V
    .locals 1

    iget-boolean v0, p0, Lcom/unisound/common/a;->f:Z

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/unisound/common/a;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/common/a;->c:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unisound/common/a;->f:Z
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "InetAddress.getByName fail"

    invoke-static {v0}, Lcom/unisound/common/r;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/unisound/common/a;->f()V

    iget-boolean v0, p0, Lcom/unisound/common/a;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/common/a;->c:Ljava/lang/String;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/unisound/common/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/unisound/common/a;->e:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/unisound/common/a;->g:Z

    return-void
.end method

.method public a(Lcom/unisound/common/a;)V
    .locals 1

    iget-object v0, p1, Lcom/unisound/common/a;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/unisound/common/a;->a:Ljava/lang/String;

    iget v0, p1, Lcom/unisound/common/a;->b:I

    iput v0, p0, Lcom/unisound/common/a;->b:I

    iget-object v0, p1, Lcom/unisound/common/a;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/unisound/common/a;->d:Ljava/lang/String;

    iget p1, p1, Lcom/unisound/common/a;->e:I

    iput p1, p0, Lcom/unisound/common/a;->e:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/unisound/common/a;->f:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/unisound/common/a;->g:Z

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/common/a;->d:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/unisound/common/a;->g:Z

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/unisound/common/a;->g:Z

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/common/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/unisound/common/a;->b:I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/common/a;->a:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/unisound/common/a;->f:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/unisound/common/a;->g:Z

    return-void
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/unisound/common/a;->b:I

    return v0
.end method

.method public c(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :try_start_0
    aget-object v2, p1, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-short v2, v2

    iput v2, p0, Lcom/unisound/common/a;->b:I

    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/unisound/common/a;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/unisound/common/a;->d:Ljava/lang/String;

    iput v2, p0, Lcom/unisound/common/a;->e:I

    iput-boolean v1, p0, Lcom/unisound/common/a;->g:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unisound/common/a;->g:Z

    return v0
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unisound/common/a;->f:Z

    return-void
.end method
