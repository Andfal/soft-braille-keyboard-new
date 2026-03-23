.class Lcom/nirenr/talkman/CameraActivity$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/CameraActivity;->onCallback(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic b:Lcom/nirenr/talkman/CameraActivity;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/CameraActivity;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/CameraActivity$j;->b:Lcom/nirenr/talkman/CameraActivity;

    iput-object p2, p0, Lcom/nirenr/talkman/CameraActivity$j;->a:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    new-instance p1, Lcom/nirenr/talkman/dialog/SplitEditDialog;

    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p2

    iget-object v0, p0, Lcom/nirenr/talkman/CameraActivity$j;->a:Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/nirenr/talkman/ai/BaiduAI;->i(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/nirenr/talkman/dialog/SplitEditDialog;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->U()V

    return-void
.end method
