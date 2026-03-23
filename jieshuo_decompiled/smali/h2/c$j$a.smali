.class Lh2/c$j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh2/c$j;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lh2/c$j;


# direct methods
.method constructor <init>(Lh2/c$j;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lh2/c$j$a;->c:Lh2/c$j;

    iput-object p2, p0, Lh2/c$j$a;->a:Ljava/lang/String;

    iput-object p3, p0, Lh2/c$j$a;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lh2/c$j$a;->c:Lh2/c$j;

    iget-object v0, v0, Lh2/c$j;->a:Lh2/c;

    iget-object v1, p0, Lh2/c$j$a;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lh2/c;->i(Lh2/c;Ljava/lang/String;)V

    iget-object v0, p0, Lh2/c$j$a;->c:Lh2/c$j;

    iget-object v0, v0, Lh2/c$j;->a:Lh2/c;

    invoke-virtual {v0}, Lh2/c;->t()V

    iget-object v0, p0, Lh2/c$j$a;->c:Lh2/c$j;

    iget-object v0, v0, Lh2/c$j;->a:Lh2/c;

    invoke-static {v0}, Lh2/c;->f(Lh2/c;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh2/c$j$a;->c:Lh2/c$j;

    iget-object v0, v0, Lh2/c$j;->a:Lh2/c;

    invoke-static {v0}, Lh2/c;->d(Lh2/c;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    invoke-static {v0}, Lk2/a;->c(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh2/c$j$a;->c:Lh2/c$j;

    iget-object v1, p0, Lh2/c$j$a;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Lh2/c$j;->onLongClick(Landroid/view/View;)Z

    return-void

    :cond_0
    iget-object v0, p0, Lh2/c$j$a;->c:Lh2/c$j;

    iget-object v0, v0, Lh2/c$j;->a:Lh2/c;

    invoke-static {v0}, Lh2/c;->g(Lh2/c;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setTTSEnabled(Z)V

    return-void
.end method
