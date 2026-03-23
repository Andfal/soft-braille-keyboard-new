.class Lcom/unisound/sdk/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/unisound/sdk/af;


# instance fields
.field final synthetic a:Lcom/unisound/sdk/m;


# direct methods
.method constructor <init>(Lcom/unisound/sdk/m;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/p;->a:Lcom/unisound/sdk/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/p;->a:Lcom/unisound/sdk/m;

    invoke-virtual {v0}, Lcom/unisound/sdk/m;->i()I

    move-result v0

    return v0
.end method
