.class public Lcom/iflytek/sparkchain/utils/FuncAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static SDK_GINGERBREAD:I = 0x9

.field public static SDK_ICECREM:I = 0xe


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

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sget v1, Lcom/iflytek/sparkchain/utils/FuncAdapter;->SDK_ICECREM:I

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Lcom/iflytek/sparkchain/utils/FuncAdapterSdk10;->CloseHardWareAccelerate(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public static Lock(Landroid/content/Context;Ljava/lang/Boolean;Landroid/media/AudioManager$OnAudioFocusChangeListener;)Z
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    sget v0, Lcom/iflytek/sparkchain/utils/FuncAdapter;->SDK_GINGERBREAD:I

    if-lt p1, v0, :cond_0

    invoke-static {p0, p2}, Lcom/iflytek/sparkchain/utils/FuncAdapterSdk10;->Lock(Landroid/content/Context;Landroid/media/AudioManager$OnAudioFocusChangeListener;)Z

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static UnLock(Landroid/content/Context;Ljava/lang/Boolean;Landroid/media/AudioManager$OnAudioFocusChangeListener;)Z
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    sget v0, Lcom/iflytek/sparkchain/utils/FuncAdapter;->SDK_GINGERBREAD:I

    if-lt p1, v0, :cond_0

    invoke-static {p0, p2}, Lcom/iflytek/sparkchain/utils/FuncAdapterSdk10;->UnLock(Landroid/content/Context;Landroid/media/AudioManager$OnAudioFocusChangeListener;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
