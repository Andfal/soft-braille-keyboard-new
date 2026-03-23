.class Lcom/nirenr/talkman/CameraActivity$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/CameraActivity$a;->onProgressChanged(Landroid/widget/SeekBar;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/nirenr/talkman/CameraActivity$a;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/CameraActivity$a;I)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/CameraActivity$a$a;->b:Lcom/nirenr/talkman/CameraActivity$a;

    iput p2, p0, Lcom/nirenr/talkman/CameraActivity$a$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/nirenr/talkman/CameraActivity$a$a;->b:Lcom/nirenr/talkman/CameraActivity$a;

    iget-object v0, v0, Lcom/nirenr/talkman/CameraActivity$a;->a:Lcom/nirenr/talkman/CameraActivity;

    invoke-static {v0}, Lcom/nirenr/talkman/CameraActivity;->f(Lcom/nirenr/talkman/CameraActivity;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getTTS()Lcom/nirenr/talkman/a;

    move-result-object v0

    iget v1, p0, Lcom/nirenr/talkman/CameraActivity$a$a;->a:I

    int-to-float v1, v1

    const v2, 0x3dcccccd    # 0.1f

    mul-float v1, v1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v0, v2, v1}, Lcom/nirenr/talkman/a;->S(ILjava/lang/String;)V

    return-void
.end method
