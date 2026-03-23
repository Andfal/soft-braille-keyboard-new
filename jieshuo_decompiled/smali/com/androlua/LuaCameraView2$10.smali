.class Lcom/androlua/LuaCameraView2$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/ai/OcrResult$OCRListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androlua/LuaCameraView2;->findObject([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androlua/LuaCameraView2;


# direct methods
.method constructor <init>(Lcom/androlua/LuaCameraView2;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaCameraView2$10;->this$0:Lcom/androlua/LuaCameraView2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(Lcom/nirenr/talkman/ai/OcrResult;)V
    .locals 3

    iget-object v0, p0, Lcom/androlua/LuaCameraView2$10;->this$0:Lcom/androlua/LuaCameraView2;

    invoke-static {v0}, Lcom/androlua/LuaCameraView2;->h(Lcom/androlua/LuaCameraView2;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/nirenr/talkman/ai/OcrResult;->getString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    iget-object p1, p0, Lcom/androlua/LuaCameraView2$10;->this$0:Lcom/androlua/LuaCameraView2;

    invoke-virtual {p1}, Lcom/androlua/LuaCameraView2;->takePicture()V

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/nirenr/talkman/ai/OcrResult;->getString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u6ca1\u6709"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/nirenr/talkman/ai/OcrResult;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/androlua/LuaCameraView2$10;->this$0:Lcom/androlua/LuaCameraView2;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/androlua/LuaCameraView2;->s(Lcom/androlua/LuaCameraView2;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/androlua/LuaCameraView2$10;->this$0:Lcom/androlua/LuaCameraView2;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/androlua/LuaCameraView2;->w(Lcom/androlua/LuaCameraView2;I)V

    iget-object v0, p0, Lcom/androlua/LuaCameraView2$10;->this$0:Lcom/androlua/LuaCameraView2;

    invoke-static {v0}, Lcom/androlua/LuaCameraView2;->a(Lcom/androlua/LuaCameraView2;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/androlua/LuaCameraView2$10;->this$0:Lcom/androlua/LuaCameraView2;

    invoke-virtual {p1}, Lcom/nirenr/talkman/ai/OcrResult;->getItems()[Lcom/nirenr/talkman/ai/OcrResult$OcrItem;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/androlua/LuaCameraView2;->t(Lcom/androlua/LuaCameraView2;[Lcom/nirenr/talkman/ai/OcrResult$OcrItem;)V

    iget-object v0, p0, Lcom/androlua/LuaCameraView2$10;->this$0:Lcom/androlua/LuaCameraView2;

    invoke-virtual {p1}, Lcom/nirenr/talkman/ai/OcrResult;->getString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/androlua/LuaCameraView2;->setStateText(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/nirenr/talkman/ai/OcrResult;->getString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/androlua/LuaCameraView2$10;->this$0:Lcom/androlua/LuaCameraView2;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lk2/b0;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/androlua/LuaCameraView2$10;->this$0:Lcom/androlua/LuaCameraView2;

    const v2, 0x7f070697

    invoke-virtual {v1, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "en"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/androlua/LuaCameraView2$10$1;

    invoke-direct {v1, p0}, Lcom/androlua/LuaCameraView2$10$1;-><init>(Lcom/androlua/LuaCameraView2$10;)V

    const-string v2, "zh"

    invoke-static {p1, v2, v0, v1}, Lcom/nirenr/talkman/util/d;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/translate/TransApi$OnResultListener;)V

    :goto_1
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
