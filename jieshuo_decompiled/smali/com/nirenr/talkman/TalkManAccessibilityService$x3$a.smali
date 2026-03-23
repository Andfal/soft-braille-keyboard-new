.class Lcom/nirenr/talkman/TalkManAccessibilityService$x3$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/TalkManAccessibilityService$x3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:Lcom/nirenr/talkman/TalkManAccessibilityService$x3;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService$x3;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$x3$a;->b:Lcom/nirenr/talkman/TalkManAccessibilityService$x3;

    iput-object p2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$x3$a;->a:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$x3$a;->a:[Ljava/lang/String;

    aget-object p1, p1, p2

    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$x3$a;->b:Lcom/nirenr/talkman/TalkManAccessibilityService$x3;

    iget-object p1, p1, Lcom/nirenr/talkman/TalkManAccessibilityService$x3;->b:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$x3$a;->b:Lcom/nirenr/talkman/TalkManAccessibilityService$x3;

    iget-object v0, p1, Lcom/nirenr/talkman/TalkManAccessibilityService$x3;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iget-object p1, p1, Lcom/nirenr/talkman/TalkManAccessibilityService$x3;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-static {p1, p2}, Lk2/a;->H(Landroid/view/accessibility/AccessibilityNodeInfo;I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->showNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-void
.end method
