.class public Lcom/nirenr/talkman/dialog/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nirenr/talkman/dialog/a$j;
    }
.end annotation


# static fields
.field private static final l:Ljava/lang/String;


# instance fields
.field private final a:Lcom/nirenr/talkman/TalkManAccessibilityService;

.field private b:Landroid/view/accessibility/AccessibilityNodeInfo;

.field private c:I

.field private d:Landroid/app/AlertDialog;

.field private e:Z

.field private f:Landroid/accessibilityservice/InputMethod$AccessibilityInputConnection;

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;",
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
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/text/style/ClickableSpan;",
            ">;"
        }
    .end annotation
.end field

.field private k:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/String;

    const/16 v1, 0xa

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lcom/nirenr/talkman/dialog/a;->l:Ljava/lang/String;

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

    iput v0, p0, Lcom/nirenr/talkman/dialog/a;->c:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/nirenr/talkman/dialog/a;->k:I

    iput-object p1, p0, Lcom/nirenr/talkman/dialog/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    return-void
.end method

.method static bridge synthetic a(Lcom/nirenr/talkman/dialog/a;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/dialog/a;->g:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/nirenr/talkman/dialog/a;)I
    .locals 0

    iget p0, p0, Lcom/nirenr/talkman/dialog/a;->k:I

    return p0
.end method

.method static bridge synthetic c(Lcom/nirenr/talkman/dialog/a;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/dialog/a;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    return-object p0
.end method

.method static bridge synthetic d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/dialog/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    return-object p0
.end method

.method static bridge synthetic e(Lcom/nirenr/talkman/dialog/a;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/dialog/a;->j:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic f(Lcom/nirenr/talkman/dialog/a;)I
    .locals 0

    iget p0, p0, Lcom/nirenr/talkman/dialog/a;->c:I

    return p0
.end method

.method static bridge synthetic g(Lcom/nirenr/talkman/dialog/a;I)V
    .locals 0

    iput p1, p0, Lcom/nirenr/talkman/dialog/a;->c:I

    return-void
.end method

.method static bridge synthetic h(Lcom/nirenr/talkman/dialog/a;)Z
    .locals 0

    invoke-direct {p0}, Lcom/nirenr/talkman/dialog/a;->p()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic i(Lcom/nirenr/talkman/dialog/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/nirenr/talkman/dialog/a;->s()V

    return-void
.end method

.method static bridge synthetic j(Lcom/nirenr/talkman/dialog/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/nirenr/talkman/dialog/a;->t()V

    return-void
.end method

.method static bridge synthetic k(Lcom/nirenr/talkman/dialog/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/nirenr/talkman/dialog/a;->u()V

    return-void
.end method

.method static bridge synthetic l(Lcom/nirenr/talkman/dialog/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/nirenr/talkman/dialog/a;->v()V

    return-void
.end method

.method private m()Z
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

    sget-object v1, Lcom/nirenr/talkman/dialog/a;->l:Ljava/lang/String;

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

.method private o(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/util/ArrayList;)Z
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

    iget-object v2, p0, Lcom/nirenr/talkman/dialog/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

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

    iget-object v6, p0, Lcom/nirenr/talkman/dialog/a;->j:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/nirenr/talkman/dialog/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

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
    iget-object v6, p0, Lcom/nirenr/talkman/dialog/a;->h:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/nirenr/talkman/dialog/a;->j:Ljava/util/ArrayList;

    new-instance v7, Landroid/text/style/URLSpan;

    invoke-direct {v7, v5}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/nirenr/talkman/dialog/a;->h:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/nirenr/talkman/dialog/a;->i:Ljava/util/ArrayList;

    goto :goto_1

    :cond_3
    iget-object v6, p0, Lcom/nirenr/talkman/dialog/a;->h:Ljava/util/ArrayList;

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
    iget-object v7, p0, Lcom/nirenr/talkman/dialog/a;->h:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/nirenr/talkman/dialog/a;->j:Ljava/util/ArrayList;

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

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getText(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

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

    iget-object v2, p0, Lcom/nirenr/talkman/dialog/a;->i:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_5

    :cond_7
    iget-object v2, p0, Lcom/nirenr/talkman/dialog/a;->j:Ljava/util/ArrayList;

    new-instance v3, Landroid/text/style/URLSpan;

    invoke-direct {v3, v1}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/nirenr/talkman/dialog/a;->h:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/nirenr/talkman/dialog/a;->i:Ljava/util/ArrayList;

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

    iget-object v2, p0, Lcom/nirenr/talkman/dialog/a;->i:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_6

    :cond_9
    iget-object v2, p0, Lcom/nirenr/talkman/dialog/a;->j:Ljava/util/ArrayList;

    new-instance v3, Lcom/nirenr/talkman/dialog/a$a;

    invoke-direct {v3, p0, v1}, Lcom/nirenr/talkman/dialog/a$a;-><init>(Lcom/nirenr/talkman/dialog/a;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/nirenr/talkman/dialog/a;->h:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/nirenr/talkman/dialog/a;->i:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_a
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private p()Z
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityService;->getInputMethod()Landroid/accessibilityservice/InputMethod;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shwNumKeyboard "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/androlua/LuaUtil;->printStackTrace(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/accessibilityservice/InputMethod;->getCurrentInputConnection()Landroid/accessibilityservice/InputMethod$AccessibilityInputConnection;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/androlua/LuaUtil;->printStackTrace(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/nirenr/talkman/dialog/a;->f:Landroid/accessibilityservice/InputMethod$AccessibilityInputConnection;

    return v2

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/dialog/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_input_method"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.osfans.trime.accessibility"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private s()V
    .locals 6

    new-instance v0, Landroid/app/FloatWindow;

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {v0, v1}, Landroid/app/FloatWindow;-><init>(Landroid/content/Context;)V

    const-string v1, "\u5b57\u6bcd\u952e\u76d8"

    invoke-virtual {v0, v1}, Landroid/app/FloatWindow;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/FloatWindow;->setFocusable(Z)V

    const/16 v2, 0x51

    invoke-virtual {v0, v2}, Landroid/app/FloatWindow;->setGravity(I)V

    new-instance v2, Landroid/widget/GridView;

    iget-object v3, p0, Lcom/nirenr/talkman/dialog/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {v2, v3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setNumColumns(I)V

    const/16 v4, 0x3c

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "1"

    aput-object v5, v4, v1

    const/4 v1, 0x1

    const-string v5, "2"

    aput-object v5, v4, v1

    const/4 v1, 0x2

    const-string v5, "3"

    aput-object v5, v4, v1

    const/4 v1, 0x3

    const-string v5, "4"

    aput-object v5, v4, v1

    const/4 v1, 0x4

    const-string v5, "5"

    aput-object v5, v4, v1

    const/4 v1, 0x5

    const-string v5, "6"

    aput-object v5, v4, v1

    const/4 v1, 0x6

    const-string v5, "7"

    aput-object v5, v4, v1

    const/4 v1, 0x7

    const-string v5, "8"

    aput-object v5, v4, v1

    const/16 v1, 0x8

    const-string v5, "9"

    aput-object v5, v4, v1

    const/16 v1, 0x9

    const-string v5, "0"

    aput-object v5, v4, v1

    const-string v1, "~"

    aput-object v1, v4, v3

    const/16 v1, 0xb

    const-string v3, "!"

    aput-object v3, v4, v1

    const/16 v1, 0xc

    const-string v3, "@"

    aput-object v3, v4, v1

    const/16 v1, 0xd

    const-string v3, "#"

    aput-object v3, v4, v1

    const/16 v1, 0xe

    const-string v3, "$"

    aput-object v3, v4, v1

    const/16 v1, 0xf

    const-string v3, "%"

    aput-object v3, v4, v1

    const/16 v1, 0x10

    const-string v3, "^"

    aput-object v3, v4, v1

    const/16 v1, 0x11

    const-string v3, "&"

    aput-object v3, v4, v1

    const/16 v1, 0x12

    const-string v3, "*"

    aput-object v3, v4, v1

    const/16 v1, 0x13

    const-string v3, "_"

    aput-object v3, v4, v1

    const/16 v1, 0x14

    const-string v3, "Q"

    aput-object v3, v4, v1

    const/16 v1, 0x15

    const-string v3, "W"

    aput-object v3, v4, v1

    const/16 v1, 0x16

    const-string v3, "E"

    aput-object v3, v4, v1

    const/16 v1, 0x17

    const-string v3, "R"

    aput-object v3, v4, v1

    const/16 v1, 0x18

    const-string v3, "T"

    aput-object v3, v4, v1

    const/16 v1, 0x19

    const-string v3, "Y"

    aput-object v3, v4, v1

    const/16 v1, 0x1a

    const-string v3, "U"

    aput-object v3, v4, v1

    const/16 v1, 0x1b

    const-string v3, "I"

    aput-object v3, v4, v1

    const/16 v1, 0x1c

    const-string v3, "O"

    aput-object v3, v4, v1

    const/16 v1, 0x1d

    const-string v3, "P"

    aput-object v3, v4, v1

    const/16 v1, 0x1e

    const-string v3, "A"

    aput-object v3, v4, v1

    const/16 v1, 0x1f

    const-string v3, "S"

    aput-object v3, v4, v1

    const/16 v1, 0x20

    const-string v3, "D"

    aput-object v3, v4, v1

    const/16 v1, 0x21

    const-string v3, "F"

    aput-object v3, v4, v1

    const/16 v1, 0x22

    const-string v3, "G"

    aput-object v3, v4, v1

    const/16 v1, 0x23

    const-string v3, "H"

    aput-object v3, v4, v1

    const/16 v1, 0x24

    const-string v3, "J"

    aput-object v3, v4, v1

    const/16 v1, 0x25

    const-string v3, "K"

    aput-object v3, v4, v1

    const/16 v1, 0x26

    const-string v3, "L"

    aput-object v3, v4, v1

    const/16 v1, 0x27

    const-string v3, ";"

    aput-object v3, v4, v1

    const/16 v1, 0x28

    const-string v3, "Z"

    aput-object v3, v4, v1

    const/16 v1, 0x29

    const-string v3, "X"

    aput-object v3, v4, v1

    const/16 v1, 0x2a

    const-string v3, "C"

    aput-object v3, v4, v1

    const/16 v1, 0x2b

    const-string v3, "V"

    aput-object v3, v4, v1

    const/16 v1, 0x2c

    const-string v3, "B"

    aput-object v3, v4, v1

    const/16 v1, 0x2d

    const-string v3, "N"

    aput-object v3, v4, v1

    const/16 v1, 0x2e

    const-string v3, "M"

    aput-object v3, v4, v1

    const/16 v1, 0x2f

    const-string v3, ","

    aput-object v3, v4, v1

    const/16 v1, 0x30

    const-string v3, "."

    aput-object v3, v4, v1

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v3, 0x7f0701ea

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x31

    aput-object v1, v4, v3

    const/16 v1, 0x32

    const-string v3, "\u6570\u5b57"

    aput-object v3, v4, v1

    const/16 v1, 0x33

    const-string v3, "\u5c0f\u5199"

    aput-object v3, v4, v1

    const/16 v1, 0x34

    const-string v3, "\u7b26\u53f7"

    aput-object v3, v4, v1

    const/16 v1, 0x35

    const-string v3, "\u5de6"

    aput-object v3, v4, v1

    const/16 v1, 0x36

    const-string v3, "\u53f3"

    aput-object v3, v4, v1

    const/16 v1, 0x37

    const-string v3, "\u4e0a"

    aput-object v3, v4, v1

    const/16 v1, 0x38

    const-string v3, "\u4e0b"

    aput-object v3, v4, v1

    const/16 v1, 0x39

    const-string v3, "\u7a7a\u683c"

    aput-object v3, v4, v1

    const/16 v1, 0x3a

    const-string v3, "/"

    aput-object v3, v4, v1

    const/16 v1, 0x3b

    const-string v3, "\u56de\u8f66"

    aput-object v3, v4, v1

    new-instance v1, Lcom/nirenr/talkman/dialog/a$f;

    iget-object v3, p0, Lcom/nirenr/talkman/dialog/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {v1, p0, v3, v4}, Lcom/nirenr/talkman/dialog/a$f;-><init>(Lcom/nirenr/talkman/dialog/a;Landroid/content/Context;[Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v1, Lcom/nirenr/talkman/dialog/a$g;

    invoke-direct {v1, p0, v4, v0}, Lcom/nirenr/talkman/dialog/a$g;-><init>(Lcom/nirenr/talkman/dialog/a;[Ljava/lang/String;Landroid/app/FloatWindow;)V

    invoke-virtual {v2, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v0, v2}, Landroid/app/FloatWindow;->setContentView(Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/app/FloatWindow;->show()V

    return-void
.end method

.method private t()V
    .locals 6

    new-instance v0, Landroid/app/FloatWindow;

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {v0, v1}, Landroid/app/FloatWindow;-><init>(Landroid/content/Context;)V

    const-string v1, "\u5b57\u6bcd\u952e\u76d8"

    invoke-virtual {v0, v1}, Landroid/app/FloatWindow;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/FloatWindow;->setFocusable(Z)V

    const/16 v2, 0x51

    invoke-virtual {v0, v2}, Landroid/app/FloatWindow;->setGravity(I)V

    new-instance v2, Landroid/widget/GridView;

    iget-object v3, p0, Lcom/nirenr/talkman/dialog/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {v2, v3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setNumColumns(I)V

    const/16 v4, 0x3c

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "1"

    aput-object v5, v4, v1

    const/4 v1, 0x1

    const-string v5, "2"

    aput-object v5, v4, v1

    const/4 v1, 0x2

    const-string v5, "3"

    aput-object v5, v4, v1

    const/4 v1, 0x3

    const-string v5, "4"

    aput-object v5, v4, v1

    const/4 v1, 0x4

    const-string v5, "5"

    aput-object v5, v4, v1

    const/4 v1, 0x5

    const-string v5, "6"

    aput-object v5, v4, v1

    const/4 v1, 0x6

    const-string v5, "7"

    aput-object v5, v4, v1

    const/4 v1, 0x7

    const-string v5, "8"

    aput-object v5, v4, v1

    const/16 v1, 0x8

    const-string v5, "9"

    aput-object v5, v4, v1

    const/16 v1, 0x9

    const-string v5, "0"

    aput-object v5, v4, v1

    const-string v1, "~"

    aput-object v1, v4, v3

    const/16 v1, 0xb

    const-string v3, "!"

    aput-object v3, v4, v1

    const/16 v1, 0xc

    const-string v3, "@"

    aput-object v3, v4, v1

    const/16 v1, 0xd

    const-string v3, "#"

    aput-object v3, v4, v1

    const/16 v1, 0xe

    const-string v3, "$"

    aput-object v3, v4, v1

    const/16 v1, 0xf

    const-string v3, "%"

    aput-object v3, v4, v1

    const/16 v1, 0x10

    const-string v3, "^"

    aput-object v3, v4, v1

    const/16 v1, 0x11

    const-string v3, "&"

    aput-object v3, v4, v1

    const/16 v1, 0x12

    const-string v3, "*"

    aput-object v3, v4, v1

    const/16 v1, 0x13

    const-string v3, "_"

    aput-object v3, v4, v1

    const/16 v1, 0x14

    const-string v3, "q"

    aput-object v3, v4, v1

    const/16 v1, 0x15

    const-string v3, "w"

    aput-object v3, v4, v1

    const/16 v1, 0x16

    const-string v3, "e"

    aput-object v3, v4, v1

    const/16 v1, 0x17

    const-string v3, "r"

    aput-object v3, v4, v1

    const/16 v1, 0x18

    const-string v3, "t"

    aput-object v3, v4, v1

    const/16 v1, 0x19

    const-string v3, "y"

    aput-object v3, v4, v1

    const/16 v1, 0x1a

    const-string v3, "u"

    aput-object v3, v4, v1

    const/16 v1, 0x1b

    const-string v3, "i"

    aput-object v3, v4, v1

    const/16 v1, 0x1c

    const-string v3, "o"

    aput-object v3, v4, v1

    const/16 v1, 0x1d

    const-string v3, "p"

    aput-object v3, v4, v1

    const/16 v1, 0x1e

    const-string v3, "a"

    aput-object v3, v4, v1

    const/16 v1, 0x1f

    const-string v3, "s"

    aput-object v3, v4, v1

    const/16 v1, 0x20

    const-string v3, "d"

    aput-object v3, v4, v1

    const/16 v1, 0x21

    const-string v3, "f"

    aput-object v3, v4, v1

    const/16 v1, 0x22

    const-string v3, "g"

    aput-object v3, v4, v1

    const/16 v1, 0x23

    const-string v3, "h"

    aput-object v3, v4, v1

    const/16 v1, 0x24

    const-string v3, "j"

    aput-object v3, v4, v1

    const/16 v1, 0x25

    const-string v3, "k"

    aput-object v3, v4, v1

    const/16 v1, 0x26

    const-string v3, "l"

    aput-object v3, v4, v1

    const/16 v1, 0x27

    const-string v3, ";"

    aput-object v3, v4, v1

    const/16 v1, 0x28

    const-string v3, "z"

    aput-object v3, v4, v1

    const/16 v1, 0x29

    const-string v3, "x"

    aput-object v3, v4, v1

    const/16 v1, 0x2a

    const-string v3, "c"

    aput-object v3, v4, v1

    const/16 v1, 0x2b

    const-string v3, "v"

    aput-object v3, v4, v1

    const/16 v1, 0x2c

    const-string v3, "b"

    aput-object v3, v4, v1

    const/16 v1, 0x2d

    const-string v3, "n"

    aput-object v3, v4, v1

    const/16 v1, 0x2e

    const-string v3, "m"

    aput-object v3, v4, v1

    const/16 v1, 0x2f

    const-string v3, ","

    aput-object v3, v4, v1

    const/16 v1, 0x30

    const-string v3, "."

    aput-object v3, v4, v1

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v3, 0x7f0701ea

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x31

    aput-object v1, v4, v3

    const/16 v1, 0x32

    const-string v3, "\u6570\u5b57"

    aput-object v3, v4, v1

    const/16 v1, 0x33

    const-string v3, "\u5927\u5199"

    aput-object v3, v4, v1

    const/16 v1, 0x34

    const-string v3, "\u7b26\u53f7"

    aput-object v3, v4, v1

    const/16 v1, 0x35

    const-string v3, "\u5de6"

    aput-object v3, v4, v1

    const/16 v1, 0x36

    const-string v3, "\u53f3"

    aput-object v3, v4, v1

    const/16 v1, 0x37

    const-string v3, "\u4e0a"

    aput-object v3, v4, v1

    const/16 v1, 0x38

    const-string v3, "\u4e0b"

    aput-object v3, v4, v1

    const/16 v1, 0x39

    const-string v3, "\u7a7a\u683c"

    aput-object v3, v4, v1

    const/16 v1, 0x3a

    const-string v3, "/"

    aput-object v3, v4, v1

    const/16 v1, 0x3b

    const-string v3, "\u56de\u8f66"

    aput-object v3, v4, v1

    new-instance v1, Lcom/nirenr/talkman/dialog/a$d;

    iget-object v3, p0, Lcom/nirenr/talkman/dialog/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {v1, p0, v3, v4}, Lcom/nirenr/talkman/dialog/a$d;-><init>(Lcom/nirenr/talkman/dialog/a;Landroid/content/Context;[Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v1, Lcom/nirenr/talkman/dialog/a$e;

    invoke-direct {v1, p0, v4, v0}, Lcom/nirenr/talkman/dialog/a$e;-><init>(Lcom/nirenr/talkman/dialog/a;[Ljava/lang/String;Landroid/app/FloatWindow;)V

    invoke-virtual {v2, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v0, v2}, Landroid/app/FloatWindow;->setContentView(Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/app/FloatWindow;->show()V

    return-void
.end method

.method private u()V
    .locals 8

    new-instance v0, Landroid/app/FloatWindow;

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {v0, v1}, Landroid/app/FloatWindow;-><init>(Landroid/content/Context;)V

    const-string v1, "\u6570\u5b57\u952e\u76d8"

    invoke-virtual {v0, v1}, Landroid/app/FloatWindow;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/FloatWindow;->setFocusable(Z)V

    const/16 v2, 0x51

    invoke-virtual {v0, v2}, Landroid/app/FloatWindow;->setGravity(I)V

    new-instance v2, Landroid/widget/GridView;

    iget-object v3, p0, Lcom/nirenr/talkman/dialog/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {v2, v3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setNumColumns(I)V

    new-instance v4, Landroid/widget/ArrayListAdapter;

    iget-object v5, p0, Lcom/nirenr/talkman/dialog/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const/16 v6, 0xc

    new-array v6, v6, [Ljava/lang/String;

    const-string v7, "1"

    aput-object v7, v6, v1

    const/4 v1, 0x1

    const-string v7, "2"

    aput-object v7, v6, v1

    const/4 v1, 0x2

    const-string v7, "3"

    aput-object v7, v6, v1

    const-string v1, "4"

    aput-object v1, v6, v3

    const/4 v1, 0x4

    const-string v3, "5"

    aput-object v3, v6, v1

    const/4 v1, 0x5

    const-string v3, "6"

    aput-object v3, v6, v1

    const/4 v1, 0x6

    const-string v3, "7"

    aput-object v3, v6, v1

    const/4 v1, 0x7

    const-string v3, "8"

    aput-object v3, v6, v1

    const/16 v1, 0x8

    const-string v3, "9"

    aput-object v3, v6, v1

    const/16 v1, 0x9

    const-string v3, "\u5b57\u6bcd"

    aput-object v3, v6, v1

    const/16 v1, 0xa

    const-string v3, "0"

    aput-object v3, v6, v1

    const v1, 0x7f0701ea

    invoke-virtual {v5, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xb

    aput-object v1, v6, v3

    invoke-direct {v4, v5, v6}, Landroid/widget/ArrayListAdapter;-><init>(Landroid/content/Context;[Ljava/lang/Object;)V

    invoke-virtual {v2, v4}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v1, Lcom/nirenr/talkman/dialog/a$c;

    invoke-direct {v1, p0, v0}, Lcom/nirenr/talkman/dialog/a$c;-><init>(Lcom/nirenr/talkman/dialog/a;Landroid/app/FloatWindow;)V

    invoke-virtual {v2, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v0, v2}, Landroid/app/FloatWindow;->setContentView(Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/app/FloatWindow;->show()V

    return-void
.end method

.method private v()V
    .locals 6

    new-instance v0, Landroid/app/FloatWindow;

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {v0, v1}, Landroid/app/FloatWindow;-><init>(Landroid/content/Context;)V

    const-string v1, "\u5b57\u6bcd\u952e\u76d8"

    invoke-virtual {v0, v1}, Landroid/app/FloatWindow;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/FloatWindow;->setFocusable(Z)V

    const/16 v2, 0x51

    invoke-virtual {v0, v2}, Landroid/app/FloatWindow;->setGravity(I)V

    new-instance v2, Landroid/widget/GridView;

    iget-object v3, p0, Lcom/nirenr/talkman/dialog/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {v2, v3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setNumColumns(I)V

    const/16 v4, 0x32

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "1"

    aput-object v5, v4, v1

    const/4 v1, 0x1

    const-string v5, "2"

    aput-object v5, v4, v1

    const/4 v1, 0x2

    const-string v5, "3"

    aput-object v5, v4, v1

    const/4 v1, 0x3

    const-string v5, "4"

    aput-object v5, v4, v1

    const/4 v1, 0x4

    const-string v5, "5"

    aput-object v5, v4, v1

    const/4 v1, 0x5

    const-string v5, "6"

    aput-object v5, v4, v1

    const/4 v1, 0x6

    const-string v5, "7"

    aput-object v5, v4, v1

    const/4 v1, 0x7

    const-string v5, "8"

    aput-object v5, v4, v1

    const/16 v1, 0x8

    const-string v5, "9"

    aput-object v5, v4, v1

    const/16 v1, 0x9

    const-string v5, "0"

    aput-object v5, v4, v1

    const-string v1, "~"

    aput-object v1, v4, v3

    const/16 v1, 0xb

    const-string v3, "!"

    aput-object v3, v4, v1

    const/16 v1, 0xc

    const-string v3, "@"

    aput-object v3, v4, v1

    const/16 v1, 0xd

    const-string v3, "#"

    aput-object v3, v4, v1

    const/16 v1, 0xe

    const-string v3, "$"

    aput-object v3, v4, v1

    const/16 v1, 0xf

    const-string v3, "%"

    aput-object v3, v4, v1

    const/16 v1, 0x10

    const-string v3, "^"

    aput-object v3, v4, v1

    const/16 v1, 0x11

    const-string v3, "&"

    aput-object v3, v4, v1

    const/16 v1, 0x12

    const-string v3, "*"

    aput-object v3, v4, v1

    const/16 v1, 0x13

    const-string v3, "_"

    aput-object v3, v4, v1

    const/16 v1, 0x14

    const-string v5, "`"

    aput-object v5, v4, v1

    const/16 v1, 0x15

    aput-object v3, v4, v1

    const/16 v1, 0x16

    const-string v3, "+"

    aput-object v3, v4, v1

    const/16 v1, 0x17

    const-string v3, "["

    aput-object v3, v4, v1

    const/16 v1, 0x18

    const-string v3, "]"

    aput-object v3, v4, v1

    const/16 v1, 0x19

    const-string v3, "{"

    aput-object v3, v4, v1

    const/16 v1, 0x1a

    const-string v3, "}"

    aput-object v3, v4, v1

    const/16 v1, 0x1b

    const-string v3, "<"

    aput-object v3, v4, v1

    const/16 v1, 0x1c

    const-string v3, ">"

    aput-object v3, v4, v1

    const/16 v1, 0x1d

    const-string v3, ";"

    aput-object v3, v4, v1

    const/16 v1, 0x1e

    const-string v3, ":"

    aput-object v3, v4, v1

    const/16 v1, 0x1f

    const-string v3, "\'"

    aput-object v3, v4, v1

    const/16 v1, 0x20

    const-string v3, "\""

    aput-object v3, v4, v1

    const/16 v1, 0x21

    const-string v3, "\\"

    aput-object v3, v4, v1

    const/16 v1, 0x22

    const-string v3, "|"

    aput-object v3, v4, v1

    const/16 v1, 0x23

    const-string v3, ","

    aput-object v3, v4, v1

    const/16 v1, 0x24

    const-string v3, "."

    aput-object v3, v4, v1

    const/16 v1, 0x25

    const-string v3, "/"

    aput-object v3, v4, v1

    const/16 v1, 0x26

    const-string v5, "?"

    aput-object v5, v4, v1

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v5, 0x7f0701ea

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x27

    aput-object v1, v4, v5

    const/16 v1, 0x28

    const-string v5, "\u6570\u5b57"

    aput-object v5, v4, v1

    const/16 v1, 0x29

    const-string v5, "\u5c0f\u5199"

    aput-object v5, v4, v1

    const/16 v1, 0x2a

    const-string v5, "\u5927\u5199"

    aput-object v5, v4, v1

    const/16 v1, 0x2b

    const-string v5, "\u5de6"

    aput-object v5, v4, v1

    const/16 v1, 0x2c

    const-string v5, "\u53f3"

    aput-object v5, v4, v1

    const/16 v1, 0x2d

    const-string v5, "\u4e0a"

    aput-object v5, v4, v1

    const/16 v1, 0x2e

    const-string v5, "\u4e0b"

    aput-object v5, v4, v1

    const/16 v1, 0x2f

    const-string v5, "\u7a7a\u683c"

    aput-object v5, v4, v1

    const/16 v1, 0x30

    aput-object v3, v4, v1

    const/16 v1, 0x31

    const-string v3, "\u56de\u8f66"

    aput-object v3, v4, v1

    new-instance v1, Lcom/nirenr/talkman/dialog/a$h;

    iget-object v3, p0, Lcom/nirenr/talkman/dialog/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {v1, p0, v3, v4}, Lcom/nirenr/talkman/dialog/a$h;-><init>(Lcom/nirenr/talkman/dialog/a;Landroid/content/Context;[Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v1, Lcom/nirenr/talkman/dialog/a$i;

    invoke-direct {v1, p0, v4, v0}, Lcom/nirenr/talkman/dialog/a$i;-><init>(Lcom/nirenr/talkman/dialog/a;[Ljava/lang/String;Landroid/app/FloatWindow;)V

    invoke-virtual {v2, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v0, v2}, Landroid/app/FloatWindow;->setContentView(Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/app/FloatWindow;->show()V

    return-void
.end method


# virtual methods
.method public n()V
    .locals 1

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/a;->d:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/a;->d:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iput p2, p0, Lcom/nirenr/talkman/dialog/a;->c:I

    const/4 p1, -0x3

    if-eq p2, p1, :cond_8

    const/4 p1, -0x1

    if-eq p2, p1, :cond_7

    const/4 p1, 0x2

    const/4 v0, 0x0

    if-eq p2, p1, :cond_3

    const/4 p1, 0x3

    if-eq p2, p1, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isSelectionMode()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iget-object p2, p0, Lcom/nirenr/talkman/dialog/a;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getNodeInfoText(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p2, p0, Lcom/nirenr/talkman/dialog/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getSelectionEnd()I

    move-result p2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le p2, v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lcom/nirenr/talkman/dialog/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getSelectionStart()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/nirenr/talkman/dialog/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getSelectionEnd()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->appendCopy(Ljava/lang/CharSequence;)Z

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iget-object p2, p0, Lcom/nirenr/talkman/dialog/a;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getText(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->appendCopy(Ljava/lang/CharSequence;)Z

    :goto_0
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setSelectionMode(Z)V

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const p2, 0x7f070371

    goto :goto_3

    :cond_3
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isSelectionMode()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iget-object p2, p0, Lcom/nirenr/talkman/dialog/a;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getNodeInfoText(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p2, p0, Lcom/nirenr/talkman/dialog/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getSelectionEnd()I

    move-result p2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le p2, v1, :cond_4

    goto :goto_1

    :cond_4
    iget-object p2, p0, Lcom/nirenr/talkman/dialog/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getSelectionStart()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/nirenr/talkman/dialog/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getSelectionEnd()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->copy(Ljava/lang/CharSequence;)Z

    goto :goto_2

    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->beep()V

    goto :goto_4

    :cond_6
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iget-object p2, p0, Lcom/nirenr/talkman/dialog/a;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getText(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->copy(Ljava/lang/CharSequence;)Z

    :goto_2
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setSelectionMode(Z)V

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const p2, 0x7f070374

    :goto_3
    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speak(I)V

    goto :goto_4

    :cond_7
    new-instance p1, Lh2/b;

    iget-object p2, p0, Lcom/nirenr/talkman/dialog/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {p1, p2}, Lh2/b;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;)V

    iget-object p2, p0, Lcom/nirenr/talkman/dialog/a;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1, p2}, Lh2/b;->g(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto :goto_4

    :cond_8
    invoke-direct {p0}, Lcom/nirenr/talkman/dialog/a;->p()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-instance p2, Landroid/content/Intent;

    const-string v0, "com.nirenr.talkman.ACTION_INPUT_METHOD_SHOW"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_4

    :cond_9
    new-instance p1, Lcom/nirenr/talkman/dialog/a$j;

    invoke-direct {p1, p0}, Lcom/nirenr/talkman/dialog/a$j;-><init>(Lcom/nirenr/talkman/dialog/a;)V

    invoke-virtual {p1}, Lcom/nirenr/talkman/dialog/a$j;->c()V

    :goto_4
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iget-boolean v0, p0, Lcom/nirenr/talkman/dialog/a;->e:Z

    invoke-virtual {p1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUpTap(Z)V

    iget p1, p0, Lcom/nirenr/talkman/dialog/a;->c:I

    if-gez p1, :cond_0

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/a;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setAccessibilityFocus(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    return-void

    :cond_0
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/nirenr/talkman/dialog/a$b;

    invoke-direct {v0, p0}, Lcom/nirenr/talkman/dialog/a$b;-><init>(Lcom/nirenr/talkman/dialog/a;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public q()Z
    .locals 1

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/a;->d:Landroid/app/AlertDialog;

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

.method public r(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4

    const/4 v0, -0x1

    iput v0, p0, Lcom/nirenr/talkman/dialog/a;->c:I

    iput-object p1, p0, Lcom/nirenr/talkman/dialog/a;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v2, "ActionMenu"

    invoke-virtual {v1, v2, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isUpTapEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/nirenr/talkman/dialog/a;->e:Z

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isMenuUpTap()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUpTap(Z)V

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/androlua/LuaService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f010000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isCN()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "\u865a\u62df\u952e\u76d8"

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Lcom/nirenr/talkman/dialog/a;->k:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/nirenr/talkman/dialog/a;->g:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f070708

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lk2/b0;->a(Landroid/content/Context;IZ)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iget-object v2, p0, Lcom/nirenr/talkman/dialog/a;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getCustomActions(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/nirenr/talkman/dialog/a;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getLabel()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/nirenr/talkman/dialog/a;->h:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/nirenr/talkman/dialog/a;->i:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/nirenr/talkman/dialog/a;->j:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f07070a

    invoke-static {v1, v2, v3}, Lk2/b0;->a(Landroid/content/Context;IZ)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/a;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {p0, v1, p1}, Lcom/nirenr/talkman/dialog/a;->o(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/util/ArrayList;)Z

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/a;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v1

    :goto_1
    if-ge v3, v1, :cond_3

    iget-object v2, p0, Lcom/nirenr/talkman/dialog/a;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-static {v2, v3}, Lk2/a;->H(Landroid/view/accessibility/AccessibilityNodeInfo;I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lcom/nirenr/talkman/dialog/a;->o(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/util/ArrayList;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_5

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iget-object v2, p0, Lcom/nirenr/talkman/dialog/a;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isSeekBar(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v1

    const v2, 0x7f0705b0

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/a;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getRangeInfo()Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    move-result-object v1

    if-eqz v1, :cond_4

    :goto_2
    iget-object v1, p0, Lcom/nirenr/talkman/dialog/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    iget-object v1, p0, Lcom/nirenr/talkman/dialog/a;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-static {v1}, Lk2/a;->Q(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/a;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    sget-object v3, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SET_SELECTION:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-static {v1, v3}, Lk2/a;->d(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    :goto_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/nirenr/talkman/dialog/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {p1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f070009

    invoke-virtual {p1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, v1, p0}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v1, 0x7f07001c

    invoke-virtual {p1, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v1, 0x7f070095

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v1, 0x7f070305

    invoke-virtual {p1, v1, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/nirenr/talkman/dialog/a;->d:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_7

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x16

    if-lt v1, v2, :cond_6

    const/16 v1, 0x7f0

    goto :goto_4

    :cond_6
    const/16 v1, 0x7da

    :goto_4
    invoke-virtual {p1, v1}, Landroid/view/Window;->setType(I)V

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/a;->d:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/a;->d:Landroid/app/AlertDialog;

    const/4 v1, -0x3

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    invoke-direct {p0}, Lcom/nirenr/talkman/dialog/a;->m()Z

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    :try_start_0
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/a;->d:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/nirenr/talkman/dialog/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2}, Lcom/androlua/LuaService;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x4

    const/4 v3, 0x3

    invoke-static {p1, v0, v2, v3}, Lh2/i;->a(Landroid/app/AlertDialog;III)V

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/a;->d:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/androlua/LuaService;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    const/4 v2, -0x2

    invoke-static {p1, v2, v0, v3}, Lh2/i;->a(Landroid/app/AlertDialog;III)V

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/a;->d:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/androlua/LuaService;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    invoke-static {p1, v1, v0, v3}, Lh2/i;->a(Landroid/app/AlertDialog;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_7
    :goto_5
    return-void
.end method
