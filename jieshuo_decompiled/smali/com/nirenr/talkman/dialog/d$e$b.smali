.class Lcom/nirenr/talkman/dialog/d$e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/dialog/d$e;->g(Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/dialog/d$e;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/dialog/d$e;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/dialog/d$e$b;->a:Lcom/nirenr/talkman/dialog/d$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/d$e$b;->a:Lcom/nirenr/talkman/dialog/d$e;

    iget-object p1, p1, Lcom/nirenr/talkman/dialog/d$e;->a:Lcom/nirenr/talkman/dialog/d;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/d;->a(Lcom/nirenr/talkman/dialog/d;)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    new-instance p1, Lcom/nirenr/talkman/dialog/e;

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/d$e$b;->a:Lcom/nirenr/talkman/dialog/d$e;

    iget-object v0, v0, Lcom/nirenr/talkman/dialog/d$e;->a:Lcom/nirenr/talkman/dialog/d;

    invoke-static {v0}, Lcom/nirenr/talkman/dialog/d;->c(Lcom/nirenr/talkman/dialog/d;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/nirenr/talkman/dialog/e;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;)V

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/d$e$b;->a:Lcom/nirenr/talkman/dialog/d$e;

    iget-object v0, v0, Lcom/nirenr/talkman/dialog/d$e;->a:Lcom/nirenr/talkman/dialog/d;

    invoke-static {v0}, Lcom/nirenr/talkman/dialog/d;->b(Lcom/nirenr/talkman/dialog/d;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/nirenr/talkman/dialog/e;->m(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-void
.end method
