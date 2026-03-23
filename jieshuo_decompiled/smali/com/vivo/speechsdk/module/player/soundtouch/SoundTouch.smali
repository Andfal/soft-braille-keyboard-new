.class public final Lcom/vivo/speechsdk/module/player/soundtouch/SoundTouch;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:I = 0x1000

.field public static final f:I = 0x1000

.field public static final g:I = 0x20000

.field public static final h:I = 0x2000

.field public static final i:I = 0x0

.field public static final j:I = 0x1

.field public static final k:I = 0x3e80

.field public static final l:I = 0x2

.field public static final m:F = 1.0f

.field public static final n:F = 1.0f

.field public static final o:I = 0x2


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "soundtouch"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/16 v0, 0x3e80

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/vivo/speechsdk/module/player/soundtouch/SoundTouch;-><init>(IIII)V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/vivo/speechsdk/module/player/soundtouch/SoundTouch;->a:I

    iput p3, p0, Lcom/vivo/speechsdk/module/player/soundtouch/SoundTouch;->b:I

    iput p4, p0, Lcom/vivo/speechsdk/module/player/soundtouch/SoundTouch;->c:I

    iput p1, p0, Lcom/vivo/speechsdk/module/player/soundtouch/SoundTouch;->d:I

    invoke-static {p1, p2, p3, p4}, Lcom/vivo/speechsdk/module/player/soundtouch/SoundTouch;->setup(IIII)V

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Lcom/vivo/speechsdk/module/player/soundtouch/SoundTouch;->b(F)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/vivo/speechsdk/module/player/soundtouch/SoundTouch;->a(I)V

    return-void
.end method

.method private static native clearBytes(I)V
.end method

.method private static native processBytes(I[BIZ)[B
.end method

.method private static native setPitchSemi(II)V
.end method

.method private static native setRate(IF)V
.end method

.method private static native setTempo(IF)V
.end method

.method private static native setup(IIII)V
.end method


# virtual methods
.method public a()V
    .locals 1

    iget v0, p0, Lcom/vivo/speechsdk/module/player/soundtouch/SoundTouch;->d:I

    invoke-static {v0}, Lcom/vivo/speechsdk/module/player/soundtouch/SoundTouch;->clearBytes(I)V

    return-void
.end method

.method public a(F)V
    .locals 1

    iget v0, p0, Lcom/vivo/speechsdk/module/player/soundtouch/SoundTouch;->d:I

    invoke-static {v0, p1}, Lcom/vivo/speechsdk/module/player/soundtouch/SoundTouch;->setRate(IF)V

    return-void
.end method

.method public a(I)V
    .locals 1

    iget v0, p0, Lcom/vivo/speechsdk/module/player/soundtouch/SoundTouch;->d:I

    invoke-static {v0, p1}, Lcom/vivo/speechsdk/module/player/soundtouch/SoundTouch;->setPitchSemi(II)V

    return-void
.end method

.method public a([BIZ)[B
    .locals 1

    iget v0, p0, Lcom/vivo/speechsdk/module/player/soundtouch/SoundTouch;->d:I

    invoke-static {v0, p1, p2, p3}, Lcom/vivo/speechsdk/module/player/soundtouch/SoundTouch;->processBytes(I[BIZ)[B

    move-result-object p1

    return-object p1
.end method

.method public b(F)V
    .locals 1

    iget v0, p0, Lcom/vivo/speechsdk/module/player/soundtouch/SoundTouch;->d:I

    invoke-static {v0, p1}, Lcom/vivo/speechsdk/module/player/soundtouch/SoundTouch;->setTempo(IF)V

    return-void
.end method
