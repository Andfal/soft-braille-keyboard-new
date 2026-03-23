.class public Lcom/nirenr/talkman/CameraActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/hardware/Camera$PictureCallback;
.implements Lcom/nirenr/talkman/ai/OcrResult$OCRListener;
.implements Landroid/hardware/SensorEventListener;
.implements Landroid/hardware/Camera$FaceDetectionListener;
.implements Landroid/content/DialogInterface$OnKeyListener;
.implements Lcom/nirenr/talkman/ai/BaiduAI$AipTaskCallback;
.implements Landroid/hardware/Camera$PreviewCallback;


# static fields
.field private static final K:Ljava/lang/String;


# instance fields
.field private A:F

.field private B:F

.field private C:F

.field private D:I

.field private E:I

.field private F:Ljava/lang/String;

.field private G:Ljava/lang/Runnable;

.field private H:Ljava/lang/Runnable;

.field private I:Ljava/lang/String;

.field private final J:Landroid/os/Handler;

.field private a:Lcom/androlua/LuaCameraView;

.field private b:Landroid/hardware/SensorManager;

.field private c:Landroid/hardware/Sensor;

.field private d:Lcom/nirenr/talkman/TalkManAccessibilityService;

.field private e:I

.field private f:Z

.field private g:Z

.field private h:I

.field private i:Z

.field private j:I

.field private k:Ljava/lang/String;

.field private l:I

.field private m:I

.field private n:Z

.field private o:Z

.field private p:Landroid/media/SoundPool;

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:Landroid/widget/CheckBox;

.field private w:I

.field private x:I

.field private y:I

.field private z:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/String;

    const/16 v1, 0xa

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lcom/nirenr/talkman/CameraActivity;->K:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 2
        0x5fs
        0x59s
        0x6fs
        0x75s
        0x54s
        0x75s
        0x5fs
        0x4bs
        0x65s
        0x79s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x5

    iput v0, p0, Lcom/nirenr/talkman/CameraActivity;->l:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/nirenr/talkman/CameraActivity;->m:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/nirenr/talkman/CameraActivity;->J:Landroid/os/Handler;

    return-void
.end method

.method private B(I)V
    .locals 8

    iget-object v0, p0, Lcom/nirenr/talkman/CameraActivity;->p:Landroid/media/SoundPool;

    sget v1, Lcom/nirenr/talkman/TalkManAccessibilityService;->soundVolume:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, v1, v2

    div-float v4, v1, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    move v1, p1

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    return-void
.end method

.method private C(JLjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/nirenr/talkman/CameraActivity;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setClearNode(Z)V

    iget-object v0, p0, Lcom/nirenr/talkman/CameraActivity;->J:Landroid/os/Handler;

    new-instance v1, Lcom/nirenr/talkman/CameraActivity$p;

    invoke-direct {v1, p0, p3}, Lcom/nirenr/talkman/CameraActivity$p;-><init>(Lcom/nirenr/talkman/CameraActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private D()V
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
    iput v0, p0, Lcom/nirenr/talkman/CameraActivity;->w:I

    goto :goto_2

    :cond_3
    :goto_1
    iput v1, p0, Lcom/nirenr/talkman/CameraActivity;->w:I

    :goto_2
    return-void
.end method

.method private F(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/nirenr/talkman/CameraActivity;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getTTS()Lcom/nirenr/talkman/a;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/a;->t(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nirenr/talkman/CameraActivity;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/nirenr/talkman/CameraActivity;->k:Ljava/lang/String;

    iget-object v0, p0, Lcom/nirenr/talkman/CameraActivity;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getTTS()Lcom/nirenr/talkman/a;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Lcom/nirenr/talkman/a;->S(ILjava/lang/String;)V

    return-void
.end method

.method private G()V
    .locals 2

    iget-object v0, p0, Lcom/nirenr/talkman/CameraActivity;->v:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iput-boolean v1, p0, Lcom/nirenr/talkman/CameraActivity;->o:Z

    iget-object v0, p0, Lcom/nirenr/talkman/CameraActivity;->a:Lcom/androlua/LuaCameraView;

    invoke-virtual {v0, p0}, Lcom/androlua/LuaCameraView;->takePicture(Landroid/hardware/Camera$PictureCallback;)V

    return-void
.end method

.method private H()V
    .locals 3

    invoke-direct {p0}, Lcom/nirenr/talkman/CameraActivity;->q()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const v1, 0x7f070520

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const v1, 0x7f0702d4

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nirenr/talkman/CameraActivity;->F(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/CameraActivity;->v:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/nirenr/talkman/CameraActivity;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->vibrate(Z)V

    const/16 v0, 0x14

    iput v0, p0, Lcom/nirenr/talkman/CameraActivity;->j:I

    iget-object v0, p0, Lcom/nirenr/talkman/CameraActivity;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-instance v1, Lcom/nirenr/talkman/CameraActivity$c;

    invoke-direct {v1, p0}, Lcom/nirenr/talkman/CameraActivity$c;-><init>(Lcom/nirenr/talkman/CameraActivity;)V

    const v2, 0x1e240

    invoke-virtual {v0, v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setSpeechRecognitionListener(Lcom/nirenr/talkman/SpeechRecognitionListener;I)V

    iget-object v0, p0, Lcom/nirenr/talkman/CameraActivity;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->startListening()V

    return-void
.end method

.method static bridge synthetic a(Lcom/nirenr/talkman/CameraActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/nirenr/talkman/CameraActivity;->n:Z

    return p0
.end method

.method static bridge synthetic b(Lcom/nirenr/talkman/CameraActivity;)Lcom/androlua/LuaCameraView;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/CameraActivity;->a:Lcom/androlua/LuaCameraView;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/nirenr/talkman/CameraActivity;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/CameraActivity;->G:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic d(Lcom/nirenr/talkman/CameraActivity;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/CameraActivity;->J:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic e(Lcom/nirenr/talkman/CameraActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/CameraActivity;->I:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic f(Lcom/nirenr/talkman/CameraActivity;)Lcom/nirenr/talkman/TalkManAccessibilityService;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/CameraActivity;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    return-object p0
.end method

.method static bridge synthetic g(Lcom/nirenr/talkman/CameraActivity;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/CameraActivity;->H:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic h(Lcom/nirenr/talkman/CameraActivity;I)V
    .locals 0

    iput p1, p0, Lcom/nirenr/talkman/CameraActivity;->j:I

    return-void
.end method

.method static bridge synthetic i(Lcom/nirenr/talkman/CameraActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/CameraActivity;->I:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic j(Lcom/nirenr/talkman/CameraActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/CameraActivity;->F:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic k(Lcom/nirenr/talkman/CameraActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nirenr/talkman/CameraActivity;->o:Z

    return-void
.end method

.method static bridge synthetic l(Lcom/nirenr/talkman/CameraActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/nirenr/talkman/CameraActivity;->v()V

    return-void
.end method

.method static bridge synthetic m(Lcom/nirenr/talkman/CameraActivity;JLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/nirenr/talkman/CameraActivity;->C(JLjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic n(Lcom/nirenr/talkman/CameraActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nirenr/talkman/CameraActivity;->F(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic o(Lcom/nirenr/talkman/CameraActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/nirenr/talkman/CameraActivity;->G()V

    return-void
.end method

.method static bridge synthetic p(Lcom/nirenr/talkman/CameraActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/nirenr/talkman/CameraActivity;->H()V

    return-void
.end method

.method private q()Z
    .locals 3

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androlua/LuaApplication;->isAbc()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {v0}, Lcom/androlua/LuaApplication;->getGlobalData()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/nirenr/talkman/CameraActivity;->K:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private r(Landroid/hardware/Camera$CameraInfo;)V
    .locals 1

    iget p1, p1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    iget v0, p0, Lcom/nirenr/talkman/CameraActivity;->w:I

    sub-int/2addr p1, v0

    add-int/lit16 p1, p1, 0x168

    rem-int/lit16 p1, p1, 0x168

    add-int/lit16 v0, p1, 0x168

    rem-int/lit16 v0, v0, 0x168

    iput v0, p0, Lcom/nirenr/talkman/CameraActivity;->y:I

    iput p1, p0, Lcom/nirenr/talkman/CameraActivity;->x:I

    return-void
.end method

.method private s(FFF)Z
    .locals 5

    iget v0, p0, Lcom/nirenr/talkman/CameraActivity;->A:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3fc999999999999aL    # 0.2

    cmpl-double v4, v0, v2

    if-gtz v4, :cond_1

    iget v0, p0, Lcom/nirenr/talkman/CameraActivity;->B:F

    sub-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    cmpl-double v4, v0, v2

    if-gtz v4, :cond_1

    iget v0, p0, Lcom/nirenr/talkman/CameraActivity;->C:F

    sub-float/2addr v0, p3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    iput p1, p0, Lcom/nirenr/talkman/CameraActivity;->A:F

    iput p2, p0, Lcom/nirenr/talkman/CameraActivity;->B:F

    iput p3, p0, Lcom/nirenr/talkman/CameraActivity;->C:F

    const/4 p1, 0x0

    return p1
.end method

.method private t([BLandroid/hardware/Camera$Size;)Landroid/graphics/Bitmap;
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

    const/16 p2, 0x50

    invoke-virtual {v6, p1, p2, v0}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    array-length p2, p1

    invoke-static {p1, v2, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    iget p2, p0, Lcom/nirenr/talkman/CameraActivity;->y:I

    invoke-static {p1, p2}, Lcom/nirenr/talkman/CameraActivity;->u(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

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

.method public static u(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
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

.method private v()V
    .locals 3

    invoke-direct {p0}, Lcom/nirenr/talkman/CameraActivity;->q()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const v1, 0x7f07027c

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const v1, 0x7f0702d4

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nirenr/talkman/CameraActivity;->F(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/CameraActivity;->v:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/nirenr/talkman/CameraActivity;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->vibrate(Z)V

    iget-object v0, p0, Lcom/nirenr/talkman/CameraActivity;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-instance v1, Lcom/nirenr/talkman/CameraActivity$b;

    invoke-direct {v1, p0}, Lcom/nirenr/talkman/CameraActivity$b;-><init>(Lcom/nirenr/talkman/CameraActivity;)V

    const v2, 0x1e240

    invoke-virtual {v0, v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setSpeechRecognitionListener(Lcom/nirenr/talkman/SpeechRecognitionListener;I)V

    iget-object v0, p0, Lcom/nirenr/talkman/CameraActivity;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->startListening()V

    return-void
.end method


# virtual methods
.method public A(Z)V
    .locals 5

    invoke-direct {p0}, Lcom/nirenr/talkman/CameraActivity;->D()V

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

    invoke-direct {p0, v1}, Lcom/nirenr/talkman/CameraActivity;->r(Landroid/hardware/Camera$CameraInfo;)V

    return-void

    :cond_0
    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    invoke-direct {p0, v1}, Lcom/nirenr/talkman/CameraActivity;->r(Landroid/hardware/Camera$CameraInfo;)V

    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public E()V
    .locals 6

    iget v0, p0, Lcom/nirenr/talkman/CameraActivity;->j:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/nirenr/talkman/CameraActivity;->j:I

    iget v2, p0, Lcom/nirenr/talkman/CameraActivity;->l:I

    iget v3, p0, Lcom/nirenr/talkman/CameraActivity;->m:I

    add-int/2addr v2, v3

    add-int/2addr v2, v1

    rem-int/2addr v0, v2

    iput v0, p0, Lcom/nirenr/talkman/CameraActivity;->j:I

    const/4 v2, 0x0

    const v3, 0x7f0702d4

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    invoke-direct {p0}, Lcom/nirenr/talkman/CameraActivity;->q()Z

    move-result v0

    const-string v4, "\u53e3\u7b97\u8bc6\u522b"

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    aput-object v4, v0, v2

    invoke-virtual {p0, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_0
    invoke-direct {p0, v4}, Lcom/nirenr/talkman/CameraActivity;->F(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_1
    invoke-direct {p0}, Lcom/nirenr/talkman/CameraActivity;->q()Z

    move-result v0

    const v4, 0x7f07007e

    if-nez v0, :cond_2

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/nirenr/talkman/CameraActivity;->q()Z

    move-result v0

    const v4, 0x7f070083

    if-nez v0, :cond_2

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/nirenr/talkman/CameraActivity;->q()Z

    move-result v0

    const v4, 0x7f07008b

    if-nez v0, :cond_2

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_4
    invoke-direct {p0}, Lcom/nirenr/talkman/CameraActivity;->q()Z

    move-result v0

    const v4, 0x7f07007c

    if-nez v0, :cond_2

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_5
    invoke-direct {p0}, Lcom/nirenr/talkman/CameraActivity;->q()Z

    move-result v0

    const/4 v4, 0x6

    const v5, 0x7f010001

    if-nez v0, :cond_1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v4

    aput-object v1, v0, v2

    invoke-virtual {p0, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v4

    goto :goto_0

    :pswitch_6
    invoke-direct {p0}, Lcom/nirenr/talkman/CameraActivity;->q()Z

    move-result v0

    const v4, 0x7f07007f

    if-nez v0, :cond_2

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_7
    invoke-direct {p0}, Lcom/nirenr/talkman/CameraActivity;->q()Z

    move-result v0

    const v4, 0x7f07008a

    if-nez v0, :cond_2

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_8
    invoke-direct {p0}, Lcom/nirenr/talkman/CameraActivity;->q()Z

    move-result v0

    const v4, 0x7f070090

    if-nez v0, :cond_2

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_9
    const v0, 0x7f070080

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Lcom/nirenr/talkman/CameraActivity;->F(Ljava/lang/String;)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onCallback(Lorg/json/JSONObject;)V
    .locals 11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nirenr/talkman/CameraActivity;->z:J

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaiduAI"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/nirenr/talkman/ai/BaiduAI;->g(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v0

    iget-boolean v1, p0, Lcom/nirenr/talkman/CameraActivity;->o:Z

    const-string v2, "en"

    const v3, 0x7f070697

    const-string v4, "zh"

    const-string v5, "Reais"

    const-string v6, "\u5df4\u897f\u96f7\u4e9a\u5c14"

    const/4 v7, 0x2

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/nirenr/talkman/CameraActivity;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v8, Lcom/nirenr/talkman/CameraActivity$g;

    invoke-direct {v8, p0}, Lcom/nirenr/talkman/CameraActivity$g;-><init>(Lcom/nirenr/talkman/CameraActivity;)V

    const-wide/16 v9, 0x7d0

    invoke-virtual {v1, v8, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p1, p0, Lcom/nirenr/talkman/CameraActivity;->r:I

    invoke-direct {p0, p1}, Lcom/nirenr/talkman/CameraActivity;->B(I)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/nirenr/talkman/CameraActivity;->t:I

    invoke-direct {p0, v0}, Lcom/nirenr/talkman/CameraActivity;->B(I)V

    iget-boolean v0, p0, Lcom/nirenr/talkman/CameraActivity;->n:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/nirenr/talkman/CameraActivity;->j:I

    if-eq v0, v7, :cond_1

    invoke-static {p1}, Lcom/nirenr/talkman/ai/BaiduAI;->i(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v6, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Lk2/b0;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/nirenr/talkman/CameraActivity$h;

    invoke-direct {v1, p0}, Lcom/nirenr/talkman/CameraActivity$h;-><init>(Lcom/nirenr/talkman/CameraActivity;)V

    invoke-static {p1, v4, v0, v1}, Lcom/nirenr/talkman/util/d;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/translate/TransApi$OnResultListener;)V

    return-void

    :cond_1
    invoke-static {p1}, Lcom/nirenr/talkman/ai/BaiduAI;->i(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/nirenr/talkman/CameraActivity;->F(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    const p1, 0x7f070390

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/nirenr/talkman/CameraActivity;->F(Ljava/lang/String;)V

    return-void

    :cond_3
    iget-boolean v1, p0, Lcom/nirenr/talkman/CameraActivity;->n:Z

    if-nez v1, :cond_4

    iget v1, p0, Lcom/nirenr/talkman/CameraActivity;->j:I

    if-eq v1, v7, :cond_4

    invoke-static {p1}, Lcom/nirenr/talkman/ai/BaiduAI;->i(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v6, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Lk2/b0;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/nirenr/talkman/CameraActivity$i;

    invoke-direct {v1, p0}, Lcom/nirenr/talkman/CameraActivity$i;-><init>(Lcom/nirenr/talkman/CameraActivity;)V

    invoke-static {p1, v4, v0, v1}, Lcom/nirenr/talkman/util/d;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/translate/TransApi$OnResultListener;)V

    return-void

    :cond_4
    new-instance v1, Lcom/androlua/LuaDialog;

    invoke-direct {v1, p0}, Lcom/androlua/LuaDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/androlua/LuaDialog;->setItems(Ljava/util/List;)V

    const v0, 0x7f070248

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/nirenr/talkman/CameraActivity$j;

    invoke-direct {v2, p0, p1}, Lcom/nirenr/talkman/CameraActivity$j;-><init>(Lcom/nirenr/talkman/CameraActivity;Lorg/json/JSONObject;)V

    invoke-virtual {v1, v0, v2}, Lcom/androlua/LuaDialog;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v1}, Lcom/androlua/LuaDialog;->show()V

    invoke-virtual {v1, p0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    const-wide/16 v0, 0x3e8

    invoke-static {p1}, Lcom/nirenr/talkman/ai/BaiduAI;->i(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/nirenr/talkman/CameraActivity;->C(JLjava/lang/String;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/nirenr/talkman/CameraActivity;->G()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f070091

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    const-string p1, "sensor"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/nirenr/talkman/CameraActivity;->b:Landroid/hardware/SensorManager;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/nirenr/talkman/CameraActivity;->c:Landroid/hardware/Sensor;

    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    iput-object p1, p0, Lcom/nirenr/talkman/CameraActivity;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const p1, 0x7f0703df

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt p1, v2, :cond_1

    const-string p1, "android.permission.CAMERA"

    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/nirenr/talkman/CameraActivity;->w()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "zh"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iput-boolean v0, p0, Lcom/nirenr/talkman/CameraActivity;->n:Z

    :cond_2
    invoke-virtual {p0, v0}, Lcom/nirenr/talkman/CameraActivity;->A(Z)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onDone(Lcom/nirenr/talkman/ai/OcrResult;)V
    .locals 11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nirenr/talkman/CameraActivity;->z:J

    invoke-virtual {p1}, Lcom/nirenr/talkman/ai/OcrResult;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaiduAI"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/nirenr/talkman/ai/OcrResult;->getStringList()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/nirenr/talkman/CameraActivity;->o:Z

    const-string v2, "en"

    const v3, 0x7f070697

    const-string v4, "zh"

    const/16 v5, 0xb

    const/16 v6, 0x9

    const/4 v7, 0x2

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/nirenr/talkman/CameraActivity;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v8, Lcom/nirenr/talkman/CameraActivity$k;

    invoke-direct {v8, p0}, Lcom/nirenr/talkman/CameraActivity$k;-><init>(Lcom/nirenr/talkman/CameraActivity;)V

    const-wide/16 v9, 0x7d0

    invoke-virtual {v1, v8, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    if-eqz v0, :cond_2

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/nirenr/talkman/CameraActivity;->t:I

    invoke-direct {p0, v0}, Lcom/nirenr/talkman/CameraActivity;->B(I)V

    iget-boolean v0, p0, Lcom/nirenr/talkman/CameraActivity;->n:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/nirenr/talkman/ai/OcrResult;->getType()I

    move-result v0

    if-eq v0, v7, :cond_1

    invoke-virtual {p1}, Lcom/nirenr/talkman/ai/OcrResult;->getType()I

    move-result v0

    if-eq v0, v6, :cond_1

    invoke-virtual {p1}, Lcom/nirenr/talkman/ai/OcrResult;->getType()I

    move-result v0

    if-eq v0, v5, :cond_1

    invoke-virtual {p1}, Lcom/nirenr/talkman/ai/OcrResult;->getString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Lk2/b0;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/nirenr/talkman/CameraActivity$l;

    invoke-direct {v1, p0}, Lcom/nirenr/talkman/CameraActivity$l;-><init>(Lcom/nirenr/talkman/CameraActivity;)V

    invoke-static {p1, v4, v0, v1}, Lcom/nirenr/talkman/util/d;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/translate/TransApi$OnResultListener;)V

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/nirenr/talkman/ai/OcrResult;->getString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/nirenr/talkman/CameraActivity;->F(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    :goto_0
    iget p1, p0, Lcom/nirenr/talkman/CameraActivity;->r:I

    invoke-direct {p0, p1}, Lcom/nirenr/talkman/CameraActivity;->B(I)V

    :goto_1
    return-void

    :cond_3
    const-string v1, "BaiduAI 2"

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_8

    array-length v1, v0

    if-nez v1, :cond_4

    goto/16 :goto_3

    :cond_4
    const-string v1, "BaiduAI 3"

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/nirenr/talkman/CameraActivity;->n:Z

    if-nez v1, :cond_5

    invoke-virtual {p1}, Lcom/nirenr/talkman/ai/OcrResult;->getType()I

    move-result v1

    if-eq v1, v7, :cond_5

    invoke-virtual {p1}, Lcom/nirenr/talkman/ai/OcrResult;->getType()I

    move-result v1

    if-eq v1, v6, :cond_5

    invoke-virtual {p1}, Lcom/nirenr/talkman/ai/OcrResult;->getType()I

    move-result v1

    if-eq v1, v5, :cond_5

    invoke-virtual {p1}, Lcom/nirenr/talkman/ai/OcrResult;->getString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Lk2/b0;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/nirenr/talkman/CameraActivity$m;

    invoke-direct {v1, p0}, Lcom/nirenr/talkman/CameraActivity$m;-><init>(Lcom/nirenr/talkman/CameraActivity;)V

    invoke-static {p1, v4, v0, v1}, Lcom/nirenr/talkman/util/d;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/translate/TransApi$OnResultListener;)V

    return-void

    :cond_5
    const-string v1, "BaiduAI 4"

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/nirenr/talkman/ai/OcrResult;->getType()I

    move-result v1

    const-wide/16 v2, 0x3e8

    if-ne v1, v7, :cond_7

    new-instance v0, Lcom/nirenr/talkman/dialog/VirtualScreen;

    invoke-direct {v0, p0}, Lcom/nirenr/talkman/dialog/VirtualScreen;-><init>(Lcom/nirenr/talkman/CameraActivity;)V

    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/androlua/LuaService;->getWidth()I

    move-result v1

    iget v4, p0, Lcom/nirenr/talkman/CameraActivity;->D:I

    int-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float v4, v4, v5

    int-to-float v1, v1

    div-float/2addr v4, v1

    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/androlua/LuaService;->getHeight()I

    move-result v1

    iget v6, p0, Lcom/nirenr/talkman/CameraActivity;->E:I

    int-to-float v6, v6

    mul-float v6, v6, v5

    int-to-float v1, v1

    div-float/2addr v6, v1

    invoke-virtual {p1}, Lcom/nirenr/talkman/ai/OcrResult;->getItems()[Lcom/nirenr/talkman/ai/OcrResult$OcrItem;

    move-result-object v1

    array-length v7, v1

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v7, :cond_6

    aget-object v9, v1, v8

    iget v10, v9, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->x:I

    int-to-float v10, v10

    mul-float v10, v10, v5

    div-float/2addr v10, v4

    float-to-int v10, v10

    iput v10, v9, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->x:I

    iget v10, v9, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->y:I

    int-to-float v10, v10

    mul-float v10, v10, v5

    div-float/2addr v10, v6

    float-to-int v10, v10

    iput v10, v9, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->y:I

    iget v10, v9, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->width:I

    int-to-float v10, v10

    mul-float v10, v10, v5

    div-float/2addr v10, v4

    float-to-int v10, v10

    iput v10, v9, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->width:I

    iget v10, v9, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->height:I

    int-to-float v10, v10

    mul-float v10, v10, v5

    div-float/2addr v10, v6

    float-to-int v10, v10

    iput v10, v9, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->height:I

    iget v10, v9, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->size:I

    int-to-float v10, v10

    mul-float v10, v10, v5

    div-float/2addr v10, v4

    float-to-int v10, v10

    iput v10, v9, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->size:I

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/dialog/VirtualScreen;->r([Lcom/nirenr/talkman/ai/OcrResult$OcrItem;)Lcom/nirenr/talkman/dialog/VirtualScreen;

    invoke-virtual {v0}, Lcom/nirenr/talkman/dialog/VirtualScreen;->s()V

    invoke-virtual {p1}, Lcom/nirenr/talkman/ai/OcrResult;->getString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, v3, p1}, Lcom/nirenr/talkman/CameraActivity;->C(JLjava/lang/String;)V

    return-void

    :cond_7
    const-string v1, "BaiduAI 5"

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/nirenr/talkman/ai/OcrResult;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v3, v1}, Lcom/nirenr/talkman/CameraActivity;->C(JLjava/lang/String;)V

    const-string v1, "BaiduAI 1"

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/androlua/LuaDialog;

    invoke-direct {v1, p0}, Lcom/androlua/LuaDialog;-><init>(Landroid/content/Context;)V

    const-string v2, "BaiduAI 6"

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v0}, Lcom/androlua/LuaDialog;->setItems([Ljava/lang/String;)V

    const-string v2, "BaiduAI 7"

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v2, 0x7f070248

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/nirenr/talkman/CameraActivity$n;

    invoke-direct {v3, p0, p1}, Lcom/nirenr/talkman/CameraActivity$n;-><init>(Lcom/nirenr/talkman/CameraActivity;Lcom/nirenr/talkman/ai/OcrResult;)V

    invoke-virtual {v1, v2, v3}, Lcom/androlua/LuaDialog;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const-string p1, "BaiduAI 8"

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/androlua/LuaDialog;->show()V

    const-string p1, "BaiduAI 9"

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, p0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    const-string p1, "BaiduAI 0"

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_8
    :goto_3
    const p1, 0x7f070390

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/nirenr/talkman/CameraActivity;->F(Ljava/lang/String;)V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/nirenr/talkman/CameraActivity;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/nirenr/talkman/CameraActivity;->o:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/nirenr/talkman/CameraActivity;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/nirenr/talkman/CameraActivity$o;

    invoke-direct {v0, p0}, Lcom/nirenr/talkman/CameraActivity$o;-><init>(Lcom/nirenr/talkman/CameraActivity;)V

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget p1, p0, Lcom/nirenr/talkman/CameraActivity;->r:I

    invoke-direct {p0, p1}, Lcom/nirenr/talkman/CameraActivity;->B(I)V

    return-void

    :cond_0
    const p1, 0x7f07038f

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/nirenr/talkman/CameraActivity;->F(Ljava/lang/String;)V

    return-void
.end method

.method public onFaceDetection([Landroid/hardware/Camera$Face;Landroid/hardware/Camera;)V
    .locals 4

    array-length p2, p1

    iput p2, p0, Lcom/nirenr/talkman/CameraActivity;->h:I

    invoke-virtual {p0}, Lcom/nirenr/talkman/CameraActivity;->x()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    aget-object p1, p1, v0

    iget-object p1, p1, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, p1

    div-int/lit8 v2, v2, 0x2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/16 v3, 0x12c

    if-ge p1, v3, :cond_2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-ge p1, v3, :cond_2

    iget-boolean p1, p0, Lcom/nirenr/talkman/CameraActivity;->i:Z

    if-eqz p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x1

    new-array v1, p1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v0

    const p2, 0x7f070082

    invoke-virtual {p0, p2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/nirenr/talkman/CameraActivity;->F(Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/nirenr/talkman/CameraActivity;->i:Z

    goto :goto_1

    :cond_2
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    const/16 v0, 0x8

    if-le p1, p2, :cond_5

    iget-object p1, p0, Lcom/nirenr/talkman/CameraActivity;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getTTS()Lcom/nirenr/talkman/a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/nirenr/talkman/a;->t(I)Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    if-gez v1, :cond_4

    const p1, 0x7f070087

    goto :goto_0

    :cond_4
    const p1, 0x7f070088

    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/nirenr/talkman/CameraActivity;->F(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-ge p1, p2, :cond_8

    iget-object p1, p0, Lcom/nirenr/talkman/CameraActivity;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getTTS()Lcom/nirenr/talkman/a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/nirenr/talkman/a;->t(I)Z

    move-result p1

    if-eqz p1, :cond_6

    return-void

    :cond_6
    if-gez v2, :cond_7

    const p1, 0x7f070089

    goto :goto_0

    :cond_7
    const p1, 0x7f070086

    goto :goto_0

    :cond_8
    :goto_1
    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 4

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/16 v1, 0x19

    const/16 v2, 0x18

    const/4 v3, 0x1

    if-nez v0, :cond_1

    if-ne p2, v2, :cond_0

    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    invoke-static {}, Lcom/nirenr/talkman/dialog/VirtualScreen;->j()V

    invoke-virtual {p0, p2, p3}, Lcom/nirenr/talkman/CameraActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    return v3

    :cond_0
    if-ne p2, v1, :cond_3

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-ne p1, v3, :cond_3

    if-ne p2, v2, :cond_2

    invoke-virtual {p0, p2, p3}, Lcom/nirenr/talkman/CameraActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    return v3

    :cond_2
    if-ne p2, v1, :cond_3

    invoke-virtual {p0, p2, p3}, Lcom/nirenr/talkman/CameraActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    return v3

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/16 v0, 0x18

    const-wide/16 v1, 0x258

    const/4 v3, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/nirenr/talkman/CameraActivity;->H:Ljava/lang/Runnable;

    if-nez p1, :cond_0

    new-instance p1, Lcom/nirenr/talkman/CameraActivity$d;

    invoke-direct {p1, p0}, Lcom/nirenr/talkman/CameraActivity$d;-><init>(Lcom/nirenr/talkman/CameraActivity;)V

    iput-object p1, p0, Lcom/nirenr/talkman/CameraActivity;->H:Ljava/lang/Runnable;

    iget-object p1, p0, Lcom/nirenr/talkman/CameraActivity;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/nirenr/talkman/CameraActivity;->H:Ljava/lang/Runnable;

    invoke-virtual {p1, p2, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return v3

    :cond_1
    const/16 v0, 0x19

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/nirenr/talkman/CameraActivity;->G:Ljava/lang/Runnable;

    if-nez p1, :cond_2

    new-instance p1, Lcom/nirenr/talkman/CameraActivity$e;

    invoke-direct {p1, p0}, Lcom/nirenr/talkman/CameraActivity$e;-><init>(Lcom/nirenr/talkman/CameraActivity;)V

    iput-object p1, p0, Lcom/nirenr/talkman/CameraActivity;->G:Ljava/lang/Runnable;

    iget-object p1, p0, Lcom/nirenr/talkman/CameraActivity;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/nirenr/talkman/CameraActivity;->G:Ljava/lang/Runnable;

    invoke-virtual {p1, p2, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return v3

    :cond_3
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 8

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nirenr/talkman/CameraActivity;->G:Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/nirenr/talkman/CameraActivity;->H:Ljava/lang/Runnable;

    const/16 v1, 0x18

    const v2, 0x7f07044e

    const-wide/16 v3, 0x12c

    const/4 v5, 0x1

    if-ne p1, v1, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide p1

    sub-long/2addr v6, p1

    cmp-long p1, v6, v3

    if-lez p1, :cond_0

    return v5

    :cond_0
    iget-object p1, p0, Lcom/nirenr/talkman/CameraActivity;->I:Ljava/lang/String;

    if-eqz p1, :cond_1

    :goto_0
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/nirenr/talkman/CameraActivity;->F(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nirenr/talkman/CameraActivity;->I:Ljava/lang/String;

    return v5

    :cond_1
    invoke-direct {p0}, Lcom/nirenr/talkman/CameraActivity;->G()V

    return v5

    :cond_2
    const/16 v1, 0x19

    if-ne p1, v1, :cond_5

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide p1

    sub-long/2addr v6, p1

    cmp-long p1, v6, v3

    if-lez p1, :cond_3

    return v5

    :cond_3
    iget-object p1, p0, Lcom/nirenr/talkman/CameraActivity;->I:Ljava/lang/String;

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/nirenr/talkman/CameraActivity;->E()V

    return v5

    :cond_5
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/nirenr/talkman/h;->a:Z

    iget-object v0, p0, Lcom/nirenr/talkman/CameraActivity;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const/4 v1, 0x0

    const v2, 0x1e240

    invoke-virtual {v0, v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setSpeechRecognitionListener(Lcom/nirenr/talkman/SpeechRecognitionListener;I)V

    iget-object v0, p0, Lcom/nirenr/talkman/CameraActivity;->b:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    return-void
.end method

.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 3

    array-length p2, p1

    const/4 v0, 0x0

    invoke-static {p1, v0, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    iput p2, p0, Lcom/nirenr/talkman/CameraActivity;->D:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    iput p2, p0, Lcom/nirenr/talkman/CameraActivity;->E:I

    iput-boolean v0, p0, Lcom/nirenr/talkman/CameraActivity;->o:Z

    iget v0, p0, Lcom/nirenr/talkman/CameraActivity;->D:I

    if-le v0, p2, :cond_0

    const/16 p2, 0x5a

    invoke-static {p1, p2}, Lcom/nirenr/talkman/CameraActivity2;->c(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    iput p2, p0, Lcom/nirenr/talkman/CameraActivity;->D:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    iput p2, p0, Lcom/nirenr/talkman/CameraActivity;->E:I

    :cond_0
    new-instance p2, Ljava/text/SimpleDateFormat;

    const-string v0, "\'IMG\'_yyyyMMddHHmmss"

    invoke-direct {p2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/nirenr/talkman/CameraActivity;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v1, 0x7f0701f0

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".jpg"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Lcom/androlua/LuaService;->getLuaExtPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :try_start_0
    invoke-virtual {p0}, Lcom/nirenr/talkman/CameraActivity;->x()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/nirenr/talkman/CameraActivity;->q()Z

    move-result p2
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p2, :cond_6

    :try_start_1
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x32

    invoke-virtual {p1, v0, v1, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    const p2, 0x7f07038d

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/nirenr/talkman/CameraActivity;->F(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/nirenr/talkman/CameraActivity;->F:Ljava/lang/String;

    const/16 v0, 0x14

    if-eqz p2, :cond_1

    sput-object p2, Lcom/day/BigModelNew;->MyQuestion:Ljava/lang/String;

    invoke-static {v0, p1, p0}, Lcom/nirenr/talkman/ai/h;->k(I[BLcom/nirenr/talkman/ai/OcrResult$OCRListener;)Lcom/androlua/util/AsyncTaskX;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/nirenr/talkman/CameraActivity;->F:Ljava/lang/String;

    goto :goto_2

    :cond_1
    iget p2, p0, Lcom/nirenr/talkman/CameraActivity;->j:I

    if-ne p2, v0, :cond_2

    :goto_0
    invoke-static {v0, p1, p0}, Lcom/nirenr/talkman/ai/h;->k(I[BLcom/nirenr/talkman/ai/OcrResult$OCRListener;)Lcom/androlua/util/AsyncTaskX;

    goto :goto_2

    :cond_2
    const/16 v0, 0x9

    if-ne p2, v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    if-ne p2, v0, :cond_4

    invoke-static {p1, p0}, Lcom/nirenr/talkman/ai/h;->w([BLcom/nirenr/talkman/ai/OcrResult$OCRListener;)Lcom/androlua/util/AsyncTaskX;

    goto :goto_2

    :cond_4
    iget v0, p0, Lcom/nirenr/talkman/CameraActivity;->l:I

    if-ge p2, v0, :cond_5

    invoke-static {p2, p1, p0}, Lcom/nirenr/talkman/ai/h;->k(I[BLcom/nirenr/talkman/ai/OcrResult$OCRListener;)Lcom/androlua/util/AsyncTaskX;

    goto :goto_2

    :cond_5
    sub-int/2addr p2, v0

    new-instance v0, Lcom/nirenr/talkman/CameraActivity$f;

    invoke-direct {v0, p0}, Lcom/nirenr/talkman/CameraActivity$f;-><init>(Lcom/nirenr/talkman/CameraActivity;)V

    invoke-static {p2, p1, v0}, Lcom/nirenr/talkman/ai/BaiduAI;->f(I[BLcom/nirenr/talkman/ai/BaiduAI$AipTaskCallback;)Lcom/nirenr/talkman/ai/BaiduAI$b;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :cond_6
    const p1, 0x7f07037f

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/nirenr/talkman/CameraActivity;->F(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    sget-object p2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x64

    invoke-virtual {p1, p2, v1, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 8

    iget-object v0, p0, Lcom/nirenr/talkman/CameraActivity;->I:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/nirenr/talkman/CameraActivity;->z:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x3e8

    cmp-long v0, v4, v6

    if-gez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/CameraActivity;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->vibrate(Z)V

    iput-wide v2, p0, Lcom/nirenr/talkman/CameraActivity;->z:J

    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p2

    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/nirenr/talkman/CameraActivity;->t([BLandroid/hardware/Camera$Size;)Landroid/graphics/Bitmap;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nirenr/talkman/CameraActivity;->I:Ljava/lang/String;

    aput-object v1, p2, v0

    const-string v0, "\u753b\u9762\u4e2d\u6709%s\u5417\uff0c\u6ca1\u6709\u5c31\u8bf4\u6ca1\u6709\uff0c\u6709\u5c31\u8bf4\u660e\u8be6\u7ec6\u76f8\u5bf9\u5176\u4ed6\u7269\u54c1\u4f4d\u7f6e"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/nirenr/talkman/CameraActivity$q;

    invoke-direct {v0, p0}, Lcom/nirenr/talkman/CameraActivity$q;-><init>(Lcom/nirenr/talkman/CameraActivity;)V

    invoke-static {p1, p2, v0}, Lcom/nirenr/talkman/ai/g;->h(Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/nirenr/talkman/ai/OcrResult$OCRListener;)Lcom/androlua/util/AsyncTaskX;

    return-void

    :cond_1
    iget-object v0, p0, Lcom/nirenr/talkman/CameraActivity;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getTTS()Lcom/nirenr/talkman/a;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/nirenr/talkman/a;->t(I)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/nirenr/talkman/CameraActivity;->o:Z

    if-eqz v0, :cond_3

    return-void

    :cond_3
    invoke-direct {p0}, Lcom/nirenr/talkman/CameraActivity;->q()Z

    move-result v0

    if-nez v0, :cond_4

    return-void

    :cond_4
    iget-object v0, p0, Lcom/nirenr/talkman/CameraActivity;->v:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/nirenr/talkman/CameraActivity;->z:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x1388

    cmp-long v0, v4, v6

    if-gez v0, :cond_6

    return-void

    :cond_6
    iput-wide v2, p0, Lcom/nirenr/talkman/CameraActivity;->z:J

    iput-boolean v1, p0, Lcom/nirenr/talkman/CameraActivity;->o:Z

    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p2

    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/nirenr/talkman/CameraActivity;->t([BLandroid/hardware/Camera$Size;)Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPreviewFrame: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "lua"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0}, Lcom/nirenr/talkman/CameraActivity;->x()Z

    move-result p2

    if-nez p2, :cond_c

    invoke-direct {p0}, Lcom/nirenr/talkman/CameraActivity;->q()Z

    move-result p2

    if-eqz p2, :cond_b

    iget p2, p0, Lcom/nirenr/talkman/CameraActivity;->s:I

    invoke-direct {p0, p2}, Lcom/nirenr/talkman/CameraActivity;->B(I)V

    const-string p2, "\u4e00\u53e5\u8bdd\u63cf\u8ff0\u56fe\u7247"

    sput-object p2, Lcom/day/BigModelNew;->MyQuestion:Ljava/lang/String;

    iget p2, p0, Lcom/nirenr/talkman/CameraActivity;->j:I

    const/16 v0, 0x14

    if-ne p2, v0, :cond_7

    :goto_0
    invoke-static {v0, p1, p0}, Lcom/nirenr/talkman/ai/h;->j(ILandroid/graphics/Bitmap;Lcom/nirenr/talkman/ai/OcrResult$OCRListener;)Lcom/androlua/util/AsyncTaskX;

    goto :goto_1

    :cond_7
    const/16 v0, 0x9

    if-ne p2, v0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v0, 0x2

    if-ne p2, v0, :cond_9

    invoke-static {p1, p0}, Lcom/nirenr/talkman/ai/h;->t(Landroid/graphics/Bitmap;Lcom/nirenr/talkman/ai/OcrResult$OCRListener;)Lcom/androlua/util/AsyncTaskX;

    goto :goto_1

    :cond_9
    iget v0, p0, Lcom/nirenr/talkman/CameraActivity;->l:I

    if-ge p2, v0, :cond_a

    invoke-static {p2, p1, p0}, Lcom/nirenr/talkman/ai/h;->j(ILandroid/graphics/Bitmap;Lcom/nirenr/talkman/ai/OcrResult$OCRListener;)Lcom/androlua/util/AsyncTaskX;

    goto :goto_1

    :cond_a
    sub-int/2addr p2, v0

    invoke-static {p2, p1, p0}, Lcom/nirenr/talkman/ai/BaiduAI;->e(ILandroid/graphics/Bitmap;Lcom/nirenr/talkman/ai/BaiduAI$AipTaskCallback;)Lcom/nirenr/talkman/ai/BaiduAI$b;

    goto :goto_1

    :cond_b
    const p1, 0x7f07037f

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/nirenr/talkman/CameraActivity;->F(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_c
    :goto_1
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    invoke-virtual {p0}, Lcom/nirenr/talkman/CameraActivity;->w()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "zh"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    iput-boolean p2, p0, Lcom/nirenr/talkman/CameraActivity;->n:Z

    :cond_0
    invoke-virtual {p0, p2}, Lcom/nirenr/talkman/CameraActivity;->A(Z)V

    return-void
.end method

.method protected onResume()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/nirenr/talkman/CameraActivity;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isUseVolumeKeyEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/nirenr/talkman/CameraActivity;->g:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/nirenr/talkman/h;->a:Z

    iget-object v0, p0, Lcom/nirenr/talkman/CameraActivity;->b:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/nirenr/talkman/CameraActivity;->c:Landroid/hardware/Sensor;

    const/4 v2, 0x3

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nirenr/talkman/CameraActivity;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/nirenr/talkman/CameraActivity;->x()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    move-object/from16 v1, p1

    iget-object v1, v1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v3, v1, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/4 v4, 0x1

    aget v5, v1, v4

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/4 v6, 0x2

    aget v7, v1, v6

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const v8, 0x7f070085

    const v9, 0x7f07008c

    const v10, 0x7f070093

    const v12, 0x7f070082

    const v13, 0x7f070081

    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    cmpl-float v16, v3, v5

    if-lez v16, :cond_f

    cmpl-float v16, v3, v7

    if-lez v16, :cond_f

    iget v11, v0, Lcom/nirenr/talkman/CameraActivity;->e:I

    if-eqz v11, :cond_3

    aget v11, v1, v2

    cmpl-float v11, v11, v15

    if-lez v11, :cond_2

    const v11, 0x7f07008d

    goto :goto_0

    :cond_2
    const v11, 0x7f070084

    :goto_0
    invoke-virtual {v0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Lcom/nirenr/talkman/CameraActivity;->F(Ljava/lang/String;)V

    :cond_3
    cmpg-float v11, v5, v14

    if-gez v11, :cond_6

    cmpg-float v11, v7, v14

    if-gez v11, :cond_6

    iget-boolean v1, v0, Lcom/nirenr/talkman/CameraActivity;->f:Z

    if-eqz v1, :cond_4

    return-void

    :cond_4
    iget v1, v0, Lcom/nirenr/talkman/CameraActivity;->h:I

    if-lez v1, :cond_5

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v2

    invoke-virtual {v0, v12, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_5
    invoke-virtual {v0, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-direct {v0, v1}, Lcom/nirenr/talkman/CameraActivity;->F(Ljava/lang/String;)V

    iput-boolean v4, v0, Lcom/nirenr/talkman/CameraActivity;->f:Z

    goto :goto_3

    :cond_6
    cmpl-float v11, v5, v7

    if-lez v11, :cond_b

    invoke-direct {v0, v3, v5, v7}, Lcom/nirenr/talkman/CameraActivity;->s(FFF)Z

    move-result v3

    if-eqz v3, :cond_7

    return-void

    :cond_7
    aget v3, v1, v4

    cmpl-float v4, v3, v15

    if-lez v4, :cond_8

    aget v4, v1, v2

    cmpl-float v4, v4, v15

    if-gtz v4, :cond_9

    :cond_8
    cmpg-float v3, v3, v15

    if-gez v3, :cond_a

    aget v1, v1, v2

    cmpg-float v1, v1, v15

    if-gez v1, :cond_a

    :cond_9
    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_a
    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_b
    cmpl-float v4, v7, v5

    if-lez v4, :cond_e

    invoke-direct {v0, v3, v5, v7}, Lcom/nirenr/talkman/CameraActivity;->s(FFF)Z

    move-result v3

    if-eqz v3, :cond_c

    return-void

    :cond_c
    aget v1, v1, v6

    cmpl-float v1, v1, v15

    if-lez v1, :cond_d

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_d
    const v1, 0x7f070092

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-direct {v0, v1}, Lcom/nirenr/talkman/CameraActivity;->F(Ljava/lang/String;)V

    iput-boolean v2, v0, Lcom/nirenr/talkman/CameraActivity;->f:Z

    :cond_e
    :goto_3
    iput v2, v0, Lcom/nirenr/talkman/CameraActivity;->e:I

    goto/16 :goto_9

    :cond_f
    cmpl-float v11, v5, v3

    if-lez v11, :cond_1d

    cmpl-float v11, v5, v7

    if-lez v11, :cond_1d

    iget v11, v0, Lcom/nirenr/talkman/CameraActivity;->e:I

    if-eq v11, v4, :cond_11

    aget v11, v1, v4

    cmpl-float v11, v11, v15

    if-lez v11, :cond_10

    const v11, 0x7f070094

    goto :goto_4

    :cond_10
    const v11, 0x7f07007d

    :goto_4
    invoke-virtual {v0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Lcom/nirenr/talkman/CameraActivity;->F(Ljava/lang/String;)V

    :cond_11
    cmpg-float v11, v3, v14

    if-gez v11, :cond_14

    cmpg-float v11, v7, v14

    if-gez v11, :cond_14

    iget-boolean v1, v0, Lcom/nirenr/talkman/CameraActivity;->f:Z

    if-eqz v1, :cond_12

    return-void

    :cond_12
    iget v1, v0, Lcom/nirenr/talkman/CameraActivity;->h:I

    if-lez v1, :cond_13

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v2

    invoke-virtual {v0, v12, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_13
    invoke-virtual {v0, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_5
    invoke-direct {v0, v1}, Lcom/nirenr/talkman/CameraActivity;->F(Ljava/lang/String;)V

    iput-boolean v4, v0, Lcom/nirenr/talkman/CameraActivity;->f:Z

    goto :goto_7

    :cond_14
    cmpl-float v11, v3, v7

    if-lez v11, :cond_19

    invoke-direct {v0, v3, v5, v7}, Lcom/nirenr/talkman/CameraActivity;->s(FFF)Z

    move-result v3

    if-eqz v3, :cond_15

    return-void

    :cond_15
    aget v3, v1, v2

    cmpg-float v5, v3, v15

    if-gez v5, :cond_16

    aget v5, v1, v4

    cmpl-float v5, v5, v15

    if-gtz v5, :cond_17

    :cond_16
    cmpl-float v3, v3, v15

    if-lez v3, :cond_18

    aget v1, v1, v4

    cmpg-float v1, v1, v15

    if-gez v1, :cond_18

    :cond_17
    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :cond_18
    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :cond_19
    cmpl-float v8, v7, v3

    if-lez v8, :cond_1c

    invoke-direct {v0, v3, v5, v7}, Lcom/nirenr/talkman/CameraActivity;->s(FFF)Z

    move-result v3

    if-eqz v3, :cond_1a

    return-void

    :cond_1a
    aget v1, v1, v6

    cmpl-float v1, v1, v15

    if-lez v1, :cond_1b

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :cond_1b
    const v1, 0x7f070092

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_6
    invoke-direct {v0, v1}, Lcom/nirenr/talkman/CameraActivity;->F(Ljava/lang/String;)V

    iput-boolean v2, v0, Lcom/nirenr/talkman/CameraActivity;->f:Z

    :cond_1c
    :goto_7
    iput v4, v0, Lcom/nirenr/talkman/CameraActivity;->e:I

    goto :goto_9

    :cond_1d
    cmpl-float v2, v7, v5

    if-lez v2, :cond_20

    cmpl-float v2, v7, v3

    if-lez v2, :cond_20

    iget v2, v0, Lcom/nirenr/talkman/CameraActivity;->e:I

    if-eq v2, v6, :cond_1f

    aget v1, v1, v6

    cmpl-float v1, v1, v15

    if-lez v1, :cond_1e

    const v1, 0x7f07008f

    goto :goto_8

    :cond_1e
    const v1, 0x7f07008e

    :goto_8
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nirenr/talkman/CameraActivity;->F(Ljava/lang/String;)V

    :cond_1f
    iput v6, v0, Lcom/nirenr/talkman/CameraActivity;->e:I

    :cond_20
    :goto_9
    return-void
.end method

.method public w()V
    .locals 12

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/androlua/LuaCameraView;

    invoke-direct {v1, p0}, Lcom/androlua/LuaCameraView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/nirenr/talkman/CameraActivity;->a:Lcom/androlua/LuaCameraView;

    invoke-virtual {v1, p0}, Lcom/androlua/LuaCameraView;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    iget-object v1, p0, Lcom/nirenr/talkman/CameraActivity;->a:Lcom/androlua/LuaCameraView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/SeekBar;

    invoke-direct {v2, p0}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    const v4, 0x7f070970

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/nirenr/talkman/CameraActivity;->a:Lcom/androlua/LuaCameraView;

    invoke-virtual {v4}, Lcom/androlua/LuaCameraView;->getZoomMax()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setMax(I)V

    new-instance v4, Lcom/nirenr/talkman/CameraActivity$a;

    invoke-direct {v4, p0}, Lcom/nirenr/talkman/CameraActivity$a;-><init>(Lcom/nirenr/talkman/CameraActivity;)V

    invoke-virtual {v2, v4}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v4, 0x50

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVerticalGravity(I)V

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v6, 0x51

    invoke-direct {v4, v3, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iget-object v6, p0, Lcom/nirenr/talkman/CameraActivity;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v7, 0x7f070967

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v6, Lcom/nirenr/talkman/CameraActivity$r;

    invoke-direct {v6, p0}, Lcom/nirenr/talkman/CameraActivity$r;-><init>(Lcom/nirenr/talkman/CameraActivity;)V

    invoke-virtual {v1, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v6, v3, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Landroid/widget/Button;

    invoke-direct {v6, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iget-object v8, p0, Lcom/nirenr/talkman/CameraActivity;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v9, 0x7f07027c

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v8, Lcom/nirenr/talkman/CameraActivity$s;

    invoke-direct {v8, p0}, Lcom/nirenr/talkman/CameraActivity$s;-><init>(Lcom/nirenr/talkman/CameraActivity;)V

    invoke-virtual {v6, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v3, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v6, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v8, Landroid/widget/Button;

    invoke-direct {v8, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iget-object v9, p0, Lcom/nirenr/talkman/CameraActivity;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v10, 0x7f07008a

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v9, Lcom/nirenr/talkman/CameraActivity$t;

    invoke-direct {v9, p0}, Lcom/nirenr/talkman/CameraActivity$t;-><init>(Lcom/nirenr/talkman/CameraActivity;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v3, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v9, Landroid/widget/Button;

    invoke-direct {v9, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iget-object v10, p0, Lcom/nirenr/talkman/CameraActivity;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v11, 0x7f07007f

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v10, Lcom/nirenr/talkman/CameraActivity$u;

    invoke-direct {v10, p0}, Lcom/nirenr/talkman/CameraActivity$u;-><init>(Lcom/nirenr/talkman/CameraActivity;)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v10, v3, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v9, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v10, Landroid/widget/Button;

    invoke-direct {v10, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const v11, 0x7f070520

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v11, Lcom/nirenr/talkman/CameraActivity$v;

    invoke-direct {v11, p0}, Lcom/nirenr/talkman/CameraActivity$v;-><init>(Lcom/nirenr/talkman/CameraActivity;)V

    invoke-virtual {v10, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v11, v3, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/CheckBox;

    invoke-direct {v3, p0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    const v4, 0x7f070289

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    new-instance v4, Lcom/nirenr/talkman/CameraActivity$w;

    invoke-direct {v4, p0}, Lcom/nirenr/talkman/CameraActivity$w;-><init>(Lcom/nirenr/talkman/CameraActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v7, 0x33

    invoke-direct {v4, v5, v5, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/CheckBox;

    invoke-direct {v3, p0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/nirenr/talkman/CameraActivity;->v:Landroid/widget/CheckBox;

    const v4, 0x7f0701a5

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v3, p0, Lcom/nirenr/talkman/CameraActivity;->v:Landroid/widget/CheckBox;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v7, 0x35

    invoke-direct {v4, v5, v5, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const v4, 0x7f07098f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    new-instance v4, Lcom/nirenr/talkman/CameraActivity$x;

    invoke-direct {v4, p0, v2}, Lcom/nirenr/talkman/CameraActivity$x;-><init>(Lcom/nirenr/talkman/CameraActivity;Landroid/widget/SeekBar;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v7, 0x13

    invoke-direct {v4, v5, v5, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const v4, 0x7f07098e

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    new-instance v4, Lcom/nirenr/talkman/CameraActivity$y;

    invoke-direct {v4, p0, v2}, Lcom/nirenr/talkman/CameraActivity$y;-><init>(Lcom/nirenr/talkman/CameraActivity;Landroid/widget/SeekBar;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v4, 0x15

    invoke-direct {v2, v5, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v1, p0, Lcom/nirenr/talkman/CameraActivity;->a:Lcom/androlua/LuaCameraView;

    invoke-virtual {v1, p0}, Lcom/androlua/LuaCameraView;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/nirenr/talkman/CameraActivity;->E()V

    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x4

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/nirenr/talkman/CameraActivity;->p:Landroid/media/SoundPool;

    invoke-virtual {p0}, Lcom/nirenr/talkman/CameraActivity;->y()V

    return-void
.end method

.method public x()Z
    .locals 1

    iget v0, p0, Lcom/nirenr/talkman/CameraActivity;->j:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public y()V
    .locals 4

    iget v0, p0, Lcom/nirenr/talkman/CameraActivity;->s:I

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/nirenr/talkman/CameraActivity;->p:Landroid/media/SoundPool;

    invoke-virtual {v1, v0}, Landroid/media/SoundPool;->unload(I)Z

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/nirenr/talkman/CameraActivity;->s:I

    iget v1, p0, Lcom/nirenr/talkman/CameraActivity;->t:I

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/nirenr/talkman/CameraActivity;->p:Landroid/media/SoundPool;

    invoke-virtual {v2, v1}, Landroid/media/SoundPool;->unload(I)Z

    :cond_1
    iput v0, p0, Lcom/nirenr/talkman/CameraActivity;->t:I

    iget v1, p0, Lcom/nirenr/talkman/CameraActivity;->u:I

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/nirenr/talkman/CameraActivity;->p:Landroid/media/SoundPool;

    invoke-virtual {v2, v1}, Landroid/media/SoundPool;->unload(I)Z

    :cond_2
    iput v0, p0, Lcom/nirenr/talkman/CameraActivity;->u:I

    iget v1, p0, Lcom/nirenr/talkman/CameraActivity;->r:I

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/nirenr/talkman/CameraActivity;->p:Landroid/media/SoundPool;

    invoke-virtual {v2, v1}, Landroid/media/SoundPool;->unload(I)Z

    :cond_3
    iput v0, p0, Lcom/nirenr/talkman/CameraActivity;->r:I

    iget v1, p0, Lcom/nirenr/talkman/CameraActivity;->q:I

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/nirenr/talkman/CameraActivity;->p:Landroid/media/SoundPool;

    invoke-virtual {v2, v1}, Landroid/media/SoundPool;->unload(I)Z

    :cond_4
    iput v0, p0, Lcom/nirenr/talkman/CameraActivity;->q:I

    const v0, 0x7f070605

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0708ae

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v2}, Lk2/b0;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p0, v0}, Lcom/nirenr/talkman/CameraActivity;->z(Ljava/lang/String;)V

    :cond_5
    iget v0, p0, Lcom/nirenr/talkman/CameraActivity;->q:I

    const/4 v1, 0x1

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/nirenr/talkman/CameraActivity;->p:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/nirenr/talkman/CameraActivity;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v3, 0x7f060001

    invoke-virtual {v0, v2, v3, v1}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/nirenr/talkman/CameraActivity;->q:I

    :cond_6
    iget v0, p0, Lcom/nirenr/talkman/CameraActivity;->r:I

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/nirenr/talkman/CameraActivity;->p:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/nirenr/talkman/CameraActivity;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v3, 0x7f060002

    invoke-virtual {v0, v2, v3, v1}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/nirenr/talkman/CameraActivity;->r:I

    :cond_7
    iget v0, p0, Lcom/nirenr/talkman/CameraActivity;->s:I

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/nirenr/talkman/CameraActivity;->p:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/nirenr/talkman/CameraActivity;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v3, 0x7f060008

    invoke-virtual {v0, v2, v3, v1}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/nirenr/talkman/CameraActivity;->s:I

    :cond_8
    iget v0, p0, Lcom/nirenr/talkman/CameraActivity;->t:I

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/nirenr/talkman/CameraActivity;->p:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/nirenr/talkman/CameraActivity;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v3, 0x7f060004

    invoke-virtual {v0, v2, v3, v1}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/nirenr/talkman/CameraActivity;->t:I

    :cond_9
    iget v0, p0, Lcom/nirenr/talkman/CameraActivity;->u:I

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/nirenr/talkman/CameraActivity;->p:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/nirenr/talkman/CameraActivity;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v3, 0x7f060005

    invoke-virtual {v0, v2, v3, v1}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/nirenr/talkman/CameraActivity;->u:I

    :cond_a
    return-void
.end method

.method public z(Ljava/lang/String;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0701fb

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    new-instance v1, Ljava/lang/String;

    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/nirenr/talkman/CameraActivity;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v4, "config"

    invoke-virtual {v3, p1, v4}, Lcom/androlua/LuaService;->getLuaExtPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/androlua/LuaUtil;->readAll(Ljava/io/InputStream;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "recognition_start"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nirenr/talkman/CameraActivity;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, p1, v1}, Lcom/androlua/LuaService;->getLuaExtPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nirenr/talkman/CameraActivity;->p:Landroid/media/SoundPool;

    invoke-virtual {v2, v1, v3}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/nirenr/talkman/CameraActivity;->s:I

    :cond_0
    const-string v1, "recognition_success"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/nirenr/talkman/CameraActivity;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, p1, v1}, Lcom/androlua/LuaService;->getLuaExtPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/nirenr/talkman/CameraActivity;->p:Landroid/media/SoundPool;

    invoke-virtual {v2, v1, v3}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/nirenr/talkman/CameraActivity;->t:I

    :cond_1
    const-string v1, "recognition_end"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/nirenr/talkman/CameraActivity;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, p1, v1}, Lcom/androlua/LuaService;->getLuaExtPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/nirenr/talkman/CameraActivity;->p:Landroid/media/SoundPool;

    invoke-virtual {v2, v1, v3}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/nirenr/talkman/CameraActivity;->u:I

    :cond_2
    const-string v1, "recognition_error"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/nirenr/talkman/CameraActivity;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, p1, v1}, Lcom/androlua/LuaService;->getLuaExtPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/nirenr/talkman/CameraActivity;->p:Landroid/media/SoundPool;

    invoke-virtual {v2, v1, v3}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/nirenr/talkman/CameraActivity;->r:I

    :cond_3
    const-string v1, "recognition_cancel"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/nirenr/talkman/CameraActivity;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Lcom/androlua/LuaService;->getLuaExtPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/nirenr/talkman/CameraActivity;->p:Landroid/media/SoundPool;

    invoke-virtual {v0, p1, v3}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/nirenr/talkman/CameraActivity;->q:I

    :cond_4
    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
