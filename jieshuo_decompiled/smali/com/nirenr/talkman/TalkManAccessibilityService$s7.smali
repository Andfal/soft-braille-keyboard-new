.class Lcom/nirenr/talkman/TalkManAccessibilityService$s7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/TalkManAccessibilityService;->M6(Landroid/view/accessibility/AccessibilityEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/nirenr/talkman/TalkManAccessibilityService;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService;I)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$s7;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iput p2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$s7;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$s7;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getAllText(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$s7;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v3, "VideoActivity23"

    invoke-virtual {v2, v3, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "\u9080\u8bf7\u4f60"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$s7;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->L0(Lcom/nirenr/talkman/TalkManAccessibilityService;)I

    move-result v2

    iget v3, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$s7;->a:I

    if-ge v2, v3, :cond_0

    iget-object v2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$s7;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->L0(Lcom/nirenr/talkman/TalkManAccessibilityService;)I

    move-result v3

    add-int/2addr v3, v1

    invoke-static {v2, v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->m2(Lcom/nirenr/talkman/TalkManAccessibilityService;I)V

    iget-object v1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$s7;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speak(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$s7;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
