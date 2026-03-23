.class Lcom/nirenr/talkman/TalkManAccessibilityService$x7$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/OnAccessibilityFocusedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/TalkManAccessibilityService$x7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/TalkManAccessibilityService$x7;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService$x7;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$x7$a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService$x7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccessibilityFocused(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$x7$a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService$x7;

    iget-object p1, p1, Lcom/nirenr/talkman/TalkManAccessibilityService$x7;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->toStart()Z

    return-void
.end method
