.class Lcom/androlua/LuaCameraView2$ImageSaver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androlua/LuaCameraView2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageSaver"
.end annotation


# instance fields
.field private final mFile:Ljava/io/File;

.field private final mImage:Landroid/media/Image;

.field final synthetic this$0:Lcom/androlua/LuaCameraView2;


# direct methods
.method constructor <init>(Lcom/androlua/LuaCameraView2;Landroid/media/Image;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaCameraView2$ImageSaver;->this$0:Lcom/androlua/LuaCameraView2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/androlua/LuaCameraView2$ImageSaver;->mImage:Landroid/media/Image;

    iput-object p3, p0, Lcom/androlua/LuaCameraView2$ImageSaver;->mFile:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/androlua/LuaCameraView2$ImageSaver;->mImage:Landroid/media/Image;

    invoke-virtual {v0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/androlua/LuaCameraView2$ImageSaver;->mImage:Landroid/media/Image;

    invoke-virtual {v0}, Landroid/media/Image;->close()V

    iget-object v0, p0, Lcom/androlua/LuaCameraView2$ImageSaver;->this$0:Lcom/androlua/LuaCameraView2;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v2, Lcom/androlua/LuaCameraView2$ImageSaver$1;

    invoke-direct {v2, p0, v1}, Lcom/androlua/LuaCameraView2$ImageSaver$1;-><init>(Lcom/androlua/LuaCameraView2$ImageSaver;[B)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
