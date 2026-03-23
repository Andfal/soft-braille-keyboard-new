.class Lcom/androlua/LuaCameraView2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


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

    iput-object p1, p0, Lcom/androlua/LuaCameraView2$1;->this$0:Lcom/androlua/LuaCameraView2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    iget-object p1, p0, Lcom/androlua/LuaCameraView2$1;->this$0:Lcom/androlua/LuaCameraView2;

    invoke-static {p1, p2, p3}, Lcom/androlua/LuaCameraView2;->B(Lcom/androlua/LuaCameraView2;II)V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    iget-object p1, p0, Lcom/androlua/LuaCameraView2$1;->this$0:Lcom/androlua/LuaCameraView2;

    invoke-static {p1, p2, p3}, Lcom/androlua/LuaCameraView2;->y(Lcom/androlua/LuaCameraView2;II)V

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method
