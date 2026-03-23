.class Lcom/unisound/sdk/bv;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/unisound/sdk/bu;

.field final synthetic b:Lcom/unisound/sdk/bt;


# direct methods
.method public constructor <init>(Lcom/unisound/sdk/bt;Lcom/unisound/sdk/bu;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/bv;->b:Lcom/unisound/sdk/bt;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/unisound/sdk/bv;->a:Lcom/unisound/sdk/bu;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/sdk/bv;->a:Lcom/unisound/sdk/bu;

    return-void
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "USCAsyncTask doInBackground: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unisound/common/r;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/sdk/bv;->a:Lcom/unisound/sdk/bu;

    invoke-interface {v0, p1}, Lcom/unisound/sdk/bu;->a([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/unisound/sdk/bv;->b:Lcom/unisound/sdk/bt;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/unisound/sdk/bt;->a(Lcom/unisound/sdk/bt;Z)Z

    iget-object v0, p0, Lcom/unisound/sdk/bv;->a:Lcom/unisound/sdk/bu;

    invoke-interface {v0, p1}, Lcom/unisound/sdk/bu;->a(Ljava/lang/Object;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    iget-object v0, p0, Lcom/unisound/sdk/bv;->b:Lcom/unisound/sdk/bt;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/unisound/sdk/bt;->a(Lcom/unisound/sdk/bt;Z)Z

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method
