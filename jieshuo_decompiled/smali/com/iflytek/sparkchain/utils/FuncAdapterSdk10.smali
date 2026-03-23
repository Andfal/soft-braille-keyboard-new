.class public Lcom/iflytek/sparkchain/utils/FuncAdapterSdk10;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static avoidValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CloseHardWareAccelerate(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method public static Lock(Landroid/content/Context;Landroid/media/AudioManager$OnAudioFocusChangeListener;)Z
    .locals 2

    :try_start_0
    const-string v0, "start request music_stream focus"

    invoke-static {v0}, Lcom/iflytek/sparkchain/utils/log/LogUtil;->d(Ljava/lang/Object;)V

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    const/4 v0, 0x3

    const/4 v1, 0x2

    invoke-virtual {p0, p1, v0, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static UnLock(Landroid/content/Context;Landroid/media/AudioManager$OnAudioFocusChangeListener;)Z
    .locals 1

    :try_start_0
    const-string v0, "start abandon audio focus"

    invoke-static {v0}, Lcom/iflytek/sparkchain/utils/log/LogUtil;->d(Ljava/lang/Object;)V

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public avoidSystemError(I)V
    .locals 1

    const-string v0, "avoidSystemError"

    invoke-static {v0}, Lcom/iflytek/sparkchain/utils/log/LogUtil;->d(Ljava/lang/Object;)V

    sput p1, Lcom/iflytek/sparkchain/utils/FuncAdapterSdk10;->avoidValue:I

    return-void
.end method
