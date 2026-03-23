.class Lcom/nirenr/talkman/CameraActivity2$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/CameraActivity2;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/CameraActivity2;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/CameraActivity2;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/CameraActivity2$a;->a:Lcom/nirenr/talkman/CameraActivity2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lcom/nirenr/talkman/CameraActivity2$a;->a:Lcom/nirenr/talkman/CameraActivity2;

    const-string p2, "vr_camera_tip"

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, p2, v0}, Lk2/b0;->k(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
