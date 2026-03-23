.class public Lcom/nirenr/talkman/CameraActivity2;
.super Landroid/app/BaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$FaceDetectionListener;
.implements Landroid/hardware/Camera$PreviewCallback;


# instance fields
.field private a:Lcom/androlua/LuaCameraView;

.field private b:I

.field private c:I

.field private d:I

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/TextView;

.field private h:J

.field private i:Lcom/androlua/LuaCameraView2;

.field private j:J

.field private k:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/BaseActivity;-><init>()V

    return-void
.end method

.method private a(Landroid/hardware/Camera$CameraInfo;)V
    .locals 1

    iget p1, p1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    iget v0, p0, Lcom/nirenr/talkman/CameraActivity2;->d:I

    sub-int/2addr p1, v0

    add-int/lit16 p1, p1, 0x168

    rem-int/lit16 p1, p1, 0x168

    add-int/lit16 v0, p1, 0x168

    rem-int/lit16 v0, v0, 0x168

    iput v0, p0, Lcom/nirenr/talkman/CameraActivity2;->b:I

    iput p1, p0, Lcom/nirenr/talkman/CameraActivity2;->c:I

    return-void
.end method

.method private b([BLandroid/hardware/Camera$Size;)Landroid/graphics/Bitmap;
    .locals 7

    new-instance v6, Landroid/graphics/YuvImage;

    const/16 v2, 0x11

    iget v3, p2, Landroid/hardware/Camera$Size;->width:I

    iget v4, p2, Landroid/hardware/Camera$Size;->height:I

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    array-length p1, p1

    invoke-direct {v0, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-instance p1, Landroid/graphics/Rect;

    iget v1, p2, Landroid/hardware/Camera$Size;->width:I

    iget p2, p2, Landroid/hardware/Camera$Size;->height:I

    const/4 v2, 0x0

    invoke-direct {p1, v2, v2, v1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 p2, 0x64

    invoke-virtual {v6, p1, p2, v0}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    array-length p2, p1

    invoke-static {p1, v2, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    iget p2, p0, Lcom/nirenr/talkman/CameraActivity2;->b:I

    invoke-static {p1, p2}, Lcom/nirenr/talkman/CameraActivity2;->c(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    :try_start_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-object p1
.end method

.method public static c(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p1, p1

    invoke-virtual {v5, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private e()V
    .locals 4

    iget v0, p0, Lcom/nirenr/talkman/CameraActivity2;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nirenr/talkman/CameraActivity2;->k:I

    const/4 v1, 0x6

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/nirenr/talkman/CameraActivity2;->k:I

    :cond_0
    iget v0, p0, Lcom/nirenr/talkman/CameraActivity2;->k:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    iget-object v0, p0, Lcom/nirenr/talkman/CameraActivity2;->i:Lcom/androlua/LuaCameraView2;

    if-eqz v0, :cond_2

    const v1, 0x7f070410

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/nirenr/talkman/CameraActivity2;->i:Lcom/androlua/LuaCameraView2;

    if-eqz v0, :cond_2

    const v1, 0x7f070139

    :goto_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3

    :pswitch_2
    iget-object v0, p0, Lcom/nirenr/talkman/CameraActivity2;->i:Lcom/androlua/LuaCameraView2;

    if-eqz v0, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f07096b

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/nirenr/talkman/CameraActivity2;->i:Lcom/androlua/LuaCameraView2;

    invoke-virtual {v2}, Lcom/androlua/LuaCameraView2;->getAe()I

    move-result v2

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/nirenr/talkman/CameraActivity2;->i:Lcom/androlua/LuaCameraView2;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/androlua/LuaCameraView2;->isFlashMode()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f07096e

    goto :goto_0

    :cond_1
    const v1, 0x7f07096d

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/nirenr/talkman/CameraActivity2;->i:Lcom/androlua/LuaCameraView2;

    if-eqz v0, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f07096c

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/nirenr/talkman/CameraActivity2;->i:Lcom/androlua/LuaCameraView2;

    invoke-virtual {v2}, Lcom/androlua/LuaCameraView2;->getZoomDistance()I

    move-result v2

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_5
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/CameraActivity2;->i:Lcom/androlua/LuaCameraView2;

    if-eqz v1, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f07096f

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float v0, v0, v3

    float-to-int v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/androlua/LuaCameraView2;->setStateText(Ljava/lang/String;)V

    goto :goto_4

    :pswitch_6
    iget-object v0, p0, Lcom/nirenr/talkman/CameraActivity2;->i:Lcom/androlua/LuaCameraView2;

    if-eqz v0, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f070970

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/nirenr/talkman/CameraActivity2;->i:Lcom/androlua/LuaCameraView2;

    invoke-virtual {v2}, Lcom/androlua/LuaCameraView2;->getZoom()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-virtual {v0, v1}, Lcom/androlua/LuaCameraView2;->setStateText(Ljava/lang/String;)V

    :cond_2
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private f()V
    .locals 5

    iget v0, p0, Lcom/nirenr/talkman/CameraActivity2;->k:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/nirenr/talkman/CameraActivity2;->i:Lcom/androlua/LuaCameraView2;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/androlua/LuaCameraView2;->previousText()V

    goto/16 :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/nirenr/talkman/CameraActivity2;->i:Lcom/androlua/LuaCameraView2;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/androlua/LuaCameraView2;->nextType()V

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/nirenr/talkman/CameraActivity2;->i:Lcom/androlua/LuaCameraView2;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/androlua/LuaCameraView2;->ae1()V

    return-void

    :pswitch_3
    iget-object v0, p0, Lcom/nirenr/talkman/CameraActivity2;->i:Lcom/androlua/LuaCameraView2;

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/androlua/LuaCameraView2;->setFlashMode(Z)V

    return-void

    :pswitch_4
    iget-object v0, p0, Lcom/nirenr/talkman/CameraActivity2;->i:Lcom/androlua/LuaCameraView2;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/androlua/LuaCameraView2;->zoom2()V

    return-void

    :pswitch_5
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    const/high16 v2, 0x41200000    # 10.0f

    mul-float v1, v1, v2

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v1, v3

    div-float/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_0

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    :cond_0
    iget-object v1, p0, Lcom/nirenr/talkman/CameraActivity2;->i:Lcom/androlua/LuaCameraView2;

    if-eqz v1, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f07096f

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float v3, v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/androlua/LuaCameraView2;->setStateText(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/nirenr/talkman/CameraActivity2;->i:Lcom/androlua/LuaCameraView2;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/androlua/LuaCameraView2;->zoomBig()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/nirenr/talkman/CameraActivity2;->g:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/nirenr/talkman/CameraActivity2;->a:Lcom/androlua/LuaCameraView;

    invoke-virtual {v2}, Lcom/androlua/LuaCameraView;->zoomBig()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private h()V
    .locals 4

    iget v0, p0, Lcom/nirenr/talkman/CameraActivity2;->k:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/nirenr/talkman/CameraActivity2;->k:I

    if-gez v0, :cond_0

    const/4 v0, 0x6

    iput v0, p0, Lcom/nirenr/talkman/CameraActivity2;->k:I

    :cond_0
    iget v0, p0, Lcom/nirenr/talkman/CameraActivity2;->k:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    iget-object v0, p0, Lcom/nirenr/talkman/CameraActivity2;->i:Lcom/androlua/LuaCameraView2;

    if-eqz v0, :cond_2

    const v1, 0x7f070410

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/nirenr/talkman/CameraActivity2;->i:Lcom/androlua/LuaCameraView2;

    if-eqz v0, :cond_2

    const v1, 0x7f070139

    :goto_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3

    :pswitch_2
    iget-object v0, p0, Lcom/nirenr/talkman/CameraActivity2;->i:Lcom/androlua/LuaCameraView2;

    if-eqz v0, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f07096b

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/nirenr/talkman/CameraActivity2;->i:Lcom/androlua/LuaCameraView2;

    invoke-virtual {v2}, Lcom/androlua/LuaCameraView2;->getAe()I

    move-result v2

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/nirenr/talkman/CameraActivity2;->i:Lcom/androlua/LuaCameraView2;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/androlua/LuaCameraView2;->isFlashMode()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f07096e

    goto :goto_0

    :cond_1
    const v1, 0x7f07096d

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/nirenr/talkman/CameraActivity2;->i:Lcom/androlua/LuaCameraView2;

    if-eqz v0, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f07096c

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/nirenr/talkman/CameraActivity2;->i:Lcom/androlua/LuaCameraView2;

    invoke-virtual {v2}, Lcom/androlua/LuaCameraView2;->getZoomDistance()I

    move-result v2

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_5
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/CameraActivity2;->i:Lcom/androlua/LuaCameraView2;

    if-eqz v1, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f07096f

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float v0, v0, v3

    float-to-int v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/androlua/LuaCameraView2;->setStateText(Ljava/lang/String;)V

    goto :goto_4

    :pswitch_6
    iget-object v0, p0, Lcom/nirenr/talkman/CameraActivity2;->i:Lcom/androlua/LuaCameraView2;

    if-eqz v0, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f070970

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/nirenr/talkman/CameraActivity2;->i:Lcom/androlua/LuaCameraView2;

    invoke-virtual {v2}, Lcom/androlua/LuaCameraView2;->getZoom()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-virtual {v0, v1}, Lcom/androlua/LuaCameraView2;->setStateText(Ljava/lang/String;)V

    :cond_2
    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private i()V
    .locals 5

    iget v0, p0, Lcom/nirenr/talkman/CameraActivity2;->k:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/nirenr/talkman/CameraActivity2;->i:Lcom/androlua/LuaCameraView2;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/androlua/LuaCameraView2;->nextText()V

    goto/16 :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/nirenr/talkman/CameraActivity2;->i:Lcom/androlua/LuaCameraView2;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/androlua/LuaCameraView2;->previousType()V

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/nirenr/talkman/CameraActivity2;->i:Lcom/androlua/LuaCameraView2;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/androlua/LuaCameraView2;->ae2()V

    return-void

    :pswitch_3
    iget-object v0, p0, Lcom/nirenr/talkman/CameraActivity2;->i:Lcom/androlua/LuaCameraView2;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/androlua/LuaCameraView2;->setFlashMode(Z)V

    return-void

    :pswitch_4
    iget-object v0, p0, Lcom/nirenr/talkman/CameraActivity2;->i:Lcom/androlua/LuaCameraView2;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/androlua/LuaCameraView2;->zoom1()V

    return-void

    :pswitch_5
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    const/high16 v2, 0x41200000    # 10.0f

    mul-float v1, v1, v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v1, v3

    div-float/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    :cond_0
    iget-object v1, p0, Lcom/nirenr/talkman/CameraActivity2;->i:Lcom/androlua/LuaCameraView2;

    if-eqz v1, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f07096f

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float v3, v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/androlua/LuaCameraView2;->setStateText(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/nirenr/talkman/CameraActivity2;->i:Lcom/androlua/LuaCameraView2;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/androlua/LuaCameraView2;->zoomSmail()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/nirenr/talkman/CameraActivity2;->g:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/nirenr/talkman/CameraActivity2;->a:Lcom/androlua/LuaCameraView;

    invoke-virtual {v2}, Lcom/androlua/LuaCameraView;->zoomSmall()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private j()V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto :goto_1

    :cond_0
    const/16 v0, 0x10e

    goto :goto_0

    :cond_1
    const/16 v0, 0xb4

    goto :goto_0

    :cond_2
    const/16 v0, 0x5a

    :goto_0
    iput v0, p0, Lcom/nirenr/talkman/CameraActivity2;->d:I

    goto :goto_2

    :cond_3
    :goto_1
    iput v1, p0, Lcom/nirenr/talkman/CameraActivity2;->d:I

    :goto_2
    return-void
.end method


# virtual methods
.method public d()V
    .locals 3

    const-string v0, "vr_camera_tip"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lk2/b0;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f070972

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070971

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/nirenr/talkman/CameraActivity2$b;

    invoke-direct {v1, p0}, Lcom/nirenr/talkman/CameraActivity2$b;-><init>(Lcom/nirenr/talkman/CameraActivity2;)V

    const v2, 0x7f07026b

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/nirenr/talkman/CameraActivity2$a;

    invoke-direct {v1, p0}, Lcom/nirenr/talkman/CameraActivity2$a;-><init>(Lcom/nirenr/talkman/CameraActivity2;)V

    const v2, 0x7f070201

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nirenr/talkman/CameraActivity2;->g:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x80

    or-int/lit16 v1, v1, 0x100

    or-int/lit16 v1, v1, 0x200

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_1

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/nirenr/talkman/f;->a(Landroid/view/WindowManager$LayoutParams;I)V

    :cond_1
    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-static {}, Lcom/androlua/LuaCameraView2;->newInstance()Lcom/androlua/LuaCameraView2;

    move-result-object v0

    iput-object v0, p0, Lcom/nirenr/talkman/CameraActivity2;->i:Lcom/androlua/LuaCameraView2;

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x1020002

    iget-object v2, p0, Lcom/nirenr/talkman/CameraActivity2;->i:Lcom/androlua/LuaCameraView2;

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public g(Z)V
    .locals 5

    invoke-direct {p0}, Lcom/nirenr/talkman/CameraActivity2;->j()V

    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-static {v2, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    iget v3, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-eqz p1, :cond_0

    if-nez v3, :cond_1

    invoke-direct {p0, v1}, Lcom/nirenr/talkman/CameraActivity2;->a(Landroid/hardware/Camera$CameraInfo;)V

    return-void

    :cond_0
    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    invoke-direct {p0, v1}, Lcom/nirenr/talkman/CameraActivity2;->a(Landroid/hardware/Camera$CameraInfo;)V

    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f070972

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_0

    const-string p1, "android.permission.CAMERA"

    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/nirenr/talkman/CameraActivity2;->d()V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/nirenr/talkman/CameraActivity2;->g(Z)V

    return-void
.end method

.method public onFaceDetection([Landroid/hardware/Camera$Face;Landroid/hardware/Camera;)V
    .locals 0

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 9

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androlua/LuaApplication;->isAbc()Z

    move-result v0

    const v1, 0x7f07040e

    const-wide/16 v2, 0x7d0

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v0, :cond_3

    if-eq p1, v4, :cond_0

    const p1, 0x7f07037f

    invoke-static {p0, p1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return v5

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-wide v4, p0, Lcom/nirenr/talkman/CameraActivity2;->j:J

    sub-long v4, p1, v4

    cmp-long v0, v4, v2

    if-gez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return v6

    :cond_1
    iget-object v0, p0, Lcom/nirenr/talkman/CameraActivity2;->i:Lcom/androlua/LuaCameraView2;

    if-eqz v0, :cond_2

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/androlua/LuaCameraView2;->setStateText(Ljava/lang/String;)V

    :cond_2
    iput-wide p1, p0, Lcom/nirenr/talkman/CameraActivity2;->j:J

    return v6

    :cond_3
    if-eq p1, v4, :cond_f

    const/16 v0, 0x4f

    if-eq p1, v0, :cond_e

    const/16 v0, 0x60

    if-eq p1, v0, :cond_e

    const/16 v0, 0x64

    if-eq p1, v0, :cond_a

    const/16 v0, 0x5c

    if-eq p1, v0, :cond_8

    const/16 v0, 0x5d

    if-eq p1, v0, :cond_6

    const-string v0, ""

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    :try_start_0
    iget-object v1, p0, Lcom/nirenr/talkman/CameraActivity2;->i:Lcom/androlua/LuaCameraView2;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/androlua/LuaCameraView2;->zoomSmail()V

    return v6

    :cond_4
    iget-object v1, p0, Lcom/nirenr/talkman/CameraActivity2;->g:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/nirenr/talkman/CameraActivity2;->a:Lcom/androlua/LuaCameraView;

    invoke-virtual {v3}, Lcom/androlua/LuaCameraView;->zoomSmall()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return v6

    :pswitch_1
    iget-object v1, p0, Lcom/nirenr/talkman/CameraActivity2;->i:Lcom/androlua/LuaCameraView2;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/androlua/LuaCameraView2;->zoomBig()V

    return v6

    :cond_5
    iget-object v1, p0, Lcom/nirenr/talkman/CameraActivity2;->g:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/nirenr/talkman/CameraActivity2;->a:Lcom/androlua/LuaCameraView;

    invoke-virtual {v3}, Lcom/androlua/LuaCameraView;->zoomBig()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return v6

    :pswitch_2
    invoke-direct {p0}, Lcom/nirenr/talkman/CameraActivity2;->e()V

    return v6

    :pswitch_3
    invoke-direct {p0}, Lcom/nirenr/talkman/CameraActivity2;->h()V

    return v6

    :pswitch_4
    invoke-direct {p0}, Lcom/nirenr/talkman/CameraActivity2;->i()V

    goto :goto_0

    :pswitch_5
    invoke-direct {p0}, Lcom/nirenr/talkman/CameraActivity2;->f()V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/nirenr/talkman/CameraActivity2;->i:Lcom/androlua/LuaCameraView2;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/androlua/LuaCameraView2;->zoom2()V

    return v6

    :cond_7
    return v5

    :cond_8
    iget-object v0, p0, Lcom/nirenr/talkman/CameraActivity2;->i:Lcom/androlua/LuaCameraView2;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/androlua/LuaCameraView2;->zoom1()V

    return v6

    :cond_9
    return v5

    :cond_a
    iget-object v0, p0, Lcom/nirenr/talkman/CameraActivity2;->i:Lcom/androlua/LuaCameraView2;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/androlua/LuaCameraView2;->isFlashMode()Z

    move-result v1

    if-nez v1, :cond_b

    const/4 v5, 0x1

    :cond_b
    invoke-virtual {v0, v5}, Lcom/androlua/LuaCameraView2;->setFlashMode(Z)V

    return v6

    :cond_c
    iget-object v0, p0, Lcom/nirenr/talkman/CameraActivity2;->a:Lcom/androlua/LuaCameraView;

    invoke-virtual {v0}, Lcom/androlua/LuaCameraView;->isFlashMode()Z

    move-result v1

    if-nez v1, :cond_d

    const/4 v5, 0x1

    :cond_d
    invoke-virtual {v0, v5}, Lcom/androlua/LuaCameraView;->setFlashMode(Z)V

    goto :goto_0

    :cond_e
    :pswitch_6
    iget-object v0, p0, Lcom/nirenr/talkman/CameraActivity2;->i:Lcom/androlua/LuaCameraView2;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/androlua/LuaCameraView2;->takePicture()V

    return v6

    :cond_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v7, p0, Lcom/nirenr/talkman/CameraActivity2;->j:J

    sub-long v7, v4, v7

    cmp-long v0, v7, v2

    if-gez v0, :cond_10

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return v6

    :cond_10
    iget-object v0, p0, Lcom/nirenr/talkman/CameraActivity2;->i:Lcom/androlua/LuaCameraView2;

    if-eqz v0, :cond_11

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/androlua/LuaCameraView2;->setStateText(Ljava/lang/String;)V

    :cond_11
    iput-wide v4, p0, Lcom/nirenr/talkman/CameraActivity2;->j:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v6

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_12
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_6
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/BaseActivity;->onPause()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/nirenr/talkman/h;->a:Z

    return-void
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 0

    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p2

    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/nirenr/talkman/CameraActivity2;->b([BLandroid/hardware/Camera$Size;)Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object p2, p0, Lcom/nirenr/talkman/CameraActivity2;->e:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p2, p0, Lcom/nirenr/talkman/CameraActivity2;->f:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/nirenr/talkman/CameraActivity2;->h:J

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    invoke-virtual {p0}, Lcom/nirenr/talkman/CameraActivity2;->d()V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/nirenr/talkman/CameraActivity2;->g(Z)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/BaseActivity;->onResume()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/nirenr/talkman/h;->a:Z

    return-void
.end method

.method protected onStart()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void
.end method
