.class public Lcom/androlua/LuaWallpaperService;
.super Landroid/service/wallpaper/WallpaperService;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androlua/LuaWallpaperService$LuaEngine;
    }
.end annotation


# static fields
.field private static mDrawable:Landroid/graphics/drawable/Drawable;

.field private static mLuaDir:Ljava/lang/String;

.field private static sInstance:Lcom/androlua/LuaWallpaperService;


# instance fields
.field private drawThread:Ljava/lang/Runnable;

.field public final mHandler:Landroid/os/Handler;

.field private mHolder:Landroid/view/SurfaceHolder;

.field private mOk:Z

.field private mRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/androlua/LuaWallpaperService;->mRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/androlua/LuaWallpaperService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/androlua/LuaWallpaperService$1;

    invoke-direct {v0, p0}, Lcom/androlua/LuaWallpaperService$1;-><init>(Lcom/androlua/LuaWallpaperService;)V

    iput-object v0, p0, Lcom/androlua/LuaWallpaperService;->drawThread:Ljava/lang/Runnable;

    return-void
.end method

.method static bridge synthetic a(Lcom/androlua/LuaWallpaperService;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/androlua/LuaWallpaperService;->drawThread:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/androlua/LuaWallpaperService;)Landroid/view/SurfaceHolder;
    .locals 0

    iget-object p0, p0, Lcom/androlua/LuaWallpaperService;->mHolder:Landroid/view/SurfaceHolder;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/androlua/LuaWallpaperService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/androlua/LuaWallpaperService;->mOk:Z

    return p0
.end method

.method static bridge synthetic d(Lcom/androlua/LuaWallpaperService;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/androlua/LuaWallpaperService;->mRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic e(Lcom/androlua/LuaWallpaperService;Landroid/view/SurfaceHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaWallpaperService;->mHolder:Landroid/view/SurfaceHolder;

    return-void
.end method

.method static bridge synthetic f(Lcom/androlua/LuaWallpaperService;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/androlua/LuaWallpaperService;->mOk:Z

    return-void
.end method

.method static bridge synthetic g(Lcom/androlua/LuaWallpaperService;Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaWallpaperService;->mRect:Landroid/graphics/Rect;

    return-void
.end method

.method public static getInstance()Lcom/androlua/LuaWallpaperService;
    .locals 1

    sget-object v0, Lcom/androlua/LuaWallpaperService;->sInstance:Lcom/androlua/LuaWallpaperService;

    return-object v0
.end method

.method static bridge synthetic h()Landroid/graphics/drawable/Drawable;
    .locals 1

    sget-object v0, Lcom/androlua/LuaWallpaperService;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static bridge synthetic i(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    sput-object p0, Lcom/androlua/LuaWallpaperService;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public static setEnabled(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.wallpaper.CHANGE_LIVE_WALLPAPER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/androlua/LuaWallpaperService;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "android.service.wallpaper.extra.LIVE_WALLPAPER_COMPONENT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public getHolder()Landroid/view/SurfaceHolder;
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaWallpaperService;->mHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method public onCreateEngine()Landroid/service/wallpaper/WallpaperService$Engine;
    .locals 4

    const-string v0, "wallpaper"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreateEngine: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/androlua/LuaBitmapDrawable;

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/androlua/LuaBitmapDrawable;-><init>(Lcom/androlua/LuaContext;Ljava/lang/String;)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/androlua/LuaBitmapDrawable;->setScaleType(I)V

    iget-object v1, p0, Lcom/androlua/LuaWallpaperService;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    sput-object v0, Lcom/androlua/LuaWallpaperService;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/androlua/LuaWallpaperService;->mOk:Z

    iget-object v0, p0, Lcom/androlua/LuaWallpaperService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/androlua/LuaWallpaperService;->drawThread:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/androlua/LuaWallpaperService;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/androlua/LuaWallpaperService;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :goto_0
    sput-object p0, Lcom/androlua/LuaWallpaperService;->sInstance:Lcom/androlua/LuaWallpaperService;

    new-instance v0, Lcom/androlua/LuaWallpaperService$LuaEngine;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/androlua/LuaWallpaperService$LuaEngine;-><init>(Lcom/androlua/LuaWallpaperService;Lcom/androlua/b0;)V

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "wallpaper"

    const-string v1, "onDestroy: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sput-object v0, Lcom/androlua/LuaWallpaperService;->sInstance:Lcom/androlua/LuaWallpaperService;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/androlua/LuaWallpaperService;->mOk:Z

    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService;->onDestroy()V

    return-void
.end method

.method public setDrawable(Lcom/androlua/LuaBitmapDrawable;)V
    .locals 1

    sput-object p1, Lcom/androlua/LuaWallpaperService;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/androlua/LuaWallpaperService;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method
