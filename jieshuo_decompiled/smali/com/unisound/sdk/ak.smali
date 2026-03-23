.class Lcom/unisound/sdk/ak;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/unisound/sdk/ac;


# instance fields
.field final synthetic a:Lcom/unisound/sdk/aj;


# direct methods
.method constructor <init>(Lcom/unisound/sdk/aj;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/ak;->a:Lcom/unisound/sdk/aj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Recognizer timeout("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unisound/sdk/ak;->a:Lcom/unisound/sdk/aj;

    invoke-static {v1}, Lcom/unisound/sdk/aj;->a(Lcom/unisound/sdk/aj;)Lcom/unisound/sdk/ab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unisound/sdk/ab;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unisound/common/r;->e(Ljava/lang/String;)V

    const-string v0, "Ontimer:cancelRecognition()"

    invoke-static {v0}, Lcom/unisound/common/r;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/sdk/ak;->a:Lcom/unisound/sdk/aj;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/unisound/sdk/aj;->a(Lcom/unisound/sdk/aj;Z)V

    iget-object v0, p0, Lcom/unisound/sdk/ak;->a:Lcom/unisound/sdk/aj;

    invoke-static {v0}, Lcom/unisound/sdk/aj;->b(Lcom/unisound/sdk/aj;)Lcom/unisound/sdk/z;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/ak;->a:Lcom/unisound/sdk/aj;

    invoke-static {v0}, Lcom/unisound/sdk/aj;->b(Lcom/unisound/sdk/aj;)Lcom/unisound/sdk/z;

    move-result-object v0

    const v1, -0xf232

    invoke-interface {v0, v1}, Lcom/unisound/sdk/z;->b(I)V

    :cond_0
    return-void
.end method
