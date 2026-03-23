.class public Lcom/nirenr/talkman/ScreenshotObserver;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nirenr/talkman/ScreenshotObserver$OnScreenshotListener;,
        Lcom/nirenr/talkman/ScreenshotObserver$a;
    }
.end annotation


# static fields
.field private static final h:[Ljava/lang/String;

.field private static final i:[Ljava/lang/String;


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Landroid/database/ContentObserver;

.field private c:Landroid/database/ContentObserver;

.field private d:Landroid/os/HandlerThread;

.field private e:Landroid/os/Handler;

.field f:Ljava/lang/String;

.field private g:Lcom/nirenr/talkman/ScreenshotObserver$OnScreenshotListener;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const-string v0, "screenshot"

    const-string v1, "screen_shot"

    const-string v2, "screen-shot"

    const-string v3, "screen shot"

    const-string v4, "screencapture"

    const-string v5, "screen_capture"

    const-string v6, "screen-capture"

    const-string v7, "screen capture"

    const-string v8, "screencap"

    const-string v9, "screen_cap"

    const-string v10, "screen-cap"

    const-string v11, "screen cap"

    const-string v12, "svid"

    filled-new-array/range {v0 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nirenr/talkman/ScreenshotObserver;->h:[Ljava/lang/String;

    const-string v0, "_data"

    const-string v1, "datetaken"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nirenr/talkman/ScreenshotObserver;->i:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "TalkManAccessibility"

    iput-object v0, p0, Lcom/nirenr/talkman/ScreenshotObserver;->f:Ljava/lang/String;

    iput-object p1, p0, Lcom/nirenr/talkman/ScreenshotObserver;->a:Landroid/content/Context;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Screenshot_Observer"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nirenr/talkman/ScreenshotObserver;->d:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/nirenr/talkman/ScreenshotObserver;->d:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/nirenr/talkman/ScreenshotObserver;->e:Landroid/os/Handler;

    new-instance v0, Lcom/nirenr/talkman/ScreenshotObserver$a;

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/nirenr/talkman/ScreenshotObserver;->e:Landroid/os/Handler;

    invoke-direct {v0, p0, v1, v2}, Lcom/nirenr/talkman/ScreenshotObserver$a;-><init>(Lcom/nirenr/talkman/ScreenshotObserver;Landroid/net/Uri;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/nirenr/talkman/ScreenshotObserver;->b:Landroid/database/ContentObserver;

    new-instance v0, Lcom/nirenr/talkman/ScreenshotObserver$a;

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/nirenr/talkman/ScreenshotObserver;->e:Landroid/os/Handler;

    invoke-direct {v0, p0, v1, v2}, Lcom/nirenr/talkman/ScreenshotObserver$a;-><init>(Lcom/nirenr/talkman/ScreenshotObserver;Landroid/net/Uri;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/nirenr/talkman/ScreenshotObserver;->c:Landroid/database/ContentObserver;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/nirenr/talkman/ScreenshotObserver;->b:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/nirenr/talkman/ScreenshotObserver;->c:Landroid/database/ContentObserver;

    invoke-virtual {p1, v0, v3, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method static bridge synthetic a(Lcom/nirenr/talkman/ScreenshotObserver;)Lcom/nirenr/talkman/ScreenshotObserver$OnScreenshotListener;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/ScreenshotObserver;->g:Lcom/nirenr/talkman/ScreenshotObserver$OnScreenshotListener;

    return-object p0
.end method


# virtual methods
.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/nirenr/talkman/ScreenshotObserver;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/ScreenshotObserver;->b:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/nirenr/talkman/ScreenshotObserver;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/ScreenshotObserver;->c:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public c(Lcom/nirenr/talkman/ScreenshotObserver$OnScreenshotListener;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/ScreenshotObserver;->g:Lcom/nirenr/talkman/ScreenshotObserver$OnScreenshotListener;

    return-void
.end method
