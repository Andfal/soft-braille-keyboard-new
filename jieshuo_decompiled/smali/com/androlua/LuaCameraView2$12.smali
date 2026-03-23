.class Lcom/androlua/LuaCameraView2$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/SpeechRecognitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androlua/LuaCameraView2;->voiceQuestion([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androlua/LuaCameraView2;

.field final synthetic val$bs:[B

.field final synthetic val$mService:Lcom/nirenr/talkman/TalkManAccessibilityService;


# direct methods
.method constructor <init>(Lcom/androlua/LuaCameraView2;Lcom/nirenr/talkman/TalkManAccessibilityService;[B)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaCameraView2$12;->this$0:Lcom/androlua/LuaCameraView2;

    iput-object p2, p0, Lcom/androlua/LuaCameraView2$12;->val$mService:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iput-object p3, p0, Lcom/androlua/LuaCameraView2$12;->val$bs:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/androlua/LuaCameraView2$12;->val$mService:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const/4 v1, 0x0

    const v2, 0x1e240

    invoke-virtual {v0, v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setSpeechRecognitionListener(Lcom/nirenr/talkman/SpeechRecognitionListener;I)V

    iget-object v0, p0, Lcom/androlua/LuaCameraView2$12;->this$0:Lcom/androlua/LuaCameraView2;

    invoke-static {v0}, Lcom/androlua/LuaCameraView2;->a(Lcom/androlua/LuaCameraView2;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/androlua/LuaCameraView2$12;->this$0:Lcom/androlua/LuaCameraView2;

    invoke-virtual {v0, p1}, Lcom/androlua/LuaCameraView2;->setStateText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/androlua/LuaCameraView2$12;->val$bs:[B

    new-instance v1, Lcom/androlua/LuaCameraView2$12$1;

    invoke-direct {v1, p0}, Lcom/androlua/LuaCameraView2$12$1;-><init>(Lcom/androlua/LuaCameraView2$12;)V

    invoke-static {v0, p1, v1}, Lcom/nirenr/talkman/ai/g;->i([BLjava/lang/String;Lcom/nirenr/talkman/ai/OcrResult$OCRListener;)Lcom/androlua/util/AsyncTaskX;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/androlua/LuaCameraView2$12$2;

    invoke-direct {v0, p0}, Lcom/androlua/LuaCameraView2$12$2;-><init>(Lcom/androlua/LuaCameraView2$12;)V

    const-string v1, "auto"

    const-string v2, "zh"

    invoke-static {p1, v1, v2, v0}, Lcom/nirenr/talkman/util/d;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/translate/TransApi$OnResultListener;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 0

    return-void
.end method
