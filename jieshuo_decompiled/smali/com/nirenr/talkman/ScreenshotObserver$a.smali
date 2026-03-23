.class Lcom/nirenr/talkman/ScreenshotObserver$a;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nirenr/talkman/ScreenshotObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/net/Uri;

.field final synthetic b:Lcom/nirenr/talkman/ScreenshotObserver;


# direct methods
.method public constructor <init>(Lcom/nirenr/talkman/ScreenshotObserver;Landroid/net/Uri;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/ScreenshotObserver$a;->b:Lcom/nirenr/talkman/ScreenshotObserver;

    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/nirenr/talkman/ScreenshotObserver$a;->a:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object p1, p0, Lcom/nirenr/talkman/ScreenshotObserver$a;->b:Lcom/nirenr/talkman/ScreenshotObserver;

    iget-object p1, p1, Lcom/nirenr/talkman/ScreenshotObserver;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/nirenr/talkman/ScreenshotObserver$a;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/nirenr/talkman/ScreenshotObserver$a;->b:Lcom/nirenr/talkman/ScreenshotObserver;

    invoke-static {p1}, Lcom/nirenr/talkman/ScreenshotObserver;->a(Lcom/nirenr/talkman/ScreenshotObserver;)Lcom/nirenr/talkman/ScreenshotObserver$OnScreenshotListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/nirenr/talkman/ScreenshotObserver$a;->b:Lcom/nirenr/talkman/ScreenshotObserver;

    invoke-static {p1}, Lcom/nirenr/talkman/ScreenshotObserver;->a(Lcom/nirenr/talkman/ScreenshotObserver;)Lcom/nirenr/talkman/ScreenshotObserver$OnScreenshotListener;

    move-result-object p1

    const-string v0, ""

    invoke-interface {p1, v0}, Lcom/nirenr/talkman/ScreenshotObserver$OnScreenshotListener;->onScreenshot(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
