.class Lcom/nirenr/talkman/TalkManAccessibilityService$l5;
.super Landroid/media/AudioDeviceCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/TalkManAccessibilityService;->create()V
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

    iput-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$l5;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {p0}, Landroid/media/AudioDeviceCallback;-><init>()V

    return-void
.end method

.method private a(Landroid/media/AudioDeviceInfo;)Z
    .locals 1

    invoke-static {p1}, Lcom/nirenr/talkman/q1;->a(Landroid/media/AudioDeviceInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/nirenr/talkman/r1;->a(Landroid/media/AudioDeviceInfo;)I

    move-result p1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public onAudioDevicesAdded([Landroid/media/AudioDeviceInfo;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/media/AudioDeviceCallback;->onAudioDevicesAdded([Landroid/media/AudioDeviceInfo;)V

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p1, v1

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService$l5;->a(Landroid/media/AudioDeviceInfo;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$l5;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->N0(Lcom/nirenr/talkman/TalkManAccessibilityService;)Lcom/nirenr/talkman/a;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$l5;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->N0(Lcom/nirenr/talkman/TalkManAccessibilityService;)Lcom/nirenr/talkman/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nirenr/talkman/a;->j()V

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$l5;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->V2(Lcom/nirenr/talkman/TalkManAccessibilityService;)V

    :cond_1
    return-void

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public onAudioDevicesRemoved([Landroid/media/AudioDeviceInfo;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/media/AudioDeviceCallback;->onAudioDevicesRemoved([Landroid/media/AudioDeviceInfo;)V

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p1, v1

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService$l5;->a(Landroid/media/AudioDeviceInfo;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$l5;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->N0(Lcom/nirenr/talkman/TalkManAccessibilityService;)Lcom/nirenr/talkman/a;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$l5;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->N0(Lcom/nirenr/talkman/TalkManAccessibilityService;)Lcom/nirenr/talkman/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nirenr/talkman/a;->j()V

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$l5;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->V2(Lcom/nirenr/talkman/TalkManAccessibilityService;)V

    :cond_1
    return-void

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
