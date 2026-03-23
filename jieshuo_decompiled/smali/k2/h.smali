.class public Lk2/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/nirenr/talkman/TalkManAccessibilityService;

.field private final b:Lcom/nirenr/talkman/n;

.field private c:Lcom/nirenr/talkman/k;


# direct methods
.method public constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Lcom/nirenr/talkman/n;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk2/h;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iput-object p2, p0, Lk2/h;->b:Lcom/nirenr/talkman/n;

    return-void
.end method

.method static bridge synthetic a(Lk2/h;)Lcom/nirenr/talkman/TalkManAccessibilityService;
    .locals 0

    iget-object p0, p0, Lk2/h;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    return-object p0
.end method


# virtual methods
.method public b()V
    .locals 2

    iget-object v0, p0, Lk2/h;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setTouchMode(Z)V

    iget-object v0, p0, Lk2/h;->c:Lcom/nirenr/talkman/k;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nirenr/talkman/k;->j()V

    :cond_0
    return-void
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Lk2/h;->c:Lcom/nirenr/talkman/k;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nirenr/talkman/k;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d()V
    .locals 3

    iget-object v0, p0, Lk2/h;->c:Lcom/nirenr/talkman/k;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lk2/h;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lk2/h;->c:Lcom/nirenr/talkman/k;

    invoke-virtual {v0}, Lcom/nirenr/talkman/k;->f()V

    :cond_0
    :try_start_0
    new-instance v0, Lcom/nirenr/talkman/k;

    iget-object v1, p0, Lk2/h;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {v0, v1}, Lcom/nirenr/talkman/k;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lk2/h;->c:Lcom/nirenr/talkman/k;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Lk2/k0;

    iget-object v1, p0, Lk2/h;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {v0, v1}, Lk2/k0;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;)V

    iget-object v1, p0, Lk2/h;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lk2/k0;->setNode(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget-object v1, p0, Lk2/h;->c:Lcom/nirenr/talkman/k;

    invoke-virtual {v1, v0}, Lcom/nirenr/talkman/k;->m(Landroid/view/View;)V

    new-instance v1, Lk2/h$a;

    invoke-direct {v1, p0}, Lk2/h$a;-><init>(Lk2/h;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lk2/h$b;

    invoke-direct {v1, p0}, Lk2/h$b;-><init>(Lk2/h;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Lk2/h;->c:Lcom/nirenr/talkman/k;

    invoke-virtual {v0}, Lcom/nirenr/talkman/k;->n()V

    iget-object v0, p0, Lk2/h;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setTouchMode(Z)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v1, p0, Lk2/h;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v2, "Error"

    invoke-virtual {v1, v2, v0}, Lcom/androlua/LuaService;->sendError(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method
