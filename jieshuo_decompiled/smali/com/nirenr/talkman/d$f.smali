.class Lcom/nirenr/talkman/d$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/d;->i(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/d;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/d;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/d$f;->a:Lcom/nirenr/talkman/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/nirenr/talkman/d$f;->a:Lcom/nirenr/talkman/d;

    invoke-static {v0}, Lcom/nirenr/talkman/d;->b(Lcom/nirenr/talkman/d;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/d$f;->a:Lcom/nirenr/talkman/d;

    invoke-static {v1}, Lcom/nirenr/talkman/d;->b(Lcom/nirenr/talkman/d;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v1

    const v2, 0x7f070936

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->findAccessibilityNodeInfoByText(Ljava/lang/String;I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    iget-object v0, p0, Lcom/nirenr/talkman/d$f;->a:Lcom/nirenr/talkman/d;

    invoke-static {v0}, Lcom/nirenr/talkman/d;->b(Lcom/nirenr/talkman/d;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v1

    const v2, 0x7f070432

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/d$f;->a:Lcom/nirenr/talkman/d;

    invoke-static {v0}, Lcom/nirenr/talkman/d;->b(Lcom/nirenr/talkman/d;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v1

    const v2, 0x7f070431

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nirenr/talkman/d;->c(Lcom/nirenr/talkman/d;Ljava/lang/String;)V

    return-void
.end method
