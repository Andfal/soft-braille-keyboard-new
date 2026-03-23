.class Lcom/androlua/LuaCameraView2$12$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/ai/OcrResult$OCRListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androlua/LuaCameraView2$12$2;->onTransResult(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/androlua/LuaCameraView2$12$2;


# direct methods
.method constructor <init>(Lcom/androlua/LuaCameraView2$12$2;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaCameraView2$12$2$1;->this$2:Lcom/androlua/LuaCameraView2$12$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(Lcom/nirenr/talkman/ai/OcrResult;)V
    .locals 3

    invoke-virtual {p1}, Lcom/nirenr/talkman/ai/OcrResult;->getString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/androlua/LuaCameraView2$12$2$1;->this$2:Lcom/androlua/LuaCameraView2$12$2;

    iget-object v0, v0, Lcom/androlua/LuaCameraView2$12$2;->this$1:Lcom/androlua/LuaCameraView2$12;

    iget-object v0, v0, Lcom/androlua/LuaCameraView2$12;->this$0:Lcom/androlua/LuaCameraView2;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lk2/b0;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/androlua/LuaCameraView2$12$2$1;->this$2:Lcom/androlua/LuaCameraView2$12$2;

    iget-object v1, v1, Lcom/androlua/LuaCameraView2$12$2;->this$1:Lcom/androlua/LuaCameraView2$12;

    iget-object v1, v1, Lcom/androlua/LuaCameraView2$12;->this$0:Lcom/androlua/LuaCameraView2;

    const v2, 0x7f070697

    invoke-virtual {v1, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "en"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/androlua/LuaCameraView2$12$2$1$1;

    invoke-direct {v1, p0}, Lcom/androlua/LuaCameraView2$12$2$1$1;-><init>(Lcom/androlua/LuaCameraView2$12$2$1;)V

    const-string v2, "zh"

    invoke-static {p1, v2, v0, v1}, Lcom/nirenr/talkman/util/d;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/translate/TransApi$OnResultListener;)V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaCameraView2$12$2$1;->this$2:Lcom/androlua/LuaCameraView2$12$2;

    iget-object v0, v0, Lcom/androlua/LuaCameraView2$12$2;->this$1:Lcom/androlua/LuaCameraView2$12;

    iget-object v0, v0, Lcom/androlua/LuaCameraView2$12;->this$0:Lcom/androlua/LuaCameraView2;

    invoke-virtual {v0, p1}, Lcom/androlua/LuaCameraView2;->setStateText(Ljava/lang/String;)V

    return-void
.end method
