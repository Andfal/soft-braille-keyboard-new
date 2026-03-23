.class Lcom/androlua/LuaCameraView2$ImageSaver$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androlua/LuaCameraView2$ImageSaver;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/androlua/LuaCameraView2$ImageSaver;

.field final synthetic val$bytes:[B


# direct methods
.method constructor <init>(Lcom/androlua/LuaCameraView2$ImageSaver;[B)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaCameraView2$ImageSaver$1;->this$1:Lcom/androlua/LuaCameraView2$ImageSaver;

    iput-object p2, p0, Lcom/androlua/LuaCameraView2$ImageSaver$1;->val$bytes:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/androlua/LuaCameraView2$ImageSaver$1;->this$1:Lcom/androlua/LuaCameraView2$ImageSaver;

    iget-object v0, v0, Lcom/androlua/LuaCameraView2$ImageSaver;->this$0:Lcom/androlua/LuaCameraView2;

    invoke-static {v0}, Lcom/androlua/LuaCameraView2;->o(Lcom/androlua/LuaCameraView2;)I

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eq v0, v2, :cond_3

    if-eq v0, v1, :cond_2

    if-eq v0, v3, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/androlua/LuaCameraView2$ImageSaver$1;->this$1:Lcom/androlua/LuaCameraView2$ImageSaver;

    iget-object v0, v0, Lcom/androlua/LuaCameraView2$ImageSaver;->this$0:Lcom/androlua/LuaCameraView2;

    iget-object v1, p0, Lcom/androlua/LuaCameraView2$ImageSaver$1;->val$bytes:[B

    invoke-static {v0, v1}, Lcom/androlua/LuaCameraView2;->G(Lcom/androlua/LuaCameraView2;[B)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/androlua/LuaCameraView2$ImageSaver$1;->this$1:Lcom/androlua/LuaCameraView2$ImageSaver;

    iget-object v0, v0, Lcom/androlua/LuaCameraView2$ImageSaver;->this$0:Lcom/androlua/LuaCameraView2;

    iget-object v1, p0, Lcom/androlua/LuaCameraView2$ImageSaver$1;->val$bytes:[B

    invoke-static {v0, v1}, Lcom/androlua/LuaCameraView2;->A(Lcom/androlua/LuaCameraView2;[B)V

    return-void

    :cond_2
    const/16 v1, 0x14

    goto :goto_0

    :cond_3
    const/4 v1, 0x3

    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/androlua/LuaCameraView2$ImageSaver$1;->val$bytes:[B

    new-instance v2, Lcom/androlua/LuaCameraView2$ImageSaver$1$1;

    invoke-direct {v2, p0}, Lcom/androlua/LuaCameraView2$ImageSaver$1$1;-><init>(Lcom/androlua/LuaCameraView2$ImageSaver$1;)V

    invoke-static {v1, v0, v2}, Lcom/nirenr/talkman/ai/h;->k(I[BLcom/nirenr/talkman/ai/OcrResult$OCRListener;)Lcom/androlua/util/AsyncTaskX;

    return-void
.end method
