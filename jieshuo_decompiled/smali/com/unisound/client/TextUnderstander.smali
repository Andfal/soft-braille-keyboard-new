.class public Lcom/unisound/client/TextUnderstander;
.super Lcom/unisound/sdk/bp;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/unisound/sdk/bp;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    invoke-super {p0}, Lcom/unisound/sdk/bp;->cancel()V

    return-void
.end method

.method public getOption(I)Ljava/lang/Object;
    .locals 0

    invoke-super {p0, p1}, Lcom/unisound/sdk/bp;->getOption(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public init(Ljava/lang/String;)I
    .locals 0

    invoke-super {p0, p1}, Lcom/unisound/sdk/bp;->init(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public setListener(Lcom/unisound/client/TextUnderstanderListener;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/unisound/sdk/bp;->setListener(Lcom/unisound/client/TextUnderstanderListener;)V

    return-void
.end method

.method public setOption(ILjava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/unisound/sdk/bp;->setOption(ILjava/lang/Object;)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/unisound/sdk/bp;->setText(Ljava/lang/String;)V

    return-void
.end method
