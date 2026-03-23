.class Lcom/nirenr/talkman/CameraActivity$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/ai/BaiduAI$AipTaskCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/CameraActivity;->onPictureTaken([BLandroid/hardware/Camera;)V
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

    iput-object p1, p0, Lcom/nirenr/talkman/CameraActivity$f;->a:Lcom/nirenr/talkman/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(Lorg/json/JSONObject;)V
    .locals 1

    iget-object v0, p0, Lcom/nirenr/talkman/CameraActivity$f;->a:Lcom/nirenr/talkman/CameraActivity;

    invoke-virtual {v0, p1}, Lcom/nirenr/talkman/CameraActivity;->onCallback(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nirenr/talkman/CameraActivity$f;->a:Lcom/nirenr/talkman/CameraActivity;

    invoke-virtual {v0, p1}, Lcom/nirenr/talkman/CameraActivity;->onError(Ljava/lang/String;)V

    return-void
.end method
