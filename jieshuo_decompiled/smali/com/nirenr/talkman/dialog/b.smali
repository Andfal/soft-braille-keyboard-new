.class public Lcom/nirenr/talkman/dialog/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field private final a:Lcom/nirenr/talkman/TalkManAccessibilityService;

.field private final b:Landroid/view/accessibility/AccessibilityNodeInfo;

.field private c:I

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/widget/ArrayListAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayListAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/CharSequence;

.field private g:Z

.field private h:Landroid/widget/ListView;

.field private i:I

.field private j:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/nirenr/talkman/dialog/b;->c:I

    iput-object p1, p0, Lcom/nirenr/talkman/dialog/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iput-object p2, p0, Lcom/nirenr/talkman/dialog/b;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    return-void
.end method

.method static bridge synthetic a(Lcom/nirenr/talkman/dialog/b;)Landroid/app/AlertDialog;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/dialog/b;->j:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/nirenr/talkman/dialog/b;)Landroid/widget/ArrayListAdapter;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/dialog/b;->e:Landroid/widget/ArrayListAdapter;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/nirenr/talkman/dialog/b;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/dialog/b;->f:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic d(Lcom/nirenr/talkman/dialog/b;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/dialog/b;->d:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic e(Lcom/nirenr/talkman/dialog/b;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/dialog/b;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    return-object p0
.end method

.method static bridge synthetic f(Lcom/nirenr/talkman/dialog/b;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/nirenr/talkman/dialog/b;->g:Z

    return p0
.end method

.method static bridge synthetic g(Lcom/nirenr/talkman/dialog/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/dialog/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    return-object p0
.end method

.method static bridge synthetic h(Lcom/nirenr/talkman/dialog/b;)Landroid/widget/ListView;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/dialog/b;->h:Landroid/widget/ListView;

    return-object p0
.end method

.method static bridge synthetic i(Lcom/nirenr/talkman/dialog/b;)I
    .locals 0

    iget p0, p0, Lcom/nirenr/talkman/dialog/b;->c:I

    return p0
.end method

.method static bridge synthetic j(Lcom/nirenr/talkman/dialog/b;Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/dialog/b;->f:Ljava/lang/CharSequence;

    return-void
.end method

.method static bridge synthetic k(Lcom/nirenr/talkman/dialog/b;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nirenr/talkman/dialog/b;->g:Z

    return-void
.end method

.method static bridge synthetic l(Lcom/nirenr/talkman/dialog/b;I)V
    .locals 0

    iput p1, p0, Lcom/nirenr/talkman/dialog/b;->c:I

    return-void
.end method

.method static bridge synthetic m(Lcom/nirenr/talkman/dialog/b;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nirenr/talkman/dialog/b;->o(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic n(Lcom/nirenr/talkman/dialog/b;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nirenr/talkman/dialog/b;->p(I)V

    return-void
.end method

.method private o(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x104000a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-static {p1}, Lh2/i;->b(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    return-void
.end method

.method private p(I)V
    .locals 4

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/b;->h:Landroid/widget/ListView;

    iget v1, p0, Lcom/nirenr/talkman/dialog/b;->i:I

    iget-object v2, p0, Lcom/nirenr/talkman/dialog/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/nirenr/talkman/dialog/b$h;

    invoke-direct {v1, p0, p1}, Lcom/nirenr/talkman/dialog/b$h;-><init>(Lcom/nirenr/talkman/dialog/b;I)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 p1, -0x3

    if-eq p2, p1, :cond_2

    const/4 p1, -0x2

    if-eq p2, p1, :cond_1

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/nirenr/talkman/dialog/c;

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/b;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {p1, v0, v1}, Lcom/nirenr/talkman/dialog/c;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-virtual {p1}, Lcom/nirenr/talkman/dialog/c;->q()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/nirenr/talkman/dialog/b;->g:Z

    invoke-virtual {p0}, Lcom/nirenr/talkman/dialog/b;->q()V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getClipboardList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    new-instance p1, Lh2/h;

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f0700bc

    invoke-direct {p1, v1, v0, v2}, Lh2/h;-><init>(Landroid/content/Context;[Ljava/lang/String;I)V

    invoke-virtual {p1}, Lh2/h;->n()V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v0, 0x7f0703b5

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    iput p2, p0, Lcom/nirenr/talkman/dialog/b;->c:I

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/b;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setAccessibilityFocus(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    iget p1, p0, Lcom/nirenr/talkman/dialog/b;->c:I

    if-gez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/dialog/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le p1, v0, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/nirenr/talkman/dialog/b$e;

    invoke-direct {v0, p0}, Lcom/nirenr/talkman/dialog/b$e;-><init>(Lcom/nirenr/talkman/dialog/b;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getFocusView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    iget-object p2, p0, Lcom/nirenr/talkman/dialog/b;->h:Landroid/widget/ListView;

    invoke-virtual {p2}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result p2

    iput p2, p0, Lcom/nirenr/talkman/dialog/b;->i:I

    new-instance p2, Landroid/app/AlertDialog$Builder;

    iget-object p4, p0, Lcom/nirenr/talkman/dialog/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {p2, p4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 p4, 0x6

    new-array p4, p4, [Ljava/lang/String;

    iget-object p5, p0, Lcom/nirenr/talkman/dialog/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v0, 0x7f070012

    invoke-virtual {p5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p5

    const/4 v0, 0x0

    aput-object p5, p4, v0

    iget-object p5, p0, Lcom/nirenr/talkman/dialog/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v0, 0x7f070248

    invoke-virtual {p5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p5

    const/4 v0, 0x1

    aput-object p5, p4, v0

    iget-object p5, p0, Lcom/nirenr/talkman/dialog/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v1, 0x7f0701ea

    invoke-virtual {p5, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p5

    const/4 v1, 0x2

    aput-object p5, p4, v1

    iget-object p5, p0, Lcom/nirenr/talkman/dialog/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v1, 0x7f07059c

    invoke-virtual {p5, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p5

    const/4 v1, 0x3

    aput-object p5, p4, v1

    iget-object p5, p0, Lcom/nirenr/talkman/dialog/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v1, 0x7f07059a

    invoke-virtual {p5, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p5

    const/4 v1, 0x4

    aput-object p5, p4, v1

    iget-object p5, p0, Lcom/nirenr/talkman/dialog/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v1, 0x7f070936

    invoke-virtual {p5, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p5

    const/4 v1, 0x5

    aput-object p5, p4, v1

    new-instance p5, Lcom/nirenr/talkman/dialog/b$g;

    invoke-direct {p5, p0, p3}, Lcom/nirenr/talkman/dialog/b$g;-><init>(Lcom/nirenr/talkman/dialog/b;I)V

    invoke-virtual {p2, p4, p5}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    new-instance p3, Lcom/nirenr/talkman/dialog/b$f;

    invoke-direct {p3, p0, p1}, Lcom/nirenr/talkman/dialog/b$f;-><init>(Lcom/nirenr/talkman/dialog/b;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-virtual {p2, p3}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-static {p1}, Lh2/i;->b(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    return v0
.end method

.method public q()V
    .locals 7

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getClipboardList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/nirenr/talkman/dialog/b;->d:Ljava/util/ArrayList;

    new-instance v0, Lcom/nirenr/talkman/dialog/b$a;

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x1090003

    iget-object v3, p0, Lcom/nirenr/talkman/dialog/b;->d:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/nirenr/talkman/dialog/b$a;-><init>(Lcom/nirenr/talkman/dialog/b;Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/nirenr/talkman/dialog/b;->e:Landroid/widget/ArrayListAdapter;

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v1, Landroid/widget/ListView;

    iget-object v2, p0, Lcom/nirenr/talkman/dialog/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {v1, v2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/nirenr/talkman/dialog/b;->h:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/nirenr/talkman/dialog/b;->e:Landroid/widget/ArrayListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v1, Lcom/nirenr/talkman/dialog/b$b;

    iget-object v2, p0, Lcom/nirenr/talkman/dialog/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {v1, p0, v2}, Lcom/nirenr/talkman/dialog/b$b;-><init>(Lcom/nirenr/talkman/dialog/b;Landroid/content/Context;)V

    const v2, 0x7f070318

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHint(I)V

    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/nirenr/talkman/dialog/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-boolean v2, p0, Lcom/nirenr/talkman/dialog/b;->g:Z

    const/4 v4, -0x2

    const/4 v5, -0x1

    if-eqz v2, :cond_0

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    iget-object v2, p0, Lcom/nirenr/talkman/dialog/b;->h:Landroid/widget/ListView;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/nirenr/talkman/dialog/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {v2, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0700bd

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f070095

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f070274

    invoke-virtual {v0, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f070364

    invoke-virtual {v0, v2, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/nirenr/talkman/dialog/b;->j:Landroid/app/AlertDialog;

    new-instance v0, Lcom/nirenr/talkman/dialog/b$c;

    invoke-direct {v0, p0}, Lcom/nirenr/talkman/dialog/b$c;-><init>(Lcom/nirenr/talkman/dialog/b;)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/b;->h:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/b;->h:Landroid/widget/ListView;

    new-instance v2, Lcom/nirenr/talkman/dialog/b$d;

    invoke-direct {v2, p0}, Lcom/nirenr/talkman/dialog/b$d;-><init>(Lcom/nirenr/talkman/dialog/b;)V

    invoke-virtual {v0, v2}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/b;->j:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_3

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x16

    if-lt v2, v3, :cond_1

    const/16 v2, 0x7f0

    goto :goto_1

    :cond_1
    const/16 v2, 0x7da

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/Window;->setType(I)V

    iget-boolean v2, p0, Lcom/nirenr/talkman/dialog/b;->g:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_2
    iget-object v0, p0, Lcom/nirenr/talkman/dialog/b;->j:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_3
    iget-boolean v0, p0, Lcom/nirenr/talkman/dialog/b;->g:Z

    if-eqz v0, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    :cond_4
    return-void
.end method
