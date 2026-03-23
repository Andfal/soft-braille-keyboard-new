.class Lcom/day/BigModelNew$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/day/BigModelNew;->onMessage(Ly2/f0;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/day/BigModelNew;


# direct methods
.method constructor <init>(Lcom/day/BigModelNew;)V
    .locals 0

    iput-object p1, p0, Lcom/day/BigModelNew$4;->this$0:Lcom/day/BigModelNew;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/day/BigModelNew$4;->this$0:Lcom/day/BigModelNew;

    invoke-static {v0}, Lcom/day/BigModelNew;->b(Lcom/day/BigModelNew;)Lcom/nirenr/talkman/ai/OcrResult$OCRListener;

    move-result-object v0

    new-instance v1, Lcom/nirenr/talkman/ai/OcrResult;

    const/16 v2, 0x14

    sget-object v3, Lcom/day/BigModelNew;->totalAnswer:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/nirenr/talkman/ai/OcrResult;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/nirenr/talkman/ai/OcrResult$OCRListener;->onDone(Lcom/nirenr/talkman/ai/OcrResult;)V

    return-void
.end method
