.class Lcom/nirenr/talkman/dialog/b$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/dialog/b;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/accessibility/AccessibilityNodeInfo;

.field final synthetic b:Lcom/nirenr/talkman/dialog/b;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/dialog/b;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/dialog/b$f;->b:Lcom/nirenr/talkman/dialog/b;

    iput-object p2, p0, Lcom/nirenr/talkman/dialog/b$f;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/b$f;->b:Lcom/nirenr/talkman/dialog/b;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/b;->g(Lcom/nirenr/talkman/dialog/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/b$f;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setAccessibilityFocus(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    return-void
.end method
