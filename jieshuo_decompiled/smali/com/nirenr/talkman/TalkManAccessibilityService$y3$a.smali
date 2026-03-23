.class Lcom/nirenr/talkman/TalkManAccessibilityService$y3$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/TalkManAccessibilityService$y3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/nirenr/talkman/TalkManAccessibilityService$y3;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService$y3;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$y3$a;->b:Lcom/nirenr/talkman/TalkManAccessibilityService$y3;

    iput-object p2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$y3$a;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$y3$a;->b:Lcom/nirenr/talkman/TalkManAccessibilityService$y3;

    iget-object p1, p1, Lcom/nirenr/talkman/TalkManAccessibilityService$y3;->b:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$y3$a;->b:Lcom/nirenr/talkman/TalkManAccessibilityService$y3;

    iget-object p1, p1, Lcom/nirenr/talkman/TalkManAccessibilityService$y3;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$y3$a;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    return-void
.end method
