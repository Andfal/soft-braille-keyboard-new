.class Lcom/nirenr/talkman/TalkManAccessibilityService$h3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/TalkManAccessibilityService;->C5(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/util/ArrayList;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/text/style/ClickableSpan;

.field final synthetic b:Lcom/nirenr/talkman/TalkManAccessibilityService;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Landroid/text/style/ClickableSpan;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$h3;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iput-object p2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$h3;->a:Landroid/text/style/ClickableSpan;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$h3;->a:Landroid/text/style/ClickableSpan;

    new-instance v1, Landroid/widget/TextView;

    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    return-void
.end method
