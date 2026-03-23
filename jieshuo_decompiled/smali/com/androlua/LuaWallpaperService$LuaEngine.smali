.class Lcom/androlua/LuaWallpaperService$LuaEngine;
.super Landroid/service/wallpaper/WallpaperService$Engine;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androlua/LuaWallpaperService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LuaEngine"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androlua/LuaWallpaperService;


# direct methods
.method private constructor <init>(Lcom/androlua/LuaWallpaperService;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaWallpaperService$LuaEngine;->this$0:Lcom/androlua/LuaWallpaperService;

    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;-><init>(Landroid/service/wallpaper/WallpaperService;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/androlua/LuaWallpaperService;Lcom/androlua/b0;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/androlua/LuaWallpaperService$LuaEngine;-><init>(Lcom/androlua/LuaWallpaperService;)V

    return-void
.end method


# virtual methods
.method public onSurfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaWallpaperService$LuaEngine;->this$0:Lcom/androlua/LuaWallpaperService;

    invoke-static {v0, p1}, Lcom/androlua/LuaWallpaperService;->e(Lcom/androlua/LuaWallpaperService;Landroid/view/SurfaceHolder;)V

    invoke-super {p0, p1, p2, p3, p4}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceChanged(Landroid/view/SurfaceHolder;III)V

    invoke-static {}, Lcom/androlua/LuaWallpaperService;->h()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/androlua/LuaWallpaperService;->h()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p2, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_0
    iget-object p1, p0, Lcom/androlua/LuaWallpaperService$LuaEngine;->this$0:Lcom/androlua/LuaWallpaperService;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p2, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {p1, v0}, Lcom/androlua/LuaWallpaperService;->g(Lcom/androlua/LuaWallpaperService;Landroid/graphics/Rect;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSurfaceChanged: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p2, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "wallpaper"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceCreated(Landroid/view/SurfaceHolder;)V

    iget-object v0, p0, Lcom/androlua/LuaWallpaperService$LuaEngine;->this$0:Lcom/androlua/LuaWallpaperService;

    invoke-static {v0, p1}, Lcom/androlua/LuaWallpaperService;->e(Lcom/androlua/LuaWallpaperService;Landroid/view/SurfaceHolder;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSurfaceCreated: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/androlua/LuaWallpaperService$LuaEngine;->this$0:Lcom/androlua/LuaWallpaperService;

    invoke-static {v0}, Lcom/androlua/LuaWallpaperService;->b(Lcom/androlua/LuaWallpaperService;)Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "wallpaper"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSurfaceDestroyed: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/androlua/LuaWallpaperService$LuaEngine;->this$0:Lcom/androlua/LuaWallpaperService;

    invoke-static {v0}, Lcom/androlua/LuaWallpaperService;->b(Lcom/androlua/LuaWallpaperService;)Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "wallpaper"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSurfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    .locals 3

    iget-object v0, p0, Lcom/androlua/LuaWallpaperService$LuaEngine;->this$0:Lcom/androlua/LuaWallpaperService;

    invoke-static {v0, p1}, Lcom/androlua/LuaWallpaperService;->e(Lcom/androlua/LuaWallpaperService;Landroid/view/SurfaceHolder;)V

    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V

    iget-object p1, p0, Lcom/androlua/LuaWallpaperService$LuaEngine;->this$0:Lcom/androlua/LuaWallpaperService;

    const-string v0, "wallpaper"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSurfaceRedrawNeeded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/androlua/LuaBitmapDrawable;

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/androlua/LuaBitmapDrawable;-><init>(Lcom/androlua/LuaContext;Ljava/lang/String;)V

    const/4 p1, 0x3

    invoke-virtual {v0, p1}, Lcom/androlua/LuaBitmapDrawable;->setScaleType(I)V

    iget-object p1, p0, Lcom/androlua/LuaWallpaperService$LuaEngine;->this$0:Lcom/androlua/LuaWallpaperService;

    invoke-static {p1}, Lcom/androlua/LuaWallpaperService;->d(Lcom/androlua/LuaWallpaperService;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-static {v0}, Lcom/androlua/LuaWallpaperService;->i(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/androlua/LuaWallpaperService$LuaEngine;->this$0:Lcom/androlua/LuaWallpaperService;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/androlua/LuaWallpaperService;->f(Lcom/androlua/LuaWallpaperService;Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/androlua/LuaWallpaperService$LuaEngine;->this$0:Lcom/androlua/LuaWallpaperService;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f030002

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p1}, Lcom/androlua/LuaWallpaperService;->i(Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Lcom/androlua/LuaWallpaperService;->h()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v0, p0, Lcom/androlua/LuaWallpaperService$LuaEngine;->this$0:Lcom/androlua/LuaWallpaperService;

    invoke-static {v0}, Lcom/androlua/LuaWallpaperService;->d(Lcom/androlua/LuaWallpaperService;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :goto_0
    iget-object p1, p0, Lcom/androlua/LuaWallpaperService$LuaEngine;->this$0:Lcom/androlua/LuaWallpaperService;

    iget-object v0, p1, Lcom/androlua/LuaWallpaperService;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Lcom/androlua/LuaWallpaperService;->a(Lcom/androlua/LuaWallpaperService;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onVisibilityChanged(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVisibilityChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "wallpaper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/androlua/LuaWallpaperService$LuaEngine;->this$0:Lcom/androlua/LuaWallpaperService;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/androlua/LuaWallpaperService;->f(Lcom/androlua/LuaWallpaperService;Z)V

    iget-object p1, p0, Lcom/androlua/LuaWallpaperService$LuaEngine;->this$0:Lcom/androlua/LuaWallpaperService;

    iget-object v0, p1, Lcom/androlua/LuaWallpaperService;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Lcom/androlua/LuaWallpaperService;->a(Lcom/androlua/LuaWallpaperService;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/androlua/LuaWallpaperService$LuaEngine;->this$0:Lcom/androlua/LuaWallpaperService;

    iget-object v0, p1, Lcom/androlua/LuaWallpaperService;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Lcom/androlua/LuaWallpaperService;->a(Lcom/androlua/LuaWallpaperService;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
