.class Lcom/unisound/sdk/bd;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/unisound/sdk/bb;


# direct methods
.method constructor <init>(Lcom/unisound/sdk/bb;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/bd;->a:Lcom/unisound/sdk/bb;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/unisound/sdk/bd;->a:Lcom/unisound/sdk/bb;

    iget-object v1, v0, Lcom/unisound/sdk/bb;->y:Ljava/lang/String;

    iget-object v2, v0, Lcom/unisound/sdk/bb;->z:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/unisound/sdk/bb;->a(Lcom/unisound/sdk/bb;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
