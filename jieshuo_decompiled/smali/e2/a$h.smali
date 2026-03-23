.class Le2/a$h;
.super Landroid/hardware/display/VirtualDisplay$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le2/a;->g(Lcom/nirenr/talkman/TalkManAccessibilityService;)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/TalkManAccessibilityService;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService;)V
    .locals 0

    iput-object p1, p0, Le2/a$h;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {p0}, Landroid/hardware/display/VirtualDisplay$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPaused()V
    .locals 2

    iget-object v0, p0, Le2/a$h;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v1, "ScreenShot onPaused"

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;)V

    invoke-super {p0}, Landroid/hardware/display/VirtualDisplay$Callback;->onPaused()V

    return-void
.end method

.method public onResumed()V
    .locals 2

    iget-object v0, p0, Le2/a$h;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v1, "ScreenShot onResumed"

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;)V

    invoke-super {p0}, Landroid/hardware/display/VirtualDisplay$Callback;->onResumed()V

    return-void
.end method

.method public onStopped()V
    .locals 2

    iget-object v0, p0, Le2/a$h;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v1, "ScreenShot onStopped"

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;)V

    invoke-super {p0}, Landroid/hardware/display/VirtualDisplay$Callback;->onStopped()V

    return-void
.end method
