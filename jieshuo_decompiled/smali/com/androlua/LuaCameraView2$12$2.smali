.class Lcom/androlua/LuaCameraView2$12$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/translate/TransApi$OnResultListener;


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

    iput-object p1, p0, Lcom/androlua/LuaCameraView2$12$2;->this$1:Lcom/androlua/LuaCameraView2$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransResult(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/androlua/LuaCameraView2$12$2;->this$1:Lcom/androlua/LuaCameraView2$12;

    iget-object v0, v0, Lcom/androlua/LuaCameraView2$12;->this$0:Lcom/androlua/LuaCameraView2;

    invoke-virtual {v0, p1}, Lcom/androlua/LuaCameraView2;->setStateText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/androlua/LuaCameraView2$12$2;->this$1:Lcom/androlua/LuaCameraView2$12;

    iget-object v0, v0, Lcom/androlua/LuaCameraView2$12;->val$bs:[B

    new-instance v1, Lcom/androlua/LuaCameraView2$12$2$1;

    invoke-direct {v1, p0}, Lcom/androlua/LuaCameraView2$12$2$1;-><init>(Lcom/androlua/LuaCameraView2$12$2;)V

    invoke-static {v0, p1, v1}, Lcom/nirenr/talkman/ai/g;->i([BLjava/lang/String;Lcom/nirenr/talkman/ai/OcrResult$OCRListener;)Lcom/androlua/util/AsyncTaskX;

    return-void
.end method
