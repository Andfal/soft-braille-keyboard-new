.class Lcom/nirenr/talkman/CameraActivity$w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/CameraActivity;->w()V
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

    iput-object p1, p0, Lcom/nirenr/talkman/CameraActivity$w;->a:Lcom/nirenr/talkman/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    iget-object p1, p0, Lcom/nirenr/talkman/CameraActivity$w;->a:Lcom/nirenr/talkman/CameraActivity;

    invoke-static {p1}, Lcom/nirenr/talkman/CameraActivity;->b(Lcom/nirenr/talkman/CameraActivity;)Lcom/androlua/LuaCameraView;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/androlua/LuaCameraView;->setFlashMode(Z)V

    return-void
.end method
