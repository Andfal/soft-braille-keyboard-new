.class public Lcom/nirenr/talkman/dialog/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static final h:Ljava/lang/String;


# instance fields
.field private final a:Lcom/nirenr/talkman/TalkManAccessibilityService;

.field private b:Landroid/view/accessibility/AccessibilityNodeInfo;

.field private final c:Lcom/nirenr/talkman/n;

.field private d:I

.field private e:Landroid/app/AlertDialog;

.field private f:[Ljava/lang/String;

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/String;

    const/16 v1, 0xa

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lcom/nirenr/talkman/dialog/d;->h:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 2
        0x5fs
        0x59s
        0x6fs
        0x75s
        0x54s
        0x75s
        0x5fs
        0x4bs
        0x65s
        0x79s
    .end array-data
.end method

.method public constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Lcom/nirenr/talkman/n;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/nirenr/talkman/dialog/d;->d:I

    iput-object p1, p0, Lcom/nirenr/talkman/dialog/d;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iput-object p2, p0, Lcom/nirenr/talkman/dialog/d;->c:Lcom/nirenr/talkman/n;

    return-void
.end method

.method static bridge synthetic a(Lcom/nirenr/talkman/dialog/d;)Landroid/app/AlertDialog;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/dialog/d;->e:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/nirenr/talkman/dialog/d;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/dialog/d;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/nirenr/talkman/dialog/d;)Lcom/nirenr/talkman/TalkManAccessibilityService;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/dialog/d;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    return-object p0
.end method

.method static bridge synthetic d(Lcom/nirenr/talkman/dialog/d;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/dialog/d;->f:[Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic e(Lcom/nirenr/talkman/dialog/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/nirenr/talkman/dialog/d;->n()V

    return-void
.end method

.method static bridge synthetic f(Lcom/nirenr/talkman/dialog/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/nirenr/talkman/dialog/d;->o()V

    return-void
.end method

.method static bridge synthetic g(Lcom/nirenr/talkman/dialog/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/nirenr/talkman/dialog/d;->q()V

    return-void
.end method

.method private h()Z
    .locals 3

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androlua/LuaApplication;->isAbc()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {v0}, Lcom/androlua/LuaApplication;->getGlobalData()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/nirenr/talkman/dialog/d;->h:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private k([Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    aget-object v1, p1, v0

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private l()V
    .locals 4

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/d;->e:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/d;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f070252

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/nirenr/talkman/dialog/d$d;

    invoke-direct {v2, p0}, Lcom/nirenr/talkman/dialog/d$d;-><init>(Lcom/nirenr/talkman/dialog/d;)V

    const/4 v3, -0x3

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/nirenr/talkman/dialog/d$e;

    invoke-direct {v0, p0}, Lcom/nirenr/talkman/dialog/d$e;-><init>(Lcom/nirenr/talkman/dialog/d;)V

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, v1}, Lcom/androlua/util/AsyncTaskX;->execute([Ljava/lang/Object;)Lcom/androlua/util/AsyncTaskX;

    return-void
.end method

.method private n()V
    .locals 5

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/d;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/androlua/LuaService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f010008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nirenr/talkman/dialog/d;->f:[Ljava/lang/String;

    const/4 v1, 0x6

    array-length v2, v0

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/nirenr/talkman/dialog/d;->f:[Ljava/lang/String;

    new-instance v0, Landroid/widget/GridView;

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/d;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {v0, v1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/ArrayListAdapter;

    iget-object v2, p0, Lcom/nirenr/talkman/dialog/d;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v3, 0x7f050007

    iget-object v4, p0, Lcom/nirenr/talkman/dialog/d;->f:[Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/ArrayListAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    invoke-virtual {v0, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/nirenr/talkman/dialog/d;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const/high16 v3, 0x7f080000

    invoke-direct {v1, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v2, 0x7f07036d

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070095

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/nirenr/talkman/dialog/d$c;

    invoke-direct {v1, p0}, Lcom/nirenr/talkman/dialog/d$c;-><init>(Lcom/nirenr/talkman/dialog/d;)V

    const v2, 0x7f07047b

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-static {v0}, Lh2/i;->b(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/nirenr/talkman/dialog/d;->e:Landroid/app/AlertDialog;

    return-void
.end method

.method private o()V
    .locals 4

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/d;->e:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x16

    if-lt v1, v2, :cond_0

    const/16 v1, 0x7f0

    goto :goto_0

    :cond_0
    const/16 v1, 0x7da

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/d;->e:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/nirenr/talkman/dialog/d;->e:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/d;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/androlua/LuaService;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    const/4 v2, 0x3

    const/4 v3, -0x1

    invoke-static {v0, v3, v1, v2}, Lh2/i;->a(Landroid/app/AlertDialog;III)V

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/d;->e:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/d;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/androlua/LuaService;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    const/4 v3, -0x2

    invoke-static {v0, v3, v1, v2}, Lh2/i;->a(Landroid/app/AlertDialog;III)V

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/d;->e:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/d;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/androlua/LuaService;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    const/4 v3, -0x3

    invoke-static {v0, v3, v1, v2}, Lh2/i;->a(Landroid/app/AlertDialog;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private p()V
    .locals 7

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/d;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lk2/b0;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/nirenr/talkman/dialog/d;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2}, Lcom/androlua/LuaService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f010012

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/nirenr/talkman/dialog/d;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v4, 0x7f07035e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v2, "\\|"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    :cond_0
    invoke-direct {p0}, Lcom/nirenr/talkman/dialog/d;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/d;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iget-object v3, p0, Lcom/nirenr/talkman/dialog/d;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getAppName(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getDescriptionFromConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/d;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v3, 0x7f070146

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-direct {p0}, Lcom/nirenr/talkman/dialog/d;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/nirenr/talkman/util/Music;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/d;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v3, 0x7f070143

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/d;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isDimmed()Z

    move-result v0

    const v2, 0x7f07010b

    const v3, 0x7f070113

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/d;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/d;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iget-object v4, p0, Lcom/nirenr/talkman/dialog/d;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v0, p0, Lcom/nirenr/talkman/dialog/d;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/d;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v4, 0x7f070155

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/nirenr/talkman/dialog/d;->f:[Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/d;->f:[Ljava/lang/String;

    iget-object v4, p0, Lcom/nirenr/talkman/dialog/d;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v4, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/nirenr/talkman/dialog/d;->k([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_5

    iget-object v3, p0, Lcom/nirenr/talkman/dialog/d;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isDimmed()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/nirenr/talkman/dialog/d;->f:[Ljava/lang/String;

    iget-object v4, p0, Lcom/nirenr/talkman/dialog/d;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v0

    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/nirenr/talkman/dialog/d;->f:[Ljava/lang/String;

    array-length v4, v3

    if-ge v2, v4, :cond_7

    aget-object v3, v3, v2

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_6
    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/nirenr/talkman/dialog/d;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f07036d

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070095

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/nirenr/talkman/dialog/d$a;

    invoke-direct {v1, p0}, Lcom/nirenr/talkman/dialog/d$a;-><init>(Lcom/nirenr/talkman/dialog/d;)V

    const v2, 0x7f070399

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/nirenr/talkman/dialog/d;->e:Landroid/app/AlertDialog;

    return-void
.end method

.method private q()V
    .locals 8

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/d;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lk2/b0;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/nirenr/talkman/dialog/d;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2}, Lcom/androlua/LuaService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f010013

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/nirenr/talkman/dialog/d;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v4, 0x7f070466

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v2, "\\|"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    :cond_0
    new-instance v0, Landroid/widget/GridView;

    iget-object v3, p0, Lcom/nirenr/talkman/dialog/d;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {v0, v3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0}, Lcom/nirenr/talkman/dialog/d;->h()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/nirenr/talkman/dialog/d;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iget-object v3, p0, Lcom/nirenr/talkman/dialog/d;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v2, v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getAppName(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getDescriptionFromConfig(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/nirenr/talkman/dialog/d;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v3, 0x7f070146

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-direct {p0}, Lcom/nirenr/talkman/dialog/d;->h()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/nirenr/talkman/util/Music;->i()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/nirenr/talkman/dialog/d;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v3, 0x7f070143

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v2, p0, Lcom/nirenr/talkman/dialog/d;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isDimmed()Z

    move-result v2

    const v3, 0x7f07010b

    const v4, 0x7f070113

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/nirenr/talkman/dialog/d;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/nirenr/talkman/dialog/d;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    iget-object v5, p0, Lcom/nirenr/talkman/dialog/d;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v5, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v2, p0, Lcom/nirenr/talkman/dialog/d;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isDebug()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/nirenr/talkman/dialog/d;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v5, 0x7f070155

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/nirenr/talkman/dialog/d;->f:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iget-object v2, p0, Lcom/nirenr/talkman/dialog/d;->f:[Ljava/lang/String;

    iget-object v5, p0, Lcom/nirenr/talkman/dialog/d;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v5, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v4}, Lcom/nirenr/talkman/dialog/d;->k([Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_5

    iget-object v4, p0, Lcom/nirenr/talkman/dialog/d;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v4}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isDimmed()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/nirenr/talkman/dialog/d;->f:[Ljava/lang/String;

    iget-object v5, p0, Lcom/nirenr/talkman/dialog/d;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v5, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lcom/nirenr/talkman/dialog/d;->f:[Ljava/lang/String;

    array-length v5, v4

    if-ge v3, v5, :cond_7

    aget-object v4, v4, v3

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_6
    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_7
    new-instance v2, Lcom/androlua/SingleLineAdapter;

    iget-object v3, p0, Lcom/nirenr/talkman/dialog/d;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v4, 0x1090003

    invoke-direct {v2, v3, v4, v1}, Lcom/androlua/SingleLineAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    invoke-virtual {v0, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/nirenr/talkman/dialog/d;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f07036d

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070095

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/nirenr/talkman/dialog/d$b;

    invoke-direct {v1, p0}, Lcom/nirenr/talkman/dialog/d$b;-><init>(Lcom/nirenr/talkman/dialog/d;)V

    const v2, 0x7f070399

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/nirenr/talkman/dialog/d;->e:Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public i()V
    .locals 1

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/d;->e:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/d;->e:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public j()Z
    .locals 1

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/d;->e:Landroid/app/AlertDialog;

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

.method public m(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/d;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isUpTapEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/nirenr/talkman/dialog/d;->g:Z

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/d;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isMenuUpTap()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/d;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUpTap(Z)V

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/nirenr/talkman/dialog/d;->d:I

    iput-object p1, p0, Lcom/nirenr/talkman/dialog/d;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/d;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {p1}, Lk2/b0;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/d;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v1, 0x7f0707c1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/nirenr/talkman/dialog/d;->q()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/nirenr/talkman/dialog/d;->p()V

    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/nirenr/talkman/dialog/d;->l()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    invoke-direct {p0}, Lcom/nirenr/talkman/dialog/d;->o()V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iput p2, p0, Lcom/nirenr/talkman/dialog/d;->d:I

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/d;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iget-boolean v0, p0, Lcom/nirenr/talkman/dialog/d;->g:Z

    invoke-virtual {p1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUpTap(Z)V

    iget p1, p0, Lcom/nirenr/talkman/dialog/d;->d:I

    if-gez p1, :cond_0

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/d;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/d;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setAccessibilityFocus(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/dialog/d;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/nirenr/talkman/dialog/d$f;

    invoke-direct {v1, p0, p1}, Lcom/nirenr/talkman/dialog/d$f;-><init>(Lcom/nirenr/talkman/dialog/d;I)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iput p3, p0, Lcom/nirenr/talkman/dialog/d;->d:I

    invoke-virtual {p0}, Lcom/nirenr/talkman/dialog/d;->i()V

    return-void
.end method
