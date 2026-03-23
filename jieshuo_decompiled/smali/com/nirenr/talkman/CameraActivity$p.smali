.class Lcom/nirenr/talkman/CameraActivity$p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/CameraActivity;->C(JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/nirenr/talkman/CameraActivity;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/CameraActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/CameraActivity$p;->b:Lcom/nirenr/talkman/CameraActivity;

    iput-object p2, p0, Lcom/nirenr/talkman/CameraActivity$p;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/nirenr/talkman/CameraActivity$p;->b:Lcom/nirenr/talkman/CameraActivity;

    invoke-static {v0}, Lcom/nirenr/talkman/CameraActivity;->f(Lcom/nirenr/talkman/CameraActivity;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setClearNode(Z)V

    iget-object v0, p0, Lcom/nirenr/talkman/CameraActivity$p;->b:Lcom/nirenr/talkman/CameraActivity;

    iget-object v1, p0, Lcom/nirenr/talkman/CameraActivity$p;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/nirenr/talkman/CameraActivity;->n(Lcom/nirenr/talkman/CameraActivity;Ljava/lang/String;)V

    return-void
.end method
