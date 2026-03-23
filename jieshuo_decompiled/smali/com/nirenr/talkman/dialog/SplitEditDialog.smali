.class public Lcom/nirenr/talkman/dialog/SplitEditDialog;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nirenr/talkman/dialog/SplitEditDialog$k0;,
        Lcom/nirenr/talkman/dialog/SplitEditDialog$onTextChangedListener;,
        Lcom/nirenr/talkman/dialog/SplitEditDialog$j0;
    }
.end annotation


# static fields
.field private static v:I = 0x2

.field private static w:I = 0x1

.field private static final x:Ljava/lang/String;


# instance fields
.field private a:Lcom/nirenr/talkman/dialog/SplitEditDialog$onTextChangedListener;

.field private b:Ljava/lang/String;

.field private c:Lcom/nirenr/talkman/TalkManAccessibilityService;

.field private d:Landroid/view/accessibility/AccessibilityNodeInfo;

.field private e:I

.field private f:[Ljava/lang/String;

.field private g:Landroid/app/Dialog;

.field private h:Landroid/widget/GridView;

.field private i:I

.field private j:Z

.field private k:Ljava/lang/String;

.field private l:Z

.field private m:I

.field private n:I

.field private o:Z

.field private p:[Ljava/lang/String;

.field private q:I

.field private r:Z

.field private s:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private t:I

.field private u:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/String;

    const/16 v1, 0xa

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->x:Ljava/lang/String;

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

.method public constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->e:I

    const/4 v1, 0x2

    iput v1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->i:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->j:Z

    const v2, 0x1090003

    iput v2, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->n:I

    iput v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->q:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->s:Ljava/util/ArrayList;

    iput v1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->t:I

    iput-object p1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iput-object p2, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->d:Landroid/view/accessibility/AccessibilityNodeInfo;

    return-void
.end method

.method public constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->e:I

    const/4 v1, 0x2

    iput v1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->i:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->j:Z

    const v2, 0x1090003

    iput v2, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->n:I

    iput v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->q:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->s:Ljava/util/ArrayList;

    iput v1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->t:I

    iput-object p1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iput-object p2, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Ljava/lang/String;Lcom/nirenr/talkman/dialog/SplitEditDialog$onTextChangedListener;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->e:I

    const/4 v1, 0x2

    iput v1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->i:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->j:Z

    const v2, 0x1090003

    iput v2, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->n:I

    iput v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->q:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->s:Ljava/util/ArrayList;

    iput v1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->t:I

    iput-object p1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iput-object p2, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->a:Lcom/nirenr/talkman/dialog/SplitEditDialog$onTextChangedListener;

    return-void
.end method

.method static bridge synthetic A(Lcom/nirenr/talkman/dialog/SplitEditDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->S()V

    return-void
.end method

.method static bridge synthetic B(Lcom/nirenr/talkman/dialog/SplitEditDialog;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->T(Z)V

    return-void
.end method

.method static bridge synthetic C(Lcom/nirenr/talkman/dialog/SplitEditDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->W()V

    return-void
.end method

.method static bridge synthetic D(Lcom/nirenr/talkman/dialog/SplitEditDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->X()V

    return-void
.end method

.method static bridge synthetic E(Lcom/nirenr/talkman/dialog/SplitEditDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->Y()V

    return-void
.end method

.method static bridge synthetic F(Lcom/nirenr/talkman/dialog/SplitEditDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->Z()V

    return-void
.end method

.method static bridge synthetic G(Lcom/nirenr/talkman/dialog/SplitEditDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->a0()V

    return-void
.end method

.method static bridge synthetic H(Lcom/nirenr/talkman/dialog/SplitEditDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->b0()V

    return-void
.end method

.method static bridge synthetic I()I
    .locals 1

    sget v0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->w:I

    return v0
.end method

.method static bridge synthetic J(I)V
    .locals 0

    sput p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->w:I

    return-void
.end method

.method static bridge synthetic K(I)V
    .locals 0

    sput p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->v:I

    return-void
.end method

.method private L()Z
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

    sget-object v1, Lcom/nirenr/talkman/dialog/SplitEditDialog;->x:Ljava/lang/String;

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

.method private M(I)V
    .locals 4

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->h:Landroid/widget/GridView;

    iget v1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->m:I

    iget-object v2, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->f:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setSelection(I)V

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/nirenr/talkman/dialog/SplitEditDialog$b0;

    invoke-direct {v1, p0, p1}, Lcom/nirenr/talkman/dialog/SplitEditDialog$b0;-><init>(Lcom/nirenr/talkman/dialog/SplitEditDialog;I)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private N()V
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/androlua/LuaApplication;->getNotesDir()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lk2/p;

    invoke-direct {v1}, Lk2/p;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f07050b

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/nirenr/talkman/dialog/SplitEditDialog$t;

    invoke-direct {v2, p0, v0}, Lcom/nirenr/talkman/dialog/SplitEditDialog$t;-><init>(Lcom/nirenr/talkman/dialog/SplitEditDialog;[Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070095

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-static {v0}, Lh2/i;->b(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    new-instance v2, Lcom/nirenr/talkman/dialog/SplitEditDialog$u;

    invoke-direct {v2, p0, v0}, Lcom/nirenr/talkman/dialog/SplitEditDialog$u;-><init>(Lcom/nirenr/talkman/dialog/SplitEditDialog;Landroid/app/AlertDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    return-void
.end method

.method private O(Ljava/lang/String;)V
    .locals 3

    iget v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->t:I

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->s:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    iget v1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->t:I

    if-le v0, v1, :cond_0

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->s:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->s:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iput p1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->t:I

    return-void
.end method

.method private P()V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reDo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->t:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lua"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->t:I

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->s:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->t:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->t:I

    new-array v1, v2, [Ljava/lang/String;

    iget-object v3, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->s:Ljava/util/ArrayList;

    sub-int/2addr v0, v2

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v1, v3

    iput-object v1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->f:[Ljava/lang/String;

    iget v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->i:I

    const/4 v1, 0x2

    if-eq v0, v2, :cond_3

    if-eq v0, v1, :cond_2

    const/4 v4, 0x3

    if-eq v0, v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->W()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->Y()V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->X()V

    :goto_0
    iget-object v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->h:Landroid/widget/GridView;

    iget v4, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->m:I

    invoke-virtual {v0, v4}, Landroid/widget/GridView;->setSelection(I)V

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->g:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->g:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v4, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->b:Ljava/lang/String;

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v3

    iget-object v3, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->b:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const v2, 0x7f0701b6

    invoke-virtual {v4, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method

.method private Q()V
    .locals 6

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v1, Landroid/widget/EditText;

    iget-object v2, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const v2, 0x7f070318

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHint(I)V

    new-instance v2, Landroid/widget/EditText;

    iget-object v3, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {v2, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const v3, 0x7f070561

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setHint(I)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f07055f

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v3, Lcom/nirenr/talkman/dialog/SplitEditDialog$r;

    invoke-direct {v3, p0, v1, v2}, Lcom/nirenr/talkman/dialog/SplitEditDialog$r;-><init>(Lcom/nirenr/talkman/dialog/SplitEditDialog;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v0, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v3, Lcom/nirenr/talkman/dialog/SplitEditDialog$q;

    invoke-direct {v3, p0, v1, v2}, Lcom/nirenr/talkman/dialog/SplitEditDialog$q;-><init>(Lcom/nirenr/talkman/dialog/SplitEditDialog;Landroid/widget/EditText;Landroid/widget/EditText;)V

    const v1, 0x7f070560

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070095

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-static {v0}, Lh2/i;->b(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    return-void
.end method

.method private R(Ljava/lang/String;)V
    .locals 5

    const-string v0, "\\.[ \r\n]|[^a-zA-Z0-9][\\. ]+|[,!?;\u3002\uff1f\uff01\uff0c\r\n\u201c\u201d\uff1a\uff1b\\?!]+|[ \\.,!?;\u3002\uff1f\uff01\uff0c\r\n\u201c\u201d\uff1a\uff1b\\?!]+"

    invoke-direct {p0, p1, v0}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->V(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const-string v3, ""

    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0x20

    if-le v1, v3, :cond_0

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v1, Lcom/nirenr/talkman/dialog/EditDialog;

    iget-object v2, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v3, 0x7f070304

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".txt"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lcom/nirenr/talkman/dialog/SplitEditDialog$s;

    invoke-direct {v4, p0, p1}, Lcom/nirenr/talkman/dialog/SplitEditDialog$s;-><init>(Lcom/nirenr/talkman/dialog/SplitEditDialog;Ljava/lang/String;)V

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/nirenr/talkman/dialog/EditDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/nirenr/talkman/dialog/EditDialog$EditDialogCallback;)V

    invoke-virtual {v1}, Lcom/nirenr/talkman/dialog/EditDialog;->g()V

    return-void
.end method

.method private S()V
    .locals 10

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Lcom/nirenr/talkman/dialog/SplitEditDialog$k0;

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v1, 0x1090006

    invoke-direct {v7, p0, v0, v1, v3}, Lcom/nirenr/talkman/dialog/SplitEditDialog$k0;-><init>(Lcom/nirenr/talkman/dialog/SplitEditDialog;Landroid/content/Context;ILjava/util/List;)V

    new-instance v8, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {v8, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v9, Lcom/nirenr/talkman/dialog/SplitEditDialog$w;

    iget-object v2, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-object v0, v9

    move-object v1, p0

    move-object v4, v6

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/nirenr/talkman/dialog/SplitEditDialog$w;-><init>(Lcom/nirenr/talkman/dialog/SplitEditDialog;Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/nirenr/talkman/dialog/SplitEditDialog$k0;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v9, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/ListView;

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f070935

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f070095

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-static {v1}, Lh2/i;->b(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v9}, Landroid/view/View;->requestFocus()Z

    new-instance v2, Lcom/nirenr/talkman/dialog/SplitEditDialog$x;

    invoke-direct {v2, p0, v6, v1}, Lcom/nirenr/talkman/dialog/SplitEditDialog$x;-><init>(Lcom/nirenr/talkman/dialog/SplitEditDialog;Ljava/util/ArrayList;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private T(Z)V
    .locals 4

    iput-boolean p1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->o:Z

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->h:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->m:I

    const/16 v0, 0x8

    const v1, 0x7f040025

    const v2, 0x7f040023

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->g:Landroid/app/Dialog;

    invoke-virtual {p1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->g:Landroid/app/Dialog;

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x1090010

    iput p1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->n:I

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->h:Landroid/widget/GridView;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->g:Landroid/app/Dialog;

    invoke-virtual {p1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->g:Landroid/app/Dialog;

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x1090003

    iput p1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->n:I

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->h:Landroid/widget/GridView;

    invoke-virtual {p1, v3}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    :goto_0
    invoke-direct {p0}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->b0()V

    return-void
.end method

.method private V(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-eq v1, p2, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, ""

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object p1
.end method

.method private W()V
    .locals 6

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->g:Landroid/app/Dialog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v3, 0x7f070627

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v3, 0x7f070626

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v0, 0x4

    iput v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->i:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->f:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->f:[Ljava/lang/String;

    :goto_1
    iget-object v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v3, v0, :cond_1

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->f:[Ljava/lang/String;

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->f:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_2

    const-string v0, ""

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->f:[Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->h:Landroid/widget/GridView;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->h:Landroid/widget/GridView;

    new-instance v1, Lcom/nirenr/talkman/dialog/SplitEditDialog$k0;

    iget-object v2, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iget v3, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->n:I

    iget-object v4, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->f:[Ljava/lang/String;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/nirenr/talkman/dialog/SplitEditDialog$k0;-><init>(Lcom/nirenr/talkman/dialog/SplitEditDialog;Landroid/content/Context;I[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method private X()V
    .locals 6

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->g:Landroid/app/Dialog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v3, 0x7f070627

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v4, 0x7f07062a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/nirenr/talkman/dialog/SplitEditDialog;->w:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->i:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->f:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->b:Ljava/lang/String;

    sget v2, Lcom/nirenr/talkman/dialog/SplitEditDialog;->w:I

    if-ne v2, v0, :cond_1

    const-string v2, "\n"

    goto :goto_1

    :cond_1
    const-string v2, "\n\n"

    :goto_1
    invoke-direct {p0, v1, v2}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->V(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->f:[Ljava/lang/String;

    array-length v1, v1

    if-nez v1, :cond_2

    const-string v1, ""

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->f:[Ljava/lang/String;

    :cond_2
    iget-object v1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->h:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setNumColumns(I)V

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->h:Landroid/widget/GridView;

    new-instance v1, Lcom/nirenr/talkman/dialog/SplitEditDialog$k0;

    iget-object v2, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iget v3, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->n:I

    iget-object v4, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->f:[Ljava/lang/String;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/nirenr/talkman/dialog/SplitEditDialog$k0;-><init>(Lcom/nirenr/talkman/dialog/SplitEditDialog;Landroid/content/Context;I[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method private Y()V
    .locals 5

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->g:Landroid/app/Dialog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v3, 0x7f070627

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v3, 0x7f07062f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->i:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->f:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iget-boolean v2, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->l:Z

    if-eqz v2, :cond_1

    const-string v2, "\\.[ \r\n]| +\n+|[^a-zA-Z0-9][\\. ]+|[,!?;\u3002\uff1f\uff01\uff0c\r\n\u201c\u201d\uff1a\uff1b\\?\\!]+"

    goto :goto_1

    :cond_1
    const-string v2, "[\\.,!?;\u3002\uff1f\uff01\uff0c\r\n\u201c\u201d\uff1a\uff1b\\?\\!\u060c\u061f\u061b]+"

    :goto_1
    const v3, 0x7f07062b

    invoke-static {v1, v3, v2}, Lk2/b0;->h(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lk2/g0;->d(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->f:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_2

    const-string v0, ""

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->f:[Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->h:Landroid/widget/GridView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->h:Landroid/widget/GridView;

    new-instance v1, Lcom/nirenr/talkman/dialog/SplitEditDialog$k0;

    iget-object v2, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iget v3, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->n:I

    iget-object v4, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->f:[Ljava/lang/String;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/nirenr/talkman/dialog/SplitEditDialog$k0;-><init>(Lcom/nirenr/talkman/dialog/SplitEditDialog;Landroid/content/Context;I[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method private Z()V
    .locals 5

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->g:Landroid/app/Dialog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v3, 0x7f070627

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v3, 0x7f070630

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v0, 0x3

    iput v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->i:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->f:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->b:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->l:Z

    const-string v2, "[\\u0000-\\u002f\\u0040\\u005b-\\u0060\\u007b-\\u007e\\u00d7\\u2013\\u2014\\u2018-\\u2027\\u3001\\u3002\\u3003\\u3008-\\u3011\\u3014\\u3015\\uff01-\\uff0f\\uff1a-\\uff20\\uff3b-\\uff40\\uff5b-\\uff65\\uffe5]+"

    if-eqz v1, :cond_2

    :try_start_0
    invoke-static {}, Ll2/d;->f()Ll2/d;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ll2/d;->e(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v3, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->b:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v1, v3, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->f:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->b:Ljava/lang/String;

    invoke-static {v0, v2}, Lk2/g0;->d(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->f:[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    iget-object v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Ll2/d;->g(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->b:Ljava/lang/String;

    invoke-static {v0, v2}, Lk2/g0;->d(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->f:[Ljava/lang/String;

    goto :goto_1

    :cond_2
    invoke-static {v0, v2}, Lk2/g0;->d(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->f:[Ljava/lang/String;

    :goto_1
    iget-object v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->h:Landroid/widget/GridView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->h:Landroid/widget/GridView;

    new-instance v1, Lcom/nirenr/talkman/dialog/SplitEditDialog$k0;

    iget-object v2, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iget v3, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->n:I

    iget-object v4, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->f:[Ljava/lang/String;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/nirenr/talkman/dialog/SplitEditDialog$k0;-><init>(Lcom/nirenr/talkman/dialog/SplitEditDialog;Landroid/content/Context;I[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method static bridge synthetic a(Lcom/nirenr/talkman/dialog/SplitEditDialog;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->o:Z

    return p0
.end method

.method private a0()V
    .locals 7

    iget v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->t:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x1

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->t:I

    new-array v3, v2, [Ljava/lang/String;

    iget-object v4, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->s:Ljava/util/ArrayList;

    sub-int/2addr v0, v2

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    iput-object v3, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->f:[Ljava/lang/String;

    iget v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->i:I

    if-eq v0, v2, :cond_3

    if-eq v0, v1, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->W()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->Y()V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->X()V

    :goto_0
    iget-object v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->h:Landroid/widget/GridView;

    iget v3, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->m:I

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setSelection(I)V

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->g:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->g:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v3, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->b:Ljava/lang/String;

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    iget-object v4, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->b:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    const v2, 0x7f0701b6

    invoke-virtual {v3, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method

.method static bridge synthetic b(Lcom/nirenr/talkman/dialog/SplitEditDialog;)Landroid/app/Dialog;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->g:Landroid/app/Dialog;

    return-object p0
.end method

.method private b0()V
    .locals 8

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->b:Ljava/lang/String;

    iget v1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->i:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v3, :cond_3

    if-eq v1, v2, :cond_2

    const/4 v4, 0x3

    if-eq v1, v4, :cond_1

    const/4 v4, 0x4

    if-eq v1, v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->W()V

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->Z()V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->Y()V

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->X()V

    :goto_1
    iget-object v1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->g:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v4, 0x0

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->g:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iget-object v5, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->b:Ljava/lang/String;

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v4

    iget-object v6, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->b:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v3

    const v3, 0x7f0701b6

    invoke-virtual {v5, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    :cond_4
    iget-object v1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->h:Landroid/widget/GridView;

    iget v2, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->m:I

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setSelection(I)V

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->b:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->O(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->g:Landroid/app/Dialog;

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    :cond_5
    return-void
.end method

.method static bridge synthetic c(Lcom/nirenr/talkman/dialog/SplitEditDialog;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->p:[Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic d(Lcom/nirenr/talkman/dialog/SplitEditDialog;)I
    .locals 0

    iget p0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->m:I

    return p0
.end method

.method static bridge synthetic e(Lcom/nirenr/talkman/dialog/SplitEditDialog;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->f:[Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic f(Lcom/nirenr/talkman/dialog/SplitEditDialog;)Lcom/nirenr/talkman/dialog/SplitEditDialog$onTextChangedListener;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->a:Lcom/nirenr/talkman/dialog/SplitEditDialog$onTextChangedListener;

    return-object p0
.end method

.method static bridge synthetic g(Lcom/nirenr/talkman/dialog/SplitEditDialog;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->d:Landroid/view/accessibility/AccessibilityNodeInfo;

    return-object p0
.end method

.method static bridge synthetic h(Lcom/nirenr/talkman/dialog/SplitEditDialog;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->k:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic i(Lcom/nirenr/talkman/dialog/SplitEditDialog;)Lcom/nirenr/talkman/TalkManAccessibilityService;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    return-object p0
.end method

.method static bridge synthetic j(Lcom/nirenr/talkman/dialog/SplitEditDialog;)I
    .locals 0

    iget p0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->i:I

    return p0
.end method

.method static bridge synthetic k(Lcom/nirenr/talkman/dialog/SplitEditDialog;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->b:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic l(Lcom/nirenr/talkman/dialog/SplitEditDialog;)Landroid/widget/GridView;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->h:Landroid/widget/GridView;

    return-object p0
.end method

.method static bridge synthetic m(Lcom/nirenr/talkman/dialog/SplitEditDialog;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->u:Z

    return p0
.end method

.method static bridge synthetic n(Lcom/nirenr/talkman/dialog/SplitEditDialog;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->j:Z

    return-void
.end method

.method static bridge synthetic o(Lcom/nirenr/talkman/dialog/SplitEditDialog;I)V
    .locals 0

    iput p1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->q:I

    return-void
.end method

.method static bridge synthetic p(Lcom/nirenr/talkman/dialog/SplitEditDialog;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->p:[Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic q(Lcom/nirenr/talkman/dialog/SplitEditDialog;I)V
    .locals 0

    iput p1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->m:I

    return-void
.end method

.method static bridge synthetic r(Lcom/nirenr/talkman/dialog/SplitEditDialog;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->f:[Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic s(Lcom/nirenr/talkman/dialog/SplitEditDialog;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->r:Z

    return-void
.end method

.method static bridge synthetic t(Lcom/nirenr/talkman/dialog/SplitEditDialog;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->b:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic u(Lcom/nirenr/talkman/dialog/SplitEditDialog;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->u:Z

    return-void
.end method

.method static bridge synthetic v(Lcom/nirenr/talkman/dialog/SplitEditDialog;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->M(I)V

    return-void
.end method

.method static bridge synthetic w(Lcom/nirenr/talkman/dialog/SplitEditDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->N()V

    return-void
.end method

.method static bridge synthetic x(Lcom/nirenr/talkman/dialog/SplitEditDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->P()V

    return-void
.end method

.method static bridge synthetic y(Lcom/nirenr/talkman/dialog/SplitEditDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->Q()V

    return-void
.end method

.method static bridge synthetic z(Lcom/nirenr/talkman/dialog/SplitEditDialog;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->R(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public U()V
    .locals 6

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v1, 0x7f070846

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lk2/b0;->a(Landroid/content/Context;IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->u:Z

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->l:Z

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->b:Ljava/lang/String;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->d:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getAllTextList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v3, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getText(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->b:Ljava/lang/String;

    :cond_3
    invoke-direct {p0}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->L()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->b:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0x64

    if-le v0, v3, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v1, 0x7f0703e5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speak(Ljava/lang/String;)V

    return-void

    :cond_5
    iget-object v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->k:Ljava/lang/String;

    new-instance v0, Landroid/app/Dialog;

    iget-object v3, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const/high16 v4, 0x7f080000

    invoke-direct {v0, v3, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->g:Landroid/app/Dialog;

    const v3, 0x7f070627

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setTitle(I)V

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->g:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->g:Landroid/app/Dialog;

    const v3, 0x7f050009

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setContentView(I)V

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->g:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_7

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x16

    if-lt v3, v4, :cond_6

    const/16 v3, 0x7f0

    goto :goto_2

    :cond_6
    const/16 v3, 0x7da

    :goto_2
    invoke-virtual {v0, v3}, Landroid/view/Window;->setType(I)V

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->g:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_7
    iget-object v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->g:Landroid/app/Dialog;

    const v3, 0x7f04002f

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->h:Landroid/widget/GridView;

    new-instance v3, Lcom/nirenr/talkman/dialog/SplitEditDialog$k;

    invoke-direct {v3, p0}, Lcom/nirenr/talkman/dialog/SplitEditDialog$k;-><init>(Lcom/nirenr/talkman/dialog/SplitEditDialog;)V

    invoke-virtual {v0, v3}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->h:Landroid/widget/GridView;

    invoke-virtual {v0, p0}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->s:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->t:I

    new-array v0, v1, [Ljava/lang/String;

    iget-object v3, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->b:Ljava/lang/String;

    aput-object v3, v0, v2

    iput-object v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->f:[Ljava/lang/String;

    sget v0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->v:I

    iput v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->i:I

    invoke-direct {p0}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->b0()V

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->g:Landroid/app/Dialog;

    const v3, 0x7f040004

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v3, 0x7f07062a

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    new-instance v3, Lcom/nirenr/talkman/dialog/SplitEditDialog$v;

    invoke-direct {v3, p0}, Lcom/nirenr/talkman/dialog/SplitEditDialog$v;-><init>(Lcom/nirenr/talkman/dialog/SplitEditDialog;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Lcom/nirenr/talkman/dialog/SplitEditDialog$c0;

    invoke-direct {v3, p0}, Lcom/nirenr/talkman/dialog/SplitEditDialog$c0;-><init>(Lcom/nirenr/talkman/dialog/SplitEditDialog;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->g:Landroid/app/Dialog;

    const v3, 0x7f04000d

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v3, 0x7f070626

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    new-instance v3, Lcom/nirenr/talkman/dialog/SplitEditDialog$d0;

    invoke-direct {v3, p0}, Lcom/nirenr/talkman/dialog/SplitEditDialog$d0;-><init>(Lcom/nirenr/talkman/dialog/SplitEditDialog;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->g:Landroid/app/Dialog;

    const v3, 0x7f040013

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v3, 0x7f07062f

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    new-instance v3, Lcom/nirenr/talkman/dialog/SplitEditDialog$e0;

    invoke-direct {v3, p0}, Lcom/nirenr/talkman/dialog/SplitEditDialog$e0;-><init>(Lcom/nirenr/talkman/dialog/SplitEditDialog;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->g:Landroid/app/Dialog;

    const v3, 0x7f04000c

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v3, 0x7f070630

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    new-instance v3, Lcom/nirenr/talkman/dialog/SplitEditDialog$f0;

    invoke-direct {v3, p0}, Lcom/nirenr/talkman/dialog/SplitEditDialog$f0;-><init>(Lcom/nirenr/talkman/dialog/SplitEditDialog;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->g:Landroid/app/Dialog;

    const v3, 0x7f040014

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v3, 0x104000a

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    new-instance v4, Lcom/nirenr/talkman/dialog/SplitEditDialog$g0;

    invoke-direct {v4, p0}, Lcom/nirenr/talkman/dialog/SplitEditDialog$g0;-><init>(Lcom/nirenr/talkman/dialog/SplitEditDialog;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->d:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEditable()Z

    move-result v4

    if-nez v4, :cond_9

    :cond_8
    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    :cond_9
    iget-object v4, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->a:Lcom/nirenr/talkman/dialog/SplitEditDialog$onTextChangedListener;

    if-eqz v4, :cond_a

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_a
    iget-object v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->g:Landroid/app/Dialog;

    const v1, 0x7f040015

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f070095

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    new-instance v4, Lcom/nirenr/talkman/dialog/SplitEditDialog$h0;

    invoke-direct {v4, p0}, Lcom/nirenr/talkman/dialog/SplitEditDialog$h0;-><init>(Lcom/nirenr/talkman/dialog/SplitEditDialog;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->g:Landroid/app/Dialog;

    const v4, 0x7f040016

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v4, 0x7f070107

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    new-instance v5, Lcom/nirenr/talkman/dialog/SplitEditDialog$i0;

    invoke-direct {v5, p0}, Lcom/nirenr/talkman/dialog/SplitEditDialog$i0;-><init>(Lcom/nirenr/talkman/dialog/SplitEditDialog;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->g:Landroid/app/Dialog;

    const v5, 0x7f040017

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v5, 0x7f070399

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    new-instance v5, Lcom/nirenr/talkman/dialog/SplitEditDialog$a;

    invoke-direct {v5, p0}, Lcom/nirenr/talkman/dialog/SplitEditDialog$a;-><init>(Lcom/nirenr/talkman/dialog/SplitEditDialog;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->g:Landroid/app/Dialog;

    const v5, 0x7f040018

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v5, 0x7f0700b3

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    new-instance v5, Lcom/nirenr/talkman/dialog/SplitEditDialog$b;

    invoke-direct {v5, p0}, Lcom/nirenr/talkman/dialog/SplitEditDialog$b;-><init>(Lcom/nirenr/talkman/dialog/SplitEditDialog;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->g:Landroid/app/Dialog;

    const v5, 0x7f040019

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v5, 0x7f070935

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    new-instance v2, Lcom/nirenr/talkman/dialog/SplitEditDialog$c;

    invoke-direct {v2, p0}, Lcom/nirenr/talkman/dialog/SplitEditDialog$c;-><init>(Lcom/nirenr/talkman/dialog/SplitEditDialog;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->g:Landroid/app/Dialog;

    const v2, 0x7f040005

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    new-instance v1, Lcom/nirenr/talkman/dialog/SplitEditDialog$d;

    invoke-direct {v1, p0}, Lcom/nirenr/talkman/dialog/SplitEditDialog$d;-><init>(Lcom/nirenr/talkman/dialog/SplitEditDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->g:Landroid/app/Dialog;

    const v1, 0x7f04000a

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    new-instance v1, Lcom/nirenr/talkman/dialog/SplitEditDialog$e;

    invoke-direct {v1, p0}, Lcom/nirenr/talkman/dialog/SplitEditDialog$e;-><init>(Lcom/nirenr/talkman/dialog/SplitEditDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->g:Landroid/app/Dialog;

    const v1, 0x7f040006

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f0701ea

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    new-instance v1, Lcom/nirenr/talkman/dialog/SplitEditDialog$f;

    invoke-direct {v1, p0}, Lcom/nirenr/talkman/dialog/SplitEditDialog$f;-><init>(Lcom/nirenr/talkman/dialog/SplitEditDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->g:Landroid/app/Dialog;

    const v1, 0x7f040007

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    new-instance v1, Lcom/nirenr/talkman/dialog/SplitEditDialog$g;

    invoke-direct {v1, p0}, Lcom/nirenr/talkman/dialog/SplitEditDialog$g;-><init>(Lcom/nirenr/talkman/dialog/SplitEditDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->g:Landroid/app/Dialog;

    const v1, 0x7f040008

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x1040003

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    new-instance v1, Lcom/nirenr/talkman/dialog/SplitEditDialog$h;

    invoke-direct {v1, p0}, Lcom/nirenr/talkman/dialog/SplitEditDialog$h;-><init>(Lcom/nirenr/talkman/dialog/SplitEditDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->g:Landroid/app/Dialog;

    const v1, 0x7f040009

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x104000d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    new-instance v1, Lcom/nirenr/talkman/dialog/SplitEditDialog$i;

    invoke-direct {v1, p0}, Lcom/nirenr/talkman/dialog/SplitEditDialog$i;-><init>(Lcom/nirenr/talkman/dialog/SplitEditDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->g:Landroid/app/Dialog;

    const v1, 0x7f04000b

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f07026e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    new-instance v2, Lcom/nirenr/talkman/dialog/SplitEditDialog$j;

    invoke-direct {v2, p0}, Lcom/nirenr/talkman/dialog/SplitEditDialog$j;-><init>(Lcom/nirenr/talkman/dialog/SplitEditDialog;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->g:Landroid/app/Dialog;

    const v2, 0x7f04000e

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v2, 0x7f07055f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    new-instance v2, Lcom/nirenr/talkman/dialog/SplitEditDialog$l;

    invoke-direct {v2, p0}, Lcom/nirenr/talkman/dialog/SplitEditDialog$l;-><init>(Lcom/nirenr/talkman/dialog/SplitEditDialog;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->g:Landroid/app/Dialog;

    const v2, 0x7f04000f

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v2, 0x7f0706c5

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    new-instance v2, Lcom/nirenr/talkman/dialog/SplitEditDialog$m;

    invoke-direct {v2, p0}, Lcom/nirenr/talkman/dialog/SplitEditDialog$m;-><init>(Lcom/nirenr/talkman/dialog/SplitEditDialog;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->g:Landroid/app/Dialog;

    const v2, 0x7f040010

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v2, 0x7f07055a

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    new-instance v2, Lcom/nirenr/talkman/dialog/SplitEditDialog$n;

    invoke-direct {v2, p0}, Lcom/nirenr/talkman/dialog/SplitEditDialog$n;-><init>(Lcom/nirenr/talkman/dialog/SplitEditDialog;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->g:Landroid/app/Dialog;

    const v2, 0x7f040011

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v2, 0x7f0702fc

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    new-instance v2, Lcom/nirenr/talkman/dialog/SplitEditDialog$o;

    invoke-direct {v2, p0}, Lcom/nirenr/talkman/dialog/SplitEditDialog$o;-><init>(Lcom/nirenr/talkman/dialog/SplitEditDialog;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->g:Landroid/app/Dialog;

    const v2, 0x7f040012

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    new-instance v1, Lcom/nirenr/talkman/dialog/SplitEditDialog$p;

    invoke-direct {v1, p0}, Lcom/nirenr/talkman/dialog/SplitEditDialog$p;-><init>(Lcom/nirenr/talkman/dialog/SplitEditDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    iget p1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->i:I

    sput p1, Lcom/nirenr/talkman/dialog/SplitEditDialog;->v:I

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->d:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setAccessibilityFocus(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    iget-boolean p1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->j:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->d:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->a:Lcom/nirenr/talkman/dialog/SplitEditDialog$onTextChangedListener;

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/nirenr/talkman/dialog/SplitEditDialog$y;

    invoke-direct {v0, p0}, Lcom/nirenr/talkman/dialog/SplitEditDialog$y;-><init>(Lcom/nirenr/talkman/dialog/SplitEditDialog;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    iget-boolean p1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->r:Z

    const/4 p2, 0x0

    const/4 p4, 0x1

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->q:I

    invoke-static {p3, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget p5, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->q:I

    invoke-static {p3, p5}, Ljava/lang/Math;->max(II)I

    move-result p3

    iput-boolean p2, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->r:Z

    move p5, p1

    :goto_0
    if-gt p5, p3, :cond_0

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->h:Landroid/widget/GridView;

    invoke-virtual {v0, p5, p4}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    :cond_0
    iget-object p5, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p5, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setTTSEnabled(Z)V

    iget-object p2, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getHandler()Landroid/os/Handler;

    move-result-object p2

    new-instance p5, Lcom/nirenr/talkman/dialog/SplitEditDialog$z;

    invoke-direct {p5, p0, p1, p3}, Lcom/nirenr/talkman/dialog/SplitEditDialog$z;-><init>(Lcom/nirenr/talkman/dialog/SplitEditDialog;II)V

    const-wide/16 v0, 0x96

    invoke-virtual {p2, p5, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return p4

    :cond_1
    const/4 p1, 0x3

    new-array p5, p1, [Ljava/lang/String;

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v1, 0x7f070627

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p5, p2

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f07018a

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p5, p4

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v3, 0x7f0701ea

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x2

    aput-object v0, p5, v4

    iget-boolean v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->o:Z

    if-eqz v0, :cond_2

    const/4 p5, 0x4

    new-array p5, p5, [Ljava/lang/String;

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p5, p2

    iget-object p2, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p5, p4

    iget-object p2, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p5, v4

    iget-object p2, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v0, 0x7f07042f

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p5, p1

    :cond_2
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->h:Landroid/widget/GridView;

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result p1

    iput p1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->m:I

    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object p2, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance p2, Lcom/nirenr/talkman/dialog/SplitEditDialog$a0;

    invoke-direct {p2, p0, p3}, Lcom/nirenr/talkman/dialog/SplitEditDialog$a0;-><init>(Lcom/nirenr/talkman/dialog/SplitEditDialog;I)V

    invoke-virtual {p1, p5, p2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-static {p1}, Lh2/i;->b(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    return p4
.end method
