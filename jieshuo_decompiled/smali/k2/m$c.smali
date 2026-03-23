.class Lk2/m$c;
.super Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk2/m;->z(Landroid/accessibilityservice/GestureDescription;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lk2/l0;

.field final synthetic b:Lk2/m;


# direct methods
.method constructor <init>(Lk2/m;Lk2/l0;)V
    .locals 0

    iput-object p1, p0, Lk2/m$c;->b:Lk2/m;

    iput-object p2, p0, Lk2/m$c;->a:Lk2/l0;

    invoke-direct {p0}, Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelled(Landroid/accessibilityservice/GestureDescription;)V
    .locals 1

    iget-object p1, p0, Lk2/m$c;->a:Lk2/l0;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lk2/l0;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lk2/m$c;->b:Lk2/m;

    invoke-static {p1}, Lk2/m;->e(Lk2/m;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    iget-object v0, p0, Lk2/m$c;->b:Lk2/m;

    invoke-static {v0}, Lk2/m;->e(Lk2/m;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isUseEdgeGesture()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setEdgeGesture(Z)V

    iget-object p1, p0, Lk2/m$c;->b:Lk2/m;

    invoke-static {p1}, Lk2/m;->e(Lk2/m;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setTouchExplorationMode(Z)Z

    iget-object p1, p0, Lk2/m$c;->b:Lk2/m;

    invoke-static {p1}, Lk2/m;->q(Lk2/m;)V

    return-void
.end method

.method public onCompleted(Landroid/accessibilityservice/GestureDescription;)V
    .locals 1

    iget-object p1, p0, Lk2/m$c;->a:Lk2/l0;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lk2/l0;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lk2/m$c;->b:Lk2/m;

    invoke-static {p1}, Lk2/m;->e(Lk2/m;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    iget-object v0, p0, Lk2/m$c;->b:Lk2/m;

    invoke-static {v0}, Lk2/m;->e(Lk2/m;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isUseEdgeGesture()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setEdgeGesture(Z)V

    iget-object p1, p0, Lk2/m$c;->b:Lk2/m;

    invoke-static {p1}, Lk2/m;->e(Lk2/m;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setTouchExplorationMode(Z)Z

    iget-object p1, p0, Lk2/m$c;->b:Lk2/m;

    invoke-static {p1}, Lk2/m;->q(Lk2/m;)V

    return-void
.end method
