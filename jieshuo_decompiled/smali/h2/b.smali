.class public Lh2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Lcom/nirenr/talkman/ai/OcrResult$OCRListener;
.implements Lcom/baidu/translate/TransApi$OnResultListener;
.implements Lcom/nirenr/talkman/util/VerificationCode$VerificationCodeListener;


# static fields
.field public static final i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final j:Ljava/lang/String;


# instance fields
.field private final a:Lcom/nirenr/talkman/TalkManAccessibilityService;

.field private final b:Lcom/nirenr/talkman/ai/h;

.field private final c:Lcom/baidu/translate/TransApi;

.field private d:Z

.field private e:Landroid/view/accessibility/AccessibilityNodeInfo;

.field private f:I

.field private g:Landroid/app/AlertDialog;

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lh2/b;->i:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/String;

    const/16 v1, 0xa

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lh2/b;->j:Ljava/lang/String;

    return-void

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
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lh2/b;->f:I

    iput-object p1, p0, Lh2/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-instance v0, Lcom/nirenr/talkman/ai/h;

    invoke-direct {v0, p1}, Lcom/nirenr/talkman/ai/h;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;)V

    iput-object v0, p0, Lh2/b;->b:Lcom/nirenr/talkman/ai/h;

    new-instance p1, Lcom/baidu/translate/TransApi;

    const-string v0, "20170225000039856"

    const-string v1, "3qfku0JExu0Sr_2Ln75Z"

    invoke-direct {p1, v0, v1}, Lcom/baidu/translate/TransApi;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lh2/b;->c:Lcom/baidu/translate/TransApi;

    invoke-virtual {p1, p0}, Lcom/baidu/translate/TransApi;->setOnResultListener(Lcom/baidu/translate/TransApi$OnResultListener;)V

    invoke-static {p0}, Lcom/nirenr/talkman/util/d;->e(Lcom/baidu/translate/TransApi$OnResultListener;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "zh"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lh2/b;->d:Z

    :cond_0
    return-void
.end method

.method static bridge synthetic a(Lh2/b;)Z
    .locals 0

    iget-boolean p0, p0, Lh2/b;->d:Z

    return p0
.end method

.method static bridge synthetic b(Lh2/b;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 0

    iget-object p0, p0, Lh2/b;->e:Landroid/view/accessibility/AccessibilityNodeInfo;

    return-object p0
.end method

.method static bridge synthetic c(Lh2/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;
    .locals 0

    iget-object p0, p0, Lh2/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    return-object p0
.end method

.method static bridge synthetic d(Lh2/b;)I
    .locals 0

    iget p0, p0, Lh2/b;->f:I

    return p0
.end method

.method private e()Z
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

    sget-object v1, Lh2/b;->j:Ljava/lang/String;

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


# virtual methods
.method public f(ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    invoke-direct {p0}, Lh2/b;->e()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lh2/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const p2, 0x7f07037f

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speak(I)V

    return-void

    :cond_0
    iput p1, p0, Lh2/b;->f:I

    iput-object p2, p0, Lh2/b;->e:Landroid/view/accessibility/AccessibilityNodeInfo;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lh2/b;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public g(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    const/4 v0, -0x1

    iput v0, p0, Lh2/b;->f:I

    iput-object p1, p0, Lh2/b;->e:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object p1, p0, Lh2/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isUpTapEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lh2/b;->h:Z

    const/16 p1, 0x13

    new-array p1, p1, [Ljava/lang/String;

    iget-object v0, p0, Lh2/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v1, 0x7f070186

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    iget-object v0, p0, Lh2/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v1, 0x7f070090

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p1, v1

    iget-object v0, p0, Lh2/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v1, 0x7f07008a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, p1, v1

    iget-object v0, p0, Lh2/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v1, 0x7f07007f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    aput-object v0, p1, v1

    iget-object v0, p0, Lh2/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v1, 0x7f07018e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    aput-object v0, p1, v1

    iget-object v0, p0, Lh2/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v1, 0x7f070410

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    aput-object v0, p1, v1

    iget-object v0, p0, Lh2/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v1, 0x7f070150

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    aput-object v0, p1, v1

    iget-object v0, p0, Lh2/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v1, 0x7f07018d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x7

    aput-object v0, p1, v1

    iget-object v0, p0, Lh2/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v1, 0x7f07014f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    aput-object v0, p1, v1

    iget-object v0, p0, Lh2/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v1, 0x7f07011f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x9

    aput-object v0, p1, v1

    iget-object v0, p0, Lh2/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v1, 0x7f070120

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    aput-object v0, p1, v1

    iget-object v0, p0, Lh2/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v1, 0x7f070520

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xb

    aput-object v0, p1, v1

    iget-object v0, p0, Lh2/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v1, 0x7f070521

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xc

    aput-object v0, p1, v1

    iget-object v0, p0, Lh2/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v1, 0x7f070965

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xd

    aput-object v0, p1, v1

    iget-object v0, p0, Lh2/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v1, 0x7f070966

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xe

    aput-object v0, p1, v1

    iget-object v0, p0, Lh2/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v1, 0x7f070918

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xf

    aput-object v0, p1, v1

    iget-object v0, p0, Lh2/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v1, 0x7f07002a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    aput-object v0, p1, v1

    iget-object v0, p0, Lh2/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v1, 0x7f0700b1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x11

    aput-object v0, p1, v1

    const/16 v0, 0x12

    const-string v1, "\u70b9\u9009\u9a8c\u8bc1\u7801\u8bc6\u522b"

    aput-object v1, p1, v0

    new-instance v0, Landroid/widget/ArrayListAdapter;

    iget-object v1, p0, Lh2/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {v0, v1, p1}, Landroid/widget/ArrayListAdapter;-><init>(Landroid/content/Context;[Ljava/lang/Object;)V

    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lh2/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {p1, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f07001c

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f070095

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lh2/b;->g:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_0

    const/16 v0, 0x7f0

    goto :goto_0

    :cond_0
    const/16 v0, 0x7da

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    iget-object p1, p0, Lh2/b;->g:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    iget-object p1, p0, Lh2/b;->g:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object p1

    invoke-direct {p0}, Lh2/b;->e()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iput p2, p0, Lh2/b;->f:I

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4

    iget v0, p0, Lh2/b;->f:I

    if-gez v0, :cond_0

    iget-object p1, p0, Lh2/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iget-object v0, p0, Lh2/b;->e:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setAccessibilityFocus(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    return-void

    :cond_0
    iget-object v0, p0, Lh2/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iget-object v1, p0, Lh2/b;->e:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->clearAccessibilityFocus(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    iget-object v0, p0, Lh2/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lh2/b$a;

    invoke-direct {v1, p0, p1}, Lh2/b$a;-><init>(Lh2/b;Landroid/content/DialogInterface;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onDone(Lcom/nirenr/talkman/ai/OcrResult;)V
    .locals 11

    iget-object v0, p0, Lh2/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iget-object v1, p0, Lh2/b;->e:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setAccessibilityFocus(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    invoke-virtual {p1}, Lcom/nirenr/talkman/ai/OcrResult;->getString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/nirenr/talkman/ai/OcrResult;->getType()I

    move-result v1

    const/16 v2, 0xc

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ne v1, v2, :cond_1

    :try_start_0
    invoke-virtual {p1}, Lcom/nirenr/talkman/ai/OcrResult;->getItems()[Lcom/nirenr/talkman/ai/OcrResult$OcrItem;

    move-result-object p1

    aget-object v0, p1, v3

    iget v1, v0, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->x:I

    iget v2, v0, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->width:I

    div-int/2addr v2, v3

    add-int v6, v1, v2

    iget v1, v0, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->y:I

    iget v0, v0, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->height:I

    div-int/2addr v0, v3

    add-int v9, v1, v0

    const-string v0, "baiduai"

    const-string v1, "onDone: %d %d %d %d"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v2, v7

    aget-object v5, p1, v4

    iget v5, v5, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->x:I

    aget-object v8, p1, v7

    iget v8, v8, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->x:I

    sub-int/2addr v5, v8

    add-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lh2/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    aget-object v0, p1, v4

    iget v0, v0, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->x:I

    aget-object p1, p1, v7

    iget p1, p1, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->x:I

    sub-int/2addr v0, p1

    add-int v8, v6, v0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x4097700000000000L    # 1500.0

    mul-double v0, v0, v2

    double-to-int p1, v0

    add-int/lit16 v10, p1, 0x7d0

    move v7, v9

    invoke-virtual/range {v5 .. v10}, Lcom/nirenr/talkman/TalkManAccessibilityService;->swipe(IIIII)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object p1, p0, Lh2/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v0, 0x7f070202

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v1, v2, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->postSpeak(JLjava/lang/String;)V

    return-void

    :cond_1
    iget-boolean v1, p0, Lh2/b;->d:Z

    if-nez v1, :cond_4

    invoke-virtual {p1}, Lcom/nirenr/talkman/ai/OcrResult;->getType()I

    move-result v1

    if-eq v1, v3, :cond_3

    invoke-virtual {p1}, Lcom/nirenr/talkman/ai/OcrResult;->getType()I

    move-result p1

    const/16 v1, 0xa

    if-ne p1, v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lh2/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {p1}, Lk2/b0;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iget-object v1, p0, Lh2/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f070697

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "en"

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lh2/b$b;

    invoke-direct {v1, p0}, Lh2/b$b;-><init>(Lh2/b;)V

    const-string v2, "zh"

    invoke-static {v0, v2, p1, v1}, Lcom/nirenr/talkman/util/d;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/translate/TransApi$OnResultListener;)V

    return-void

    :cond_3
    :goto_0
    iget-object p1, p0, Lh2/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speak(Ljava/lang/String;)V

    sget-object p1, Lh2/b;->i:Ljava/util/ArrayList;

    invoke-virtual {p1, v4, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void

    :cond_4
    iget-object p1, p0, Lh2/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speak(Ljava/lang/String;)V

    sget-object p1, Lh2/b;->i:Ljava/util/ArrayList;

    invoke-virtual {p1, v4, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void

    :cond_5
    :goto_1
    iget-object p1, p0, Lh2/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v0, 0x7f070390

    invoke-virtual {p1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speak(I)V

    return-void
.end method

.method public onDone(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lh2/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iget-object v1, p0, Lh2/b;->e:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setAccessibilityFocus(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    iget-object v0, p0, Lh2/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v1, "onDone"

    invoke-virtual {v0, v1, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lh2/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speak(Ljava/lang/String;)V

    sget-object v0, Lh2/b;->i:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lh2/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->copy(Ljava/lang/CharSequence;)Z

    return-void

    :cond_1
    :goto_0
    iget-object p1, p0, Lh2/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v0, 0x7f070390

    invoke-virtual {p1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speak(I)V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lh2/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iget-object v1, p0, Lh2/b;->e:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setAccessibilityFocus(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    iget-object v0, p0, Lh2/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v1, "onError"

    invoke-virtual {v0, v1, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lh2/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v0, 0x7f07069c

    invoke-virtual {p1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speak(I)V

    return-void
.end method

.method public onTransResult(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lh2/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v1, "onTransResult"

    invoke-virtual {v0, v1, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lh2/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speak(Ljava/lang/String;)V

    sget-object v0, Lh2/b;->i:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lh2/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->copy(Ljava/lang/CharSequence;)Z

    return-void

    :cond_1
    :goto_0
    iget-object p1, p0, Lh2/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v0, 0x7f070404

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speak(Ljava/lang/String;)V

    return-void
.end method
