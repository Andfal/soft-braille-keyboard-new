.class Lcom/nirenr/talkman/TalkManAccessibilityService$y7$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/TalkManAccessibilityService$y7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/TalkManAccessibilityService$y7;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService$y7;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$y7$a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService$y7;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x66

    if-eq v0, v1, :cond_2

    const/16 v1, 0x67

    if-eq v0, v1, :cond_1

    const/16 v1, 0x6a

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$y7$a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService$y7;

    iget-object v0, v0, Lcom/nirenr/talkman/TalkManAccessibilityService$y7;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->e3(Lcom/nirenr/talkman/TalkManAccessibilityService;IF)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$y7$a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService$y7;

    iget-object p1, p1, Lcom/nirenr/talkman/TalkManAccessibilityService$y7;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->vibrate_aux()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$y7$a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService$y7;

    iget-object v0, v0, Lcom/nirenr/talkman/TalkManAccessibilityService$y7;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->d3(Lcom/nirenr/talkman/TalkManAccessibilityService;I)V

    :goto_0
    return-void
.end method
