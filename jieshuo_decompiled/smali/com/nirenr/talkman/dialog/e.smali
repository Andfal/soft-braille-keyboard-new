.class public Lcom/nirenr/talkman/dialog/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# static fields
.field private static final p:Ljava/lang/String;


# instance fields
.field private final a:Lcom/nirenr/talkman/TalkManAccessibilityService;

.field private b:Landroid/view/accessibility/AccessibilityNodeInfo;

.field private c:I

.field private d:Landroid/app/AlertDialog;

.field private e:Z

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/text/style/ClickableSpan;",
            ">;"
        }
    .end annotation
.end field

.field private j:I

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/String;

    const/16 v1, 0xa

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lcom/nirenr/talkman/dialog/e;->p:Ljava/lang/String;

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

.method public constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/nirenr/talkman/dialog/e;->c:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/nirenr/talkman/dialog/e;->j:I

    iput-object p1, p0, Lcom/nirenr/talkman/dialog/e;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    return-void
.end method

.method static bridge synthetic a(Lcom/nirenr/talkman/dialog/e;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/dialog/e;->f:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/nirenr/talkman/dialog/e;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/nirenr/talkman/dialog/e;->k:Z

    return p0
.end method

.method static bridge synthetic c(Lcom/nirenr/talkman/dialog/e;)I
    .locals 0

    iget p0, p0, Lcom/nirenr/talkman/dialog/e;->o:I

    return p0
.end method

.method static bridge synthetic d(Lcom/nirenr/talkman/dialog/e;)I
    .locals 0

    iget p0, p0, Lcom/nirenr/talkman/dialog/e;->j:I

    return p0
.end method

.method static bridge synthetic e(Lcom/nirenr/talkman/dialog/e;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/dialog/e;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    return-object p0
.end method

.method static bridge synthetic f(Lcom/nirenr/talkman/dialog/e;)Lcom/nirenr/talkman/TalkManAccessibilityService;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/dialog/e;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    return-object p0
.end method

.method static bridge synthetic g(Lcom/nirenr/talkman/dialog/e;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/dialog/e;->i:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic h(Lcom/nirenr/talkman/dialog/e;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/dialog/e;->g:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic i(Lcom/nirenr/talkman/dialog/e;)I
    .locals 0

    iget p0, p0, Lcom/nirenr/talkman/dialog/e;->c:I

    return p0
.end method

.method static bridge synthetic j(Lcom/nirenr/talkman/dialog/e;I)V
    .locals 0

    iput p1, p0, Lcom/nirenr/talkman/dialog/e;->c:I

    return-void
.end method

.method private k()Z
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

    sget-object v1, Lcom/nirenr/talkman/dialog/e;->p:Ljava/lang/String;

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

.method private l(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/util/ArrayList;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_6

    instance-of v2, v1, Landroid/text/SpannableString;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/nirenr/talkman/dialog/e;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "text"

    invoke-virtual {v2, v4, v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v2, v1

    check-cast v2, Landroid/text/SpannableString;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v3, v4, :cond_4

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const-class v4, Landroid/text/style/ClickableSpan;

    invoke-virtual {v2, v0, v3, v4}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/ClickableSpan;

    if-eqz v3, :cond_6

    array-length v4, v3

    :goto_0
    if-ge v0, v4, :cond_6

    aget-object v5, v3, v0

    iget-object v6, p0, Lcom/nirenr/talkman/dialog/e;->i:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/nirenr/talkman/dialog/e;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v8, 0x7f070105

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    invoke-virtual {v2, v5}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v8

    invoke-interface {v1, v7, v8}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    instance-of v6, v5, Landroid/text/style/URLSpan;

    if-eqz v6, :cond_3

    check-cast v5, Landroid/text/style/URLSpan;

    invoke-virtual {v5}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_2

    :cond_2
    iget-object v6, p0, Lcom/nirenr/talkman/dialog/e;->g:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/nirenr/talkman/dialog/e;->i:Ljava/util/ArrayList;

    new-instance v7, Landroid/text/style/URLSpan;

    invoke-direct {v7, v5}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/nirenr/talkman/dialog/e;->g:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/nirenr/talkman/dialog/e;->h:Ljava/util/ArrayList;

    goto :goto_1

    :cond_3
    iget-object v6, p0, Lcom/nirenr/talkman/dialog/e;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    invoke-virtual {v2, v5}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {v1, v7, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const-class v4, Landroid/text/style/URLSpan;

    invoke-virtual {v2, v0, v3, v4}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/URLSpan;

    if-eqz v3, :cond_6

    array-length v4, v3

    :goto_3
    if-ge v0, v4, :cond_6

    aget-object v5, v3, v0

    invoke-virtual {v5}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_4

    :cond_5
    iget-object v7, p0, Lcom/nirenr/talkman/dialog/e;->g:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/nirenr/talkman/dialog/e;->i:Ljava/util/ArrayList;

    new-instance v8, Landroid/text/style/URLSpan;

    invoke-direct {v8, v6}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v5}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v2, v5}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {v1, v6, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    const-string v0, "https?://[-A-Za-z0-9_]+\\.[-A-Za-z0-9+&@#/%?=~_|!:,.;]+[-A-Za-z0-9+&@#/%=~_|]|(www|wap|m|pan)\\.[-A-Za-z0-9_]+\\.[-A-Za-z0-9+&@#/%?=~_|!:,.;]+[-A-Za-z0-9+&@#/%=~_|]|[-A-Za-z0-9_]+\\.(com|cn|org|gov)(.cn)?|[-A-Za-z0-9_]+\\.(com|cn|org|gov)(.cn)?/[-A-Za-z0-9+&@#/%?=~_|!:,.;]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/e;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getText(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/e;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v2, "URLSpanDialog"

    invoke-virtual {v1, v2, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    :goto_5
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    invoke-interface {p1, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nirenr/talkman/dialog/e;->h:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_5

    :cond_7
    iget-object v2, p0, Lcom/nirenr/talkman/dialog/e;->i:Ljava/util/ArrayList;

    new-instance v3, Landroid/text/style/URLSpan;

    invoke-direct {v3, v1}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/nirenr/talkman/dialog/e;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/nirenr/talkman/dialog/e;->h:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_8
    const-string v0, "\\d[\\d \t-]*\\d{3}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    :goto_6
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    invoke-interface {p1, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nirenr/talkman/dialog/e;->h:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_6

    :cond_9
    iget-object v2, p0, Lcom/nirenr/talkman/dialog/e;->i:Ljava/util/ArrayList;

    new-instance v3, Lcom/nirenr/talkman/dialog/e$a;

    invoke-direct {v3, p0, v1}, Lcom/nirenr/talkman/dialog/e$a;-><init>(Lcom/nirenr/talkman/dialog/e;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/nirenr/talkman/dialog/e;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/nirenr/talkman/dialog/e;->h:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_a
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method


# virtual methods
.method public m(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 6

    const/4 v0, -0x1

    iput v0, p0, Lcom/nirenr/talkman/dialog/e;->c:I

    iput-object p1, p0, Lcom/nirenr/talkman/dialog/e;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/e;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v2, "ActionMenu"

    invoke-virtual {v1, v2, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/e;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isUpTapEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/nirenr/talkman/dialog/e;->e:Z

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/e;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isMenuUpTap()Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/e;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p1, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUpTap(Z)V

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/nirenr/talkman/dialog/e;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iget-object v3, p0, Lcom/nirenr/talkman/dialog/e;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v2, v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->canAddLabel(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/nirenr/talkman/dialog/e;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v3, 0x7f070017

    :goto_0
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/nirenr/talkman/dialog/e;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-static {v2}, Lk2/a;->Q(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/nirenr/talkman/dialog/e;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v3, 0x7f070104

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/nirenr/talkman/dialog/e;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v3, 0x7f070107

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/nirenr/talkman/dialog/e;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v3, 0x7f07013e

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/nirenr/talkman/dialog/e;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iget-object v3, p0, Lcom/nirenr/talkman/dialog/e;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v2, v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->hasChildNodeInfoText(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v2

    if-eqz v2, :cond_3

    iput-boolean v1, p0, Lcom/nirenr/talkman/dialog/e;->k:Z

    :cond_3
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, p0, Lcom/nirenr/talkman/dialog/e;->j:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/nirenr/talkman/dialog/e;->f:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/nirenr/talkman/dialog/e;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iget-object v3, p0, Lcom/nirenr/talkman/dialog/e;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v2, v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getCustomActions(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/nirenr/talkman/dialog/e;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getLabel()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcom/nirenr/talkman/dialog/e;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v1

    iput-boolean v2, p0, Lcom/nirenr/talkman/dialog/e;->n:Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/nirenr/talkman/dialog/e;->g:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/nirenr/talkman/dialog/e;->h:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/nirenr/talkman/dialog/e;->i:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/nirenr/talkman/dialog/e;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {p0, v2, p1}, Lcom/nirenr/talkman/dialog/e;->l(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/util/ArrayList;)Z

    iget-object v2, p0, Lcom/nirenr/talkman/dialog/e;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v2, :cond_5

    iget-object v4, p0, Lcom/nirenr/talkman/dialog/e;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-static {v4, v3}, Lk2/a;->H(Landroid/view/accessibility/AccessibilityNodeInfo;I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v4

    invoke-direct {p0, v4, p1}, Lcom/nirenr/talkman/dialog/e;->l(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/util/ArrayList;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    iget-object v2, p0, Lcom/nirenr/talkman/dialog/e;->i:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v1

    iput-boolean v2, p0, Lcom/nirenr/talkman/dialog/e;->l:Z

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_7

    iget-object v3, p0, Lcom/nirenr/talkman/dialog/e;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iget-object v4, p0, Lcom/nirenr/talkman/dialog/e;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v3, v4}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isSeekBar(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v3

    const v4, 0x7f0705b0

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/nirenr/talkman/dialog/e;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getRangeInfo()Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    move-result-object v3

    if-eqz v3, :cond_6

    :goto_4
    iget-object v3, p0, Lcom/nirenr/talkman/dialog/e;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-boolean v1, p0, Lcom/nirenr/talkman/dialog/e;->m:Z

    goto :goto_5

    :cond_6
    iget-object v3, p0, Lcom/nirenr/talkman/dialog/e;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-static {v3}, Lk2/a;->Q(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/nirenr/talkman/dialog/e;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    sget-object v5, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SET_SELECTION:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-static {v3, v5}, Lk2/a;->d(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_4

    :cond_7
    :goto_5
    iget-boolean v1, p0, Lcom/nirenr/talkman/dialog/e;->k:Z

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Lcom/nirenr/talkman/dialog/e;->n:Z

    if-nez v1, :cond_8

    iget-boolean v1, p0, Lcom/nirenr/talkman/dialog/e;->l:Z

    if-nez v1, :cond_8

    iget-boolean v1, p0, Lcom/nirenr/talkman/dialog/e;->m:Z

    if-nez v1, :cond_8

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/e;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/e;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->editNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-void

    :cond_8
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Lcom/nirenr/talkman/dialog/e;->o:I

    iget-boolean v1, p0, Lcom/nirenr/talkman/dialog/e;->k:Z

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/e;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v3, 0x7f070252

    goto :goto_6

    :cond_9
    iget-object v1, p0, Lcom/nirenr/talkman/dialog/e;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v3, 0x7f070158

    :goto_6
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/e;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v3, 0x7f070095

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/nirenr/talkman/dialog/e;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {p1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v1, p0}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/nirenr/talkman/dialog/e;->d:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object p1

    new-instance v1, Lcom/nirenr/talkman/dialog/e$b;

    invoke-direct {v1, p0}, Lcom/nirenr/talkman/dialog/e$b;-><init>(Lcom/nirenr/talkman/dialog/e;)V

    invoke-virtual {p1, v1}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/e;->d:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_b

    const/16 v1, 0x16

    if-lt v2, v1, :cond_a

    const/16 v1, 0x7f0

    goto :goto_7

    :cond_a
    const/16 v1, 0x7da

    :goto_7
    invoke-virtual {p1, v1}, Landroid/view/Window;->setType(I)V

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/e;->d:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/e;->d:Landroid/app/AlertDialog;

    const/4 v1, -0x3

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    invoke-direct {p0}, Lcom/nirenr/talkman/dialog/e;->k()Z

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    :try_start_0
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/e;->d:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/nirenr/talkman/dialog/e;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2}, Lcom/androlua/LuaService;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x4

    const/4 v3, 0x3

    invoke-static {p1, v0, v2, v3}, Lh2/i;->a(Landroid/app/AlertDialog;III)V

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/e;->d:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/e;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/androlua/LuaService;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    const/4 v2, -0x2

    invoke-static {p1, v2, v0, v3}, Lh2/i;->a(Landroid/app/AlertDialog;III)V

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/e;->d:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/e;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/androlua/LuaService;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    invoke-static {p1, v1, v0, v3}, Lh2/i;->a(Landroid/app/AlertDialog;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_b
    :goto_8
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iput p2, p0, Lcom/nirenr/talkman/dialog/e;->c:I

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/e;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iget-boolean v0, p0, Lcom/nirenr/talkman/dialog/e;->e:Z

    invoke-virtual {p1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUpTap(Z)V

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/e;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/e;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setAccessibilityFocus(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    iget p1, p0, Lcom/nirenr/talkman/dialog/e;->c:I

    if-gez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/e;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/nirenr/talkman/dialog/e$c;

    invoke-direct {v0, p0}, Lcom/nirenr/talkman/dialog/e$c;-><init>(Lcom/nirenr/talkman/dialog/e;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
