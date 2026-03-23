.class Lcom/nirenr/talkman/dialog/VirtualScreen$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/dialog/VirtualScreen;->n(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/dialog/VirtualScreen;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/dialog/VirtualScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/dialog/VirtualScreen$c;->a:Lcom/nirenr/talkman/dialog/VirtualScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/VirtualScreen$c;->a:Lcom/nirenr/talkman/dialog/VirtualScreen;

    invoke-virtual {p1}, Lcom/nirenr/talkman/dialog/VirtualScreen;->l()V

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/VirtualScreen$c;->a:Lcom/nirenr/talkman/dialog/VirtualScreen;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/VirtualScreen;->d(Lcom/nirenr/talkman/dialog/VirtualScreen;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    invoke-static {p1}, Lk2/a;->b(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/VirtualScreen$c;->a:Lcom/nirenr/talkman/dialog/VirtualScreen;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/VirtualScreen;->e(Lcom/nirenr/talkman/dialog/VirtualScreen;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/VirtualScreen$c;->a:Lcom/nirenr/talkman/dialog/VirtualScreen;

    invoke-static {v0}, Lcom/nirenr/talkman/dialog/VirtualScreen;->d(Lcom/nirenr/talkman/dialog/VirtualScreen;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    new-instance v1, Lcom/nirenr/talkman/dialog/VirtualScreen$c$a;

    invoke-direct {v1, p0}, Lcom/nirenr/talkman/dialog/VirtualScreen$c$a;-><init>(Lcom/nirenr/talkman/dialog/VirtualScreen$c;)V

    invoke-virtual {p1, v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->scrollBackward(Landroid/view/accessibility/AccessibilityNodeInfo;Lcom/nirenr/talkman/OnScrolledListener;)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/VirtualScreen$c;->a:Lcom/nirenr/talkman/dialog/VirtualScreen;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/VirtualScreen;->e(Lcom/nirenr/talkman/dialog/VirtualScreen;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    const-wide v3, 0x3fc999999999999aL    # 0.2

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    const-wide v7, 0x3fe999999999999aL    # 0.8

    const/16 v9, 0x3e8

    invoke-virtual/range {v0 .. v9}, Lcom/nirenr/talkman/TalkManAccessibilityService;->swipe(DDDDI)Z

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/VirtualScreen$c;->a:Lcom/nirenr/talkman/dialog/VirtualScreen;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/VirtualScreen;->e(Lcom/nirenr/talkman/dialog/VirtualScreen;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/nirenr/talkman/dialog/VirtualScreen$c$b;

    invoke-direct {v0, p0}, Lcom/nirenr/talkman/dialog/VirtualScreen$c$b;-><init>(Lcom/nirenr/talkman/dialog/VirtualScreen$c;)V

    const-wide/16 v1, 0x5dc

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method
