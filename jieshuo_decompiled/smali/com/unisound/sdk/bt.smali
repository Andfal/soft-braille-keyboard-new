.class public Lcom/unisound/sdk/bt;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lcom/unisound/sdk/bu;

.field b:Lcom/unisound/sdk/bv;

.field private c:[Ljava/lang/Object;

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/unisound/sdk/bu;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unisound/sdk/bt;->d:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/sdk/bt;->b:Lcom/unisound/sdk/bv;

    iput-object p1, p0, Lcom/unisound/sdk/bt;->a:Lcom/unisound/sdk/bu;

    return-void
.end method

.method static synthetic a(Lcom/unisound/sdk/bt;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/unisound/sdk/bt;->d:Z

    return p1
.end method


# virtual methods
.method public a()V
    .locals 2

    invoke-virtual {p0}, Lcom/unisound/sdk/bt;->b()V

    new-instance v0, Lcom/unisound/sdk/bv;

    iget-object v1, p0, Lcom/unisound/sdk/bt;->a:Lcom/unisound/sdk/bu;

    invoke-direct {v0, p0, v1}, Lcom/unisound/sdk/bv;-><init>(Lcom/unisound/sdk/bt;Lcom/unisound/sdk/bu;)V

    iput-object v0, p0, Lcom/unisound/sdk/bt;->b:Lcom/unisound/sdk/bv;

    iget-object v1, p0, Lcom/unisound/sdk/bt;->c:[Ljava/lang/Object;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method public varargs a([Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/bt;->c:[Ljava/lang/Object;

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bt;->b:Lcom/unisound/sdk/bv;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/unisound/sdk/bv;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/sdk/bt;->b:Lcom/unisound/sdk/bv;

    :cond_0
    return-void
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unisound/sdk/bt;->d:Z

    return v0
.end method
