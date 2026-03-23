.class Lcom/nirenr/talkman/TalkManAccessibilityService$c1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/screencapture/ScreenCaptureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/TalkManAccessibilityService;->ocrToLayout2(Lcom/nirenr/talkman/ai/BaiduAI$AipTaskCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/ai/BaiduAI$AipTaskCallback;

.field final synthetic b:Lcom/nirenr/talkman/TalkManAccessibilityService;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Lcom/nirenr/talkman/ai/BaiduAI$AipTaskCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$c1;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iput-object p2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$c1;->a:Lcom/nirenr/talkman/ai/BaiduAI$AipTaskCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScreenCaptureDone(Landroid/graphics/Bitmap;)V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$c1;->a:Lcom/nirenr/talkman/ai/BaiduAI$AipTaskCallback;

    invoke-static {v0, p1, v1}, Lcom/nirenr/talkman/ai/BaiduAI;->e(ILandroid/graphics/Bitmap;Lcom/nirenr/talkman/ai/BaiduAI$AipTaskCallback;)Lcom/nirenr/talkman/ai/BaiduAI$b;

    return-void
.end method

.method public onScreenCaptureError(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$c1;->a:Lcom/nirenr/talkman/ai/BaiduAI$AipTaskCallback;

    invoke-interface {v0, p1}, Lcom/nirenr/talkman/ai/BaiduAI$AipTaskCallback;->onError(Ljava/lang/String;)V

    return-void
.end method
