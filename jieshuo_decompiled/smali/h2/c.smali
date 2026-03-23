.class public Lh2/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private final a:Lcom/nirenr/talkman/TalkManAccessibilityService;

.field private final b:Landroid/view/accessibility/AccessibilityNodeInfo;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/view/accessibility/AccessibilityNodeInfo;

.field private g:I

.field private h:Landroid/app/Dialog;

.field private i:Landroid/widget/GridView;

.field private j:[Ljava/lang/String;

.field public k:I

.field private l:Ljava/lang/String;

.field private m:Landroid/view/accessibility/AccessibilityNodeInfo;

.field private n:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lh2/c;->g:I

    iput v0, p0, Lh2/c;->k:I

    iput-object p1, p0, Lh2/c;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    iput-object p1, p0, Lh2/c;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    return-void
.end method

.method static bridge synthetic a(Lh2/c;)Landroid/app/Dialog;
    .locals 0

    iget-object p0, p0, Lh2/c;->h:Landroid/app/Dialog;

    return-object p0
.end method

.method static bridge synthetic b(Lh2/c;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lh2/c;->n:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic c(Lh2/c;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lh2/c;->j:[Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic d(Lh2/c;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 0

    iget-object p0, p0, Lh2/c;->m:Landroid/view/accessibility/AccessibilityNodeInfo;

    return-object p0
.end method

.method static bridge synthetic e(Lh2/c;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 0

    iget-object p0, p0, Lh2/c;->f:Landroid/view/accessibility/AccessibilityNodeInfo;

    return-object p0
.end method

.method static bridge synthetic f(Lh2/c;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lh2/c;->d:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic g(Lh2/c;)Lcom/nirenr/talkman/TalkManAccessibilityService;
    .locals 0

    iget-object p0, p0, Lh2/c;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    return-object p0
.end method

.method static bridge synthetic h(Lh2/c;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lh2/c;->l:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic i(Lh2/c;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lh2/c;->n:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic j(Lh2/c;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    iput-object p1, p0, Lh2/c;->f:Landroid/view/accessibility/AccessibilityNodeInfo;

    return-void
.end method

.method static bridge synthetic k(Lh2/c;I)V
    .locals 0

    iput p1, p0, Lh2/c;->g:I

    return-void
.end method

.method static bridge synthetic l(Lh2/c;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p1}, Lh2/c;->o(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static bridge synthetic m(Lh2/c;)V
    .locals 0

    invoke-direct {p0}, Lh2/c;->u()V

    return-void
.end method

.method private o(Ljava/lang/CharSequence;)V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lh2/c;->d:Ljava/util/ArrayList;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lh2/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lh2/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lh2/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lh2/c;->d:Ljava/util/ArrayList;

    iget-object v4, p0, Lh2/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lh2/c;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const v1, 0x7f0703d6

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v3, v4, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->postSpeak(JLjava/lang/String;)V

    iget-object v1, p0, Lh2/c;->i:Landroid/widget/GridView;

    new-instance v2, Lcom/androlua/SingleLineAdapter;

    iget-object v3, p0, Lh2/c;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v4, 0x1090003

    invoke-direct {v2, v3, v4, v0}, Lcom/androlua/SingleLineAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lh2/c;->n:Ljava/lang/String;

    return-void
.end method

.method private q(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0, p1}, Lh2/c;->r(Ljava/util/HashMap;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-void
.end method

.method private r(Ljava/util/HashMap;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lh2/c;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getNodeInfoText(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lh2/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object v0, p0, Lh2/c;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lh2/c;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isInWebView(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lh2/c;->c:Ljava/util/ArrayList;

    iget-object v1, p0, Lh2/c;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getNodeIndexId(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    :goto_1
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v0

    if-lez v0, :cond_4

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_4

    invoke-static {p2, v1}, Lk2/a;->H(Landroid/view/accessibility/AccessibilityNodeInfo;I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lh2/c;->r(Ljava/util/HashMap;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method private u()V
    .locals 5

    const/4 v0, 0x0

    iput v0, p0, Lh2/c;->k:I

    iget-object v0, p0, Lh2/c;->i:Landroid/widget/GridView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    iget-object v0, p0, Lh2/c;->i:Landroid/widget/GridView;

    new-instance v1, Lcom/androlua/SingleLineAdapter;

    iget-object v2, p0, Lh2/c;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v3, 0x1090003

    iget-object v4, p0, Lh2/c;->c:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3, v4}, Lcom/androlua/SingleLineAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method


# virtual methods
.method public n()V
    .locals 1

    iget-object v0, p0, Lh2/c;->h:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh2/c;->h:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iput p2, p0, Lh2/c;->g:I

    if-ltz p2, :cond_0

    iget-object p1, p0, Lh2/c;->d:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    iput-object p1, p0, Lh2/c;->f:Landroid/view/accessibility/AccessibilityNodeInfo;

    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    const/4 p1, 0x0

    iput-object p1, p0, Lh2/c;->n:Ljava/lang/String;

    iget p1, p0, Lh2/c;->k:I

    if-nez p1, :cond_1

    iget-object p1, p0, Lh2/c;->f:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lh2/c;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setAccessibilityFocus(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    iget-object p1, p0, Lh2/c;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lh2/c$c;

    invoke-direct {v0, p0}, Lh2/c$c;-><init>(Lh2/c;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public p()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lh2/c;->c:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lh2/c;->d:Ljava/util/ArrayList;

    iget-object v0, p0, Lh2/c;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    iget-object v1, p0, Lh2/c;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->findListView(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    iput-object v1, p0, Lh2/c;->m:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {p0, v0}, Lh2/c;->q(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lh2/c;->d:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lh2/c;->e:Ljava/util/ArrayList;

    return-void
.end method

.method public s()Z
    .locals 1

    iget-object v0, p0, Lh2/c;->h:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public t()V
    .locals 6

    const/4 v0, 0x0

    iput-object v0, p0, Lh2/c;->f:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p0}, Lh2/c;->p()V

    iget-object v0, p0, Lh2/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [Ljava/lang/String;

    iget-object v2, p0, Lh2/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    new-instance v2, Landroid/app/Dialog;

    iget-object v3, p0, Lh2/c;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const/high16 v4, 0x7f080000

    invoke-direct {v2, v3, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lh2/c;->h:Landroid/app/Dialog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lh2/c;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v4}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getAppName(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lh2/c;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v5, 0x7f07034b

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lh2/c;->h:Landroid/app/Dialog;

    invoke-virtual {v2, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v2, p0, Lh2/c;->h:Landroid/app/Dialog;

    const v3, 0x7f050009

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setContentView(I)V

    iget-object v2, p0, Lh2/c;->h:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_1

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x16

    if-lt v3, v4, :cond_0

    const/16 v3, 0x7f0

    goto :goto_0

    :cond_0
    const/16 v3, 0x7da

    :goto_0
    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    iget-object v2, p0, Lh2/c;->h:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    :cond_1
    iget-object v2, p0, Lh2/c;->h:Landroid/app/Dialog;

    const v3, 0x7f04002f

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/GridView;

    iput-object v2, p0, Lh2/c;->i:Landroid/widget/GridView;

    new-instance v3, Lh2/c$d;

    invoke-direct {v3, p0}, Lh2/c$d;-><init>(Lh2/c;)V

    invoke-virtual {v2, v3}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-array v2, v0, [Ljava/lang/String;

    iput-object v2, p0, Lh2/c;->j:[Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lh2/c;->j:[Ljava/lang/String;

    array-length v2, v1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lh2/c;->l:Ljava/lang/String;

    iget-object v0, p0, Lh2/c;->h:Landroid/app/Dialog;

    const v1, 0x7f04001d

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f070318

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(I)V

    new-instance v1, Lh2/c$e;

    invoke-direct {v1, p0}, Lh2/c$e;-><init>(Lh2/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v1, p0, Lh2/c;->n:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lh2/c;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lh2/c;->n:Ljava/lang/String;

    invoke-direct {p0, v1}, Lh2/c;->o(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_3
    invoke-direct {p0}, Lh2/c;->u()V

    :goto_2
    iget-object v1, p0, Lh2/c;->h:Landroid/app/Dialog;

    const v2, 0x7f040004

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const v2, 0x7f070180

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    new-instance v2, Lh2/c$f;

    invoke-direct {v2, p0}, Lh2/c$f;-><init>(Lh2/c;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Lh2/c$g;

    invoke-direct {v2, p0}, Lh2/c$g;-><init>(Lh2/c;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v2, p0, Lh2/c;->m:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-static {v2}, Lk2/a;->b(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    :cond_4
    iget-object v1, p0, Lh2/c;->h:Landroid/app/Dialog;

    const v2, 0x7f040013

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const v2, 0x7f070174

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    new-instance v2, Lh2/c$h;

    invoke-direct {v2, p0}, Lh2/c$h;-><init>(Lh2/c;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lh2/c;->h:Landroid/app/Dialog;

    const v4, 0x7f040016

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    const v4, 0x7f07062e

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    new-instance v4, Lh2/c$i;

    invoke-direct {v4, p0}, Lh2/c$i;-><init>(Lh2/c;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Lh2/c$j;

    invoke-direct {v2, p0}, Lh2/c$j;-><init>(Lh2/c;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v2, p0, Lh2/c;->m:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-static {v2}, Lk2/a;->c(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    :cond_5
    iget-object v1, p0, Lh2/c;->h:Landroid/app/Dialog;

    const v2, 0x7f04000c

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const v2, 0x7f07055b

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    new-instance v2, Lh2/c$k;

    invoke-direct {v2, p0}, Lh2/c$k;-><init>(Lh2/c;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lh2/c;->h:Landroid/app/Dialog;

    const v2, 0x7f040014

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const v2, 0x7f070248

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    new-instance v2, Lh2/c$l;

    invoke-direct {v2, p0}, Lh2/c$l;-><init>(Lh2/c;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lh2/c;->h:Landroid/app/Dialog;

    const v2, 0x7f040015

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const v2, 0x7f070095

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    new-instance v2, Lh2/c$a;

    invoke-direct {v2, p0}, Lh2/c$a;-><init>(Lh2/c;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lh2/c;->h:Landroid/app/Dialog;

    const v2, 0x7f04000d

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const v2, 0x7f0708ae

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    new-instance v2, Lh2/c$b;

    invoke-direct {v2, p0, v0}, Lh2/c$b;-><init>(Lh2/c;Landroid/widget/EditText;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
