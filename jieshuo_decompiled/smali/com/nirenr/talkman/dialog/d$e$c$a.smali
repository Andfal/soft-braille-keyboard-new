.class Lcom/nirenr/talkman/dialog/d$e$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/dialog/d$e$c;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/dialog/d$e$c;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/dialog/d$e$c;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/dialog/d$e$c$a;->a:Lcom/nirenr/talkman/dialog/d$e$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/d$e$c$a;->a:Lcom/nirenr/talkman/dialog/d$e$c;

    iget-object p1, p1, Lcom/nirenr/talkman/dialog/d$e$c;->a:Lcom/nirenr/talkman/dialog/d$e;

    iget-object p1, p1, Lcom/nirenr/talkman/dialog/d$e;->a:Lcom/nirenr/talkman/dialog/d;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/d;->c(Lcom/nirenr/talkman/dialog/d;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    iget-object p2, p0, Lcom/nirenr/talkman/dialog/d$e$c$a;->a:Lcom/nirenr/talkman/dialog/d$e$c;

    iget-object p2, p2, Lcom/nirenr/talkman/dialog/d$e$c;->a:Lcom/nirenr/talkman/dialog/d$e;

    iget-object p2, p2, Lcom/nirenr/talkman/dialog/d$e;->a:Lcom/nirenr/talkman/dialog/d;

    invoke-static {p2}, Lcom/nirenr/talkman/dialog/d;->b(Lcom/nirenr/talkman/dialog/d;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->editNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-void
.end method
