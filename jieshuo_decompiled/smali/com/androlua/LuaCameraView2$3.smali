.class Lcom/androlua/LuaCameraView2$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androlua/LuaCameraView2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androlua/LuaCameraView2;


# direct methods
.method constructor <init>(Lcom/androlua/LuaCameraView2;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaCameraView2$3;->this$0:Lcom/androlua/LuaCameraView2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 4

    iget-object v0, p0, Lcom/androlua/LuaCameraView2$3;->this$0:Lcom/androlua/LuaCameraView2;

    invoke-static {v0}, Lcom/androlua/LuaCameraView2;->b(Lcom/androlua/LuaCameraView2;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/androlua/LuaCameraView2$ImageSaver;

    iget-object v2, p0, Lcom/androlua/LuaCameraView2$3;->this$0:Lcom/androlua/LuaCameraView2;

    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object p1

    iget-object v3, p0, Lcom/androlua/LuaCameraView2$3;->this$0:Lcom/androlua/LuaCameraView2;

    invoke-static {v3}, Lcom/androlua/LuaCameraView2;->g(Lcom/androlua/LuaCameraView2;)Ljava/io/File;

    move-result-object v3

    invoke-direct {v1, v2, p1, v3}, Lcom/androlua/LuaCameraView2$ImageSaver;-><init>(Lcom/androlua/LuaCameraView2;Landroid/media/Image;Ljava/io/File;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
