.class Lh2/p$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh2/p;->onDismiss(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lh2/p;


# direct methods
.method constructor <init>(Lh2/p;)V
    .locals 0

    iput-object p1, p0, Lh2/p$b;->a:Lh2/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lh2/p$b;->a:Lh2/p;

    invoke-static {v0}, Lh2/p;->e(Lh2/p;)I

    move-result v0

    if-gez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lh2/p$b;->a:Lh2/p;

    invoke-static {v0}, Lh2/p;->a(Lh2/p;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lh2/p$b;->a:Lh2/p;

    invoke-static {v1}, Lh2/p;->b(Lh2/p;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lh2/p$b;->a:Lh2/p;

    invoke-static {v2}, Lh2/p;->e(Lh2/p;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lh2/p$b;->a:Lh2/p;

    invoke-static {v0}, Lh2/p;->a(Lh2/p;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lh2/p$b;->a:Lh2/p;

    invoke-static {v1}, Lh2/p;->b(Lh2/p;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lh2/p$b;->a:Lh2/p;

    invoke-static {v2}, Lh2/p;->e(Lh2/p;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lh2/p$b;->a:Lh2/p;

    invoke-static {v0}, Lh2/p;->a(Lh2/p;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lh2/p$b;->a:Lh2/p;

    invoke-static {v1}, Lh2/p;->b(Lh2/p;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lh2/p$b;->a:Lh2/p;

    invoke-static {v2}, Lh2/p;->e(Lh2/p;)I

    move-result v2

    aget-object v1, v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lh2/p$b;->a:Lh2/p;

    invoke-static {v0}, Lh2/p;->a(Lh2/p;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lk2/c;->i(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lh2/p$b;->a:Lh2/p;

    invoke-static {v0}, Lh2/p;->d(Lh2/p;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    iget-object v1, p0, Lh2/p$b;->a:Lh2/p;

    invoke-static {v1}, Lh2/p;->c(Lh2/p;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setAccessibilityFocus(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    iget-object v0, p0, Lh2/p$b;->a:Lh2/p;

    invoke-static {v0}, Lh2/p;->d(Lh2/p;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v1

    iget-object v2, p0, Lh2/p$b;->a:Lh2/p;

    invoke-static {v2}, Lh2/p;->b(Lh2/p;)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lh2/p$b;->a:Lh2/p;

    invoke-static {v3}, Lh2/p;->e(Lh2/p;)I

    move-result v3

    aget-object v2, v2, v3

    const-string v3, "/main.lua"

    invoke-virtual {v1, v2, v3}, Lcom/androlua/LuaApplication;->getPluginsPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lh2/p$b;->a:Lh2/p;

    invoke-static {v2}, Lh2/p;->c(Lh2/p;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/androlua/LuaService;->doFile(Ljava/lang/String;Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/Object;

    return-void
.end method
