.class public Lcom/nirenr/talkman/dialog/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# static fields
.field private static final m:Ljava/lang/String;


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;

.field private c:Lcom/nirenr/talkman/TalkManAccessibilityService;

.field private d:Landroid/view/accessibility/AccessibilityNodeInfo;

.field private e:I

.field private f:[Ljava/lang/String;

.field private g:Landroid/app/Dialog;

.field private h:Landroid/widget/GridView;

.field private i:I

.field private j:Z

.field private k:Z

.field private l:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/String;

    const/16 v1, 0xa

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lcom/nirenr/talkman/dialog/f;->m:Ljava/lang/String;

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

    iput v0, p0, Lcom/nirenr/talkman/dialog/f;->e:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/nirenr/talkman/dialog/f;->i:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nirenr/talkman/dialog/f;->j:Z

    iput-boolean v0, p0, Lcom/nirenr/talkman/dialog/f;->k:Z

    iput-object p1, p0, Lcom/nirenr/talkman/dialog/f;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    return-void
.end method

.method public constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/nirenr/talkman/dialog/f;->e:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/nirenr/talkman/dialog/f;->i:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/nirenr/talkman/dialog/f;->j:Z

    iput-boolean v1, p0, Lcom/nirenr/talkman/dialog/f;->k:Z

    iput-object p1, p0, Lcom/nirenr/talkman/dialog/f;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iput-object p2, p0, Lcom/nirenr/talkman/dialog/f;->d:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "zh"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iput-boolean v0, p0, Lcom/nirenr/talkman/dialog/f;->a:Z

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/nirenr/talkman/dialog/f;->e:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/nirenr/talkman/dialog/f;->i:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nirenr/talkman/dialog/f;->j:Z

    iput-boolean v0, p0, Lcom/nirenr/talkman/dialog/f;->k:Z

    iput-object p1, p0, Lcom/nirenr/talkman/dialog/f;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iput-object p2, p0, Lcom/nirenr/talkman/dialog/f;->b:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic a(Lcom/nirenr/talkman/dialog/f;)Landroid/app/Dialog;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/dialog/f;->g:Landroid/app/Dialog;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/nirenr/talkman/dialog/f;)I
    .locals 0

    iget p0, p0, Lcom/nirenr/talkman/dialog/f;->l:I

    return p0
.end method

.method static bridge synthetic c(Lcom/nirenr/talkman/dialog/f;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/dialog/f;->f:[Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic d(Lcom/nirenr/talkman/dialog/f;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/nirenr/talkman/dialog/f;->k:Z

    return p0
.end method

.method static bridge synthetic e(Lcom/nirenr/talkman/dialog/f;)Lcom/nirenr/talkman/TalkManAccessibilityService;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/dialog/f;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    return-object p0
.end method

.method static bridge synthetic f(Lcom/nirenr/talkman/dialog/f;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/dialog/f;->b:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic g(Lcom/nirenr/talkman/dialog/f;)Landroid/widget/GridView;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/dialog/f;->h:Landroid/widget/GridView;

    return-object p0
.end method

.method static bridge synthetic h(Lcom/nirenr/talkman/dialog/f;I)V
    .locals 0

    iput p1, p0, Lcom/nirenr/talkman/dialog/f;->l:I

    return-void
.end method

.method static bridge synthetic i(Lcom/nirenr/talkman/dialog/f;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nirenr/talkman/dialog/f;->k:Z

    return-void
.end method

.method static bridge synthetic j(Lcom/nirenr/talkman/dialog/f;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nirenr/talkman/dialog/f;->p(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic k(Lcom/nirenr/talkman/dialog/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/nirenr/talkman/dialog/f;->r()V

    return-void
.end method

.method static bridge synthetic l(Lcom/nirenr/talkman/dialog/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/nirenr/talkman/dialog/f;->s()V

    return-void
.end method

.method static bridge synthetic m(Lcom/nirenr/talkman/dialog/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/nirenr/talkman/dialog/f;->t()V

    return-void
.end method

.method static bridge synthetic n(Lcom/nirenr/talkman/dialog/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/nirenr/talkman/dialog/f;->u()V

    return-void
.end method

.method private o()Z
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

    sget-object v1, Lcom/nirenr/talkman/dialog/f;->m:Ljava/lang/String;

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

.method private p(Ljava/lang/String;)V
    .locals 5

    const-string v0, "\\.[ \r\n]|[^a-zA-Z0-9][\\. ]+|[,!?;\u3002\uff1f\uff01\uff0c\r\n\u201c\u201d\uff1a\uff1b\\?!]+|[ \\.,!?;\u3002\uff1f\uff01\uff0c\r\n\u201c\u201d\uff1a\uff1b\\?!]+"

    invoke-static {p1, v0}, Lk2/g0;->d(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

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

    iget-object v2, p0, Lcom/nirenr/talkman/dialog/f;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

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

    new-instance v4, Lcom/nirenr/talkman/dialog/f$b;

    invoke-direct {v4, p0, p1}, Lcom/nirenr/talkman/dialog/f$b;-><init>(Lcom/nirenr/talkman/dialog/f;Ljava/lang/String;)V

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/nirenr/talkman/dialog/EditDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/nirenr/talkman/dialog/EditDialog$EditDialogCallback;)V

    invoke-virtual {v1}, Lcom/nirenr/talkman/dialog/EditDialog;->g()V

    return-void
.end method

.method private r()V
    .locals 6

    const/4 v0, 0x2

    iput v0, p0, Lcom/nirenr/talkman/dialog/f;->i:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/f;->f:[Ljava/lang/String;

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

    iput-object v0, p0, Lcom/nirenr/talkman/dialog/f;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nirenr/talkman/dialog/f;->f:[Ljava/lang/String;

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/nirenr/talkman/dialog/f;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/nirenr/talkman/dialog/f;->f:[Ljava/lang/String;

    :goto_1
    iget-object v0, p0, Lcom/nirenr/talkman/dialog/f;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v3, v0, :cond_2

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/f;->f:[Ljava/lang/String;

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/f;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/nirenr/talkman/dialog/f;->h:Landroid/widget/GridView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/f;->h:Landroid/widget/GridView;

    new-instance v1, Lcom/androlua/SingleLineAdapter;

    iget-object v2, p0, Lcom/nirenr/talkman/dialog/f;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v3, 0x1090010

    iget-object v4, p0, Lcom/nirenr/talkman/dialog/f;->f:[Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/androlua/SingleLineAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method private s()V
    .locals 6

    const/4 v0, 0x1

    iput v0, p0, Lcom/nirenr/talkman/dialog/f;->i:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/nirenr/talkman/dialog/f;->f:[Ljava/lang/String;

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

    iput-object v1, p0, Lcom/nirenr/talkman/dialog/f;->b:Ljava/lang/String;

    const-string v2, "\n"

    invoke-static {v1, v2}, Lk2/g0;->d(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nirenr/talkman/dialog/f;->f:[Ljava/lang/String;

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/f;->h:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setNumColumns(I)V

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/f;->h:Landroid/widget/GridView;

    new-instance v1, Lcom/androlua/SingleLineAdapter;

    iget-object v2, p0, Lcom/nirenr/talkman/dialog/f;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v3, 0x1090010

    iget-object v4, p0, Lcom/nirenr/talkman/dialog/f;->f:[Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/androlua/SingleLineAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method private t()V
    .locals 5

    const/4 v0, 0x3

    iput v0, p0, Lcom/nirenr/talkman/dialog/f;->i:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/f;->f:[Ljava/lang/String;

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

    iput-object v0, p0, Lcom/nirenr/talkman/dialog/f;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/f;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iget-boolean v2, p0, Lcom/nirenr/talkman/dialog/f;->a:Z

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

    iput-object v0, p0, Lcom/nirenr/talkman/dialog/f;->f:[Ljava/lang/String;

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/f;->h:Landroid/widget/GridView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/f;->h:Landroid/widget/GridView;

    new-instance v1, Lcom/androlua/SingleLineAdapter;

    iget-object v2, p0, Lcom/nirenr/talkman/dialog/f;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v3, 0x1090010

    iget-object v4, p0, Lcom/nirenr/talkman/dialog/f;->f:[Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/androlua/SingleLineAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method private u()V
    .locals 5

    const/4 v0, 0x3

    iput v0, p0, Lcom/nirenr/talkman/dialog/f;->i:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/f;->f:[Ljava/lang/String;

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

    iput-object v0, p0, Lcom/nirenr/talkman/dialog/f;->b:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/nirenr/talkman/dialog/f;->a:Z

    const-string v2, "[\\u0000-\\u002f\\u0040\\u005b-\\u0060\\u007b-\\u007e\\u00d7\\u2013\\u2014\\u2018-\\u2027\\u3001\\u3002\\u3003\\u3008-\\u3011\\u3014\\u3015\\uff01-\\uff0f\\uff1a-\\uff20\\uff3b-\\uff40\\uff5b-\\uff65\\uffe5]+"

    if-eqz v1, :cond_2

    :try_start_0
    invoke-static {}, Ll2/d;->f()Ll2/d;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/f;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ll2/d;->e(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v3, p0, Lcom/nirenr/talkman/dialog/f;->b:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v1, v3, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/nirenr/talkman/dialog/f;->f:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/nirenr/talkman/dialog/f;->b:Ljava/lang/String;

    invoke-static {v0, v2}, Lk2/g0;->d(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nirenr/talkman/dialog/f;->f:[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    iget-object v0, p0, Lcom/nirenr/talkman/dialog/f;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Ll2/d;->g(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/f;->b:Ljava/lang/String;

    invoke-static {v0, v2}, Lk2/g0;->d(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nirenr/talkman/dialog/f;->f:[Ljava/lang/String;

    goto :goto_1

    :cond_2
    invoke-static {v0, v2}, Lk2/g0;->d(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nirenr/talkman/dialog/f;->f:[Ljava/lang/String;

    :goto_1
    iget-object v0, p0, Lcom/nirenr/talkman/dialog/f;->h:Landroid/widget/GridView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/f;->h:Landroid/widget/GridView;

    new-instance v1, Lcom/androlua/SingleLineAdapter;

    iget-object v2, p0, Lcom/nirenr/talkman/dialog/f;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v3, 0x1090010

    iget-object v4, p0, Lcom/nirenr/talkman/dialog/f;->f:[Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/androlua/SingleLineAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-boolean p1, p0, Lcom/nirenr/talkman/dialog/f;->j:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/f;->d:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/f;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/f;->b:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setText(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public q()V
    .locals 3

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/f;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v1, "SplitSelectDialog"

    iget-object v2, p0, Lcom/nirenr/talkman/dialog/f;->d:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/f;->b:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/f;->d:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/f;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getAllTextList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/nirenr/talkman/dialog/f;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getText(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/nirenr/talkman/dialog/f;->b:Ljava/lang/String;

    :cond_2
    invoke-direct {p0}, Lcom/nirenr/talkman/dialog/f;->o()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/f;->b:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/nirenr/talkman/dialog/f;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v1, 0x7f0703e5

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speak(I)V

    return-void

    :cond_4
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/f;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const/high16 v2, 0x7f080000

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/nirenr/talkman/dialog/f;->g:Landroid/app/Dialog;

    const v1, 0x7f07062e

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(I)V

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/f;->g:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/f;->g:Landroid/app/Dialog;

    const v1, 0x7f050009

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/f;->g:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_6

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x16

    if-lt v1, v2, :cond_5

    const/16 v1, 0x7f0

    goto :goto_2

    :cond_5
    const/16 v1, 0x7da

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/f;->g:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_6
    iget-object v0, p0, Lcom/nirenr/talkman/dialog/f;->g:Landroid/app/Dialog;

    const v1, 0x7f04002f

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/nirenr/talkman/dialog/f;->h:Landroid/widget/GridView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/f;->h:Landroid/widget/GridView;

    new-instance v1, Lcom/nirenr/talkman/dialog/f$a;

    invoke-direct {v1, p0}, Lcom/nirenr/talkman/dialog/f$a;-><init>(Lcom/nirenr/talkman/dialog/f;)V

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/f;->b:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/nirenr/talkman/dialog/f;->f:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/nirenr/talkman/dialog/f;->t()V

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/f;->g:Landroid/app/Dialog;

    const v1, 0x7f040004

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f07062a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    new-instance v1, Lcom/nirenr/talkman/dialog/f$c;

    invoke-direct {v1, p0}, Lcom/nirenr/talkman/dialog/f$c;-><init>(Lcom/nirenr/talkman/dialog/f;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/f;->g:Landroid/app/Dialog;

    const v1, 0x7f04000d

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f070626

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    new-instance v1, Lcom/nirenr/talkman/dialog/f$d;

    invoke-direct {v1, p0}, Lcom/nirenr/talkman/dialog/f$d;-><init>(Lcom/nirenr/talkman/dialog/f;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/f;->g:Landroid/app/Dialog;

    const v1, 0x7f040013

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f07062f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    new-instance v1, Lcom/nirenr/talkman/dialog/f$e;

    invoke-direct {v1, p0}, Lcom/nirenr/talkman/dialog/f$e;-><init>(Lcom/nirenr/talkman/dialog/f;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/f;->g:Landroid/app/Dialog;

    const v1, 0x7f04000c

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f070630

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    new-instance v1, Lcom/nirenr/talkman/dialog/f$f;

    invoke-direct {v1, p0}, Lcom/nirenr/talkman/dialog/f$f;-><init>(Lcom/nirenr/talkman/dialog/f;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/f;->g:Landroid/app/Dialog;

    const v1, 0x7f040014

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x104000d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    new-instance v1, Lcom/nirenr/talkman/dialog/f$g;

    invoke-direct {v1, p0}, Lcom/nirenr/talkman/dialog/f$g;-><init>(Lcom/nirenr/talkman/dialog/f;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/f;->g:Landroid/app/Dialog;

    const v1, 0x7f040015

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f070095

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    new-instance v1, Lcom/nirenr/talkman/dialog/f$h;

    invoke-direct {v1, p0}, Lcom/nirenr/talkman/dialog/f$h;-><init>(Lcom/nirenr/talkman/dialog/f;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/f;->g:Landroid/app/Dialog;

    const v1, 0x7f040016

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x1040001

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    new-instance v1, Lcom/nirenr/talkman/dialog/f$i;

    invoke-direct {v1, p0}, Lcom/nirenr/talkman/dialog/f$i;-><init>(Lcom/nirenr/talkman/dialog/f;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/f;->g:Landroid/app/Dialog;

    const v1, 0x7f040017

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f07026e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    new-instance v1, Lcom/nirenr/talkman/dialog/f$j;

    invoke-direct {v1, p0}, Lcom/nirenr/talkman/dialog/f$j;-><init>(Lcom/nirenr/talkman/dialog/f;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
