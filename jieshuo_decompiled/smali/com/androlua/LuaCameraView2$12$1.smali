.class Lcom/androlua/LuaCameraView2$12$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/ai/OcrResult$OCRListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androlua/LuaCameraView2$12;->onEnd(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/androlua/LuaCameraView2$12;


# direct methods
.method constructor <init>(Lcom/androlua/LuaCameraView2$12;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaCameraView2$12$1;->this$1:Lcom/androlua/LuaCameraView2$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(Lcom/nirenr/talkman/ai/OcrResult;)V
    .locals 3

    iget-object v0, p0, Lcom/androlua/LuaCameraView2$12$1;->this$1:Lcom/androlua/LuaCameraView2$12;

    iget-object v0, v0, Lcom/androlua/LuaCameraView2$12;->this$0:Lcom/androlua/LuaCameraView2;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/androlua/LuaCameraView2;->w(Lcom/androlua/LuaCameraView2;I)V

    iget-object v0, p0, Lcom/androlua/LuaCameraView2$12$1;->this$1:Lcom/androlua/LuaCameraView2$12;

    iget-object v0, v0, Lcom/androlua/LuaCameraView2$12;->this$0:Lcom/androlua/LuaCameraView2;

    invoke-virtual {p1}, Lcom/nirenr/talkman/ai/OcrResult;->getItems()[Lcom/nirenr/talkman/ai/OcrResult$OcrItem;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/androlua/LuaCameraView2;->t(Lcom/androlua/LuaCameraView2;[Lcom/nirenr/talkman/ai/OcrResult$OcrItem;)V

    iget-object v0, p0, Lcom/androlua/LuaCameraView2$12$1;->this$1:Lcom/androlua/LuaCameraView2$12;

    iget-object v0, v0, Lcom/androlua/LuaCameraView2$12;->this$0:Lcom/androlua/LuaCameraView2;

    invoke-virtual {p1}, Lcom/nirenr/talkman/ai/OcrResult;->getString()Ljava/lang/String;

    move-result-object p1

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, p1, v1, v2}, Lcom/androlua/LuaCameraView2;->setStateText(Ljava/lang/String;J)V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaCameraView2$12$1;->this$1:Lcom/androlua/LuaCameraView2$12;

    iget-object v0, v0, Lcom/androlua/LuaCameraView2$12;->this$0:Lcom/androlua/LuaCameraView2;

    invoke-virtual {v0, p1}, Lcom/androlua/LuaCameraView2;->setStateText(Ljava/lang/String;)V

    return-void
.end method
