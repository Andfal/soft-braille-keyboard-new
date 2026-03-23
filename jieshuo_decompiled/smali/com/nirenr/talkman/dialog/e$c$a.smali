.class Lcom/nirenr/talkman/dialog/e$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/dialog/e$c;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/dialog/e$c;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/dialog/e$c;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/dialog/e$c$a;->a:Lcom/nirenr/talkman/dialog/e$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/e$c$a;->a:Lcom/nirenr/talkman/dialog/e$c;

    iget-object p1, p1, Lcom/nirenr/talkman/dialog/e$c;->a:Lcom/nirenr/talkman/dialog/e;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/e;->e(Lcom/nirenr/talkman/dialog/e;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    invoke-static {p1}, Lk2/a;->Q(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result p1

    const-string p2, ""

    const-string v0, ")"

    const-string v1, "-"

    const-string v2, "("

    const v3, 0x7f070260

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/e$c$a;->a:Lcom/nirenr/talkman/dialog/e$c;

    iget-object p1, p1, Lcom/nirenr/talkman/dialog/e$c;->a:Lcom/nirenr/talkman/dialog/e;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/e;->f(Lcom/nirenr/talkman/dialog/e;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    iget-object v4, p0, Lcom/nirenr/talkman/dialog/e$c$a;->a:Lcom/nirenr/talkman/dialog/e$c;

    iget-object v4, v4, Lcom/nirenr/talkman/dialog/e$c;->a:Lcom/nirenr/talkman/dialog/e;

    invoke-static {v4}, Lcom/nirenr/talkman/dialog/e;->e(Lcom/nirenr/talkman/dialog/e;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getText4(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    new-instance v4, Lcom/nirenr/talkman/dialog/EditDialog;

    iget-object v5, p0, Lcom/nirenr/talkman/dialog/e$c$a;->a:Lcom/nirenr/talkman/dialog/e$c;

    iget-object v5, v5, Lcom/nirenr/talkman/dialog/e$c;->a:Lcom/nirenr/talkman/dialog/e;

    invoke-static {v5}, Lcom/nirenr/talkman/dialog/e;->f(Lcom/nirenr/talkman/dialog/e;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/nirenr/talkman/dialog/e$c$a;->a:Lcom/nirenr/talkman/dialog/e$c;

    iget-object v7, v7, Lcom/nirenr/talkman/dialog/e$c;->a:Lcom/nirenr/talkman/dialog/e;

    invoke-static {v7}, Lcom/nirenr/talkman/dialog/e;->f(Lcom/nirenr/talkman/dialog/e;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/nirenr/talkman/dialog/e$c$a$a;

    invoke-direct {v0, p0}, Lcom/nirenr/talkman/dialog/e$c$a$a;-><init>(Lcom/nirenr/talkman/dialog/e$c$a;)V

    invoke-direct {v4, v5, p1, p2, v0}, Lcom/nirenr/talkman/dialog/EditDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/nirenr/talkman/dialog/EditDialog$EditDialogCallback;)V

    invoke-virtual {v4}, Lcom/nirenr/talkman/dialog/EditDialog;->g()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/e$c$a;->a:Lcom/nirenr/talkman/dialog/e$c;

    iget-object p1, p1, Lcom/nirenr/talkman/dialog/e$c;->a:Lcom/nirenr/talkman/dialog/e;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/e;->e(Lcom/nirenr/talkman/dialog/e;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getRangeInfo()Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->getMin()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->getMax()F

    move-result p1

    float-to-int p1, p1

    new-instance v5, Lcom/nirenr/talkman/dialog/EditDialog;

    iget-object v6, p0, Lcom/nirenr/talkman/dialog/e$c$a;->a:Lcom/nirenr/talkman/dialog/e$c;

    iget-object v6, v6, Lcom/nirenr/talkman/dialog/e$c;->a:Lcom/nirenr/talkman/dialog/e;

    invoke-static {v6}, Lcom/nirenr/talkman/dialog/e;->f(Lcom/nirenr/talkman/dialog/e;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/nirenr/talkman/dialog/e$c$a;->a:Lcom/nirenr/talkman/dialog/e$c;

    iget-object v8, v8, Lcom/nirenr/talkman/dialog/e$c;->a:Lcom/nirenr/talkman/dialog/e;

    invoke-static {v8}, Lcom/nirenr/talkman/dialog/e;->f(Lcom/nirenr/talkman/dialog/e;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/nirenr/talkman/dialog/e$c$a$b;

    invoke-direct {v0, p0}, Lcom/nirenr/talkman/dialog/e$c$a$b;-><init>(Lcom/nirenr/talkman/dialog/e$c$a;)V

    invoke-direct {v5, v6, p1, p2, v0}, Lcom/nirenr/talkman/dialog/EditDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/nirenr/talkman/dialog/EditDialog$EditDialogCallback;)V

    invoke-virtual {v5}, Lcom/nirenr/talkman/dialog/EditDialog;->g()V

    return-void
.end method
