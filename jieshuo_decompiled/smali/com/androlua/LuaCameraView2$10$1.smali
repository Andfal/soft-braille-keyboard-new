.class Lcom/androlua/LuaCameraView2$10$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/translate/TransApi$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androlua/LuaCameraView2$10;->onDone(Lcom/nirenr/talkman/ai/OcrResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/androlua/LuaCameraView2$10;


# direct methods
.method constructor <init>(Lcom/androlua/LuaCameraView2$10;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaCameraView2$10$1;->this$1:Lcom/androlua/LuaCameraView2$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransResult(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/nirenr/talkman/ai/OcrResult;

    invoke-direct {v0, p1}, Lcom/nirenr/talkman/ai/OcrResult;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/androlua/LuaCameraView2$10$1;->this$1:Lcom/androlua/LuaCameraView2$10;

    iget-object p1, p1, Lcom/androlua/LuaCameraView2$10;->this$0:Lcom/androlua/LuaCameraView2;

    invoke-virtual {v0}, Lcom/nirenr/talkman/ai/OcrResult;->getItems()[Lcom/nirenr/talkman/ai/OcrResult$OcrItem;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/androlua/LuaCameraView2;->t(Lcom/androlua/LuaCameraView2;[Lcom/nirenr/talkman/ai/OcrResult$OcrItem;)V

    iget-object p1, p0, Lcom/androlua/LuaCameraView2$10$1;->this$1:Lcom/androlua/LuaCameraView2$10;

    iget-object p1, p1, Lcom/androlua/LuaCameraView2$10;->this$0:Lcom/androlua/LuaCameraView2;

    invoke-virtual {v0}, Lcom/nirenr/talkman/ai/OcrResult;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/androlua/LuaCameraView2;->setStateText(Ljava/lang/String;)V

    return-void
.end method
