.class public Lcom/androlua/LuaCameraView;
.super Landroid/view/SurfaceView;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;
.implements Landroid/hardware/Camera$PictureCallback;
.implements Landroid/hardware/Camera$ShutterCallback;
.implements Landroid/hardware/Camera$PreviewCallback;
.implements Landroid/hardware/Camera$FaceDetectionListener;
.implements Ljava/lang/Runnable;


# instance fields
.field private cameraClick:I

.field private holder:Landroid/view/SurfaceHolder;

.field private mCamera:Landroid/hardware/Camera;

.field private mFaceDetectionListener:Landroid/hardware/Camera$FaceDetectionListener;

.field private mHandler:Landroid/os/Handler;

.field private mPictureCallback:Landroid/hardware/Camera$PictureCallback;

.field private mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

.field private final mSoundPool:Landroid/media/SoundPool;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/androlua/LuaCameraView;->holder:Landroid/view/SurfaceHolder;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/androlua/LuaCameraView;->mHandler:Landroid/os/Handler;

    new-instance p1, Landroid/media/SoundPool$Builder;

    invoke-direct {p1}, Landroid/media/SoundPool$Builder;-><init>()V

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object p1

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object p1

    iput-object p1, p0, Lcom/androlua/LuaCameraView;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p0}, Lcom/androlua/LuaCameraView;->loadSound()V

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/androlua/LuaCameraView;->holder:Landroid/view/SurfaceHolder;

    new-instance v0, Lcom/androlua/LuaCameraView$1;

    invoke-direct {v0, p0}, Lcom/androlua/LuaCameraView$1;-><init>(Lcom/androlua/LuaCameraView;)V

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    iget-object p1, p0, Lcom/androlua/LuaCameraView;->holder:Landroid/view/SurfaceHolder;

    invoke-interface {p1, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    return-void
.end method

.method static bridge synthetic a(Lcom/androlua/LuaCameraView;)Landroid/hardware/Camera;
    .locals 0

    iget-object p0, p0, Lcom/androlua/LuaCameraView;->mCamera:Landroid/hardware/Camera;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/androlua/LuaCameraView;Landroid/hardware/Camera;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaCameraView;->mCamera:Landroid/hardware/Camera;

    return-void
.end method


# virtual methods
.method public getZoomMax()I
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaCameraView;->mCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    const/16 v0, 0x64

    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v0

    return v0
.end method

.method public isFlashMode()Z
    .locals 2

    iget-object v0, p0, Lcom/androlua/LuaCameraView;->mCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public loadSound()V
    .locals 4

    iget v0, p0, Lcom/androlua/LuaCameraView;->cameraClick:I

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/androlua/LuaCameraView;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v1, v0}, Landroid/media/SoundPool;->unload(I)Z

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/androlua/LuaCameraView;->cameraClick:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070605

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0708ae

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lk2/b0;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/androlua/LuaCameraView;->loadSound(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/androlua/LuaCameraView;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060007

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/androlua/LuaCameraView;->cameraClick:I

    :goto_0
    return-void
.end method

.method public loadSound(Ljava/lang/String;)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0701fb

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f060007

    const/4 v1, 0x1

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    new-instance v3, Ljava/lang/String;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v5

    const-string v6, "config"

    invoke-virtual {v5, p1, v6}, Lcom/androlua/LuaApplication;->getLuaExtPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/androlua/LuaUtil;->readAll(Ljava/io/InputStream;)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "camera_click"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    const-string v5, "value_default"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v0, "value_none"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v0

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/androlua/LuaApplication;->getLuaExtPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/androlua/LuaCameraView;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0, p1, v1}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/androlua/LuaCameraView;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1, v2, v0, v1}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result p1

    :goto_0
    iput p1, p0, Lcom/androlua/LuaCameraView;->cameraClick:I

    :cond_1
    return-void

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object p1, p0, Lcom/androlua/LuaCameraView;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1, v2, v0, v1}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result p1

    iput p1, p0, Lcom/androlua/LuaCameraView;->cameraClick:I

    return-void
.end method

.method public log_d(Ljava/lang/String;)V
    .locals 1

    const-string v0, "LuaCameraView"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    :try_start_0
    invoke-virtual {p2, p0, p1, p0}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    iget-object p1, p0, Lcom/androlua/LuaCameraView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onFaceDetection([Landroid/hardware/Camera$Face;Landroid/hardware/Camera;)V
    .locals 1

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/androlua/LuaCameraView;->log_d(Ljava/lang/String;)V

    array-length v0, p1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/androlua/LuaCameraView;->mFaceDetectionListener:Landroid/hardware/Camera$FaceDetectionListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Landroid/hardware/Camera$FaceDetectionListener;->onFaceDetection([Landroid/hardware/Camera$Face;Landroid/hardware/Camera;)V

    :cond_0
    return-void
.end method

.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaCameraView;->mPictureCallback:Landroid/hardware/Camera$PictureCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Landroid/hardware/Camera$PictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V

    :cond_0
    iget-object p1, p0, Lcom/androlua/LuaCameraView;->mCamera:Landroid/hardware/Camera;

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/hardware/Camera;->cancelAutoFocus()V

    invoke-virtual {p2}, Landroid/hardware/Camera;->startPreview()V

    return-void
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 6

    array-length v0, p1

    int-to-double v0, v0

    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    iget v2, v2, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v3

    iget v3, v3, Landroid/hardware/Camera$Size;->height:I

    mul-int v2, v2, v3

    int-to-double v2, v2

    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    mul-double v2, v2, v4

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/androlua/LuaCameraView;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Landroid/hardware/Camera$PreviewCallback;->onPreviewFrame([BLandroid/hardware/Camera;)V

    :cond_1
    return-void
.end method

.method public onShutter()V
    .locals 7

    iget-object v0, p0, Lcom/androlua/LuaCameraView;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/androlua/LuaCameraView;->cameraClick:I

    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    return-void
.end method

.method public run()V
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/androlua/LuaCameraView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p0, v0, v1}, Lcom/androlua/LuaCameraView;->onAutoFocus(ZLandroid/hardware/Camera;)V

    return-void
.end method

.method public setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaCameraView;->mFaceDetectionListener:Landroid/hardware/Camera$FaceDetectionListener;

    return-void
.end method

.method public setFlashMode(Z)V
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaCameraView;->mCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    if-eqz p1, :cond_1

    const-string p1, "torch"

    goto :goto_0

    :cond_1
    const-string p1, "off"

    :goto_0
    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/androlua/LuaCameraView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    return-void
.end method

.method public setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaCameraView;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    return-void
.end method

.method public setZoom(I)V
    .locals 2

    iget-object v0, p0, Lcom/androlua/LuaCameraView;->mCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    iget-object p1, p0, Lcom/androlua/LuaCameraView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    return-void
.end method

.method public takePicture(Landroid/hardware/Camera$PictureCallback;)V
    .locals 2

    iput-object p1, p0, Lcom/androlua/LuaCameraView;->mPictureCallback:Landroid/hardware/Camera$PictureCallback;

    :try_start_0
    iget-object p1, p0, Lcom/androlua/LuaCameraView;->mHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x7d0

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p1, p0, Lcom/androlua/LuaCameraView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p1, p0}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x1

    iget-object v0, p0, Lcom/androlua/LuaCameraView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p0, p1, v0}, Lcom/androlua/LuaCameraView;->onAutoFocus(ZLandroid/hardware/Camera;)V

    :goto_0
    return-void
.end method

.method public zoomBig()I
    .locals 3

    iget-object v0, p0, Lcom/androlua/LuaCameraView;->mCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    iget-object v2, p0, Lcom/androlua/LuaCameraView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    return v1
.end method

.method public zoomSmall()I
    .locals 3

    iget-object v0, p0, Lcom/androlua/LuaCameraView;->mCamera:Landroid/hardware/Camera;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v2

    add-int/lit8 v2, v2, -0x5

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    iget-object v2, p0, Lcom/androlua/LuaCameraView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    return v1
.end method
