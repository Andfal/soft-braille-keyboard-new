.class Lcom/unisound/sdk/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/unisound/common/z;


# instance fields
.field final synthetic a:Lcom/unisound/sdk/m;


# direct methods
.method constructor <init>(Lcom/unisound/sdk/m;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/n;->a:Lcom/unisound/sdk/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/n;->a:Lcom/unisound/sdk/m;

    invoke-virtual {v0}, Lcom/unisound/sdk/m;->postRecordingStartStatus()V

    return-void
.end method

.method public a(I)V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method
