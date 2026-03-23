.class Lcom/nirenr/talkman/CameraActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/SpeechRecognitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/CameraActivity;->v()V
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

    iput-object p1, p0, Lcom/nirenr/talkman/CameraActivity$b;->a:Lcom/nirenr/talkman/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd(Ljava/lang/String;)Z
    .locals 5

    iget-object v0, p0, Lcom/nirenr/talkman/CameraActivity$b;->a:Lcom/nirenr/talkman/CameraActivity;

    invoke-static {v0}, Lcom/nirenr/talkman/CameraActivity;->f(Lcom/nirenr/talkman/CameraActivity;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x1e240

    invoke-virtual {v0, v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setSpeechRecognitionListener(Lcom/nirenr/talkman/SpeechRecognitionListener;I)V

    iget-object v0, p0, Lcom/nirenr/talkman/CameraActivity$b;->a:Lcom/nirenr/talkman/CameraActivity;

    invoke-static {v0}, Lcom/nirenr/talkman/CameraActivity;->a(Lcom/nirenr/talkman/CameraActivity;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nirenr/talkman/CameraActivity$b;->a:Lcom/nirenr/talkman/CameraActivity;

    invoke-static {v0, p1}, Lcom/nirenr/talkman/CameraActivity;->i(Lcom/nirenr/talkman/CameraActivity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nirenr/talkman/CameraActivity$b;->a:Lcom/nirenr/talkman/CameraActivity;

    const v2, 0x7f070447

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/nirenr/talkman/CameraActivity;->n(Lcom/nirenr/talkman/CameraActivity;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/nirenr/talkman/CameraActivity$b$a;

    invoke-direct {v0, p0, p1}, Lcom/nirenr/talkman/CameraActivity$b$a;-><init>(Lcom/nirenr/talkman/CameraActivity$b;Ljava/lang/String;)V

    const-string v2, "auto"

    const-string v3, "zh"

    invoke-static {p1, v2, v3, v0}, Lcom/nirenr/talkman/util/d;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/translate/TransApi$OnResultListener;)V

    :goto_0
    return v1
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 0

    return-void
.end method
