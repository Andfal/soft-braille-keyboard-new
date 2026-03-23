.class Lk2/m$b;
.super Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk2/m;->y(Landroid/accessibilityservice/GestureDescription;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lk2/m0;

.field final synthetic b:Lk2/m;


# direct methods
.method constructor <init>(Lk2/m;Lk2/m0;)V
    .locals 0

    iput-object p1, p0, Lk2/m$b;->b:Lk2/m;

    iput-object p2, p0, Lk2/m$b;->a:Lk2/m0;

    invoke-direct {p0}, Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelled(Landroid/accessibilityservice/GestureDescription;)V
    .locals 4

    iget-object v0, p0, Lk2/m$b;->b:Lk2/m;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lk2/m;->i(Lk2/m;Z)V

    const-string v0, "GlobalActionAutomator"

    const-string v2, "onCancelled"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lk2/m$b;->b:Lk2/m;

    invoke-static {v0}, Lk2/m;->g(Lk2/m;)[Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lk2/m$b;->b:Lk2/m;

    invoke-static {v0}, Lk2/m;->c(Lk2/m;)I

    move-result v0

    add-int/2addr v0, v2

    iget-object v3, p0, Lk2/m$b;->b:Lk2/m;

    invoke-static {v3}, Lk2/m;->g(Lk2/m;)[Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    move-result-object v3

    array-length v3, v3

    if-ge v0, v3, :cond_0

    iget-object p1, p0, Lk2/m$b;->b:Lk2/m;

    invoke-static {p1}, Lk2/m;->c(Lk2/m;)I

    move-result v0

    add-int/2addr v0, v2

    invoke-static {p1, v0}, Lk2/m;->j(Lk2/m;I)V

    iget-object p1, p0, Lk2/m$b;->b:Lk2/m;

    new-array v0, v2, [Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    invoke-static {p1}, Lk2/m;->g(Lk2/m;)[Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    move-result-object v2

    iget-object v3, p0, Lk2/m$b;->b:Lk2/m;

    invoke-static {v3}, Lk2/m;->c(Lk2/m;)I

    move-result v3

    aget-object v2, v2, v3

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Lk2/m;->x([Landroid/accessibilityservice/GestureDescription$StrokeDescription;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lk2/m$b;->b:Lk2/m;

    invoke-static {v0}, Lk2/m;->d(Lk2/m;)I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lk2/m$b;->b:Lk2/m;

    invoke-static {v0}, Lk2/m;->d(Lk2/m;)I

    move-result v1

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lk2/m;->k(Lk2/m;I)V

    iget-object v0, p0, Lk2/m$b;->b:Lk2/m;

    invoke-static {v0, p1}, Lk2/m;->o(Lk2/m;Landroid/accessibilityservice/GestureDescription;)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lk2/m$b;->b:Lk2/m;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lk2/m;->m(Lk2/m;[Landroid/accessibilityservice/GestureDescription$StrokeDescription;)V

    iget-object p1, p0, Lk2/m$b;->b:Lk2/m;

    invoke-static {p1}, Lk2/m;->e(Lk2/m;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    iget-object v0, p0, Lk2/m$b;->b:Lk2/m;

    invoke-static {v0}, Lk2/m;->e(Lk2/m;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isUseEdgeGesture()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setEdgeGesture(Z)V

    iget-object p1, p0, Lk2/m$b;->b:Lk2/m;

    invoke-static {p1}, Lk2/m;->e(Lk2/m;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setTouchExplorationMode(Z)Z

    :goto_0
    iget-object p1, p0, Lk2/m$b;->a:Lk2/m0;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lk2/m0;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public onCompleted(Landroid/accessibilityservice/GestureDescription;)V
    .locals 4

    iget-object v0, p0, Lk2/m$b;->b:Lk2/m;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lk2/m;->i(Lk2/m;Z)V

    const-string v0, "GlobalActionAutomator"

    const-string v2, "onCompleted"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lk2/m$b;->b:Lk2/m;

    invoke-static {v0}, Lk2/m;->g(Lk2/m;)[Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lk2/m$b;->b:Lk2/m;

    invoke-static {v0}, Lk2/m;->c(Lk2/m;)I

    move-result v0

    add-int/2addr v0, v2

    iget-object v3, p0, Lk2/m$b;->b:Lk2/m;

    invoke-static {v3}, Lk2/m;->g(Lk2/m;)[Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    move-result-object v3

    array-length v3, v3

    if-ge v0, v3, :cond_1

    iget-object p1, p0, Lk2/m$b;->b:Lk2/m;

    invoke-static {p1}, Lk2/m;->c(Lk2/m;)I

    move-result v0

    add-int/2addr v0, v2

    invoke-static {p1, v0}, Lk2/m;->j(Lk2/m;I)V

    iget-object p1, p0, Lk2/m$b;->b:Lk2/m;

    invoke-static {p1}, Lk2/m;->f(Lk2/m;)I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lk2/m$b;->b:Lk2/m;

    invoke-static {p1}, Lk2/m;->b(Lk2/m;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lk2/m$b$a;

    invoke-direct {v0, p0}, Lk2/m$b$a;-><init>(Lk2/m$b;)V

    iget-object v1, p0, Lk2/m$b;->b:Lk2/m;

    invoke-static {v1}, Lk2/m;->f(Lk2/m;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_0
    iget-object p1, p0, Lk2/m$b;->b:Lk2/m;

    new-array v0, v2, [Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    invoke-static {p1}, Lk2/m;->g(Lk2/m;)[Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    move-result-object v2

    iget-object v3, p0, Lk2/m$b;->b:Lk2/m;

    invoke-static {v3}, Lk2/m;->c(Lk2/m;)I

    move-result v3

    aget-object v2, v2, v3

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Lk2/m;->x([Landroid/accessibilityservice/GestureDescription$StrokeDescription;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lk2/m$b;->b:Lk2/m;

    invoke-static {v0}, Lk2/m;->d(Lk2/m;)I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lk2/m$b;->b:Lk2/m;

    invoke-static {v0}, Lk2/m;->a(Lk2/m;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lk2/m$b;->b:Lk2/m;

    invoke-static {v0}, Lk2/m;->a(Lk2/m;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lk2/m;->n(Lk2/m;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lk2/m$b;->b:Lk2/m;

    invoke-static {v0}, Lk2/m;->d(Lk2/m;)I

    move-result v1

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lk2/m;->k(Lk2/m;I)V

    iget-object v0, p0, Lk2/m$b;->b:Lk2/m;

    invoke-static {v0, p1}, Lk2/m;->o(Lk2/m;Landroid/accessibilityservice/GestureDescription;)Z

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lk2/m$b;->b:Lk2/m;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lk2/m;->m(Lk2/m;[Landroid/accessibilityservice/GestureDescription$StrokeDescription;)V

    iget-object p1, p0, Lk2/m$b;->b:Lk2/m;

    invoke-static {p1, v0}, Lk2/m;->h(Lk2/m;Ljava/lang/String;)V

    iget-object p1, p0, Lk2/m$b;->b:Lk2/m;

    invoke-static {p1, v1}, Lk2/m;->k(Lk2/m;I)V

    iget-object p1, p0, Lk2/m$b;->b:Lk2/m;

    invoke-static {p1, v1}, Lk2/m;->l(Lk2/m;I)V

    iget-object p1, p0, Lk2/m$b;->b:Lk2/m;

    invoke-static {p1}, Lk2/m;->e(Lk2/m;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    iget-object v0, p0, Lk2/m$b;->b:Lk2/m;

    invoke-static {v0}, Lk2/m;->e(Lk2/m;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isUseEdgeGesture()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setEdgeGesture(Z)V

    iget-object p1, p0, Lk2/m$b;->b:Lk2/m;

    invoke-static {p1}, Lk2/m;->e(Lk2/m;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setTouchExplorationMode(Z)Z

    :goto_0
    iget-object p1, p0, Lk2/m$b;->a:Lk2/m0;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lk2/m0;->a(Ljava/lang/Object;)V

    return-void
.end method
