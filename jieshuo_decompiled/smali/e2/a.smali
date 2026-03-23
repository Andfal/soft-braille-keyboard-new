.class public Le2/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le2/a$i;
    }
.end annotation


# static fields
.field private static a:Lcom/nirenr/talkman/TalkManAccessibilityService; = null

.field private static b:Lcom/nirenr/screencapture/ScreenCaptureListener; = null

.field private static c:Landroid/content/Intent; = null

.field private static d:Z = true

.field private static e:Z

.field private static f:Z

.field private static g:J

.field private static h:Landroid/media/ImageReader;

.field private static i:Landroid/media/projection/MediaProjection;

.field private static j:Landroid/hardware/display/VirtualDisplay;

.field private static k:Landroid/media/Image;

.field private static l:Le2/a$i;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sput-wide v0, Le2/a;->g:J

    const/4 v0, 0x0

    sput-object v0, Le2/a;->h:Landroid/media/ImageReader;

    sput-object v0, Le2/a;->i:Landroid/media/projection/MediaProjection;

    sput-object v0, Le2/a;->j:Landroid/hardware/display/VirtualDisplay;

    sput-object v0, Le2/a;->k:Landroid/media/Image;

    new-instance v1, Le2/a$i;

    invoke-direct {v1, v0}, Le2/a$i;-><init>(Le2/e;)V

    sput-object v1, Le2/a;->l:Le2/a$i;

    return-void
.end method

.method static bridge synthetic a()Landroid/content/Intent;
    .locals 1

    sget-object v0, Le2/a;->c:Landroid/content/Intent;

    return-object v0
.end method

.method static bridge synthetic b()Z
    .locals 1

    sget-boolean v0, Le2/a;->f:Z

    return v0
.end method

.method static bridge synthetic c()Lcom/nirenr/screencapture/ScreenCaptureListener;
    .locals 1

    sget-object v0, Le2/a;->b:Lcom/nirenr/screencapture/ScreenCaptureListener;

    return-object v0
.end method

.method static bridge synthetic d()Lcom/nirenr/talkman/TalkManAccessibilityService;
    .locals 1

    sget-object v0, Le2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    return-object v0
.end method

.method static bridge synthetic e(J)V
    .locals 0

    sput-wide p0, Le2/a;->g:J

    return-void
.end method

.method public static f(Lcom/nirenr/talkman/TalkManAccessibilityService;)V
    .locals 4

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget-object v0, Le2/a;->c:Landroid/content/Intent;

    if-nez v0, :cond_3

    :try_start_0
    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androlua/LuaApplication;->inJieshuoActivity()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androlua/LuaApplication;->clearAllActivity()V

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nirenr/screencapture/ScreenCaptureActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/androlua/LuaApplication;->inJieshuoActivity()Z

    move-result v1

    if-eqz v1, :cond_2

    const/high16 v1, 0x50000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/androlua/LuaService;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const/4 v0, 0x1

    sput-boolean v0, Le2/a;->d:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getResultData: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Screenshot"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Le2/a$d;

    invoke-direct {v1}, Le2/a$d;-><init>()V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {p0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Le2/a$e;

    invoke-direct {v1, p0}, Le2/a$e;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    return-void
.end method

.method public static g(Lcom/nirenr/talkman/TalkManAccessibilityService;)Landroid/graphics/Bitmap;
    .locals 20

    move-object/from16 v1, p0

    const-string v2, "getScreenCaptureBitmap: "

    const-string v3, "Screenshot"

    const/4 v4, 0x0

    if-nez v1, :cond_0

    return-object v4

    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setDimmed(Z)V

    const-string v0, "ScreenShot getScreenCaptureBitmap"

    invoke-virtual {v1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isUseForeground()Z

    move-result v6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1d

    const/4 v8, 0x1

    if-lt v0, v7, :cond_1

    invoke-virtual {v1, v8}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseForeground(Z)V

    :cond_1
    :try_start_0
    sget-object v0, Le2/a;->c:Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    if-nez v0, :cond_2

    :try_start_1
    invoke-static/range {p0 .. p0}, Le2/a;->f(Lcom/nirenr/talkman/TalkManAccessibilityService;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1, v6}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseForeground(Z)V

    invoke-virtual {v1, v8}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setDimmed(Z)V

    return-object v4

    :catchall_0
    move-exception v0

    move-object v9, v4

    move-object/from16 v19, v9

    goto/16 :goto_11

    :catch_0
    move-exception v0

    move-object v9, v4

    move-object v10, v9

    move-object v15, v10

    goto/16 :goto_f

    :cond_2
    :try_start_2
    const-string v0, "window"

    invoke-virtual {v1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    new-instance v7, Landroid/util/DisplayMetrics;

    invoke-direct {v7}, Landroid/util/DisplayMetrics;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    if-eqz v0, :cond_3

    :try_start_3
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v7, Landroid/util/DisplayMetrics;->densityDpi:I

    iget v9, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v7, v7, Landroid/util/DisplayMetrics;->heightPixels:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :cond_3
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/androlua/LuaService;->getHeight()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/androlua/LuaService;->getWidth()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/androlua/LuaService;->getDensity()I

    move-result v0

    :goto_0
    move v14, v0

    move v13, v7

    move v12, v9

    const/16 v7, 0x10

    invoke-static {v12, v13, v8, v7}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v9
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    :try_start_5
    new-instance v0, Le2/a$g;

    invoke-direct {v0}, Le2/a$g;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getHandler()Landroid/os/Handler;

    move-result-object v10

    invoke-virtual {v9, v0, v10}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    const-string v0, "ScreenShot mImageReader"

    invoke-virtual {v1, v0, v9}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "media_projection"

    invoke-virtual {v1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/projection/MediaProjectionManager;

    sget-object v10, Le2/a;->c:Landroid/content/Intent;

    const/4 v11, -0x1

    invoke-virtual {v0, v11, v10}, Landroid/media/projection/MediaProjectionManager;->getMediaProjection(ILandroid/content/Intent;)Landroid/media/projection/MediaProjection;

    move-result-object v15
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :try_start_6
    const-string v0, "ScreenShot mMediaProjection"

    invoke-virtual {v1, v0, v15}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v11, "screen-mirror"

    const/4 v0, 0x1

    invoke-virtual {v9}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v16

    new-instance v10, Le2/a$h;

    invoke-direct {v10, v1}, Le2/a$h;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    const/16 v18, 0x0

    move-object/from16 v17, v10

    move-object v10, v15

    move-object/from16 v19, v15

    move v15, v0

    :try_start_7
    invoke-virtual/range {v10 .. v18}, Landroid/media/projection/MediaProjection;->createVirtualDisplay(Ljava/lang/String;IIIILandroid/view/Surface;Landroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v10
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    const-string v0, "ScreenShot createVirtualDisplay"

    invoke-virtual {v1, v0, v10}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v0, v4

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v7, :cond_e

    invoke-virtual {v9}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v7, :cond_5

    const-wide/16 v13, 0x5

    :try_start_9
    invoke-static {v13, v14}, Ljava/lang/Thread;->sleep(J)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v13, v0

    :try_start_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "acquireLatestImage: "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    invoke-virtual {v9}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object v0

    if-eqz v0, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_5
    :goto_4
    move-object v12, v0

    if-eqz v12, :cond_d

    invoke-virtual {v12}, Landroid/media/Image;->getWidth()I

    move-result v0

    invoke-virtual {v12}, Landroid/media/Image;->getHeight()I

    move-result v13

    invoke-virtual {v12}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v14

    aget-object v15, v14, v5

    invoke-virtual {v15}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v15

    aget-object v16, v14, v5

    invoke-virtual/range {v16 .. v16}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v16

    aget-object v14, v14, v5

    invoke-virtual {v14}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v14

    mul-int v17, v16, v0

    sub-int v14, v14, v17

    div-int v14, v14, v16

    add-int/2addr v14, v0

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v14, v13, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v7, v15}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    invoke-static {v7, v5, v5, v0, v13}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v14

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v12}, Landroid/media/Image;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    const/4 v7, 0x0

    const/4 v15, 0x0

    :goto_5
    if-ge v7, v0, :cond_9

    :goto_6
    if-ge v5, v13, :cond_7

    :try_start_b
    invoke-virtual {v14, v7, v5}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v18

    if-eqz v18, :cond_6

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ScreenShot getScreenCaptureBitmap "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v7, v5}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v15, 0x1

    goto :goto_7

    :cond_6
    add-int/lit8 v5, v5, 0x1

    const/4 v4, 0x0

    goto :goto_6

    :cond_7
    :goto_7
    if-eqz v15, :cond_8

    goto :goto_8

    :cond_8
    add-int/lit8 v7, v7, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    goto :goto_5

    :cond_9
    :goto_8
    if-nez v15, :cond_b

    const/16 v0, 0xf

    if-ne v11, v0, :cond_a

    goto :goto_9

    :cond_a
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_a

    :catch_2
    move-exception v0

    :try_start_c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto :goto_a

    :cond_b
    :goto_9
    invoke-virtual {v1, v6}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseForeground(Z)V

    invoke-virtual {v1, v8}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setDimmed(Z)V

    if-eqz v10, :cond_c

    invoke-virtual {v10}, Landroid/hardware/display/VirtualDisplay;->release()V

    :cond_c
    invoke-virtual {v9}, Landroid/media/ImageReader;->close()V

    invoke-virtual/range {v19 .. v19}, Landroid/media/projection/MediaProjection;->stop()V

    return-object v14

    :cond_d
    :goto_a
    add-int/lit8 v11, v11, 0x1

    move-object v0, v12

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v7, 0x10

    goto/16 :goto_1

    :cond_e
    if-nez v0, :cond_10

    invoke-virtual {v1, v6}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseForeground(Z)V

    invoke-virtual {v1, v8}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setDimmed(Z)V

    if-eqz v10, :cond_f

    invoke-virtual {v10}, Landroid/hardware/display/VirtualDisplay;->release()V

    :cond_f
    invoke-virtual {v9}, Landroid/media/ImageReader;->close()V

    invoke-virtual/range {v19 .. v19}, Landroid/media/projection/MediaProjection;->stop()V

    const/4 v4, 0x0

    return-object v4

    :cond_10
    const/4 v4, 0x0

    :try_start_d
    sput-object v4, Le2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    sput-object v4, Le2/a;->b:Lcom/nirenr/screencapture/ScreenCaptureListener;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    invoke-virtual {v1, v6}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseForeground(Z)V

    invoke-virtual {v1, v8}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setDimmed(Z)V

    if-eqz v10, :cond_11

    invoke-virtual {v10}, Landroid/hardware/display/VirtualDisplay;->release()V

    :cond_11
    invoke-virtual {v9}, Landroid/media/ImageReader;->close()V

    invoke-virtual/range {v19 .. v19}, Landroid/media/projection/MediaProjection;->stop()V

    goto :goto_10

    :catchall_1
    move-exception v0

    move-object v4, v10

    goto :goto_11

    :catch_3
    move-exception v0

    move-object/from16 v15, v19

    goto :goto_f

    :catchall_2
    move-exception v0

    goto :goto_b

    :catch_4
    move-exception v0

    move-object/from16 v15, v19

    goto :goto_c

    :catchall_3
    move-exception v0

    move-object/from16 v19, v15

    :goto_b
    const/4 v4, 0x0

    goto :goto_11

    :catch_5
    move-exception v0

    move-object/from16 v19, v15

    :goto_c
    const/4 v10, 0x0

    goto :goto_f

    :catchall_4
    move-exception v0

    const/4 v4, 0x0

    goto :goto_d

    :catch_6
    move-exception v0

    goto :goto_e

    :catchall_5
    move-exception v0

    const/4 v4, 0x0

    const/4 v9, 0x0

    :goto_d
    const/16 v19, 0x0

    goto :goto_11

    :catch_7
    move-exception v0

    const/4 v9, 0x0

    :goto_e
    const/4 v10, 0x0

    const/4 v15, 0x0

    :goto_f
    :try_start_e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Le2/a;->b:Lcom/nirenr/screencapture/ScreenCaptureListener;

    const-string v2, "\u8bf7\u91cd\u8bd5"

    invoke-interface {v0, v2}, Lcom/nirenr/screencapture/ScreenCaptureListener;->onScreenCaptureError(Ljava/lang/String;)V

    const/4 v2, 0x0

    sput-object v2, Le2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    sput-object v2, Le2/a;->b:Lcom/nirenr/screencapture/ScreenCaptureListener;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    invoke-virtual {v1, v6}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseForeground(Z)V

    invoke-virtual {v1, v8}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setDimmed(Z)V

    if-eqz v10, :cond_12

    invoke-virtual {v10}, Landroid/hardware/display/VirtualDisplay;->release()V

    :cond_12
    if-eqz v9, :cond_13

    invoke-virtual {v9}, Landroid/media/ImageReader;->close()V

    :cond_13
    if-eqz v15, :cond_14

    invoke-virtual {v15}, Landroid/media/projection/MediaProjection;->stop()V

    :cond_14
    :goto_10
    const/4 v1, 0x0

    return-object v1

    :catchall_6
    move-exception v0

    move-object v4, v10

    move-object/from16 v19, v15

    :goto_11
    invoke-virtual {v1, v6}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseForeground(Z)V

    invoke-virtual {v1, v8}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setDimmed(Z)V

    if-eqz v4, :cond_15

    invoke-virtual {v4}, Landroid/hardware/display/VirtualDisplay;->release()V

    :cond_15
    if-eqz v9, :cond_16

    invoke-virtual {v9}, Landroid/media/ImageReader;->close()V

    :cond_16
    if-eqz v19, :cond_17

    invoke-virtual/range {v19 .. v19}, Landroid/media/projection/MediaProjection;->stop()V

    :cond_17
    throw v0
.end method

.method public static h(Lcom/nirenr/talkman/TalkManAccessibilityService;Lcom/nirenr/screencapture/ScreenCaptureListener;)V
    .locals 8

    if-nez p0, :cond_0

    const-string p0, "null"

    invoke-interface {p1, p0}, Lcom/nirenr/screencapture/ScreenCaptureListener;->onScreenCaptureError(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isDimmed()Z

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setDimmed(Z)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "takeScreenshot execute "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v4, Le2/a;->g:J

    sub-long v4, v1, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getHandler()Landroid/os/Handler;

    move-result-object v3

    sget-object v4, Le2/a;->l:Le2/a$i;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-wide v3, Le2/a;->g:J

    sub-long v3, v1, v3

    const-wide/16 v5, 0x1f4

    cmp-long v7, v3, v5

    if-gez v7, :cond_1

    invoke-virtual {p0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v3, Le2/a;->l:Le2/a$i;

    invoke-virtual {v3, p0, p1}, Le2/a$i;->a(Lcom/nirenr/talkman/TalkManAccessibilityService;Lcom/nirenr/screencapture/ScreenCaptureListener;)Le2/a$i;

    move-result-object p0

    sget-wide v3, Le2/a;->g:J

    sub-long/2addr v1, v3

    sub-long/2addr v5, v1

    invoke-virtual {v0, p0, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Le2/a;->l:Le2/a$i;

    invoke-virtual {v1, p0, p1}, Le2/a$i;->a(Lcom/nirenr/talkman/TalkManAccessibilityService;Lcom/nirenr/screencapture/ScreenCaptureListener;)Le2/a$i;

    move-result-object p0

    const-wide/16 v1, 0x32

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Le2/a;->l:Le2/a$i;

    invoke-virtual {v1, p0, p1}, Le2/a$i;->a(Lcom/nirenr/talkman/TalkManAccessibilityService;Lcom/nirenr/screencapture/ScreenCaptureListener;)Le2/a$i;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public static i(Lcom/nirenr/talkman/TalkManAccessibilityService;Lcom/nirenr/screencapture/ScreenCaptureListener;)V
    .locals 0

    invoke-static {p0, p1}, Le2/a;->h(Lcom/nirenr/talkman/TalkManAccessibilityService;Lcom/nirenr/screencapture/ScreenCaptureListener;)V

    return-void
.end method

.method public static j(Lcom/nirenr/talkman/TalkManAccessibilityService;Lcom/nirenr/screencapture/ScreenCaptureListener;)V
    .locals 2

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_1

    sget-boolean v0, Le2/a;->d:Z

    if-eqz v0, :cond_1

    new-instance v0, Le2/a$a;

    invoke-direct {v0, p0}, Le2/a$a;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;)V

    new-instance v1, Le2/a$b;

    invoke-direct {v1, p0, p1}, Le2/a$b;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Lcom/nirenr/screencapture/ScreenCaptureListener;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/accessibilityservice/AccessibilityService;->takeScreenshot(ILjava/util/concurrent/Executor;Landroid/accessibilityservice/AccessibilityService$TakeScreenshotCallback;)V

    goto :goto_0

    :cond_1
    sget-object v0, Le2/a;->c:Landroid/content/Intent;

    if-nez v0, :cond_2

    sput-object p1, Le2/a;->b:Lcom/nirenr/screencapture/ScreenCaptureListener;

    sput-object p0, Le2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {p0}, Le2/a;->f(Lcom/nirenr/talkman/TalkManAccessibilityService;)V

    return-void

    :cond_2
    const/4 v0, 0x0

    sput-object v0, Le2/a;->b:Lcom/nirenr/screencapture/ScreenCaptureListener;

    sput-object v0, Le2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    :try_start_0
    invoke-static {p0, p1}, Le2/a;->k(Lcom/nirenr/talkman/TalkManAccessibilityService;Lcom/nirenr/screencapture/ScreenCaptureListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v1, 0x1

    sput-boolean v1, Le2/a;->d:Z

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/nirenr/screencapture/ScreenCaptureListener;->onScreenCaptureError(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setDimmed(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method private static k(Lcom/nirenr/talkman/TalkManAccessibilityService;Lcom/nirenr/screencapture/ScreenCaptureListener;)V
    .locals 16

    move-object/from16 v6, p0

    invoke-virtual/range {p0 .. p0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isUseForeground()Z

    move-result v5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    invoke-virtual {v6, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseForeground(Z)V

    :cond_0
    const-string v0, "media_projection"

    invoke-virtual {v6, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/projection/MediaProjectionManager;

    const/4 v1, -0x1

    sget-object v3, Le2/a;->c:Landroid/content/Intent;

    invoke-virtual {v0, v1, v3}, Landroid/media/projection/MediaProjectionManager;->getMediaProjection(ILandroid/content/Intent;)Landroid/media/projection/MediaProjection;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/androlua/LuaService;->getWidth()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/androlua/LuaService;->getHeight()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/androlua/LuaService;->getDensity()I

    move-result v11

    const/4 v0, 0x2

    invoke-static {v9, v10, v2, v0}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v4

    const-string v8, "screen-mirror"

    const/16 v12, 0x10

    invoke-virtual {v4}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v7, v3

    invoke-virtual/range {v7 .. v15}, Landroid/media/projection/MediaProjection;->createVirtualDisplay(Ljava/lang/String;IIIILandroid/view/Surface;Landroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v2

    new-instance v7, Le2/a$c;

    move-object v0, v7

    move-object/from16 v1, p1

    move-object v8, v4

    move-object/from16 v4, p0

    invoke-direct/range {v0 .. v5}, Le2/a$c;-><init>(Lcom/nirenr/screencapture/ScreenCaptureListener;Landroid/hardware/display/VirtualDisplay;Landroid/media/projection/MediaProjection;Lcom/nirenr/talkman/TalkManAccessibilityService;Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v8, v7, v0}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    return-void
.end method

.method public static l(Z)V
    .locals 3

    sput-boolean p0, Le2/a;->f:Z

    xor-int/lit8 v0, p0, 0x1

    sput-boolean v0, Le2/a;->d:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    sput-boolean v2, Le2/a;->d:Z

    :cond_0
    const/16 v1, 0x1d

    if-nez p0, :cond_5

    if-lt v0, v1, :cond_1

    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p0

    if-eqz p0, :cond_1

    sget-boolean v0, Le2/a;->e:Z

    invoke-virtual {p0, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseForeground(Z)V

    :cond_1
    sget-object p0, Le2/a;->i:Landroid/media/projection/MediaProjection;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/media/projection/MediaProjection;->stop()V

    :cond_2
    sget-object p0, Le2/a;->j:Landroid/hardware/display/VirtualDisplay;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/hardware/display/VirtualDisplay;->release()V

    :cond_3
    sget-object p0, Le2/a;->h:Landroid/media/ImageReader;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroid/media/ImageReader;->close()V

    :cond_4
    const/4 p0, 0x0

    sput-object p0, Le2/a;->j:Landroid/hardware/display/VirtualDisplay;

    sput-object p0, Le2/a;->h:Landroid/media/ImageReader;

    sput-object p0, Le2/a;->i:Landroid/media/projection/MediaProjection;

    goto :goto_0

    :cond_5
    if-lt v0, v1, :cond_6

    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isUseForeground()Z

    move-result v0

    sput-boolean v0, Le2/a;->e:Z

    invoke-virtual {p0, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseForeground(Z)V

    :cond_6
    :goto_0
    return-void
.end method

.method public static m(Landroid/content/Intent;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setResultData:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TalkManAccessibility"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_3

    const/4 p0, 0x1

    sput-boolean p0, Le2/a;->d:Z

    sget-object p0, Le2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    if-eqz p0, :cond_0

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-lt p0, v0, :cond_0

    sget-object p0, Le2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    sget-object v0, Le2/a;->b:Lcom/nirenr/screencapture/ScreenCaptureListener;

    invoke-static {p0, v0}, Le2/a;->h(Lcom/nirenr/talkman/TalkManAccessibilityService;Lcom/nirenr/screencapture/ScreenCaptureListener;)V

    return-void

    :cond_0
    sget-object p0, Le2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v0, "\u672a\u83b7\u5f97\u622a\u56fe\u6743\u9650"

    if-eqz p0, :cond_1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_1
    sget-object p0, Le2/a;->b:Lcom/nirenr/screencapture/ScreenCaptureListener;

    if-eqz p0, :cond_2

    invoke-interface {p0, v0}, Lcom/nirenr/screencapture/ScreenCaptureListener;->onScreenCaptureError(Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    sput-object p0, Le2/a;->c:Landroid/content/Intent;

    sget-object p0, Le2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getHandler()Landroid/os/Handler;

    move-result-object p0

    new-instance v0, Le2/a$f;

    invoke-direct {v0}, Le2/a$f;-><init>()V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    return-void
.end method
