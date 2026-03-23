.class Lcom/nirenr/talkman/dialog/VirtualScreen$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/OnScrolledListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/dialog/VirtualScreen$c;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/dialog/VirtualScreen$c;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/dialog/VirtualScreen$c;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/dialog/VirtualScreen$c$a;->a:Lcom/nirenr/talkman/dialog/VirtualScreen$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 3

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/VirtualScreen$c$a;->a:Lcom/nirenr/talkman/dialog/VirtualScreen$c;

    iget-object p1, p1, Lcom/nirenr/talkman/dialog/VirtualScreen$c;->a:Lcom/nirenr/talkman/dialog/VirtualScreen;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/VirtualScreen;->e(Lcom/nirenr/talkman/dialog/VirtualScreen;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/nirenr/talkman/dialog/VirtualScreen$c$a$a;

    invoke-direct {v0, p0}, Lcom/nirenr/talkman/dialog/VirtualScreen$c$a$a;-><init>(Lcom/nirenr/talkman/dialog/VirtualScreen$c$a;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p1, 0x1

    return p1
.end method
