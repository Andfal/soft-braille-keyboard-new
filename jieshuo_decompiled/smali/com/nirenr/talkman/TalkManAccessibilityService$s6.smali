.class Lcom/nirenr/talkman/TalkManAccessibilityService$s6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/TalkManAccessibilityService;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Landroid/view/accessibility/AccessibilityEvent;

.field final synthetic c:Lcom/nirenr/talkman/TalkManAccessibilityService;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService;JLandroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$s6;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iput-wide p2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$s6;->a:J

    iput-object p4, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$s6;->b:Landroid/view/accessibility/AccessibilityEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-wide v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$s6;->a:J

    iget-object v2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$s6;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->i0(Lcom/nirenr/talkman/TalkManAccessibilityService;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$s6;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iget-object v1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$s6;->b:Landroid/view/accessibility/AccessibilityEvent;

    invoke-static {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->a3(Lcom/nirenr/talkman/TalkManAccessibilityService;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method
