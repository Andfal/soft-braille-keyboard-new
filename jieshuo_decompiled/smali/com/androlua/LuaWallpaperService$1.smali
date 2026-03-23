.class Lcom/androlua/LuaWallpaperService$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androlua/LuaWallpaperService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androlua/LuaWallpaperService;


# direct methods
.method constructor <init>(Lcom/androlua/LuaWallpaperService;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaWallpaperService$1;->this$0:Lcom/androlua/LuaWallpaperService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/androlua/LuaWallpaperService$1;->this$0:Lcom/androlua/LuaWallpaperService;

    invoke-static {v0}, Lcom/androlua/LuaWallpaperService;->c(Lcom/androlua/LuaWallpaperService;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/androlua/LuaWallpaperService$1;->this$0:Lcom/androlua/LuaWallpaperService;

    invoke-static {v0}, Lcom/androlua/LuaWallpaperService;->b(Lcom/androlua/LuaWallpaperService;)Landroid/view/SurfaceHolder;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/androlua/LuaWallpaperService;->h()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/androlua/LuaWallpaperService$1;->this$0:Lcom/androlua/LuaWallpaperService;

    invoke-static {v0}, Lcom/androlua/LuaWallpaperService;->b(Lcom/androlua/LuaWallpaperService;)Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v1, 0xff

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    invoke-static {}, Lcom/androlua/LuaWallpaperService;->h()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v1, p0, Lcom/androlua/LuaWallpaperService$1;->this$0:Lcom/androlua/LuaWallpaperService;

    invoke-static {v1}, Lcom/androlua/LuaWallpaperService;->b(Lcom/androlua/LuaWallpaperService;)Landroid/view/SurfaceHolder;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/androlua/LuaWallpaperService$1;->this$0:Lcom/androlua/LuaWallpaperService;

    invoke-static {v1}, Lcom/androlua/LuaWallpaperService;->b(Lcom/androlua/LuaWallpaperService;)Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/androlua/LuaWallpaperService$1;->this$0:Lcom/androlua/LuaWallpaperService;

    iget-object v0, v0, Lcom/androlua/LuaWallpaperService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/androlua/LuaWallpaperService$1;->this$0:Lcom/androlua/LuaWallpaperService;

    iget-object v0, v0, Lcom/androlua/LuaWallpaperService;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
