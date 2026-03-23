.class Lh2/f$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh2/f;->onDismiss(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lh2/f;


# direct methods
.method constructor <init>(Lh2/f;)V
    .locals 0

    iput-object p1, p0, Lh2/f$b;->a:Lh2/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lh2/f$b;->a:Lh2/f;

    invoke-static {v0}, Lh2/f;->e(Lh2/f;)I

    move-result v0

    if-gez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lh2/f$b;->a:Lh2/f;

    invoke-static {v0}, Lh2/f;->a(Lh2/f;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lh2/f$b;->a:Lh2/f;

    invoke-static {v1}, Lh2/f;->b(Lh2/f;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lh2/f$b;->a:Lh2/f;

    invoke-static {v2}, Lh2/f;->e(Lh2/f;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lh2/f$b;->a:Lh2/f;

    invoke-static {v0}, Lh2/f;->a(Lh2/f;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lh2/f$b;->a:Lh2/f;

    invoke-static {v1}, Lh2/f;->b(Lh2/f;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lh2/f$b;->a:Lh2/f;

    invoke-static {v2}, Lh2/f;->e(Lh2/f;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lh2/f$b;->a:Lh2/f;

    invoke-static {v0}, Lh2/f;->a(Lh2/f;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lh2/f$b;->a:Lh2/f;

    invoke-static {v1}, Lh2/f;->b(Lh2/f;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lh2/f$b;->a:Lh2/f;

    invoke-static {v2}, Lh2/f;->e(Lh2/f;)I

    move-result v2

    aget-object v1, v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lh2/f$b;->a:Lh2/f;

    invoke-static {v0}, Lh2/f;->a(Lh2/f;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lk2/c;->g(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lh2/f$b;->a:Lh2/f;

    invoke-static {v0}, Lh2/f;->d(Lh2/f;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    iget-object v1, p0, Lh2/f$b;->a:Lh2/f;

    invoke-static {v1}, Lh2/f;->c(Lh2/f;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setAccessibilityFocus(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    iget-object v0, p0, Lh2/f$b;->a:Lh2/f;

    invoke-static {v0}, Lh2/f;->d(Lh2/f;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    iget-object v1, p0, Lh2/f$b;->a:Lh2/f;

    invoke-static {v1}, Lh2/f;->d(Lh2/f;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v1

    iget-object v2, p0, Lh2/f$b;->a:Lh2/f;

    invoke-static {v2}, Lh2/f;->d(Lh2/f;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v2

    const v3, 0x7f0701f1

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lh2/f$b;->a:Lh2/f;

    invoke-static {v3}, Lh2/f;->b(Lh2/f;)[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lh2/f$b;->a:Lh2/f;

    invoke-static {v4}, Lh2/f;->e(Lh2/f;)I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/androlua/LuaService;->getLuaExtPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->doCmd(Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method
