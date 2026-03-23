.class public Lk2/i0;
.super Lk2/j0;
.source "SourceFile"


# static fields
.field private static final w:Ljava/util/regex/Pattern;


# instance fields
.field private final l:Lcom/nirenr/talkman/TalkManAccessibilityService;

.field private m:Ljava/lang/String;

.field private n:I

.field private o:Landroid/view/accessibility/AccessibilityNodeInfo;

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:I

.field private t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private u:Z

.field private v:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "[\\u0000-\\u0026\\u0028-\\u002f\\u0040\\u005b-\\u0060\\u007b-\\u007e\\u00d7\\u2013\\u2014\\u2018-\\u2027\\u3001\\u3002\\u3003\\u3008-\\u3011\\u3014\\u3015\\uff01-\\uff0f\\uff1a-\\uff20\\uff3b-\\uff40\\uff5b-\\uff65\\uffe5]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lk2/i0;->w:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService;)V
    .locals 1

    invoke-direct {p0, p1}, Lk2/j0;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lk2/i0;->q:Z

    new-instance v0, Lk2/i0$a;

    invoke-direct {v0, p0}, Lk2/i0$a;-><init>(Lk2/i0;)V

    iput-object v0, p0, Lk2/i0;->v:Ljava/lang/Runnable;

    iput-object p1, p0, Lk2/i0;->l:Lcom/nirenr/talkman/TalkManAccessibilityService;

    return-void
.end method

.method private N(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lk2/i0;->l:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speak(Ljava/lang/String;)V

    return-void
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lk2/i0;->o:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-nez v0, :cond_0

    iget-object v0, p0, Lk2/i0;->l:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getFocusView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lk2/i0;->n(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    return-void

    :cond_0
    iget-object v1, p0, Lk2/i0;->l:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getFocusView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lk2/i0;->l:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getFocusView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lk2/i0;->n(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    :cond_1
    iget-boolean v0, p0, Lk2/i0;->p:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lk2/i0;->l:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getFocusView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lk2/i0;->n(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    :cond_2
    return-void
.end method

.method private c(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 2

    iget-object v0, p0, Lk2/i0;->l:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getPackageName(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string v1, "com.google.android.apps.docs.editors.docs"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.njusoft.taizhoutrip"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private j(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lk2/i0;->l:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public B()Z
    .locals 12

    invoke-direct {p0}, Lk2/i0;->b()V

    iget-object v0, p0, Lk2/i0;->o:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {p0, v0}, Lk2/i0;->c(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lk2/j0;->B()Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lk2/i0;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lk2/i0;->l:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v3, p0, Lk2/i0;->q:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lk2/i0;->u:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lk2/i0;->n:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lk2/i0;->o:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getTextSelectionStart()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TextMove toPreviousChar"

    invoke-virtual {v0, v3, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lk2/i0;->q:Z

    const/4 v2, 0x1

    const-string v3, "previous_text"

    const/16 v4, 0x20e3

    const/16 v5, 0x200d

    const v6, 0x1f1ff

    const v7, 0x1f1e6

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lk2/i0;->u:Z

    if-nez v0, :cond_f

    iget v0, p0, Lk2/i0;->n:I

    iget-object v8, p0, Lk2/i0;->m:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-le v0, v8, :cond_2

    goto/16 :goto_6

    :cond_2
    iput-boolean v1, p0, Lk2/i0;->q:Z

    iget v0, p0, Lk2/i0;->n:I

    if-gtz v0, :cond_3

    return v1

    :cond_3
    iget-object v8, p0, Lk2/i0;->m:Ljava/lang/String;

    invoke-static {v8, v0}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v9

    iget v10, p0, Lk2/i0;->n:I

    invoke-static {v8}, Ljava/lang/Character;->charCount(I)I

    move-result v11

    sub-int/2addr v10, v11

    iput v10, p0, Lk2/i0;->n:I

    iget-object v10, p0, Lk2/i0;->l:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v10}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getTextFormatter()Lk2/h0;

    move-result-object v10

    invoke-virtual {v10, v9}, Lk2/h0;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget v11, p0, Lk2/i0;->n:I

    if-lez v11, :cond_6

    if-lt v8, v7, :cond_4

    if-gt v8, v6, :cond_4

    iget-object v8, p0, Lk2/i0;->m:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/String;->codePointBefore(I)I

    move-result v8

    if-lt v8, v7, :cond_6

    if-gt v8, v6, :cond_6

    iget v11, p0, Lk2/i0;->n:I

    invoke-static {v8}, Ljava/lang/Character;->charCount(I)I

    move-result v8

    sub-int/2addr v11, v8

    iput v11, p0, Lk2/i0;->n:I

    if-ltz v11, :cond_6

    iget-object v8, p0, Lk2/i0;->l:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v8}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getTextFormatter()Lk2/h0;

    move-result-object v8

    iget-object v9, p0, Lk2/i0;->m:Ljava/lang/String;

    iget v10, p0, Lk2/i0;->n:I

    invoke-virtual {v9, v10, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lk2/h0;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v9, v0

    move-object v10, v8

    goto :goto_1

    :cond_4
    if-ne v8, v4, :cond_5

    iget-object v8, p0, Lk2/i0;->m:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/String;->codePointBefore(I)I

    move-result v8

    :goto_0
    iget v9, p0, Lk2/i0;->n:I

    invoke-static {v8}, Ljava/lang/Character;->charCount(I)I

    move-result v8

    sub-int/2addr v9, v8

    iput v9, p0, Lk2/i0;->n:I

    iget-object v8, p0, Lk2/i0;->l:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v8}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getTextFormatter()Lk2/h0;

    move-result-object v8

    iget-object v9, p0, Lk2/i0;->m:Ljava/lang/String;

    iget v10, p0, Lk2/i0;->n:I

    invoke-virtual {v9, v10, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lk2/h0;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    :cond_5
    iget-object v8, p0, Lk2/i0;->m:Ljava/lang/String;

    invoke-static {v8, v11}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v8

    if-ne v8, v5, :cond_6

    iget v8, p0, Lk2/i0;->n:I

    invoke-static {v5}, Ljava/lang/Character;->charCount(I)I

    move-result v11

    sub-int/2addr v8, v11

    iput v8, p0, Lk2/i0;->n:I

    if-lez v8, :cond_6

    iget-object v9, p0, Lk2/i0;->m:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/String;->codePointBefore(I)I

    move-result v8

    goto :goto_0

    :cond_6
    :goto_1
    iget-boolean v0, p0, Lk2/i0;->r:Z

    if-eqz v0, :cond_8

    iget v0, p0, Lk2/i0;->n:I

    iget v8, p0, Lk2/i0;->s:I

    const-string v11, " "

    if-ge v0, v8, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lk2/i0;->l:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v10, 0x7f0700b2

    goto :goto_2

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lk2/i0;->l:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v10, 0x7f0706c4

    :goto_2
    invoke-virtual {v8, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v9, v0}, Lk2/i0;->N(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    iget v0, p0, Lk2/i0;->n:I

    if-gtz v0, :cond_9

    iget-object v0, p0, Lk2/i0;->o:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p0, v0, v1}, Lk2/i0;->o(Landroid/view/accessibility/AccessibilityNodeInfo;I)V

    return v1

    :cond_9
    iget-object v1, p0, Lk2/i0;->m:Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v8

    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v9

    sub-int v9, v0, v9

    iget-object v10, p0, Lk2/i0;->l:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v10}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getTextFormatter()Lk2/h0;

    move-result-object v10

    invoke-virtual {v10, v8}, Lk2/h0;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-lez v9, :cond_c

    if-lt v1, v7, :cond_a

    if-gt v1, v6, :cond_a

    iget-object v1, p0, Lk2/i0;->m:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/String;->codePointBefore(I)I

    move-result v1

    if-lt v1, v7, :cond_c

    if-gt v1, v6, :cond_c

    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    sub-int/2addr v9, v1

    if-ltz v9, :cond_c

    iget-object v1, p0, Lk2/i0;->l:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getTextFormatter()Lk2/h0;

    move-result-object v1

    iget-object v4, p0, Lk2/i0;->m:Ljava/lang/String;

    invoke-virtual {v4, v9, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lk2/h0;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v8, v0

    move-object v10, v1

    goto :goto_4

    :cond_a
    if-ne v1, v4, :cond_b

    :goto_3
    iget-object v1, p0, Lk2/i0;->m:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/String;->codePointBefore(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    sub-int/2addr v9, v1

    iget-object v1, p0, Lk2/i0;->l:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getTextFormatter()Lk2/h0;

    move-result-object v1

    iget-object v4, p0, Lk2/i0;->m:Ljava/lang/String;

    invoke-virtual {v4, v9, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lk2/h0;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto :goto_4

    :cond_b
    iget-object v1, p0, Lk2/i0;->m:Ljava/lang/String;

    invoke-static {v1, v9}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v1

    if-ne v1, v5, :cond_c

    invoke-static {v5}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    sub-int/2addr v9, v1

    if-lez v9, :cond_c

    goto :goto_3

    :cond_c
    :goto_4
    iget-boolean v0, p0, Lk2/i0;->r:Z

    if-nez v0, :cond_d

    invoke-direct {p0, v8, v10}, Lk2/i0;->N(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    iget-object v0, p0, Lk2/i0;->o:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget v1, p0, Lk2/i0;->n:I

    invoke-virtual {p0, v0, v1}, Lk2/i0;->o(Landroid/view/accessibility/AccessibilityNodeInfo;I)V

    iget-object v0, p0, Lk2/i0;->l:Lcom/nirenr/talkman/TalkManAccessibilityService;

    if-nez v9, :cond_e

    const-string v1, "scroll_top"

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->play(Ljava/lang/String;)V

    goto :goto_5

    :cond_e
    invoke-virtual {v0, v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->play(Ljava/lang/String;)V

    :goto_5
    return v2

    :cond_f
    :goto_6
    iget-boolean v0, p0, Lk2/i0;->u:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lk2/i0;->o:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getTextSelectionStart()I

    move-result v0

    const/4 v8, -0x1

    if-eq v0, v8, :cond_10

    iget-object v0, p0, Lk2/i0;->o:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getTextSelectionStart()I

    move-result v0

    goto :goto_7

    :cond_10
    iget-object v0, p0, Lk2/i0;->m:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_7
    iput v0, p0, Lk2/i0;->n:I

    iput-boolean v1, p0, Lk2/i0;->q:Z

    if-gtz v0, :cond_11

    return v1

    :cond_11
    iget-object v8, p0, Lk2/i0;->m:Ljava/lang/String;

    invoke-static {v8, v0}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v9

    iget v10, p0, Lk2/i0;->n:I

    invoke-static {v8}, Ljava/lang/Character;->charCount(I)I

    move-result v11

    sub-int/2addr v10, v11

    iput v10, p0, Lk2/i0;->n:I

    iget-object v10, p0, Lk2/i0;->l:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v10}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getTextFormatter()Lk2/h0;

    move-result-object v10

    invoke-virtual {v10, v9}, Lk2/h0;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget v11, p0, Lk2/i0;->n:I

    if-lez v11, :cond_14

    if-lt v8, v7, :cond_12

    if-gt v8, v6, :cond_12

    iget-object v4, p0, Lk2/i0;->m:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/String;->codePointBefore(I)I

    move-result v4

    if-lt v4, v7, :cond_14

    if-gt v4, v6, :cond_14

    iget v5, p0, Lk2/i0;->n:I

    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    sub-int/2addr v5, v4

    iput v5, p0, Lk2/i0;->n:I

    if-ltz v5, :cond_14

    iget-object v4, p0, Lk2/i0;->l:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v4}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getTextFormatter()Lk2/h0;

    move-result-object v4

    iget-object v5, p0, Lk2/i0;->m:Ljava/lang/String;

    iget v6, p0, Lk2/i0;->n:I

    invoke-virtual {v5, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lk2/h0;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v10, v4

    move-object v9, v5

    goto :goto_9

    :cond_12
    if-ne v8, v4, :cond_13

    iget-object v4, p0, Lk2/i0;->m:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/String;->codePointBefore(I)I

    move-result v4

    :goto_8
    iget v5, p0, Lk2/i0;->n:I

    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    sub-int/2addr v5, v4

    iput v5, p0, Lk2/i0;->n:I

    iget-object v4, p0, Lk2/i0;->l:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v4}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getTextFormatter()Lk2/h0;

    move-result-object v4

    iget-object v5, p0, Lk2/i0;->m:Ljava/lang/String;

    iget v6, p0, Lk2/i0;->n:I

    invoke-virtual {v5, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lk2/h0;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto :goto_9

    :cond_13
    iget-object v4, p0, Lk2/i0;->m:Ljava/lang/String;

    invoke-static {v4, v11}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v4

    if-ne v4, v5, :cond_14

    iget v4, p0, Lk2/i0;->n:I

    invoke-static {v5}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, p0, Lk2/i0;->n:I

    if-lez v4, :cond_14

    iget-object v5, p0, Lk2/i0;->m:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->codePointBefore(I)I

    move-result v4

    goto :goto_8

    :cond_14
    :goto_9
    iput v0, p0, Lk2/i0;->n:I

    iput-boolean v1, p0, Lk2/i0;->u:Z

    invoke-direct {p0, v9, v10}, Lk2/i0;->N(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lk2/i0;->l:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->play(Ljava/lang/String;)V

    return v2
.end method

.method public E()Z
    .locals 1

    iget-object v0, p0, Lk2/i0;->o:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {p0, v0}, Lk2/i0;->c(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lk2/j0;->E()Z

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Lk2/i0;->I()Z

    move-result v0

    return v0
.end method

.method public F(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 4

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
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT"

    const/16 v3, 0x10

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v0, 0x200

    invoke-virtual {p1, v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public G()Z
    .locals 5

    invoke-direct {p0}, Lk2/i0;->b()V

    iget-object v0, p0, Lk2/i0;->o:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {p0, v0}, Lk2/i0;->c(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lk2/j0;->G()Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lk2/i0;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-boolean v0, p0, Lk2/i0;->q:Z

    const/4 v2, 0x1

    if-nez v0, :cond_2

    iget v0, p0, Lk2/i0;->n:I

    iget-object v3, p0, Lk2/i0;->m:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v0, v3, :cond_3

    :cond_2
    iget-object v0, p0, Lk2/i0;->m:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v2

    iput v0, p0, Lk2/i0;->n:I

    :cond_3
    iput-boolean v1, p0, Lk2/i0;->q:Z

    iget v0, p0, Lk2/i0;->n:I

    if-gtz v0, :cond_4

    return v1

    :cond_4
    :goto_0
    iget v1, p0, Lk2/i0;->n:I

    const/16 v3, 0xa

    if-lez v1, :cond_6

    iget-object v4, p0, Lk2/i0;->m:Ljava/lang/String;

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v3, :cond_5

    iget-object v1, p0, Lk2/i0;->m:Ljava/lang/String;

    iget v4, p0, Lk2/i0;->n:I

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_6

    goto :goto_2

    :cond_5
    iget v1, p0, Lk2/i0;->n:I

    sub-int/2addr v1, v2

    iput v1, p0, Lk2/i0;->n:I

    goto :goto_0

    :cond_6
    :goto_1
    iget v1, p0, Lk2/i0;->n:I

    if-lez v1, :cond_8

    iget-object v4, p0, Lk2/i0;->m:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_7

    iget v1, p0, Lk2/i0;->n:I

    add-int/2addr v1, v2

    iput v1, p0, Lk2/i0;->n:I

    goto :goto_3

    :cond_7
    :goto_2
    iget v1, p0, Lk2/i0;->n:I

    sub-int/2addr v1, v2

    iput v1, p0, Lk2/i0;->n:I

    goto :goto_1

    :cond_8
    :goto_3
    iget-object v1, p0, Lk2/i0;->m:Ljava/lang/String;

    iget v3, p0, Lk2/i0;->n:I

    add-int/2addr v0, v2

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lk2/i0;->r:Z

    if-eqz v1, :cond_a

    iget v1, p0, Lk2/i0;->n:I

    iget v3, p0, Lk2/i0;->s:I

    const-string v4, " "

    if-ge v1, v3, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lk2/i0;->l:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v3, 0x7f0700b2

    goto :goto_4

    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lk2/i0;->l:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v3, 0x7f0706c4

    :goto_4
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_a
    iget-object v1, p0, Lk2/i0;->l:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speak(Ljava/lang/String;)V

    iget-object v0, p0, Lk2/i0;->o:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget v1, p0, Lk2/i0;->n:I

    invoke-virtual {p0, v0, v1}, Lk2/i0;->o(Landroid/view/accessibility/AccessibilityNodeInfo;I)V

    return v2
.end method

.method public I()Z
    .locals 6

    invoke-direct {p0}, Lk2/i0;->b()V

    iget-object v0, p0, Lk2/i0;->o:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {p0, v0}, Lk2/i0;->c(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lk2/j0;->I()Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lk2/i0;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lk2/i0;->m:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-boolean v2, p0, Lk2/i0;->q:Z

    if-nez v2, :cond_2

    iget v2, p0, Lk2/i0;->n:I

    iget-object v3, p0, Lk2/i0;->m:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v2, v3, :cond_3

    :cond_2
    iput v0, p0, Lk2/i0;->n:I

    :cond_3
    iput-boolean v1, p0, Lk2/i0;->q:Z

    iget v2, p0, Lk2/i0;->n:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    add-int/lit8 v4, v2, -0x1

    iput v4, p0, Lk2/i0;->n:I

    if-gez v4, :cond_4

    return v1

    :cond_4
    :goto_0
    iget v4, p0, Lk2/i0;->n:I

    if-lez v4, :cond_7

    iget-object v5, p0, Lk2/i0;->m:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    add-int/lit8 v4, v0, -0x1

    if-ne v2, v4, :cond_5

    iget v4, p0, Lk2/i0;->n:I

    if-ne v4, v2, :cond_5

    goto :goto_2

    :cond_5
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    :goto_2
    iget v4, p0, Lk2/i0;->n:I

    sub-int/2addr v4, v3

    iput v4, p0, Lk2/i0;->n:I

    goto :goto_0

    :cond_7
    :goto_3
    iget-object v0, p0, Lk2/i0;->m:Ljava/lang/String;

    iget v1, p0, Lk2/i0;->n:I

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lk2/i0;->r:Z

    if-eqz v1, :cond_9

    iget v1, p0, Lk2/i0;->n:I

    iget v2, p0, Lk2/i0;->s:I

    const-string v4, " "

    if-ge v1, v2, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lk2/i0;->l:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f0700b2

    goto :goto_4

    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lk2/i0;->l:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f0706c4

    :goto_4
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_9
    iget-object v1, p0, Lk2/i0;->l:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speak(Ljava/lang/String;)V

    iget v0, p0, Lk2/i0;->n:I

    add-int/2addr v0, v3

    iput v0, p0, Lk2/i0;->n:I

    iget-object v1, p0, Lk2/i0;->o:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p0, v1, v0}, Lk2/i0;->o(Landroid/view/accessibility/AccessibilityNodeInfo;I)V

    return v3

    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x21 -> :sswitch_0
        0x2c -> :sswitch_0
        0x2e -> :sswitch_0
        0x3b -> :sswitch_0
        0x3f -> :sswitch_0
        0x60c -> :sswitch_0
        0x61b -> :sswitch_0
        0x61f -> :sswitch_0
        0x3002 -> :sswitch_0
        0xff01 -> :sswitch_0
        0xff0c -> :sswitch_0
        0xff1f -> :sswitch_0
    .end sparse-switch
.end method

.method public J()Z
    .locals 9

    invoke-direct {p0}, Lk2/i0;->b()V

    iget-object v0, p0, Lk2/i0;->o:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {p0, v0}, Lk2/i0;->c(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lk2/j0;->J()Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lk2/i0;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-boolean v0, p0, Lk2/i0;->q:Z

    if-nez v0, :cond_2

    iget v0, p0, Lk2/i0;->n:I

    iget-object v2, p0, Lk2/i0;->m:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v0, v2, :cond_3

    :cond_2
    iget-object v0, p0, Lk2/i0;->m:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lk2/i0;->n:I

    :cond_3
    iput-boolean v1, p0, Lk2/i0;->q:Z

    iget v0, p0, Lk2/i0;->n:I

    if-gtz v0, :cond_4

    return v1

    :cond_4
    const/4 v2, 0x1

    sub-int/2addr v0, v2

    iput v0, p0, Lk2/i0;->n:I

    iget-object v3, p0, Lk2/i0;->t:Ljava/util/List;

    if-nez v3, :cond_6

    iget-object v3, p0, Lk2/i0;->l:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isCN()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {}, Ll2/d;->f()Ll2/d;

    move-result-object v3

    iget-object v4, p0, Lk2/i0;->m:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ll2/d;->e(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lk2/i0;->m:Ljava/lang/String;

    sget-object v4, Lk2/i0;->w:Ljava/util/regex/Pattern;

    invoke-virtual {v4}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lk2/g0;->e(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    :goto_0
    iput-object v3, p0, Lk2/i0;->t:Ljava/util/List;

    const-string v3, "TextMove toPreviousWord2 w"

    iget-object v4, p0, Lk2/i0;->t:Ljava/util/List;

    invoke-direct {p0, v3, v4}, Lk2/i0;->j(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_6
    iget-object v3, p0, Lk2/i0;->m:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v0

    sub-int/2addr v3, v2

    iget-object v4, p0, Lk2/i0;->l:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v5, "TextMove toPreviousWord2 1 old"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v4, p0, Lk2/i0;->l:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iget-object v5, p0, Lk2/i0;->m:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "TextMove toPreviousWord2 2 len"

    invoke-virtual {v4, v6, v5}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v4, p0, Lk2/i0;->l:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v5, "TextMove toPreviousWord2 3 off"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v4, p0, Lk2/i0;->t:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v2

    :goto_1
    if-ltz v4, :cond_9

    iget-object v5, p0, Lk2/i0;->t:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, p0, Lk2/i0;->l:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v7, "TextMove toPreviousWord2 11 s"

    invoke-virtual {v6, v7, v5}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v1, v6

    iget-object v6, p0, Lk2/i0;->l:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v7, "TextMove toPreviousWord2 12 i"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v6, Lk2/i0;->w:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_2

    :cond_7
    if-le v1, v3, :cond_8

    iget-object v3, p0, Lk2/i0;->l:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v5, "TextMove toPreviousWord2 13"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v3, p0, Lk2/i0;->m:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v1, v3, v1

    iget-object v3, p0, Lk2/i0;->l:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v5, "TextMove toPreviousWord2 14"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    :cond_8
    :goto_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_9
    const/4 v4, -0x1

    :goto_3
    iput v1, p0, Lk2/i0;->n:I

    if-ltz v4, :cond_a

    iget-object v1, p0, Lk2/i0;->t:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_4

    :cond_a
    iget-object v3, p0, Lk2/i0;->m:Ljava/lang/String;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_4
    iget-object v3, p0, Lk2/i0;->l:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lk2/i0;->n:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lk2/i0;->m:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "TextMove toPreviousWord2 ret"

    invoke-virtual {v3, v4, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lk2/i0;->r:Z

    if-eqz v0, :cond_c

    iget v0, p0, Lk2/i0;->n:I

    iget v3, p0, Lk2/i0;->s:I

    const-string v4, " "

    if-ge v0, v3, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk2/i0;->l:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v3, 0x7f0700b2

    goto :goto_5

    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk2/i0;->l:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v3, 0x7f0706c4

    :goto_5
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_c
    iget-object v0, p0, Lk2/i0;->l:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speak(Ljava/lang/String;)V

    iget-object v0, p0, Lk2/i0;->o:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget v1, p0, Lk2/i0;->n:I

    invoke-virtual {p0, v0, v1}, Lk2/i0;->o(Landroid/view/accessibility/AccessibilityNodeInfo;I)V

    return v2
.end method

.method public L()Z
    .locals 4

    invoke-direct {p0}, Lk2/i0;->b()V

    iget-object v0, p0, Lk2/i0;->o:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {p0, v0}, Lk2/i0;->c(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lk2/j0;->L()Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lk2/i0;->o:Landroid/view/accessibility/AccessibilityNodeInfo;

    const-string v1, "TextMove toTextEnd"

    invoke-direct {p0, v1, v0}, Lk2/i0;->j(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v2, p0, Lk2/i0;->l:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getText4(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lk2/i0;->m:Ljava/lang/String;

    const/4 v3, 0x0

    iput-object v3, p0, Lk2/i0;->t:Ljava/util/List;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iput v2, p0, Lk2/i0;->n:I

    :cond_2
    iput-boolean v1, p0, Lk2/i0;->q:Z

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEditable()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_3

    invoke-static {v0}, Lk2/a;->R(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lk2/i0;->l:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iget v3, p0, Lk2/i0;->n:I

    invoke-virtual {v1, v0, v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setSelection(Landroid/view/accessibility/AccessibilityNodeInfo;I)V

    return v2
.end method

.method public M()Z
    .locals 4

    invoke-direct {p0}, Lk2/i0;->b()V

    iget-object v0, p0, Lk2/i0;->o:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {p0, v0}, Lk2/i0;->c(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lk2/j0;->M()Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lk2/i0;->o:Landroid/view/accessibility/AccessibilityNodeInfo;

    const-string v1, "TextMove toTextStart"

    invoke-direct {p0, v1, v0}, Lk2/i0;->j(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v2, p0, Lk2/i0;->l:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getText4(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lk2/i0;->m:Ljava/lang/String;

    const/4 v3, 0x0

    iput-object v3, p0, Lk2/i0;->t:Ljava/util/List;

    if-eqz v2, :cond_2

    iput v1, p0, Lk2/i0;->n:I

    :cond_2
    iput-boolean v1, p0, Lk2/i0;->q:Z

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEditable()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_3

    invoke-static {v0}, Lk2/a;->R(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v2

    if-nez v2, :cond_3

    return v3

    :cond_3
    iget-object v2, p0, Lk2/i0;->l:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2, v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setSelection(Landroid/view/accessibility/AccessibilityNodeInfo;I)V

    return v3
.end method

.method public a(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 3

    iget-boolean p1, p0, Lk2/i0;->q:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lk2/i0;->L()Z

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lk2/i0;->q:Z

    iget-object v0, p0, Lk2/i0;->l:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lk2/i0;->n:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lk2/i0;->m:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TextMove textmove checkEnd"

    invoke-virtual {v0, v2, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    return p1
.end method

.method public d(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 1

    iget-boolean p1, p0, Lk2/i0;->q:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lk2/i0;->M()Z

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lk2/i0;->q:Z

    return p1
.end method

.method public e()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1

    iget-object v0, p0, Lk2/i0;->l:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getFocusView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public f()I
    .locals 1

    iget-object v0, p0, Lk2/i0;->o:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {p0, v0}, Lk2/i0;->c(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lk2/j0;->f()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lk2/i0;->m:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public g()I
    .locals 2

    iget-object v0, p0, Lk2/i0;->o:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {p0, v0}, Lk2/i0;->c(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lk2/j0;->g()I

    move-result v0

    return v0

    :cond_0
    iget-boolean v0, p0, Lk2/i0;->r:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lk2/i0;->n:I

    iget v1, p0, Lk2/i0;->s:I

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lk2/i0;->m:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_1
    return v0

    :cond_2
    iget v0, p0, Lk2/i0;->n:I

    return v0
.end method

.method public h()I
    .locals 2

    iget-object v0, p0, Lk2/i0;->o:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {p0, v0}, Lk2/i0;->c(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lk2/j0;->h()I

    move-result v0

    return v0

    :cond_0
    iget-boolean v0, p0, Lk2/i0;->r:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lk2/i0;->n:I

    iget v1, p0, Lk2/i0;->s:I

    if-ge v0, v1, :cond_1

    return v0

    :cond_1
    iget-object v0, p0, Lk2/i0;->l:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isCN()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lk2/i0;->s:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    iget v0, p0, Lk2/i0;->s:I

    :goto_0
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    :cond_3
    iget v0, p0, Lk2/i0;->n:I

    return v0
.end method

.method public i()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lk2/i0;->o:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {p0, v0}, Lk2/i0;->c(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lk2/j0;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lk2/i0;->m:Ljava/lang/String;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lk2/i0;->h()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0}, Lk2/i0;->g()I

    move-result v2

    iget-object v3, p0, Lk2/i0;->m:Ljava/lang/String;

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

    iget-object v0, p0, Lk2/i0;->l:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v1, "TextMove setBool"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    iput-boolean p1, p0, Lk2/i0;->q:Z

    iget-object v0, p0, Lk2/i0;->o:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {p0, v0}, Lk2/i0;->c(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lk2/j0;->k(Z)V

    :cond_0
    return-void
.end method

.method public l(Z)V
    .locals 3

    iget-object v0, p0, Lk2/i0;->l:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v1, "TextMove setBool2"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    iput-boolean p1, p0, Lk2/i0;->u:Z

    iget-object v0, p0, Lk2/i0;->o:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {p0, v0}, Lk2/i0;->c(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lk2/j0;->k(Z)V

    :cond_0
    return-void
.end method

.method public m(I)V
    .locals 3

    iget-object v0, p0, Lk2/i0;->o:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {p0, v0}, Lk2/i0;->c(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lk2/j0;->m(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lk2/i0;->l:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v1, "TextMove setIdx"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    iput p1, p0, Lk2/i0;->n:I

    return-void
.end method

.method public n(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 4

    iget-object v0, p0, Lk2/i0;->l:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v1, "TextMove setNodeInfo"

    invoke-virtual {v0, v1, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lk2/i0;->l:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iget-object v2, p0, Lk2/i0;->o:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    iget-object v2, p0, Lk2/i0;->o:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lk2/i0;->l:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getText4(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lk2/i0;->m:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean p1, p0, Lk2/i0;->p:Z

    if-eqz p1, :cond_0

    iput-boolean v0, p0, Lk2/i0;->q:Z

    :cond_0
    return v1

    :cond_1
    iget-object v2, p0, Lk2/i0;->l:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getText4(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lk2/i0;->m:Ljava/lang/String;

    const/4 v2, 0x0

    iput-object v2, p0, Lk2/i0;->t:Ljava/util/List;

    iput-object p1, p0, Lk2/i0;->o:Landroid/view/accessibility/AccessibilityNodeInfo;

    iput-boolean v0, p0, Lk2/i0;->r:Z

    iget-object v2, p0, Lk2/i0;->l:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isEditView(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v2

    iput-boolean v2, p0, Lk2/i0;->p:Z

    iget-object v2, p0, Lk2/i0;->o:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {p0, v2}, Lk2/i0;->c(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-super {p0, p1}, Lk2/j0;->n(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result p1

    return p1

    :cond_2
    iget-object p1, p0, Lk2/i0;->m:Ljava/lang/String;

    if-nez p1, :cond_3

    return v0

    :cond_3
    iget-boolean p1, p0, Lk2/i0;->p:Z

    const/4 v2, -0x1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lk2/i0;->o:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getTextSelectionEnd()I

    move-result p1

    if-eq p1, v2, :cond_4

    iget-object p1, p0, Lk2/i0;->o:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getTextSelectionEnd()I

    move-result p1

    invoke-virtual {p0, p1}, Lk2/i0;->m(I)V

    invoke-virtual {p0, v0}, Lk2/i0;->k(Z)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v2}, Lk2/i0;->m(I)V

    invoke-virtual {p0, v1}, Lk2/i0;->k(Z)V

    :goto_0
    return v1

    :cond_5
    invoke-virtual {p0, v2}, Lk2/i0;->m(I)V

    invoke-virtual {p0, v1}, Lk2/i0;->k(Z)V

    return v1
.end method

.method public o(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lk2/i0;->u:Z

    iget-object v0, p0, Lk2/i0;->o:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {p0, v0}, Lk2/i0;->c(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lk2/j0;->o(Landroid/view/accessibility/AccessibilityNodeInfo;I)V

    return-void

    :cond_0
    iget-object v0, p0, Lk2/i0;->l:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v1, "TextMove setSelection"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lk2/i0;->l:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setSelection(Landroid/view/accessibility/AccessibilityNodeInfo;I)V

    return-void
.end method

.method public p(Z)V
    .locals 1

    iput-boolean p1, p0, Lk2/i0;->r:Z

    iget v0, p0, Lk2/i0;->n:I

    iput v0, p0, Lk2/i0;->s:I

    iget-object v0, p0, Lk2/i0;->o:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {p0, v0}, Lk2/i0;->c(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lk2/j0;->p(Z)V

    :cond_0
    return-void
.end method

.method public q(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lk2/i0;->m:Ljava/lang/String;

    iget-object v0, p0, Lk2/i0;->o:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {p0, v0}, Lk2/i0;->c(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lk2/j0;->q(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public r()Z
    .locals 8

    invoke-direct {p0}, Lk2/i0;->b()V

    iget-object v0, p0, Lk2/i0;->o:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {p0, v0}, Lk2/i0;->c(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lk2/j0;->r()Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lk2/i0;->l:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v1, "TextMove setNodeInfo 3"

    iget-object v2, p0, Lk2/i0;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lk2/i0;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_a

    iget v0, p0, Lk2/i0;->n:I

    iget-object v3, p0, Lk2/i0;->m:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v2

    if-le v0, v3, :cond_1

    goto/16 :goto_4

    :cond_1
    iget-boolean v0, p0, Lk2/i0;->q:Z

    if-nez v0, :cond_2

    iget v0, p0, Lk2/i0;->n:I

    if-gez v0, :cond_3

    :cond_2
    iput v1, p0, Lk2/i0;->n:I

    :cond_3
    iput-boolean v1, p0, Lk2/i0;->q:Z

    iget v0, p0, Lk2/i0;->n:I

    iget-object v1, p0, Lk2/i0;->m:Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lk2/i0;->n:I

    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Lk2/i0;->n:I

    iget-object v4, p0, Lk2/i0;->l:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v4}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getTextFormatter()Lk2/h0;

    move-result-object v4

    invoke-virtual {v4, v3}, Lk2/h0;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lk2/i0;->n:I

    iget-object v6, p0, Lk2/i0;->m:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_6

    const v5, 0x1f1e6

    if-lt v1, v5, :cond_4

    const v6, 0x1f1ff

    if-gt v1, v6, :cond_4

    iget-object v1, p0, Lk2/i0;->m:Ljava/lang/String;

    iget v7, p0, Lk2/i0;->n:I

    invoke-virtual {v1, v7}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    if-lt v1, v5, :cond_6

    if-gt v1, v6, :cond_6

    iget v5, p0, Lk2/i0;->n:I

    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int/2addr v5, v1

    iput v5, p0, Lk2/i0;->n:I

    iget-object v1, p0, Lk2/i0;->m:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v5, v1, :cond_6

    iget-object v1, p0, Lk2/i0;->l:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getTextFormatter()Lk2/h0;

    move-result-object v1

    iget-object v3, p0, Lk2/i0;->m:Ljava/lang/String;

    iget v4, p0, Lk2/i0;->n:I

    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lk2/h0;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v3, v0

    move-object v4, v1

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lk2/i0;->m:Ljava/lang/String;

    iget v5, p0, Lk2/i0;->n:I

    invoke-static {v1, v5}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v1

    const/16 v5, 0x20e3

    const/16 v6, 0x200d

    if-ne v1, v5, :cond_5

    iget v1, p0, Lk2/i0;->n:I

    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v1, v3

    iput v1, p0, Lk2/i0;->n:I

    :goto_0
    iget-object v1, p0, Lk2/i0;->l:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getTextFormatter()Lk2/h0;

    move-result-object v1

    iget-object v3, p0, Lk2/i0;->m:Ljava/lang/String;

    iget v4, p0, Lk2/i0;->n:I

    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lk2/h0;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lk2/i0;->m:Ljava/lang/String;

    iget v5, p0, Lk2/i0;->n:I

    invoke-static {v1, v5}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v1

    if-ne v1, v6, :cond_6

    iget v1, p0, Lk2/i0;->n:I

    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v1, v5

    iput v1, p0, Lk2/i0;->n:I

    iget-object v5, p0, Lk2/i0;->m:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_6

    iget-object v1, p0, Lk2/i0;->m:Ljava/lang/String;

    iget v3, p0, Lk2/i0;->n:I

    invoke-virtual {v1, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    iget v3, p0, Lk2/i0;->n:I

    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int/2addr v3, v1

    iput v3, p0, Lk2/i0;->n:I

    goto :goto_0

    :cond_6
    :goto_1
    iget-boolean v0, p0, Lk2/i0;->r:Z

    if-eqz v0, :cond_8

    iget v0, p0, Lk2/i0;->n:I

    iget v1, p0, Lk2/i0;->s:I

    const-string v5, " "

    if-le v0, v1, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk2/i0;->l:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v4, 0x7f0700b2

    goto :goto_2

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk2/i0;->l:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v4, 0x7f0706c4

    :goto_2
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_8
    invoke-direct {p0, v3, v4}, Lk2/i0;->N(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lk2/i0;->o:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget v1, p0, Lk2/i0;->n:I

    invoke-virtual {p0, v0, v1}, Lk2/i0;->o(Landroid/view/accessibility/AccessibilityNodeInfo;I)V

    iget v0, p0, Lk2/i0;->n:I

    iget-object v1, p0, Lk2/i0;->m:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lk2/i0;->l:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v1, "scroll_bottom"

    goto :goto_3

    :cond_9
    iget-object v0, p0, Lk2/i0;->l:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v1, "next_text"

    :goto_3
    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->play(Ljava/lang/String;)V

    return v2

    :cond_a
    :goto_4
    iput-boolean v2, p0, Lk2/i0;->u:Z

    return v1
.end method

.method public u()Z
    .locals 1

    iget-object v0, p0, Lk2/i0;->o:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {p0, v0}, Lk2/i0;->c(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lk2/j0;->u()Z

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Lk2/i0;->y()Z

    move-result v0

    return v0
.end method

.method public v(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 4

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
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT"

    const/16 v3, 0x10

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v0, 0x100

    invoke-virtual {p1, v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public w()Z
    .locals 5

    invoke-direct {p0}, Lk2/i0;->b()V

    iget-object v0, p0, Lk2/i0;->o:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {p0, v0}, Lk2/i0;->c(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lk2/j0;->w()Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lk2/i0;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    iget v0, p0, Lk2/i0;->n:I

    iget-object v2, p0, Lk2/i0;->m:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-le v0, v2, :cond_1

    goto/16 :goto_5

    :cond_1
    iget-boolean v0, p0, Lk2/i0;->q:Z

    if-nez v0, :cond_2

    iget v0, p0, Lk2/i0;->n:I

    if-gez v0, :cond_3

    :cond_2
    iput v1, p0, Lk2/i0;->n:I

    :cond_3
    iput-boolean v1, p0, Lk2/i0;->q:Z

    iget v0, p0, Lk2/i0;->n:I

    :goto_0
    iget v1, p0, Lk2/i0;->n:I

    iget-object v2, p0, Lk2/i0;->m:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v3

    const/16 v4, 0xa

    if-ge v1, v2, :cond_5

    iget-object v1, p0, Lk2/i0;->m:Ljava/lang/String;

    iget v2, p0, Lk2/i0;->n:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v4, :cond_4

    goto :goto_1

    :cond_4
    iget v1, p0, Lk2/i0;->n:I

    add-int/2addr v1, v3

    iput v1, p0, Lk2/i0;->n:I

    goto :goto_0

    :cond_5
    :goto_1
    iget v1, p0, Lk2/i0;->n:I

    iget-object v2, p0, Lk2/i0;->m:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_7

    iget-object v1, p0, Lk2/i0;->m:Ljava/lang/String;

    iget v2, p0, Lk2/i0;->n:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v4, :cond_6

    goto :goto_2

    :cond_6
    iget v1, p0, Lk2/i0;->n:I

    add-int/2addr v1, v3

    iput v1, p0, Lk2/i0;->n:I

    goto :goto_1

    :cond_7
    :goto_2
    iget v1, p0, Lk2/i0;->n:I

    iget-object v2, p0, Lk2/i0;->m:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_9

    iget-object v1, p0, Lk2/i0;->m:Ljava/lang/String;

    iget v2, p0, Lk2/i0;->n:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v4, :cond_8

    goto :goto_3

    :cond_8
    iget v1, p0, Lk2/i0;->n:I

    add-int/2addr v1, v3

    iput v1, p0, Lk2/i0;->n:I

    goto :goto_2

    :cond_9
    :goto_3
    iget-object v1, p0, Lk2/i0;->m:Ljava/lang/String;

    iget v2, p0, Lk2/i0;->n:I

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lk2/i0;->r:Z

    if-eqz v1, :cond_b

    iget v1, p0, Lk2/i0;->n:I

    iget v2, p0, Lk2/i0;->s:I

    const-string v4, " "

    if-le v1, v2, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lk2/i0;->l:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f0700b2

    goto :goto_4

    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lk2/i0;->l:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f0706c4

    :goto_4
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_b
    iget-object v1, p0, Lk2/i0;->l:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speak(Ljava/lang/String;)V

    iget-object v0, p0, Lk2/i0;->o:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget v1, p0, Lk2/i0;->n:I

    invoke-virtual {p0, v0, v1}, Lk2/i0;->o(Landroid/view/accessibility/AccessibilityNodeInfo;I)V

    return v3

    :cond_c
    :goto_5
    return v1
.end method

.method public y()Z
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "toNextRow: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lk2/i0;->m:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "textmove0"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lk2/i0;->b()V

    iget-object v0, p0, Lk2/i0;->o:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {p0, v0}, Lk2/i0;->c(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lk2/j0;->y()Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lk2/i0;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_9

    iget v0, p0, Lk2/i0;->n:I

    iget-object v3, p0, Lk2/i0;->m:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-le v0, v3, :cond_1

    goto/16 :goto_4

    :cond_1
    iget-boolean v0, p0, Lk2/i0;->q:Z

    if-nez v0, :cond_2

    iget v0, p0, Lk2/i0;->n:I

    if-gez v0, :cond_3

    :cond_2
    iput v2, p0, Lk2/i0;->n:I

    :cond_3
    iput-boolean v2, p0, Lk2/i0;->q:Z

    iget v0, p0, Lk2/i0;->n:I

    :goto_0
    iget v3, p0, Lk2/i0;->n:I

    iget-object v5, p0, Lk2/i0;->m:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_5

    iget-object v3, p0, Lk2/i0;->m:Ljava/lang/String;

    iget v5, p0, Lk2/i0;->n:I

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    iget v3, p0, Lk2/i0;->n:I

    add-int/2addr v3, v4

    iput v3, p0, Lk2/i0;->n:I

    goto :goto_0

    :cond_5
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "textmove1"

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "textmove2"

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lk2/i0;->n:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "textmove3"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lk2/i0;->m:Ljava/lang/String;

    iget v3, p0, Lk2/i0;->n:I

    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    if-eqz v2, :cond_6

    iget v1, p0, Lk2/i0;->n:I

    add-int/2addr v1, v4

    iput v1, p0, Lk2/i0;->n:I

    :cond_6
    iget-boolean v1, p0, Lk2/i0;->r:Z

    if-eqz v1, :cond_8

    iget v1, p0, Lk2/i0;->n:I

    iget v2, p0, Lk2/i0;->s:I

    const-string v3, " "

    if-le v1, v2, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lk2/i0;->l:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f0700b2

    goto :goto_3

    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lk2/i0;->l:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f0706c4

    :goto_3
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_8
    iget-object v1, p0, Lk2/i0;->l:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speak(Ljava/lang/String;)V

    iget-object v0, p0, Lk2/i0;->o:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget v1, p0, Lk2/i0;->n:I

    invoke-virtual {p0, v0, v1}, Lk2/i0;->o(Landroid/view/accessibility/AccessibilityNodeInfo;I)V

    return v4

    :cond_9
    :goto_4
    return v2

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x21 -> :sswitch_0
        0x2c -> :sswitch_0
        0x2e -> :sswitch_0
        0x3b -> :sswitch_0
        0x3f -> :sswitch_0
        0x60c -> :sswitch_0
        0x61b -> :sswitch_0
        0x61f -> :sswitch_0
        0x3002 -> :sswitch_0
        0xff01 -> :sswitch_0
        0xff0c -> :sswitch_0
        0xff1f -> :sswitch_0
    .end sparse-switch
.end method

.method public z()Z
    .locals 6

    invoke-direct {p0}, Lk2/i0;->b()V

    iget-object v0, p0, Lk2/i0;->o:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {p0, v0}, Lk2/i0;->c(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lk2/j0;->z()Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lk2/i0;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    iget v0, p0, Lk2/i0;->n:I

    iget-object v2, p0, Lk2/i0;->m:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-le v0, v2, :cond_1

    goto/16 :goto_6

    :cond_1
    iget-boolean v0, p0, Lk2/i0;->q:Z

    if-nez v0, :cond_2

    iget v0, p0, Lk2/i0;->n:I

    if-gez v0, :cond_3

    :cond_2
    iput v1, p0, Lk2/i0;->n:I

    :cond_3
    iput-boolean v1, p0, Lk2/i0;->q:Z

    iget v0, p0, Lk2/i0;->n:I

    iget-object v2, p0, Lk2/i0;->t:Ljava/util/List;

    if-nez v2, :cond_5

    iget-object v2, p0, Lk2/i0;->l:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isCN()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Ll2/d;->f()Ll2/d;

    move-result-object v2

    iget-object v4, p0, Lk2/i0;->m:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ll2/d;->e(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lk2/i0;->m:Ljava/lang/String;

    sget-object v4, Lk2/i0;->w:Ljava/util/regex/Pattern;

    invoke-virtual {v4}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lk2/g0;->e(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    :goto_0
    iput-object v2, p0, Lk2/i0;->t:Ljava/util/List;

    :cond_5
    const/4 v2, 0x0

    :goto_1
    iget-object v4, p0, Lk2/i0;->t:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_8

    iget-object v4, p0, Lk2/i0;->t:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v2, v5

    sget-object v5, Lk2/i0;->w:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_2

    :cond_6
    iget v4, p0, Lk2/i0;->n:I

    if-le v2, v4, :cond_7

    goto :goto_3

    :cond_7
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_8
    const/4 v1, -0x1

    :goto_3
    iput v2, p0, Lk2/i0;->n:I

    if-ltz v1, :cond_9

    iget-object v0, p0, Lk2/i0;->t:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_4

    :cond_9
    iget-object v1, p0, Lk2/i0;->m:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_4
    iget-boolean v1, p0, Lk2/i0;->r:Z

    if-eqz v1, :cond_b

    iget v1, p0, Lk2/i0;->n:I

    iget v2, p0, Lk2/i0;->s:I

    const-string v4, " "

    if-le v1, v2, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lk2/i0;->l:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f0700b2

    goto :goto_5

    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lk2/i0;->l:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f0706c4

    :goto_5
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_b
    iget-object v1, p0, Lk2/i0;->l:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speak(Ljava/lang/String;)V

    iget-object v0, p0, Lk2/i0;->o:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget v1, p0, Lk2/i0;->n:I

    invoke-virtual {p0, v0, v1}, Lk2/i0;->o(Landroid/view/accessibility/AccessibilityNodeInfo;I)V

    return v3

    :cond_c
    :goto_6
    return v1
.end method
