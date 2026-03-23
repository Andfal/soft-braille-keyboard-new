.class public Lcom/nirenr/talkman/dialog/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field private final a:Landroid/view/accessibility/AccessibilityNodeInfo;

.field private final b:Lcom/nirenr/talkman/TalkManAccessibilityService;

.field private final c:Landroid/graphics/Rect;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:[Ljava/lang/String;

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/nirenr/talkman/dialog/h;->f:I

    iput-object p1, p0, Lcom/nirenr/talkman/dialog/h;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p2

    :cond_0
    iput-object p2, p0, Lcom/nirenr/talkman/dialog/h;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/nirenr/talkman/dialog/h;->c:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    const-string v1, "VirtualNavi"

    invoke-virtual {p1, v1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1, v1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getAppName(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/nirenr/talkman/dialog/h;->g:Ljava/lang/String;

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object p1

    iget-object p2, p0, Lcom/nirenr/talkman/dialog/h;->g:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/androlua/LuaApplication;->getNaviPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/nirenr/talkman/dialog/h;->h:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic a(Lcom/nirenr/talkman/dialog/h;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/dialog/h;->d:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/nirenr/talkman/dialog/h;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/dialog/h;->e:[Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/nirenr/talkman/dialog/h;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/dialog/h;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    return-object p0
.end method

.method static bridge synthetic d(Lcom/nirenr/talkman/dialog/h;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/dialog/h;->c:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic e(Lcom/nirenr/talkman/dialog/h;)Lcom/nirenr/talkman/TalkManAccessibilityService;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/dialog/h;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    return-object p0
.end method

.method static bridge synthetic f(Lcom/nirenr/talkman/dialog/h;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/dialog/h;->h:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic g(Lcom/nirenr/talkman/dialog/h;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/nirenr/talkman/dialog/h;->j(Ljava/lang/String;II)V

    return-void
.end method

.method static bridge synthetic h(Lcom/nirenr/talkman/dialog/h;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nirenr/talkman/dialog/h;->k(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic i(Lcom/nirenr/talkman/dialog/h;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/nirenr/talkman/dialog/h;->l(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private j(Ljava/lang/String;II)V
    .locals 4

    new-instance v0, Lcom/nirenr/talkman/dialog/EditDialog;

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/h;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f070251

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/nirenr/talkman/dialog/h$b;

    invoke-direct {v3, p0, p2, p3}, Lcom/nirenr/talkman/dialog/h$b;-><init>(Lcom/nirenr/talkman/dialog/h;II)V

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/nirenr/talkman/dialog/EditDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/nirenr/talkman/dialog/EditDialog$EditDialogCallback;)V

    invoke-virtual {v0}, Lcom/nirenr/talkman/dialog/EditDialog;->g()V

    return-void
.end method

.method private k(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/h;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/h;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/h;->d:Ljava/util/Map;

    invoke-static {p1, v0}, Lcom/nirenr/talkman/o;->m(Ljava/lang/String;Ljava/util/Map;)V

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/h;->d:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/nirenr/talkman/dialog/h;->e:[Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/h;->i:Landroid/widget/ListView;

    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/h;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x1090003

    iget-object v3, p0, Lcom/nirenr/talkman/dialog/h;->e:[Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method private l(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/dialog/h;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/h;->h:Ljava/lang/String;

    iget-object p2, p0, Lcom/nirenr/talkman/dialog/h;->d:Ljava/util/Map;

    invoke-static {p1, p2}, Lcom/nirenr/talkman/o;->m(Ljava/lang/String;Ljava/util/Map;)V

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/h;->d:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    iput-object p2, p0, Lcom/nirenr/talkman/dialog/h;->e:[Ljava/lang/String;

    invoke-interface {p1, p2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/h;->i:Landroid/widget/ListView;

    new-instance p2, Landroid/widget/ArrayAdapter;

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/h;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v1, 0x1090003

    iget-object v2, p0, Lcom/nirenr/talkman/dialog/h;->e:[Ljava/lang/String;

    invoke-direct {p2, v0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method


# virtual methods
.method public m()V
    .locals 4

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/h;->h:Ljava/lang/String;

    invoke-static {v0}, Lcom/nirenr/talkman/o;->h(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/nirenr/talkman/dialog/h;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/nirenr/talkman/dialog/h;->e:[Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/h;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f070191

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/h;->e:[Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070011

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070095

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x16

    if-lt v2, v3, :cond_0

    const/16 v2, 0x7f0

    goto :goto_0

    :cond_0
    const/16 v2, 0x7da

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_1
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/nirenr/talkman/dialog/h;->i:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iput p2, p0, Lcom/nirenr/talkman/dialog/h;->f:I

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object p2, p0, Lcom/nirenr/talkman/dialog/h;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x4

    new-array p2, p2, [Ljava/lang/String;

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/h;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v1, 0x7f070013

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p2, v1

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/h;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v1, 0x7f070016

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p2, v1

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/h;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v1, 0x7f070015

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, p2, v1

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/h;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v1, 0x7f070014

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    aput-object v0, p2, v1

    new-instance v0, Lcom/nirenr/talkman/dialog/h$a;

    invoke-direct {v0, p0}, Lcom/nirenr/talkman/dialog/h$a;-><init>(Lcom/nirenr/talkman/dialog/h;)V

    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    if-eqz p2, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_0

    const/16 v0, 0x7f0

    goto :goto_0

    :cond_0
    const/16 v0, 0x7da

    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/Window;->setType(I)V

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 5

    iget p1, p0, Lcom/nirenr/talkman/dialog/h;->f:I

    if-gez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance p1, Lorg/json/JSONArray;

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/h;->d:Ljava/util/Map;

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/h;->e:[Ljava/lang/String;

    iget v2, p0, Lcom/nirenr/talkman/dialog/h;->f:I

    aget-object v1, v1, v2

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result p1

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/h;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v2, "VirtualNavi"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/h;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/nirenr/talkman/dialog/h$c;

    invoke-direct {v2, p0, v0, p1}, Lcom/nirenr/talkman/dialog/h$c;-><init>(Lcom/nirenr/talkman/dialog/h;II)V

    const-wide/16 v3, 0x12c

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object p2, p0, Lcom/nirenr/talkman/dialog/h;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/String;

    iget-object p4, p0, Lcom/nirenr/talkman/dialog/h;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const p5, 0x7f0701ea

    invoke-virtual {p4, p5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    const/4 p5, 0x0

    aput-object p4, p2, p5

    iget-object p4, p0, Lcom/nirenr/talkman/dialog/h;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const p5, 0x7f07055d

    invoke-virtual {p4, p5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    const/4 p5, 0x1

    aput-object p4, p2, p5

    iget-object p4, p0, Lcom/nirenr/talkman/dialog/h;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v0, 0x7f070095

    invoke-virtual {p4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    const/4 v0, 0x2

    aput-object p4, p2, v0

    new-instance p4, Lcom/nirenr/talkman/dialog/h$d;

    invoke-direct {p4, p0, p3}, Lcom/nirenr/talkman/dialog/h$d;-><init>(Lcom/nirenr/talkman/dialog/h;I)V

    invoke-virtual {p1, p2, p4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-static {p1}, Lh2/i;->b(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    return p5
.end method
