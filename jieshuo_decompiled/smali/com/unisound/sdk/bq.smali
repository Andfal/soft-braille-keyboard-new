.class Lcom/unisound/sdk/bq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/unisound/sdk/by;


# instance fields
.field final synthetic a:Lcom/unisound/sdk/bp;


# direct methods
.method constructor <init>(Lcom/unisound/sdk/bp;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/bq;->a:Lcom/unisound/sdk/bp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    iget-object v0, p0, Lcom/unisound/sdk/bq;->a:Lcom/unisound/sdk/bp;

    const/16 v1, 0x65

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/unisound/common/u;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/unisound/sdk/bq;->a:Lcom/unisound/sdk/bp;

    const/16 v1, 0x64

    invoke-virtual {v0, v1, p1}, Lcom/unisound/common/u;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method
