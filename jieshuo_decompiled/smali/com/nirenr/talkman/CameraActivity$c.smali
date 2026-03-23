.class Lcom/nirenr/talkman/CameraActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/SpeechRecognitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/CameraActivity;->H()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/CameraActivity;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/CameraActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/CameraActivity$c;->a:Lcom/nirenr/talkman/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/nirenr/talkman/CameraActivity$c;->a:Lcom/nirenr/talkman/CameraActivity;

    invoke-static {v0}, Lcom/nirenr/talkman/CameraActivity;->f(Lcom/nirenr/talkman/CameraActivity;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x1e240

    invoke-virtual {v0, v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setSpeechRecognitionListener(Lcom/nirenr/talkman/SpeechRecognitionListener;I)V

    iget-object v0, p0, Lcom/nirenr/talkman/CameraActivity$c;->a:Lcom/nirenr/talkman/CameraActivity;

    invoke-static {v0}, Lcom/nirenr/talkman/CameraActivity;->a(Lcom/nirenr/talkman/CameraActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nirenr/talkman/CameraActivity$c;->a:Lcom/nirenr/talkman/CameraActivity;

    invoke-static {v0, p1}, Lcom/nirenr/talkman/CameraActivity;->j(Lcom/nirenr/talkman/CameraActivity;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/nirenr/talkman/CameraActivity$c;->a:Lcom/nirenr/talkman/CameraActivity;

    invoke-static {p1}, Lcom/nirenr/talkman/CameraActivity;->o(Lcom/nirenr/talkman/CameraActivity;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/nirenr/talkman/CameraActivity$c$a;

    invoke-direct {v0, p0}, Lcom/nirenr/talkman/CameraActivity$c$a;-><init>(Lcom/nirenr/talkman/CameraActivity$c;)V

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
