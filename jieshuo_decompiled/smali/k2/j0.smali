.class public Lk2/j0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final k:Ljava/util/regex/Pattern;


# instance fields
.field private final a:Lcom/nirenr/talkman/TalkManAccessibilityService;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Landroid/view/accessibility/AccessibilityNodeInfo;

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:I

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "[\\u0000-\\u0026\\u0028-\\u002f\\u0040\\u005b-\\u0060\\u007b-\\u007e\\u00d7\\u2013\\u2014\\u2018-\\u2027\\u3001\\u3002\\u3003\\u3008-\\u3011\\u3014\\u3015\\uff01-\\uff0f\\uff1a-\\uff20\\uff3b-\\uff40\\uff5b-\\uff65\\uffe5]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lk2/j0;->k:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lk2/j0;->f:Z

    iput-object p1, p0, Lk2/j0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    return-void
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lk2/j0;->d:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-nez v0, :cond_0

    iget-object v0, p0, Lk2/j0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getFocusView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lk2/j0;->n(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    return-void

    :cond_0
    iget-object v1, p0, Lk2/j0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getFocusView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lk2/j0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getFocusView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lk2/j0;->n(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    :cond_1
    return-void
.end method

.method private c(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 3

    iget-object v0, p0, Lk2/j0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getPackageName(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v2, "com.njusoft.taizhoutrip"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lk2/j0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isInWebView(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result p1

    return p1
.end method

.method private j(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lk2/j0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public A()Z
    .locals 6

    invoke-direct {p0}, Lk2/j0;->b()V

    iget-object v0, p0, Lk2/j0;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_9

    iget v0, p0, Lk2/j0;->c:I

    iget-object v2, p0, Lk2/j0;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-le v0, v2, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-boolean v0, p0, Lk2/j0;->f:Z

    if-nez v0, :cond_1

    iget v0, p0, Lk2/j0;->c:I

    if-gez v0, :cond_2

    :cond_1
    iput v1, p0, Lk2/j0;->c:I

    :cond_2
    iput-boolean v1, p0, Lk2/j0;->f:Z

    iget v0, p0, Lk2/j0;->c:I

    iget-object v2, p0, Lk2/j0;->i:Ljava/util/List;

    if-nez v2, :cond_4

    iget-object v2, p0, Lk2/j0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isCN()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Ll2/d;->f()Ll2/d;

    move-result-object v2

    iget-object v4, p0, Lk2/j0;->b:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ll2/d;->e(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lk2/j0;->b:Ljava/lang/String;

    sget-object v4, Lk2/j0;->k:Ljava/util/regex/Pattern;

    invoke-virtual {v4}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lk2/g0;->e(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    :goto_0
    iput-object v2, p0, Lk2/j0;->i:Ljava/util/List;

    :cond_4
    const/4 v2, 0x0

    :goto_1
    iget-object v4, p0, Lk2/j0;->i:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_7

    iget-object v4, p0, Lk2/j0;->i:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v2, v5

    sget-object v5, Lk2/j0;->k:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_2

    :cond_5
    iget v4, p0, Lk2/j0;->c:I

    if-le v2, v4, :cond_6

    goto :goto_3

    :cond_6
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_7
    const/4 v1, -0x1

    :goto_3
    iput v2, p0, Lk2/j0;->c:I

    if-ltz v1, :cond_8

    iget-object v0, p0, Lk2/j0;->i:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_4

    :cond_8
    iget-object v1, p0, Lk2/j0;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_4
    iget-object v1, p0, Lk2/j0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speak(Ljava/lang/String;)V

    iget-object v0, p0, Lk2/j0;->d:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget v1, p0, Lk2/j0;->c:I

    invoke-virtual {p0, v0, v1}, Lk2/j0;->o(Landroid/view/accessibility/AccessibilityNodeInfo;I)V

    return v3

    :cond_9
    :goto_5
    return v1
.end method

.method public B()Z
    .locals 6

    invoke-direct {p0}, Lk2/j0;->b()V

    invoke-virtual {p0}, Lk2/j0;->e()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActionList()Ljava/util/List;

    move-result-object v2

    sget-object v3, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_2

    iget-boolean v0, p0, Lk2/j0;->e:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lk2/j0;->D()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    invoke-virtual {p0, v0}, Lk2/j0;->a(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lk2/j0;->j:Z

    if-eqz v2, :cond_6

    :cond_3
    invoke-static {v0}, Lk2/a;->d0(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    iget-object v2, p0, Lk2/j0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getNodeInfoText(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    iget-boolean v4, p0, Lk2/j0;->j:Z

    if-eqz v4, :cond_4

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getTextSelectionStart()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_4

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getTextSelectionStart()I

    move-result v0

    goto :goto_0

    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    invoke-static {v2, v0}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lk2/j0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getTextFormatter()Lk2/h0;

    move-result-object v2

    invoke-virtual {v2, v0}, Lk2/h0;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lk2/j0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v4, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speak(Ljava/lang/String;)V

    iget-boolean v2, p0, Lk2/j0;->j:Z

    if-nez v2, :cond_5

    iget v2, p0, Lk2/j0;->c:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v2, v0

    iput v2, p0, Lk2/j0;->c:I

    :cond_5
    iget-object v0, p0, Lk2/j0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v2, "previous_text"

    invoke-virtual {v0, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->play(Ljava/lang/String;)V

    iput-boolean v1, p0, Lk2/j0;->j:Z

    return v3

    :cond_6
    iput-boolean v1, p0, Lk2/j0;->j:Z

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT"

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN"

    iget-boolean v3, p0, Lk2/j0;->g:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v2, 0x200

    invoke-virtual {v0, v2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public C(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lk2/j0;->e()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActionList()Ljava/util/List;

    move-result-object v1

    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_NEXT_AT_MOVEMENT_GRANULARITY:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN"

    iget-boolean v2, p0, Lk2/j0;->g:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v1, 0x200

    invoke-virtual {p1, v1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public D()Z
    .locals 12

    invoke-direct {p0}, Lk2/j0;->b()V

    iget-object v0, p0, Lk2/j0;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lk2/j0;->f:Z

    const/4 v2, 0x1

    const-string v3, "previous_text"

    const/16 v4, 0x20e3

    const/16 v5, 0x200d

    const v6, 0x1f1ff

    const v7, 0x1f1e6

    if-nez v0, :cond_b

    iget v0, p0, Lk2/j0;->c:I

    iget-object v8, p0, Lk2/j0;->b:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-le v0, v8, :cond_1

    goto/16 :goto_6

    :cond_1
    iput-boolean v1, p0, Lk2/j0;->f:Z

    iget v0, p0, Lk2/j0;->c:I

    if-gtz v0, :cond_2

    return v1

    :cond_2
    iget-object v8, p0, Lk2/j0;->b:Ljava/lang/String;

    invoke-static {v8, v0}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v9

    iget v10, p0, Lk2/j0;->c:I

    invoke-static {v8}, Ljava/lang/Character;->charCount(I)I

    move-result v11

    sub-int/2addr v10, v11

    iput v10, p0, Lk2/j0;->c:I

    iget-object v10, p0, Lk2/j0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v10}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getTextFormatter()Lk2/h0;

    move-result-object v10

    invoke-virtual {v10, v9}, Lk2/h0;->m(Ljava/lang/String;)Ljava/lang/String;

    iget v9, p0, Lk2/j0;->c:I

    if-lez v9, :cond_5

    if-lt v8, v7, :cond_3

    if-gt v8, v6, :cond_3

    iget-object v8, p0, Lk2/j0;->b:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->codePointBefore(I)I

    move-result v8

    if-lt v8, v7, :cond_5

    if-gt v8, v6, :cond_5

    iget v9, p0, Lk2/j0;->c:I

    invoke-static {v8}, Ljava/lang/Character;->charCount(I)I

    move-result v8

    sub-int/2addr v9, v8

    iput v9, p0, Lk2/j0;->c:I

    if-ltz v9, :cond_5

    goto :goto_1

    :cond_3
    if-ne v8, v4, :cond_4

    iget-object v8, p0, Lk2/j0;->b:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->codePointBefore(I)I

    move-result v8

    :goto_0
    iget v9, p0, Lk2/j0;->c:I

    invoke-static {v8}, Ljava/lang/Character;->charCount(I)I

    move-result v8

    sub-int/2addr v9, v8

    iput v9, p0, Lk2/j0;->c:I

    :goto_1
    iget-object v8, p0, Lk2/j0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v8}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getTextFormatter()Lk2/h0;

    move-result-object v8

    iget-object v9, p0, Lk2/j0;->b:Ljava/lang/String;

    iget v10, p0, Lk2/j0;->c:I

    invoke-virtual {v9, v10, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lk2/h0;->m(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2

    :cond_4
    iget-object v8, p0, Lk2/j0;->b:Ljava/lang/String;

    invoke-static {v8, v9}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v8

    if-ne v8, v5, :cond_5

    iget v8, p0, Lk2/j0;->c:I

    invoke-static {v5}, Ljava/lang/Character;->charCount(I)I

    move-result v9

    sub-int/2addr v8, v9

    iput v8, p0, Lk2/j0;->c:I

    if-ltz v8, :cond_5

    iget-object v9, p0, Lk2/j0;->b:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/String;->codePointBefore(I)I

    move-result v8

    goto :goto_0

    :cond_5
    :goto_2
    iget v0, p0, Lk2/j0;->c:I

    if-gtz v0, :cond_6

    return v1

    :cond_6
    iget-object v1, p0, Lk2/j0;->b:Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v8

    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v9

    sub-int v9, v0, v9

    iget-object v10, p0, Lk2/j0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v10}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getTextFormatter()Lk2/h0;

    move-result-object v10

    invoke-virtual {v10, v8}, Lk2/h0;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-lez v9, :cond_9

    if-lt v1, v7, :cond_7

    if-gt v1, v6, :cond_7

    iget-object v1, p0, Lk2/j0;->b:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/String;->codePointBefore(I)I

    move-result v1

    if-lt v1, v7, :cond_9

    if-gt v1, v6, :cond_9

    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    sub-int/2addr v9, v1

    if-ltz v9, :cond_9

    iget-object v1, p0, Lk2/j0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getTextFormatter()Lk2/h0;

    move-result-object v1

    iget-object v4, p0, Lk2/j0;->b:Ljava/lang/String;

    invoke-virtual {v4, v9, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lk2/h0;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    goto :goto_4

    :cond_7
    if-ne v1, v4, :cond_8

    :goto_3
    iget-object v1, p0, Lk2/j0;->b:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/String;->codePointBefore(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    sub-int/2addr v9, v1

    iget-object v1, p0, Lk2/j0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getTextFormatter()Lk2/h0;

    move-result-object v1

    iget-object v4, p0, Lk2/j0;->b:Ljava/lang/String;

    invoke-virtual {v4, v9, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lk2/h0;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_4

    :cond_8
    iget-object v1, p0, Lk2/j0;->b:Ljava/lang/String;

    invoke-static {v1, v9}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v1

    if-ne v1, v5, :cond_9

    invoke-static {v5}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    sub-int/2addr v9, v1

    if-ltz v9, :cond_9

    goto :goto_3

    :cond_9
    :goto_4
    iget-object v0, p0, Lk2/j0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, v8}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speak(Ljava/lang/String;)V

    iget-object v0, p0, Lk2/j0;->d:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget v1, p0, Lk2/j0;->c:I

    invoke-virtual {p0, v0, v1}, Lk2/j0;->o(Landroid/view/accessibility/AccessibilityNodeInfo;I)V

    iget-object v0, p0, Lk2/j0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    if-nez v9, :cond_a

    const-string v1, "scroll_top"

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->play(Ljava/lang/String;)V

    goto :goto_5

    :cond_a
    invoke-virtual {v0, v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->play(Ljava/lang/String;)V

    :goto_5
    return v2

    :cond_b
    :goto_6
    iget-object v0, p0, Lk2/j0;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lk2/j0;->c:I

    iput-boolean v1, p0, Lk2/j0;->f:Z

    iget-object v1, p0, Lk2/j0;->b:Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v8

    iget v9, p0, Lk2/j0;->c:I

    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v10

    sub-int/2addr v9, v10

    iput v9, p0, Lk2/j0;->c:I

    iget-object v9, p0, Lk2/j0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v9}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getTextFormatter()Lk2/h0;

    move-result-object v9

    invoke-virtual {v9, v8}, Lk2/h0;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget v9, p0, Lk2/j0;->c:I

    if-lez v9, :cond_e

    if-lt v1, v7, :cond_c

    if-gt v1, v6, :cond_c

    iget-object v1, p0, Lk2/j0;->b:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/String;->codePointBefore(I)I

    move-result v1

    if-lt v1, v7, :cond_e

    if-gt v1, v6, :cond_e

    iget v4, p0, Lk2/j0;->c:I

    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    sub-int/2addr v4, v1

    iput v4, p0, Lk2/j0;->c:I

    if-ltz v4, :cond_e

    iget-object v1, p0, Lk2/j0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getTextFormatter()Lk2/h0;

    move-result-object v1

    iget-object v4, p0, Lk2/j0;->b:Ljava/lang/String;

    iget v5, p0, Lk2/j0;->c:I

    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lk2/h0;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    goto :goto_8

    :cond_c
    if-ne v1, v4, :cond_d

    iget-object v1, p0, Lk2/j0;->b:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/String;->codePointBefore(I)I

    move-result v1

    :goto_7
    iget v4, p0, Lk2/j0;->c:I

    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    sub-int/2addr v4, v1

    iput v4, p0, Lk2/j0;->c:I

    iget-object v1, p0, Lk2/j0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getTextFormatter()Lk2/h0;

    move-result-object v1

    iget-object v4, p0, Lk2/j0;->b:Ljava/lang/String;

    iget v5, p0, Lk2/j0;->c:I

    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lk2/h0;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_8

    :cond_d
    iget-object v1, p0, Lk2/j0;->b:Ljava/lang/String;

    invoke-static {v1, v9}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v1

    if-ne v1, v5, :cond_e

    iget v1, p0, Lk2/j0;->c:I

    invoke-static {v5}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    sub-int/2addr v1, v4

    iput v1, p0, Lk2/j0;->c:I

    if-ltz v1, :cond_e

    iget-object v4, p0, Lk2/j0;->b:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->codePointBefore(I)I

    move-result v1

    goto :goto_7

    :cond_e
    :goto_8
    iget-object v0, p0, Lk2/j0;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lk2/j0;->c:I

    iget-object v0, p0, Lk2/j0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, v8}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speak(Ljava/lang/String;)V

    iget-object v0, p0, Lk2/j0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->play(Ljava/lang/String;)V

    return v2
.end method

.method public E()Z
    .locals 5

    invoke-direct {p0}, Lk2/j0;->b()V

    invoke-virtual {p0}, Lk2/j0;->e()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActionList()Ljava/util/List;

    move-result-object v2

    sget-object v3, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-boolean v0, p0, Lk2/j0;->e:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lk2/j0;->I()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    iget-boolean v1, p0, Lk2/j0;->f:Z

    invoke-virtual {p0, v0}, Lk2/j0;->a(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT"

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN"

    iget-boolean v4, p0, Lk2/j0;->g:Z

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v3, 0x200

    invoke-virtual {v0, v3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(ILandroid/os/Bundle;)Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz v1, :cond_3

    iget-object v1, p0, Lk2/j0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speakSourceText(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v2

    invoke-virtual {p0}, Lk2/j0;->M()Z

    :cond_3
    return v2
.end method

.method public F(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActionList()Ljava/util/List;

    move-result-object v1

    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT"

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN"

    iget-boolean v2, p0, Lk2/j0;->g:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v1, 0x200

    invoke-virtual {p1, v1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public G()Z
    .locals 4

    invoke-direct {p0}, Lk2/j0;->b()V

    invoke-virtual {p0}, Lk2/j0;->e()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActionList()Ljava/util/List;

    move-result-object v2

    sget-object v3, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-boolean v0, p0, Lk2/j0;->e:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lk2/j0;->H()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    invoke-virtual {p0, v0}, Lk2/j0;->a(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT"

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN"

    iget-boolean v3, p0, Lk2/j0;->g:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v2, 0x200

    invoke-virtual {v0, v2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public H()Z
    .locals 5

    invoke-direct {p0}, Lk2/j0;->b()V

    iget-object v0, p0, Lk2/j0;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lk2/j0;->f:Z

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget v0, p0, Lk2/j0;->c:I

    iget-object v3, p0, Lk2/j0;->b:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v0, v3, :cond_2

    :cond_1
    iget-object v0, p0, Lk2/j0;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v2

    iput v0, p0, Lk2/j0;->c:I

    :cond_2
    iput-boolean v1, p0, Lk2/j0;->f:Z

    iget v0, p0, Lk2/j0;->c:I

    if-gtz v0, :cond_3

    return v1

    :cond_3
    :goto_0
    iget v3, p0, Lk2/j0;->c:I

    if-lez v3, :cond_6

    iget-object v4, p0, Lk2/j0;->b:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    iget v3, p0, Lk2/j0;->c:I

    sub-int/2addr v3, v2

    iput v3, p0, Lk2/j0;->c:I

    goto :goto_0

    :cond_6
    :goto_2
    iget-object v1, p0, Lk2/j0;->b:Ljava/lang/String;

    iget v3, p0, Lk2/j0;->c:I

    add-int/2addr v0, v2

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lk2/j0;->c:I

    sub-int/2addr v1, v2

    iput v1, p0, Lk2/j0;->c:I

    iget-object v1, p0, Lk2/j0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speak(Ljava/lang/String;)V

    iget-object v0, p0, Lk2/j0;->d:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget v1, p0, Lk2/j0;->c:I

    invoke-virtual {p0, v0, v1}, Lk2/j0;->o(Landroid/view/accessibility/AccessibilityNodeInfo;I)V

    return v2
.end method

.method public I()Z
    .locals 7

    invoke-direct {p0}, Lk2/j0;->b()V

    iget-object v0, p0, Lk2/j0;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lk2/j0;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-boolean v2, p0, Lk2/j0;->f:Z

    if-nez v2, :cond_1

    iget v2, p0, Lk2/j0;->c:I

    iget-object v3, p0, Lk2/j0;->b:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v2, v3, :cond_2

    :cond_1
    iput v0, p0, Lk2/j0;->c:I

    :cond_2
    iput-boolean v1, p0, Lk2/j0;->f:Z

    iget v2, p0, Lk2/j0;->c:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    add-int/lit8 v4, v2, -0x1

    iput v4, p0, Lk2/j0;->c:I

    if-gez v4, :cond_3

    return v1

    :cond_3
    const/4 v4, 0x0

    :goto_0
    iget v5, p0, Lk2/j0;->c:I

    if-lez v5, :cond_7

    iget-object v6, p0, Lk2/j0;->b:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0xa

    if-eq v5, v6, :cond_4

    const/16 v6, 0x21

    if-eq v5, v6, :cond_4

    const/16 v6, 0x2c

    if-eq v5, v6, :cond_4

    const/16 v6, 0x2e

    if-eq v5, v6, :cond_4

    const/16 v6, 0x3f

    if-eq v5, v6, :cond_4

    const/16 v6, 0x3002

    if-eq v5, v6, :cond_4

    const v6, 0xff01

    if-eq v5, v6, :cond_4

    const v6, 0xff0c

    if-eq v5, v6, :cond_4

    const v6, 0xff1f

    if-eq v5, v6, :cond_4

    goto :goto_1

    :cond_4
    add-int/lit8 v5, v0, -0x1

    if-ne v2, v5, :cond_5

    iget v5, p0, Lk2/j0;->c:I

    if-ne v5, v2, :cond_5

    goto :goto_2

    :cond_5
    const/4 v4, 0x1

    :goto_1
    if-eqz v4, :cond_6

    goto :goto_3

    :cond_6
    :goto_2
    iget v5, p0, Lk2/j0;->c:I

    sub-int/2addr v5, v3

    iput v5, p0, Lk2/j0;->c:I

    goto :goto_0

    :cond_7
    :goto_3
    sub-int/2addr v0, v3

    if-ne v2, v0, :cond_8

    if-nez v4, :cond_8

    return v1

    :cond_8
    iget-object v0, p0, Lk2/j0;->b:Ljava/lang/String;

    iget v1, p0, Lk2/j0;->c:I

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lk2/j0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speak(Ljava/lang/String;)V

    iget v0, p0, Lk2/j0;->c:I

    add-int/2addr v0, v3

    iput v0, p0, Lk2/j0;->c:I

    iget-object v1, p0, Lk2/j0;->d:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p0, v1, v0}, Lk2/j0;->o(Landroid/view/accessibility/AccessibilityNodeInfo;I)V

    return v3
.end method

.method public J()Z
    .locals 4

    invoke-direct {p0}, Lk2/j0;->b()V

    invoke-virtual {p0}, Lk2/j0;->e()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActionList()Ljava/util/List;

    move-result-object v2

    sget-object v3, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-boolean v0, p0, Lk2/j0;->e:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lk2/j0;->K()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    invoke-virtual {p0, v0}, Lk2/j0;->a(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN"

    iget-boolean v3, p0, Lk2/j0;->g:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v2, 0x200

    invoke-virtual {v0, v2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public K()Z
    .locals 9

    invoke-direct {p0}, Lk2/j0;->b()V

    iget-object v0, p0, Lk2/j0;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lk2/j0;->f:Z

    if-nez v0, :cond_1

    iget v0, p0, Lk2/j0;->c:I

    iget-object v2, p0, Lk2/j0;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v0, v2, :cond_2

    :cond_1
    iget-object v0, p0, Lk2/j0;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lk2/j0;->c:I

    :cond_2
    iput-boolean v1, p0, Lk2/j0;->f:Z

    iget v0, p0, Lk2/j0;->c:I

    if-gtz v0, :cond_3

    return v1

    :cond_3
    const/4 v2, 0x1

    sub-int/2addr v0, v2

    iput v0, p0, Lk2/j0;->c:I

    iget-object v3, p0, Lk2/j0;->i:Ljava/util/List;

    if-nez v3, :cond_5

    iget-object v3, p0, Lk2/j0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isCN()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {}, Ll2/d;->f()Ll2/d;

    move-result-object v3

    iget-object v4, p0, Lk2/j0;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ll2/d;->e(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lk2/j0;->b:Ljava/lang/String;

    sget-object v4, Lk2/j0;->k:Ljava/util/regex/Pattern;

    invoke-virtual {v4}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lk2/g0;->e(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    :goto_0
    iput-object v3, p0, Lk2/j0;->i:Ljava/util/List;

    const-string v3, "toPreviousWord2 w"

    iget-object v4, p0, Lk2/j0;->i:Ljava/util/List;

    invoke-direct {p0, v3, v4}, Lk2/j0;->j(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_5
    iget-object v3, p0, Lk2/j0;->b:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v0

    sub-int/2addr v3, v2

    iget-object v4, p0, Lk2/j0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v5, "toPreviousWord2 1 old"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v4, p0, Lk2/j0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iget-object v5, p0, Lk2/j0;->b:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "toPreviousWord2 2 len"

    invoke-virtual {v4, v6, v5}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v4, p0, Lk2/j0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v5, "toPreviousWord2 3 off"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v4, p0, Lk2/j0;->i:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v2

    :goto_1
    if-ltz v4, :cond_8

    iget-object v5, p0, Lk2/j0;->i:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, p0, Lk2/j0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v7, "toPreviousWord2 11 s"

    invoke-virtual {v6, v7, v5}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v1, v6

    iget-object v6, p0, Lk2/j0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v7, "toPreviousWord2 12 i"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v6, Lk2/j0;->k:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_2

    :cond_6
    if-le v1, v3, :cond_7

    iget-object v3, p0, Lk2/j0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v5, "toPreviousWord2 13"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v3, p0, Lk2/j0;->b:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v1, v3, v1

    iget-object v3, p0, Lk2/j0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v5, "toPreviousWord2 14"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    :cond_7
    :goto_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_8
    const/4 v4, -0x1

    :goto_3
    iput v1, p0, Lk2/j0;->c:I

    if-ltz v4, :cond_9

    iget-object v1, p0, Lk2/j0;->i:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_4

    :cond_9
    iget-object v3, p0, Lk2/j0;->b:Ljava/lang/String;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_4
    iget-object v3, p0, Lk2/j0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lk2/j0;->c:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lk2/j0;->b:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "toPreviousWord2 ret"

    invoke-virtual {v3, v4, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lk2/j0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speak(Ljava/lang/String;)V

    iget-object v0, p0, Lk2/j0;->d:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget v1, p0, Lk2/j0;->c:I

    invoke-virtual {p0, v0, v1}, Lk2/j0;->o(Landroid/view/accessibility/AccessibilityNodeInfo;I)V

    return v2
.end method

.method public L()Z
    .locals 8

    invoke-direct {p0}, Lk2/j0;->b()V

    iget-object v0, p0, Lk2/j0;->d:Landroid/view/accessibility/AccessibilityNodeInfo;

    const-string v1, "toTextEnd"

    invoke-direct {p0, v1, v0}, Lk2/j0;->j(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lk2/j0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getText4(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lk2/j0;->b:Ljava/lang/String;

    const/4 v3, 0x0

    iput-object v3, p0, Lk2/j0;->i:Ljava/util/List;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iput v2, p0, Lk2/j0;->c:I

    :cond_1
    iput-boolean v1, p0, Lk2/j0;->f:Z

    iget-object v2, p0, Lk2/j0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getRawNodeInfoText(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_2

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEditable()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocusable()Z

    move-result v4

    if-eqz v4, :cond_2

    :try_start_0
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActionList()Ljava/util/List;

    move-result-object v4

    sget-object v6, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SET_SELECTION:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-interface {v4, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v6, "ACTION_ARGUMENT_SELECTION_START_INT"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v4, v6, v7}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v6, "ACTION_ARGUMENT_SELECTION_END_INT"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v4, v6, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/high16 v2, 0x20000

    invoke-virtual {v0, v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(ILandroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lk2/j0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iget v4, p0, Lk2/j0;->c:I

    sub-int/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setSelection(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v5

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    iget-object v2, p0, Lk2/j0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iget v4, p0, Lk2/j0;->c:I

    sub-int/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setSelection(Landroid/view/accessibility/AccessibilityNodeInfo;I)V

    const/4 v2, 0x0

    :goto_0
    const/16 v4, 0x64

    if-ge v2, v4, :cond_4

    :try_start_1
    invoke-virtual {p0, v0}, Lk2/j0;->v(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v6, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_1
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_1
    iget-object v6, p0, Lk2/j0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iget v7, p0, Lk2/j0;->c:I

    sub-int/2addr v7, v5

    invoke-virtual {v6, v3, v7}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setSelection(Landroid/view/accessibility/AccessibilityNodeInfo;I)V

    :goto_2
    if-ge v2, v4, :cond_6

    :try_start_2
    iget-object v6, p0, Lk2/j0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iget v7, p0, Lk2/j0;->c:I

    sub-int/2addr v7, v5

    invoke-virtual {v6, v3, v7}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setSelection(Landroid/view/accessibility/AccessibilityNodeInfo;I)V

    invoke-virtual {p0, v0}, Lk2/j0;->s(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-nez v6, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    :goto_3
    if-lez v2, :cond_7

    const/4 v1, 0x1

    :cond_7
    return v1
.end method

.method public M()Z
    .locals 7

    invoke-direct {p0}, Lk2/j0;->b()V

    iget-object v0, p0, Lk2/j0;->d:Landroid/view/accessibility/AccessibilityNodeInfo;

    const-string v1, "toTextStart"

    invoke-direct {p0, v1, v0}, Lk2/j0;->j(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lk2/j0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getText4(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lk2/j0;->b:Ljava/lang/String;

    const/4 v3, 0x0

    iput-object v3, p0, Lk2/j0;->i:Ljava/util/List;

    if-eqz v2, :cond_1

    iput v1, p0, Lk2/j0;->c:I

    :cond_1
    iput-boolean v1, p0, Lk2/j0;->f:Z

    iget-object v2, p0, Lk2/j0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getRawNodeInfoText(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v4, 0x1

    if-nez v2, :cond_2

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEditable()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocusable()Z

    move-result v2

    if-eqz v2, :cond_2

    :try_start_0
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActionList()Ljava/util/List;

    move-result-object v2

    sget-object v5, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SET_SELECTION:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v5, "ACTION_ARGUMENT_SELECTION_START_INT"

    invoke-virtual {v2, v5, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v5, "ACTION_ARGUMENT_SELECTION_END_INT"

    invoke-virtual {v2, v5, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/high16 v5, 0x20000

    invoke-virtual {v0, v5, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(ILandroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lk2/j0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2, v3, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setSelection(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    iget-object v2, p0, Lk2/j0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2, v3, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setSelection(Landroid/view/accessibility/AccessibilityNodeInfo;I)V

    const/4 v2, 0x0

    :goto_0
    const/16 v5, 0x64

    if-ge v2, v5, :cond_4

    :try_start_1
    invoke-virtual {p0, v0}, Lk2/j0;->F(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v6, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_1
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_1
    iget-object v6, p0, Lk2/j0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v6, v3, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setSelection(Landroid/view/accessibility/AccessibilityNodeInfo;I)V

    :goto_2
    if-ge v2, v5, :cond_6

    :try_start_2
    iget-object v6, p0, Lk2/j0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v6, v3, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setSelection(Landroid/view/accessibility/AccessibilityNodeInfo;I)V

    invoke-virtual {p0, v0}, Lk2/j0;->C(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-nez v6, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    :goto_3
    if-lez v2, :cond_7

    const/4 v1, 0x1

    :cond_7
    return v1
.end method

.method public a(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 4

    iget-object p1, p0, Lk2/j0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iget-boolean v0, p0, Lk2/j0;->f:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "textmove checkEnd"

    invoke-virtual {p1, v1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean p1, p0, Lk2/j0;->f:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lk2/j0;->L()Z

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lk2/j0;->f:Z

    iget-object v0, p0, Lk2/j0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lk2/j0;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lk2/j0;->b:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    return p1
.end method

.method public d(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 1

    iget-boolean p1, p0, Lk2/j0;->f:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lk2/j0;->M()Z

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lk2/j0;->f:Z

    return p1
.end method

.method public e()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1

    iget-object v0, p0, Lk2/j0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getFocusView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public f()I
    .locals 1

    iget-object v0, p0, Lk2/j0;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public g()I
    .locals 2

    iget-boolean v0, p0, Lk2/j0;->g:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lk2/j0;->c:I

    iget v1, p0, Lk2/j0;->h:I

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v1, 0x1

    return v1

    :cond_0
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    :cond_1
    iget v0, p0, Lk2/j0;->c:I

    return v0
.end method

.method public h()I
    .locals 2

    iget-boolean v0, p0, Lk2/j0;->g:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lk2/j0;->h:I

    iget v1, p0, Lk2/j0;->c:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    :cond_0
    iget v0, p0, Lk2/j0;->c:I

    return v0
.end method

.method public i()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lk2/j0;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lk2/j0;->h()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0}, Lk2/j0;->g()I

    move-result v2

    iget-object v3, p0, Lk2/j0;->b:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k(Z)V
    .locals 3

    iget-object v0, p0, Lk2/j0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v1, "setBool"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    iput-boolean p1, p0, Lk2/j0;->f:Z

    return-void
.end method

.method public l(Z)V
    .locals 3

    iget-object v0, p0, Lk2/j0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v1, "setBool2"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    iput-boolean p1, p0, Lk2/j0;->j:Z

    return-void
.end method

.method public m(I)V
    .locals 3

    iget-object v0, p0, Lk2/j0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v1, "textmove setIdx"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    iput p1, p0, Lk2/j0;->c:I

    return-void
.end method

.method public n(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 4

    iget-object v0, p0, Lk2/j0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v1, "setNodeInfo"

    invoke-virtual {v0, v1, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-object v1, p0, Lk2/j0;->d:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lk2/j0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getText4(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lk2/j0;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lk2/j0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getText4(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lk2/j0;->b:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lk2/j0;->i:Ljava/util/List;

    iput-object p1, p0, Lk2/j0;->d:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v1, p0, Lk2/j0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isEditView(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v1

    iput-boolean v1, p0, Lk2/j0;->e:Z

    iget-object v2, p0, Lk2/j0;->b:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    return v3

    :cond_1
    if-nez v1, :cond_3

    invoke-direct {p0, p1}, Lk2/j0;->c(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    iput p1, p0, Lk2/j0;->c:I

    iput-boolean v3, p0, Lk2/j0;->g:Z

    invoke-virtual {p0, v0}, Lk2/j0;->k(Z)V

    return v0

    :cond_3
    :goto_0
    invoke-virtual {p0, v3}, Lk2/j0;->k(Z)V

    return v0
.end method

.method public o(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    .locals 3

    iget-object v0, p0, Lk2/j0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v1, "textmove setSelection"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lk2/j0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setSelection(Landroid/view/accessibility/AccessibilityNodeInfo;I)V

    return-void
.end method

.method public p(Z)V
    .locals 0

    iput-boolean p1, p0, Lk2/j0;->g:Z

    iget p1, p0, Lk2/j0;->c:I

    iput p1, p0, Lk2/j0;->h:I

    return-void
.end method

.method public q(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lk2/j0;->b:Ljava/lang/String;

    return-void
.end method

.method public r()Z
    .locals 5

    iget-object v0, p0, Lk2/j0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iget-boolean v1, p0, Lk2/j0;->f:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "setNodeInfo 1"

    invoke-virtual {v0, v2, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lk2/j0;->b()V

    invoke-virtual {p0}, Lk2/j0;->e()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v3, p0, Lk2/j0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iget-object v4, p0, Lk2/j0;->d:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v3, v2, v4}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lk2/j0;->e()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActionList()Ljava/util/List;

    move-result-object v2

    sget-object v3, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_NEXT_AT_MOVEMENT_GRANULARITY:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_2

    iget-boolean v0, p0, Lk2/j0;->e:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lk2/j0;->t()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    iget-object v1, p0, Lk2/j0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iget-boolean v2, p0, Lk2/j0;->f:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v4, "setNodeInfo 2"

    invoke-virtual {v1, v4, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lk2/j0;->d(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    iget-object v1, p0, Lk2/j0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const/4 v2, 0x0

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v4}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setSelection(Landroid/view/accessibility/AccessibilityNodeInfo;I)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT"

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN"

    iget-boolean v3, p0, Lk2/j0;->g:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v2, 0x100

    invoke-virtual {v0, v2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(ILandroid/os/Bundle;)Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    iput-boolean v1, p0, Lk2/j0;->j:Z

    return v0
.end method

.method public s(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lk2/j0;->e()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActionList()Ljava/util/List;

    move-result-object v1

    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_NEXT_AT_MOVEMENT_GRANULARITY:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN"

    iget-boolean v2, p0, Lk2/j0;->g:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v1, 0x100

    invoke-virtual {p1, v1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public t()Z
    .locals 7

    invoke-direct {p0}, Lk2/j0;->b()V

    iget-object v0, p0, Lk2/j0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v1, "setNodeInfo 3"

    iget-object v2, p0, Lk2/j0;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lk2/j0;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_7

    iget v0, p0, Lk2/j0;->c:I

    iget-object v2, p0, Lk2/j0;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-le v0, v2, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-boolean v0, p0, Lk2/j0;->f:Z

    if-nez v0, :cond_1

    iget v0, p0, Lk2/j0;->c:I

    if-gez v0, :cond_2

    :cond_1
    iput v1, p0, Lk2/j0;->c:I

    :cond_2
    iput-boolean v1, p0, Lk2/j0;->f:Z

    iget v0, p0, Lk2/j0;->c:I

    iget-object v1, p0, Lk2/j0;->b:Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v2

    iget v4, p0, Lk2/j0;->c:I

    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Lk2/j0;->c:I

    iget-object v4, p0, Lk2/j0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v4}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getTextFormatter()Lk2/h0;

    move-result-object v4

    invoke-virtual {v4, v2}, Lk2/h0;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget v4, p0, Lk2/j0;->c:I

    iget-object v5, p0, Lk2/j0;->b:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_5

    const v4, 0x1f1e6

    if-lt v1, v4, :cond_3

    const v5, 0x1f1ff

    if-gt v1, v5, :cond_3

    iget-object v1, p0, Lk2/j0;->b:Ljava/lang/String;

    iget v6, p0, Lk2/j0;->c:I

    invoke-virtual {v1, v6}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    if-lt v1, v4, :cond_5

    if-gt v1, v5, :cond_5

    iget v4, p0, Lk2/j0;->c:I

    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int/2addr v4, v1

    iput v4, p0, Lk2/j0;->c:I

    iget-object v1, p0, Lk2/j0;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v4, v1, :cond_5

    iget-object v1, p0, Lk2/j0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getTextFormatter()Lk2/h0;

    move-result-object v1

    iget-object v2, p0, Lk2/j0;->b:Ljava/lang/String;

    iget v4, p0, Lk2/j0;->c:I

    invoke-virtual {v2, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lk2/h0;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lk2/j0;->b:Ljava/lang/String;

    iget v4, p0, Lk2/j0;->c:I

    invoke-static {v1, v4}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v1

    const/16 v4, 0x20e3

    const/16 v5, 0x200d

    if-ne v1, v4, :cond_4

    iget v1, p0, Lk2/j0;->c:I

    invoke-static {v5}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lk2/j0;->c:I

    :goto_0
    iget-object v1, p0, Lk2/j0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getTextFormatter()Lk2/h0;

    move-result-object v1

    iget-object v2, p0, Lk2/j0;->b:Ljava/lang/String;

    iget v4, p0, Lk2/j0;->c:I

    invoke-virtual {v2, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lk2/h0;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lk2/j0;->b:Ljava/lang/String;

    iget v4, p0, Lk2/j0;->c:I

    invoke-static {v1, v4}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v1

    if-ne v1, v5, :cond_5

    iget v1, p0, Lk2/j0;->c:I

    invoke-static {v5}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    add-int/2addr v1, v4

    iput v1, p0, Lk2/j0;->c:I

    iget-object v4, p0, Lk2/j0;->b:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_5

    iget-object v1, p0, Lk2/j0;->b:Ljava/lang/String;

    iget v2, p0, Lk2/j0;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    iget v2, p0, Lk2/j0;->c:I

    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int/2addr v2, v1

    iput v2, p0, Lk2/j0;->c:I

    goto :goto_0

    :cond_5
    :goto_1
    iget-object v0, p0, Lk2/j0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speak(Ljava/lang/String;)V

    iget-object v0, p0, Lk2/j0;->d:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget v1, p0, Lk2/j0;->c:I

    invoke-virtual {p0, v0, v1}, Lk2/j0;->o(Landroid/view/accessibility/AccessibilityNodeInfo;I)V

    iget v0, p0, Lk2/j0;->c:I

    iget-object v1, p0, Lk2/j0;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lk2/j0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v1, "scroll_bottom"

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lk2/j0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v1, "next_text"

    :goto_2
    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->play(Ljava/lang/String;)V

    return v3

    :cond_7
    :goto_3
    return v1
.end method

.method public u()Z
    .locals 5

    invoke-direct {p0}, Lk2/j0;->b()V

    invoke-virtual {p0}, Lk2/j0;->e()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActionList()Ljava/util/List;

    move-result-object v2

    sget-object v3, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_NEXT_AT_MOVEMENT_GRANULARITY:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-boolean v0, p0, Lk2/j0;->e:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lk2/j0;->y()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    iget-boolean v1, p0, Lk2/j0;->f:Z

    invoke-virtual {p0, v0}, Lk2/j0;->d(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT"

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN"

    iget-boolean v4, p0, Lk2/j0;->g:Z

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v3, 0x100

    invoke-virtual {v0, v3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(ILandroid/os/Bundle;)Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz v1, :cond_3

    iget-object v1, p0, Lk2/j0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speakSourceText(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v2

    invoke-virtual {p0}, Lk2/j0;->L()Z

    :cond_3
    return v2
.end method

.method public v(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActionList()Ljava/util/List;

    move-result-object v1

    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_NEXT_AT_MOVEMENT_GRANULARITY:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT"

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN"

    iget-boolean v2, p0, Lk2/j0;->g:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v1, 0x100

    invoke-virtual {p1, v1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public w()Z
    .locals 4

    invoke-direct {p0}, Lk2/j0;->b()V

    invoke-virtual {p0}, Lk2/j0;->e()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActionList()Ljava/util/List;

    move-result-object v2

    sget-object v3, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_NEXT_AT_MOVEMENT_GRANULARITY:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-boolean v0, p0, Lk2/j0;->e:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lk2/j0;->x()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    invoke-virtual {p0, v0}, Lk2/j0;->d(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT"

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN"

    iget-boolean v3, p0, Lk2/j0;->g:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v2, 0x100

    invoke-virtual {v0, v2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public x()Z
    .locals 5

    invoke-direct {p0}, Lk2/j0;->b()V

    iget-object v0, p0, Lk2/j0;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_6

    iget v0, p0, Lk2/j0;->c:I

    iget-object v2, p0, Lk2/j0;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-le v0, v2, :cond_0

    goto :goto_3

    :cond_0
    iget-boolean v0, p0, Lk2/j0;->f:Z

    if-nez v0, :cond_1

    iget v0, p0, Lk2/j0;->c:I

    if-gez v0, :cond_2

    :cond_1
    iput v1, p0, Lk2/j0;->c:I

    :cond_2
    iput-boolean v1, p0, Lk2/j0;->f:Z

    iget v0, p0, Lk2/j0;->c:I

    :goto_0
    iget v2, p0, Lk2/j0;->c:I

    iget-object v4, p0, Lk2/j0;->b:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_5

    iget-object v2, p0, Lk2/j0;->b:Ljava/lang/String;

    iget v4, p0, Lk2/j0;->c:I

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0xa

    if-eq v2, v4, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    iget v2, p0, Lk2/j0;->c:I

    add-int/2addr v2, v3

    iput v2, p0, Lk2/j0;->c:I

    goto :goto_0

    :cond_5
    :goto_2
    iget-object v1, p0, Lk2/j0;->b:Ljava/lang/String;

    iget v2, p0, Lk2/j0;->c:I

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lk2/j0;->c:I

    add-int/2addr v1, v3

    iput v1, p0, Lk2/j0;->c:I

    iget-object v1, p0, Lk2/j0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speak(Ljava/lang/String;)V

    iget-object v0, p0, Lk2/j0;->d:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget v1, p0, Lk2/j0;->c:I

    invoke-virtual {p0, v0, v1}, Lk2/j0;->o(Landroid/view/accessibility/AccessibilityNodeInfo;I)V

    return v3

    :cond_6
    :goto_3
    return v1
.end method

.method public y()Z
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "toNextRow: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lk2/j0;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "textmove0"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lk2/j0;->b()V

    iget-object v0, p0, Lk2/j0;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_9

    iget v0, p0, Lk2/j0;->c:I

    iget-object v3, p0, Lk2/j0;->b:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-le v0, v3, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-boolean v0, p0, Lk2/j0;->f:Z

    if-nez v0, :cond_1

    iget v0, p0, Lk2/j0;->c:I

    if-gez v0, :cond_2

    :cond_1
    iput v2, p0, Lk2/j0;->c:I

    :cond_2
    iput-boolean v2, p0, Lk2/j0;->f:Z

    iget v0, p0, Lk2/j0;->c:I

    const/4 v3, 0x0

    :goto_0
    iget v5, p0, Lk2/j0;->c:I

    iget-object v6, p0, Lk2/j0;->b:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_5

    iget-object v5, p0, Lk2/j0;->b:Ljava/lang/String;

    iget v6, p0, Lk2/j0;->c:I

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0xa

    if-eq v5, v6, :cond_3

    const/16 v6, 0x21

    if-eq v5, v6, :cond_3

    const/16 v6, 0x2c

    if-eq v5, v6, :cond_3

    const/16 v6, 0x2e

    if-eq v5, v6, :cond_3

    const/16 v6, 0x3f

    if-eq v5, v6, :cond_3

    const/16 v6, 0x3002

    if-eq v5, v6, :cond_3

    const v6, 0xff01

    if-eq v5, v6, :cond_3

    const v6, 0xff0c

    if-eq v5, v6, :cond_3

    const v6, 0xff1f

    if-eq v5, v6, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    iget v5, p0, Lk2/j0;->c:I

    add-int/2addr v5, v4

    iput v5, p0, Lk2/j0;->c:I

    goto :goto_0

    :cond_5
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "textmove1"

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "textmove2"

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lk2/j0;->c:I

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "textmove3"

    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_6

    if-nez v3, :cond_6

    return v2

    :cond_6
    if-nez v0, :cond_7

    iget v1, p0, Lk2/j0;->c:I

    iget-object v5, p0, Lk2/j0;->b:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v4

    if-ne v1, v5, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lk2/j0;->b:Ljava/lang/String;

    iget v2, p0, Lk2/j0;->c:I

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    if-eqz v3, :cond_8

    iget v1, p0, Lk2/j0;->c:I

    add-int/2addr v1, v4

    iput v1, p0, Lk2/j0;->c:I

    :cond_8
    iget-object v1, p0, Lk2/j0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speak(Ljava/lang/String;)V

    iget-object v0, p0, Lk2/j0;->d:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget v1, p0, Lk2/j0;->c:I

    invoke-virtual {p0, v0, v1}, Lk2/j0;->o(Landroid/view/accessibility/AccessibilityNodeInfo;I)V

    return v4

    :cond_9
    :goto_3
    return v2
.end method

.method public z()Z
    .locals 4

    invoke-direct {p0}, Lk2/j0;->b()V

    invoke-virtual {p0}, Lk2/j0;->e()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActionList()Ljava/util/List;

    move-result-object v2

    sget-object v3, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_NEXT_AT_MOVEMENT_GRANULARITY:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-boolean v0, p0, Lk2/j0;->e:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lk2/j0;->A()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    invoke-virtual {p0, v0}, Lk2/j0;->d(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN"

    iget-boolean v3, p0, Lk2/j0;->g:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v2, 0x100

    invoke-virtual {v0, v2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method
