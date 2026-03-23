.class Lcom/nirenr/talkman/TalkManAccessibilityService$x2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/TalkManAccessibilityService;->scrollBackward(Landroid/view/accessibility/AccessibilityNodeInfo;Lcom/nirenr/talkman/OnScrolledListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/OnScrolledListener;

.field final synthetic b:Landroid/view/accessibility/AccessibilityNodeInfo;

.field final synthetic c:Lcom/nirenr/talkman/TalkManAccessibilityService;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Lcom/nirenr/talkman/OnScrolledListener;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$x2;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iput-object p2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$x2;->a:Lcom/nirenr/talkman/OnScrolledListener;

    iput-object p3, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$x2;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$x2;->a:Lcom/nirenr/talkman/OnScrolledListener;

    iget-object v1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$x2;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-interface {v0, v1}, Lcom/nirenr/talkman/OnScrolledListener;->onScrolled(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$x2;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->g0(Lcom/nirenr/talkman/TalkManAccessibilityService;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->l2(Lcom/nirenr/talkman/TalkManAccessibilityService;I)V

    return-void
.end method
