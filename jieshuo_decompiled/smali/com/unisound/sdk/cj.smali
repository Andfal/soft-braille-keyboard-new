.class Lcom/unisound/sdk/cj;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/unisound/sdk/ci;


# direct methods
.method constructor <init>(Lcom/unisound/sdk/ci;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/cj;->a:Lcom/unisound/sdk/ci;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/unisound/sdk/cj;->a:Lcom/unisound/sdk/ci;

    invoke-static {v0}, Lcom/unisound/sdk/ci;->a(Lcom/unisound/sdk/ci;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/unisound/sdk/cj;->a:Lcom/unisound/sdk/ci;

    invoke-static {v2}, Lcom/unisound/sdk/ci;->b(Lcom/unisound/sdk/ci;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/unisound/sdk/ci;->a(Lcom/unisound/sdk/ci;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
