.class Lcom/nirenr/talkman/CameraActivity$x$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/CameraActivity$x;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/nirenr/talkman/CameraActivity$x;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/CameraActivity$x;I)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/CameraActivity$x$a;->b:Lcom/nirenr/talkman/CameraActivity$x;

    iput p2, p0, Lcom/nirenr/talkman/CameraActivity$x$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/nirenr/talkman/CameraActivity$x$a;->b:Lcom/nirenr/talkman/CameraActivity$x;

    iget-object v0, v0, Lcom/nirenr/talkman/CameraActivity$x;->b:Lcom/nirenr/talkman/CameraActivity;

    iget v1, p0, Lcom/nirenr/talkman/CameraActivity$x$a;->a:I

    int-to-float v1, v1

    const v2, 0x3dcccccd    # 0.1f

    mul-float v1, v1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nirenr/talkman/CameraActivity;->n(Lcom/nirenr/talkman/CameraActivity;Ljava/lang/String;)V

    return-void
.end method
