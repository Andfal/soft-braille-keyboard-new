.class Lcom/nirenr/talkman/TalkManAccessibilityService$l3;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nirenr/talkman/TalkManAccessibilityService;
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

    iput-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$l3;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x64

    const/4 v1, 0x1

    if-eq p1, v0, :cond_4

    const/16 v0, 0x65

    if-eq p1, v0, :cond_3

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$l3;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->A(Lcom/nirenr/talkman/TalkManAccessibilityService;)Lcom/nirenr/talkman/d;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$l3;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->A(Lcom/nirenr/talkman/TalkManAccessibilityService;)Lcom/nirenr/talkman/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nirenr/talkman/d;->k()I

    move-result p1

    if-eqz p1, :cond_2

    if-eq p1, v1, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$l3;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->A(Lcom/nirenr/talkman/TalkManAccessibilityService;)Lcom/nirenr/talkman/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nirenr/talkman/d;->A()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$l3;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->A(Lcom/nirenr/talkman/TalkManAccessibilityService;)Lcom/nirenr/talkman/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nirenr/talkman/d;->B()V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$l3;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->A(Lcom/nirenr/talkman/TalkManAccessibilityService;)Lcom/nirenr/talkman/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nirenr/talkman/d;->g()V

    :goto_0
    return-void

    :cond_3
    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$l3;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setWakeLock_aux(Z)V

    return-void

    :cond_4
    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$l3;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p1, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setWakeLock_aux(Z)V

    return-void
.end method
