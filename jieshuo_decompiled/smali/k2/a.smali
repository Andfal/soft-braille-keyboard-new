.class public Lk2/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Landroid/view/accessibility/AccessibilityNodeInfo;

.field private static final c:Ljava/util/concurrent/ConcurrentLinkedDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedDeque<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private final a:Lcom/nirenr/talkman/TalkManAccessibilityService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    sput-object v0, Lk2/a;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;-><init>()V

    sput-object v0, Lk2/a;->c:Ljava/util/concurrent/ConcurrentLinkedDeque;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lk2/a;->d:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    return-void
.end method

.method private A(Ljava/util/HashMap;Ljava/util/List;Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;ZZ)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            "Ljava/lang/String;",
            "ZZ)V"
        }
    .end annotation

    move-object v7, p0

    move-object v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    if-nez v10, :cond_0

    return-void

    :cond_0
    if-eqz v11, :cond_c

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_7

    :cond_1
    invoke-virtual/range {p3 .. p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->isVisibleToUser()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static/range {p3 .. p3}, Lk2/a;->R(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v10, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-gez v0, :cond_2

    return-void

    :cond_2
    invoke-virtual/range {p3 .. p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v3, 0x4

    if-le v1, v3, :cond_3

    return-void

    :cond_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/CharSequence;

    invoke-virtual/range {p3 .. p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    invoke-virtual/range {p3 .. p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_a

    aget-object v3, v1, v2

    if-nez v3, :cond_5

    goto :goto_3

    :cond_5
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    if-eqz p5, :cond_6

    if-eqz p6, :cond_6

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_2

    :cond_6
    if-eqz p5, :cond_7

    invoke-virtual {v3, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    :goto_2
    invoke-direct {p0, v9, v10}, Lk2/a;->a(Ljava/util/List;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto :goto_4

    :cond_7
    if-eqz p6, :cond_8

    invoke-virtual {v3, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_2

    :cond_8
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_2

    :cond_9
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_a
    :goto_4
    invoke-virtual/range {p3 .. p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v12

    const/4 v13, 0x0

    :goto_5
    if-ge v13, v12, :cond_c

    invoke-static {v10, v13}, Lk2/a;->H(Landroid/view/accessibility/AccessibilityNodeInfo;I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    if-nez v3, :cond_b

    goto :goto_6

    :cond_b
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lk2/a;->A(Ljava/util/HashMap;Ljava/util/List;Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;ZZ)V

    :goto_6
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    :cond_c
    :goto_7
    return-void
.end method

.method private C(Ljava/util/List;Ljava/util/List;Ljava/lang/String;ZZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;",
            "Ljava/lang/String;",
            "ZZ)V"
        }
    .end annotation

    if-eqz p3, :cond_9

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isVisibleToUser()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v0}, Lk2/a;->R(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-gez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/CharSequence;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const/4 v3, 0x2

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getViewIdResourceName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    :goto_1
    if-ge v4, v1, :cond_1

    aget-object v3, v2, v4

    if-nez v3, :cond_4

    goto :goto_3

    :cond_4
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    if-eqz p4, :cond_5

    if-eqz p5, :cond_5

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_2

    :cond_5
    if-eqz p4, :cond_6

    invoke-virtual {v3, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    :goto_2
    invoke-direct {p0, p2, v0}, Lk2/a;->a(Ljava/util/List;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto :goto_0

    :cond_6
    if-eqz p5, :cond_7

    invoke-virtual {v3, p3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_2

    :cond_7
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_2

    :cond_8
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_9
    :goto_4
    return-void
.end method

.method private D(Ljava/util/List;Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    if-eqz p3, :cond_11

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_8

    :cond_0
    const-string v0, "&"

    invoke-virtual {p6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p6, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p6

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo;

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/CharSequence;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v4, v1

    :goto_1
    if-ge v6, v3, :cond_2

    aget-object v5, v4, v6

    if-nez v5, :cond_4

    goto/16 :goto_7

    :cond_4
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_10

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    if-eqz p4, :cond_7

    if-eqz p5, :cond_7

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    if-eqz v0, :cond_5

    iget-object v3, p0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v3, p6, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->check(Ljava/lang/String;Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v3

    if-eq p7, v3, :cond_2

    goto :goto_3

    :cond_5
    invoke-static {v2}, Lk2/a;->M(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    invoke-virtual {p0, p6, v3}, Lk2/a;->u(Ljava/lang/String;Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eqz p7, :cond_6

    if-nez v3, :cond_2

    goto :goto_2

    :cond_6
    if-lez v3, :cond_2

    :goto_2
    goto :goto_3

    :cond_7
    if-eqz p4, :cond_a

    invoke-virtual {v5, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    if-eqz v0, :cond_8

    iget-object v3, p0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v3, p6, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->check(Ljava/lang/String;Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v3

    if-eq p7, v3, :cond_2

    :goto_3
    invoke-direct {p0, p2, v2}, Lk2/a;->a(Ljava/util/List;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto :goto_0

    :cond_8
    invoke-static {v2}, Lk2/a;->M(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    invoke-virtual {p0, p6, v3}, Lk2/a;->u(Ljava/lang/String;Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eqz p7, :cond_9

    if-nez v3, :cond_2

    goto :goto_4

    :cond_9
    if-lez v3, :cond_2

    :goto_4
    goto :goto_3

    :cond_a
    if-eqz p5, :cond_d

    invoke-virtual {v5, p3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    if-eqz v0, :cond_b

    iget-object v3, p0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v3, p6, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->check(Ljava/lang/String;Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v3

    if-eq p7, v3, :cond_2

    goto :goto_3

    :cond_b
    invoke-static {v2}, Lk2/a;->M(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    invoke-virtual {p0, p6, v3}, Lk2/a;->u(Ljava/lang/String;Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eqz p7, :cond_c

    if-nez v3, :cond_2

    goto :goto_5

    :cond_c
    if-lez v3, :cond_2

    :goto_5
    goto :goto_3

    :cond_d
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_10

    if-eqz v0, :cond_e

    iget-object v3, p0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v3, p6, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->check(Ljava/lang/String;Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v3

    if-eq p7, v3, :cond_2

    goto :goto_3

    :cond_e
    invoke-static {v2}, Lk2/a;->M(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    invoke-virtual {p0, p6, v3}, Lk2/a;->u(Ljava/lang/String;Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eqz p7, :cond_f

    if-nez v3, :cond_2

    goto :goto_6

    :cond_f
    if-lez v3, :cond_2

    :goto_6
    goto :goto_3

    :cond_10
    :goto_7
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    :cond_11
    :goto_8
    return-void
.end method

.method private E(Ljava/util/HashMap;Ljava/util/List;Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-nez p3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v3, 0x4

    if-le v1, v3, :cond_1

    return-void

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getViewIdResourceName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0, p4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_5

    invoke-static {p3, v1}, Lk2/a;->H(Landroid/view/accessibility/AccessibilityNodeInfo;I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    invoke-direct {p0, p1, p2, v2, p4}, Lk2/a;->E(Ljava/util/HashMap;Ljava/util/List;Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method private G(Ljava/util/HashMap;Ljava/util/ArrayList;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ")V"
        }
    .end annotation

    if-nez p3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    invoke-static {p3, v1}, Lk2/a;->H(Landroid/view/accessibility/AccessibilityNodeInfo;I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1, p2, v2}, Lk2/a;->G(Ljava/util/HashMap;Ljava/util/ArrayList;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static H(Landroid/view/accessibility/AccessibilityNodeInfo;I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method public static I(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static J(Ljava/util/HashMap;Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v3, 0x4

    if-le v1, v3, :cond_1

    return-void

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lk2/a;->Q(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_1
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EditText"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    :goto_2
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v0

    if-lez v0, :cond_6

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_6

    invoke-static {p1, v1}, Lk2/a;->H(Landroid/view/accessibility/AccessibilityNodeInfo;I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    if-nez v2, :cond_5

    goto :goto_4

    :cond_5
    invoke-static {p0, v2, p2}, Lk2/a;->J(Ljava/util/HashMap;Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/util/ArrayList;)V

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    return-void
.end method

.method private L(Ljava/util/HashMap;Ljava/util/ArrayList;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ")V"
        }
    .end annotation

    if-nez p3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    invoke-static {p3, v1}, Lk2/a;->H(Landroid/view/accessibility/AccessibilityNodeInfo;I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1, p2, v2}, Lk2/a;->L(Ljava/util/HashMap;Ljava/util/ArrayList;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static M(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParent()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method public static N(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static O(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isCheckable()Z

    move-result p0

    return p0
.end method

.method public static P(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActionList()Ljava/util/List;

    move-result-object p0

    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-interface {p0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public static Q(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEditable()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActionList()Ljava/util/List;

    move-result-object v1

    sget-object v3, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SET_TEXT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object p0

    if-nez p0, :cond_3

    return v0

    :cond_3
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "EditText"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public static R(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-static {p0}, Lk2/a;->b0(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActionList()Ljava/util/List;

    move-result-object p0

    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_NEXT_HTML_ELEMENT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-interface {p0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_PREVIOUS_HTML_ELEMENT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-interface {p0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    return v0

    :cond_3
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static S(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_21

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, -0x1

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "android.widget.AbsListView"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v5, 0x10

    goto/16 :goto_0

    :sswitch_1
    const-string v2, "android.widget.HorizontalScrollView"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v5, 0xf

    goto/16 :goto_0

    :sswitch_2
    const-string v2, "android.widget.RatingBar"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v5, 0xe

    goto/16 :goto_0

    :sswitch_3
    const-string v2, "android.widget.ExpandableListView"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v5, 0xd

    goto/16 :goto_0

    :sswitch_4
    const-string v2, "android.support.v4.view.ViewPager"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v5, 0xc

    goto/16 :goto_0

    :sswitch_5
    const-string v2, "android.widget.ScrollView"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v5, 0xb

    goto/16 :goto_0

    :sswitch_6
    const-string v2, "android.widget.AbsSeekBar"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v5, 0xa

    goto/16 :goto_0

    :sswitch_7
    const-string v2, "android.widget.ListView"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v5, 0x9

    goto/16 :goto_0

    :sswitch_8
    const-string v2, "flyme.support.v7.widget.RecyclerView"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v5, 0x8

    goto/16 :goto_0

    :sswitch_9
    const-string v2, "android.widget.ProgressBar"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    goto :goto_0

    :cond_a
    const/4 v5, 0x7

    goto :goto_0

    :sswitch_a
    const-string v2, "com.lynx.tasm.behavior.ui.LynxFlattenUI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    goto :goto_0

    :cond_b
    const/4 v5, 0x6

    goto :goto_0

    :sswitch_b
    const-string v2, "android.support.v7.widget.RecyclerView"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    goto :goto_0

    :cond_c
    const/4 v5, 0x5

    goto :goto_0

    :sswitch_c
    const-string v2, "android.widget.SeekBar"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    goto :goto_0

    :cond_d
    const/4 v5, 0x4

    goto :goto_0

    :sswitch_d
    const-string v2, "com.tencent.widget.GridView"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    goto :goto_0

    :cond_e
    const/4 v5, 0x3

    goto :goto_0

    :sswitch_e
    const-string v2, "android.widget.AdapterView"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    goto :goto_0

    :cond_f
    const/4 v5, 0x2

    goto :goto_0

    :sswitch_f
    const-string v2, "android.widget.GridView"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    goto :goto_0

    :cond_10
    const/4 v5, 0x1

    goto :goto_0

    :sswitch_10
    const-string v2, "com.bytedance.ies.xelement.input.LynxTextAreaView"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    goto :goto_0

    :cond_11
    const/4 v5, 0x0

    :goto_0
    packed-switch v5, :pswitch_data_0

    const-string v2, "ViewPager"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    return v4

    :cond_12
    const-string v2, "ScrollView"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    return v4

    :cond_13
    const-string v2, "GridView"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    return v4

    :cond_14
    const-string v2, "RecyclerView"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    return v4

    :cond_15
    const-string v2, "ListView"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    return v4

    :cond_16
    const-string v2, "NumberPicker"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActionList()Ljava/util/List;

    move-result-object p0

    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-interface {p0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-interface {p0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_17

    goto :goto_1

    :cond_17
    return v0

    :cond_18
    :goto_1
    return v4

    :cond_19
    const-string v2, "Layout"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    return v0

    :cond_1a
    const-string v2, ".View"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v2

    if-ge v2, v3, :cond_1b

    return v0

    :cond_1b
    const-string v2, "WebView"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    return v0

    :cond_1c
    const-string v2, "ScreenView"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    return v0

    :cond_1d
    const-string v2, "TextView"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    return v0

    :cond_1e
    const-string v2, "SeekBar"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    return v0

    :cond_1f
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActionList()Ljava/util/List;

    move-result-object p0

    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-interface {p0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-interface {p0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_21

    :cond_20
    :pswitch_0
    return v4

    :cond_21
    :pswitch_1
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6e90f743 -> :sswitch_10
        -0x556a39ea -> :sswitch_f
        -0x44cdec57 -> :sswitch_e
        -0x41b4ee81 -> :sswitch_d
        -0x2abe29f0 -> :sswitch_c
        -0x29f10381 -> :sswitch_b
        -0x28b5237a -> :sswitch_a
        -0x24418845 -> :sswitch_9
        -0x1a2471dd -> :sswitch_8
        -0x182a8092 -> :sswitch_7
        0x32125f4 -> :sswitch_6
        0x32286f5d -> :sswitch_5
        0x648eda47 -> :sswitch_4
        0x6b3e34c2 -> :sswitch_3
        0x70dd538b -> :sswitch_2
        0x72f058e1 -> :sswitch_1
        0x75e02c0a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static T(Ljava/lang/CharSequence;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, -0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "android.widget.AbsListView"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v3, 0xb

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "android.widget.HorizontalScrollView"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v3, 0xa

    goto/16 :goto_0

    :sswitch_2
    const-string v1, "android.widget.ExpandableListView"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v3, 0x9

    goto/16 :goto_0

    :sswitch_3
    const-string v1, "android.support.v4.view.ViewPager"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v3, 0x8

    goto/16 :goto_0

    :sswitch_4
    const-string v1, "android.widget.ScrollView"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v3, 0x7

    goto :goto_0

    :sswitch_5
    const-string v1, "android.webkit.WebView"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v3, 0x6

    goto :goto_0

    :sswitch_6
    const-string v1, "android.widget.ListView"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_7
    const-string v1, "flyme.support.v7.widget.RecyclerView"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_0

    :cond_8
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_8
    const-string v1, "android.support.v7.widget.RecyclerView"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_0

    :cond_9
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_9
    const-string v1, "com.tencent.widget.GridView"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_0

    :cond_a
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_a
    const-string v1, "android.widget.AdapterView"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto :goto_0

    :cond_b
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_b
    const-string v1, "android.widget.GridView"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_0

    :cond_c
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    const-string v1, "ViewPager"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    return v2

    :cond_d
    const-string v1, "ScrollView"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    return v2

    :cond_e
    const-string v1, "GridView"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    return v2

    :cond_f
    const-string v1, "RecyclerView"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    return v2

    :cond_10
    const-string v1, "ListView"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    return v2

    :cond_11
    const-string v1, "WebView"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    return v2

    :cond_12
    const-string v1, "NumberPicker"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    return v0

    :cond_13
    const-string v1, "Layout"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    return v0

    :cond_14
    const-string v1, "ViewGroup"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    return v0

    :cond_15
    const-string v1, "ScreenView"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    return v0

    :pswitch_0
    return v2

    :sswitch_data_0
    .sparse-switch
        -0x556a39ea -> :sswitch_b
        -0x44cdec57 -> :sswitch_a
        -0x41b4ee81 -> :sswitch_9
        -0x29f10381 -> :sswitch_8
        -0x1a2471dd -> :sswitch_7
        -0x182a8092 -> :sswitch_6
        0x3f0ae6c -> :sswitch_5
        0x32286f5d -> :sswitch_4
        0x648eda47 -> :sswitch_3
        0x6b3e34c2 -> :sswitch_2
        0x72f058e1 -> :sswitch_1
        0x75e02c0a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static U(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object p0

    if-eqz p0, :cond_f

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, -0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "android.widget.AbsListView"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v3, 0x9

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "android.widget.HorizontalScrollView"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v3, 0x8

    goto/16 :goto_0

    :sswitch_2
    const-string v1, "android.widget.ExpandableListView"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x7

    goto :goto_0

    :sswitch_3
    const-string v1, "android.widget.ScrollView"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x6

    goto :goto_0

    :sswitch_4
    const-string v1, "android.widget.ListView"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_5
    const-string v1, "flyme.support.v7.widget.RecyclerView"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_6
    const-string v1, "android.support.v7.widget.RecyclerView"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_7
    const-string v1, "com.tencent.widget.GridView"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_0

    :cond_8
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_8
    const-string v1, "android.widget.AdapterView"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_0

    :cond_9
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_9
    const-string v1, "android.widget.GridView"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_0

    :cond_a
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    const-string v1, "ViewPager"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    return v2

    :cond_b
    const-string v1, "ScrollView"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    return v2

    :cond_c
    const-string v1, "GridView"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    return v2

    :cond_d
    const-string v1, "RecyclerView"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    return v2

    :cond_e
    const-string v1, "ListView"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_f

    :pswitch_0
    return v2

    :cond_f
    return v0

    :sswitch_data_0
    .sparse-switch
        -0x556a39ea -> :sswitch_9
        -0x44cdec57 -> :sswitch_8
        -0x41b4ee81 -> :sswitch_7
        -0x29f10381 -> :sswitch_6
        -0x1a2471dd -> :sswitch_5
        -0x182a8092 -> :sswitch_4
        0x32286f5d -> :sswitch_3
        0x6b3e34c2 -> :sswitch_2
        0x72f058e1 -> :sswitch_1
        0x75e02c0a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static V(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, -0x1

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "android.widget.AbsListView"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x7

    goto :goto_0

    :sswitch_1
    const-string v2, "android.widget.ExpandableListView"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x6

    goto :goto_0

    :sswitch_2
    const-string v2, "android.widget.ListView"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, 0x5

    goto :goto_0

    :sswitch_3
    const-string v2, "flyme.support.v7.widget.RecyclerView"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v4, 0x4

    goto :goto_0

    :sswitch_4
    const-string v2, "android.support.v7.widget.RecyclerView"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_0

    :cond_5
    const/4 v4, 0x3

    goto :goto_0

    :sswitch_5
    const-string v2, "com.tencent.widget.GridView"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_0

    :cond_6
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_6
    const-string v2, "android.widget.AdapterView"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_0

    :cond_7
    const/4 v4, 0x1

    goto :goto_0

    :sswitch_7
    const-string v2, "android.widget.GridView"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_0

    :cond_8
    const/4 v4, 0x0

    :goto_0
    packed-switch v4, :pswitch_data_0

    const-string v2, "GridView"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    return v3

    :cond_9
    const-string v2, "RecyclerView"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    return v3

    :cond_a
    const-string v2, "ListView"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    return v3

    :cond_b
    const-string v2, "ScrollView"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    return v3

    :cond_c
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getCollectionItemInfo()Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object p0

    if-eqz p0, :cond_d

    :pswitch_0
    return v3

    :cond_d
    return v0

    :sswitch_data_0
    .sparse-switch
        -0x556a39ea -> :sswitch_7
        -0x44cdec57 -> :sswitch_6
        -0x41b4ee81 -> :sswitch_5
        -0x29f10381 -> :sswitch_4
        -0x1a2471dd -> :sswitch_3
        -0x182a8092 -> :sswitch_2
        0x6b3e34c2 -> :sswitch_1
        0x75e02c0a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static W(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "ScrollView"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method public static X(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, -0x1

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "android.widget.RatingBar"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x3

    goto :goto_0

    :sswitch_1
    const-string v3, "android.widget.AbsSeekBar"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_2
    const-string v3, "android.widget.ProgressBar"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, 0x1

    goto :goto_0

    :sswitch_3
    const-string v3, "android.widget.SeekBar"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    :goto_0
    packed-switch v4, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return v2

    :cond_5
    :goto_1
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getViewIdResourceName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    const-string v3, "seekbar"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    return v2

    :cond_6
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_7

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActionList()Ljava/util/List;

    move-result-object p0

    invoke-static {}, Lcom/nirenr/talkman/h0;->a()Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_7
    return v0

    :sswitch_data_0
    .sparse-switch
        -0x2abe29f0 -> :sswitch_3
        -0x24418845 -> :sswitch_2
        0x32125f4 -> :sswitch_1
        0x70dd538b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static Y(ILandroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/16 v1, 0x8

    if-le p0, v1, :cond_1

    return v0

    :cond_1
    invoke-static {p1}, Lk2/a;->U(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    :cond_2
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isVisibleToUser()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    invoke-static {p1}, Lk2/a;->M(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    invoke-static {p0, p1}, Lk2/a;->Y(ILandroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result p0

    return p0
.end method

.method public static Z(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isVisibleToUser()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-static {p0}, Lk2/a;->M(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    invoke-static {v1, p0}, Lk2/a;->Y(ILandroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result p0

    return p0
.end method

.method private a(Ljava/util/List;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0, p2}, Lk2/a;->j(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static a0(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isVisibleToUser()Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    invoke-static {p0}, Lk2/a;->d0(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    :cond_2
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getWindow()Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object p0

    if-nez p0, :cond_3

    return v0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public static b(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActionList()Ljava/util/List;

    move-result-object p0

    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-interface {p0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static b0(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WebView"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static c(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActionList()Ljava/util/List;

    move-result-object p0

    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-interface {p0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static c0(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    const/4 v2, 0x6

    if-le v1, v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-static {p1}, Lk2/a;->M(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method public static d(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActionList()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static d0(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->refresh()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v0
.end method

.method private e(Landroid/view/accessibility/AccessibilityNodeInfo;Z)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEditable()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocusable()Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    invoke-static {p1}, Lk2/a;->X(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isInWebView(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v3, "com.tencent.mm"

    invoke-virtual {v1, p1, v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->checkPackageName(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v1

    if-ne v1, v2, :cond_4

    invoke-static {p1}, Lk2/a;->d0(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    :cond_4
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    invoke-static {p1}, Lk2/a;->I(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    return v0

    :cond_6
    const-string v3, "android.widget.Button"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    move-result p2

    const-string v1, "checkAction Button"

    if-eqz p2, :cond_7

    iget-object p1, p0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p1, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;)V

    return v2

    :cond_7
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocusable()Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-static {p1}, Lk2/a;->M(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    if-nez p1, :cond_8

    return v0

    :cond_8
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result p1

    if-ne p1, v2, :cond_9

    return v0

    :cond_9
    iget-object p1, p0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p1, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;)V

    return v2

    :cond_a
    return v0

    :cond_b
    if-eqz p2, :cond_c

    const-string v3, "com.lynx.tasm.behavior.ui.LynxFlattenUI"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    return v2

    :cond_c
    const-string v3, "com.didi.carmate.common.widget.wheel.WheelView"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    return v2

    :cond_d
    if-eqz p2, :cond_11

    iget-object v1, p0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v3, "com.tencent.mobileqq"

    invoke-virtual {v1, p1, v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->checkPackageName(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_ACCESSIBILITY_FOCUS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-static {p1, v1}, Lk2/a;->d(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-static {p1}, Lk2/a;->M(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    if-nez v1, :cond_e

    iget-object p1, p0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string p2, "qq no parent"

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;)V

    return v2

    :cond_e
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v3

    if-le v3, v2, :cond_10

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    move-result v3

    if-nez v3, :cond_f

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isLongClickable()Z

    move-result v3

    if-nez v3, :cond_f

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocusable()Z

    move-result v3

    if-eqz v3, :cond_10

    :cond_f
    iget-object p1, p0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string p2, "qq isClickable "

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;)V

    return v2

    :cond_10
    iget-object v3, p0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v3, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->hasNodeInfoText(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v3

    if-ne v3, v2, :cond_11

    iget-object v3, p0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v3, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getRawNodeInfoText3(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v4, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getRawNodeInfoText3(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    move-result v3

    if-nez v3, :cond_11

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isLongClickable()Z

    move-result v3

    if-nez v3, :cond_11

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocusable()Z

    move-result v1

    if-nez v1, :cond_11

    iget-object p1, p0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string p2, "qq parent hasNodeInfoText"

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;)V

    return v2

    :cond_11
    invoke-static {p1}, Lk2/a;->M(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isCheckable()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    move-result p2

    if-eqz p2, :cond_12

    return v2

    :cond_12
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getViewIdResourceName()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_17

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, -0x1

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "android:id/checkbox"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_13

    goto :goto_0

    :cond_13
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_1
    const-string v3, "android:id/title"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_14

    goto :goto_0

    :cond_14
    const/4 v4, 0x1

    goto :goto_0

    :sswitch_2
    const-string v3, "android:id/radio"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_15

    goto :goto_0

    :cond_15
    const/4 v4, 0x0

    :goto_0
    packed-switch v4, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-static {v1}, Lk2/a;->P(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result p2

    if-nez p2, :cond_16

    invoke-static {v1}, Lk2/a;->O(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result p2

    if-eqz p2, :cond_17

    :cond_16
    return v0

    :cond_17
    :goto_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocusable()Z

    move-result p2

    if-eqz p2, :cond_18

    return v2

    :cond_18
    invoke-static {v1}, Lk2/a;->P(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result p2

    if-eqz p2, :cond_19

    return v0

    :cond_19
    const-string p2, "android.widget.TextView"

    invoke-static {p1, p2}, Lk2/a;->h(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1a

    return v0

    :cond_1a
    return v2

    :cond_1b
    iget-object v3, p0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v3, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isClickable(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v3

    if-eqz v3, :cond_1e

    if-eqz v1, :cond_1e

    if-eqz p2, :cond_1c

    return v2

    :cond_1c
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocusable()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    move-result v1

    if-nez v1, :cond_1d

    return v0

    :cond_1d
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v1

    if-nez v1, :cond_1e

    return v2

    :cond_1e
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocusable()Z

    move-result v1

    if-eqz v1, :cond_20

    if-eqz p2, :cond_20

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result p2

    if-nez p2, :cond_20

    invoke-static {p1}, Lk2/a;->M(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    if-nez p1, :cond_1f

    return v2

    :cond_1f
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    move-result p2

    if-eqz p2, :cond_20

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    :cond_20
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x727fdd4e -> :sswitch_2
        -0x725fcef1 -> :sswitch_1
        -0x10408254 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private f(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInParent(Landroid/graphics/Rect;)V

    iget p1, v1, Landroid/graphics/Rect;->bottom:I

    iget v2, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, v2

    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v1

    if-ge p1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private g(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v1, "com.tencent.mm"

    invoke-virtual {p2, p1, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->checkPackageName(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v1, "android.widget.LinearLayout"

    invoke-virtual {p2, p1, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->checkClassName(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public static h(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method public static w(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0, p0}, Lk2/a;->x(Ljava/util/HashMap;Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    return-object p0
.end method

.method public static x(Ljava/util/HashMap;Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ")",
            "Landroid/view/accessibility/AccessibilityNodeInfo;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v4, 0x4

    if-le v2, v4, :cond_1

    return-object v0

    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_0
    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lk2/a;->U(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-object p1

    :cond_3
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_5

    invoke-static {p1, v2}, Lk2/a;->H(Landroid/view/accessibility/AccessibilityNodeInfo;I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    invoke-static {p0, v3}, Lk2/a;->x(Ljava/util/HashMap;Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    if-eqz v3, :cond_4

    return-object v3

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    return-object v0
.end method

.method private y(Ljava/util/HashMap;Ljava/util/List;Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;ZZ)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            "Ljava/lang/String;",
            "ZZ)V"
        }
    .end annotation

    if-nez p3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v3, 0x4

    if-le v1, v3, :cond_1

    return-void

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, p3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getNodeInfoLabel(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    move-result-object v0

    if-eqz p5, :cond_3

    if-eqz p6, :cond_3

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_1

    :cond_3
    if-eqz p5, :cond_4

    invoke-virtual {v0, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    :goto_1
    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    if-eqz p6, :cond_5

    invoke-virtual {v0, p4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_1

    :cond_5
    invoke-virtual {v0, p4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_1

    :cond_6
    :goto_2
    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_8

    invoke-static {p3, v1}, Lk2/a;->H(Landroid/view/accessibility/AccessibilityNodeInfo;I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v5

    if-nez v5, :cond_7

    goto :goto_4

    :cond_7
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p4

    move v7, p5

    move v8, p6

    invoke-direct/range {v2 .. v8}, Lk2/a;->y(Ljava/util/HashMap;Ljava/util/List;Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;ZZ)V

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_8
    return-void
.end method

.method private z(Ljava/util/HashMap;Ljava/util/List;Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;ZZ)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            "Ljava/lang/String;",
            "ZZ)V"
        }
    .end annotation

    move-object v7, p0

    move-object v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    if-nez v10, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p3 .. p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v3, 0x4

    if-le v1, v3, :cond_1

    return-void

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v11, :cond_b

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_7

    :cond_3
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/CharSequence;

    invoke-virtual/range {p3 .. p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    invoke-virtual/range {p3 .. p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_9

    aget-object v3, v1, v2

    if-nez v3, :cond_4

    goto :goto_3

    :cond_4
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lk2/a0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    if-eqz p5, :cond_5

    if-eqz p6, :cond_5

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_2

    :cond_5
    if-eqz p5, :cond_6

    invoke-virtual {v3, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    :goto_2
    invoke-direct {p0, v9, v10}, Lk2/a;->a(Ljava/util/List;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto :goto_4

    :cond_6
    if-eqz p6, :cond_7

    invoke-virtual {v3, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_2

    :cond_7
    invoke-virtual {v3, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_2

    :cond_8
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_9
    :goto_4
    invoke-virtual/range {p3 .. p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v12

    const/4 v13, 0x0

    :goto_5
    if-ge v13, v12, :cond_b

    invoke-static {v10, v13}, Lk2/a;->H(Landroid/view/accessibility/AccessibilityNodeInfo;I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    if-nez v3, :cond_a

    goto :goto_6

    :cond_a
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lk2/a;->z(Ljava/util/HashMap;Ljava/util/List;Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;ZZ)V

    :goto_6
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    :cond_b
    :goto_7
    return-void
.end method


# virtual methods
.method public B(Ljava/util/List;Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;ZZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            "Ljava/lang/String;",
            "ZZ)V"
        }
    .end annotation

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lk2/a;->A(Ljava/util/HashMap;Ljava/util/List;Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public F(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v1, v0, p1}, Lk2/a;->G(Ljava/util/HashMap;Ljava/util/ArrayList;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-object v0
.end method

.method public K(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v1, v0, p1}, Lk2/a;->L(Ljava/util/HashMap;Ljava/util/ArrayList;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-object v0
.end method

.method public i(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    iget-object v3, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v3, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->hasNodeInfoText(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v3

    invoke-direct {v0, v1, v3}, Lk2/a;->e(Landroid/view/accessibility/AccessibilityNodeInfo;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v1

    :cond_1
    invoke-static/range {p2 .. p2}, Lk2/a;->S(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v4

    if-eqz v4, :cond_2

    return-object v1

    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual/range {p2 .. p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getWindow()Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v5, v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    :cond_3
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    move-object v7, v1

    move-object v9, v2

    move-object v10, v9

    move-object v11, v10

    const/4 v8, 0x0

    :goto_0
    if-eqz v7, :cond_45

    const/4 v12, 0x1

    add-int/2addr v8, v12

    const/16 v13, 0x10

    if-le v8, v13, :cond_5

    if-eqz v9, :cond_4

    return-object v9

    :cond_4
    return-object v1

    :cond_5
    invoke-virtual {v7, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    invoke-virtual {v5, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    iget-object v13, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v13, v7}, Lcom/nirenr/talkman/TalkManAccessibilityService;->hasNodeInfoText(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v13

    if-eqz v13, :cond_45

    iget-object v13, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v13, v2, v7}, Lcom/nirenr/talkman/TalkManAccessibilityService;->checkNode(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v13

    if-nez v13, :cond_6

    goto/16 :goto_a

    :cond_6
    iget-object v13, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v13, v7}, Lcom/nirenr/talkman/TalkManAccessibilityService;->checkNumber(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v13

    if-eqz v13, :cond_7

    return-object v7

    :cond_7
    iget-object v13, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v13, v7}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isClickable(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v13

    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocusable()Z

    move-result v14

    iget-object v15, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v15, v7}, Lcom/nirenr/talkman/TalkManAccessibilityService;->hasNodeInfoText(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v15

    iget-object v2, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isSupperMode()Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isUseMoreNode()Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_8
    if-eqz v15, :cond_a

    if-eq v1, v7, :cond_a

    if-eqz v3, :cond_a

    iget-object v2, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getRawNodeInfoText(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    move-result-object v2

    iget-object v6, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v6, v7}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getRawNodeInfoText(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    move-result-object v6

    move/from16 v16, v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v12, :cond_b

    if-eqz v6, :cond_b

    invoke-virtual {v6, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isDebug()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v3, "checkParent parent node1"

    invoke-virtual {v2, v3, v7}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_9
    return-object v1

    :cond_a
    move/from16 v16, v3

    :cond_b
    iget-object v2, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isSupperMode()Z

    move-result v2

    if-eqz v2, :cond_c

    if-eqz v13, :cond_c

    return-object v7

    :cond_c
    invoke-static {v7}, Lk2/a;->M(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    return-object v1

    :cond_d
    iget-object v3, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isDebug()Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v3, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v6, "checkParent parent"

    invoke-virtual {v3, v6, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_e
    invoke-static {v2}, Lk2/a;->U(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v3

    if-eqz v13, :cond_11

    if-eqz v15, :cond_11

    if-eqz v3, :cond_f

    if-eqz v11, :cond_f

    iget-object v1, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v2, "com.alibaba.android.rimet"

    invoke-virtual {v1, v11, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->checkPackageName(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    return-object v11

    :cond_f
    if-eqz v11, :cond_10

    iget-object v1, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v2, "com.taobao.idlefish"

    invoke-virtual {v1, v11, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->checkPackageName(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    return-object v11

    :cond_10
    iget-object v1, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v2, "checkParent parent click"

    invoke-virtual {v1, v2, v7}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v7

    :cond_11
    if-nez v9, :cond_13

    if-eqz v13, :cond_13

    if-eqz v14, :cond_13

    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v6

    const/16 v12, 0x1e

    if-ge v6, v12, :cond_13

    iget-object v6, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v6, v7}, Lcom/nirenr/talkman/TalkManAccessibilityService;->hasChildNodeInfoText(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v6

    if-eqz v6, :cond_13

    const/4 v6, 0x0

    invoke-static {v7, v6}, Lk2/a;->H(Landroid/view/accessibility/AccessibilityNodeInfo;I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v12

    invoke-direct {v0, v7, v12}, Lk2/a;->g(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v6

    if-nez v6, :cond_13

    iget-object v6, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const/4 v12, 0x0

    invoke-virtual {v6, v12, v7}, Lcom/nirenr/talkman/TalkManAccessibilityService;->checkNode(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v6

    if-eqz v6, :cond_13

    iget-object v1, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v2, "checkParent fct"

    invoke-virtual {v1, v2, v7}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_12
    return-object v7

    :cond_13
    if-nez v11, :cond_1c

    if-eqz v14, :cond_1c

    if-nez v13, :cond_1c

    if-eqz v15, :cond_1c

    iget-object v6, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v6}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isSupperMode()Z

    move-result v6

    if-eqz v6, :cond_14

    return-object v7

    :cond_14
    if-nez v2, :cond_15

    return-object v7

    :cond_15
    move-object v11, v2

    const/4 v6, 0x0

    :goto_1
    invoke-virtual {v11}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v12

    move-object/from16 v17, v4

    const/4 v4, 0x1

    if-ne v12, v4, :cond_1b

    add-int/2addr v6, v4

    iget-object v4, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v4, v11}, Lcom/nirenr/talkman/TalkManAccessibilityService;->hasNodeInfoText(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v4

    if-eqz v4, :cond_17

    iget-object v4, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v4, v7}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getRawNodeInfoText2(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    move-result-object v4

    iget-object v12, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v12, v11}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getRawNodeInfoText2(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v4, v12}, Lk2/g0;->b(Ljava/lang/String;Ljava/lang/String;)F

    move-result v4

    move-object v12, v5

    float-to-double v4, v4

    const-wide v18, 0x3fe6666666666666L    # 0.7

    cmpg-double v20, v4, v18

    if-gez v20, :cond_18

    iget-object v1, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v1, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v2, "checkParent ft"

    invoke-virtual {v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;)V

    :cond_16
    return-object v7

    :cond_17
    move-object v12, v5

    :cond_18
    invoke-static {v11}, Lk2/a;->M(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v11

    if-eqz v11, :cond_1a

    const/16 v4, 0x8

    if-le v6, v4, :cond_19

    goto :goto_2

    :cond_19
    move-object v5, v12

    move-object/from16 v4, v17

    goto :goto_1

    :cond_1a
    :goto_2
    return-object v7

    :cond_1b
    move-object v12, v5

    move-object v11, v7

    goto :goto_3

    :cond_1c
    move-object/from16 v17, v4

    move-object v12, v5

    :goto_3
    const-string v4, "com.tencent.mm"

    if-nez v10, :cond_29

    if-eqz v13, :cond_29

    iget-object v5, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v6, "checkParent parent child click1 1"

    invoke-virtual {v5, v6, v7}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v5, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/nirenr/talkman/TalkManAccessibilityService;->checkNode(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v5

    if-eqz v5, :cond_29

    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v5

    iget-object v6, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v10, "checkParent parent child click1 2"

    move/from16 v18, v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v10, v8}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1e

    const/4 v6, 0x0

    invoke-static {v7, v6}, Lk2/a;->H(Landroid/view/accessibility/AccessibilityNodeInfo;I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v5

    iget-object v6, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v8, "checkParent parent child click1 3"

    invoke-virtual {v6, v8, v5}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz v5, :cond_26

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v6

    if-nez v6, :cond_26

    iget-object v6, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v6, v5}, Lcom/nirenr/talkman/TalkManAccessibilityService;->hasNodeInfoText(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v6

    if-eqz v6, :cond_26

    invoke-direct {v0, v7, v5}, Lk2/a;->g(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v5

    if-nez v5, :cond_26

    iget-object v1, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_1d

    iget-object v1, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v2, "checkParent parent child click1"

    invoke-virtual {v1, v2, v7}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1d
    return-object v7

    :cond_1e
    if-eqz v2, :cond_26

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v6

    const/4 v8, 0x1

    if-le v6, v8, :cond_26

    const/4 v6, 0x0

    const/4 v8, 0x0

    :goto_4
    if-ge v6, v5, :cond_24

    invoke-static {v7, v6}, Lk2/a;->H(Landroid/view/accessibility/AccessibilityNodeInfo;I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v10

    if-nez v10, :cond_1f

    goto :goto_6

    :cond_1f
    invoke-virtual {v10}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v19

    if-nez v19, :cond_23

    invoke-virtual {v10}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    move-result v19

    if-nez v19, :cond_23

    invoke-virtual {v10}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocusable()Z

    move-result v19

    if-eqz v19, :cond_20

    goto :goto_7

    :cond_20
    if-nez v8, :cond_22

    iget-object v8, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v8, v10}, Lcom/nirenr/talkman/TalkManAccessibilityService;->hasNodeInfoText(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v8

    if-eqz v8, :cond_21

    goto :goto_5

    :cond_21
    const/4 v8, 0x0

    goto :goto_6

    :cond_22
    :goto_5
    const/4 v8, 0x1

    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_23
    :goto_7
    const/4 v5, 0x0

    goto :goto_8

    :cond_24
    const/4 v5, 0x1

    :goto_8
    if-eqz v5, :cond_26

    if-eqz v8, :cond_26

    iget-object v1, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_25

    iget-object v1, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v2, "checkParent parent child click2"

    invoke-virtual {v1, v2, v7}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_25
    return-object v7

    :cond_26
    iget-object v5, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v5, v1, v4}, Lcom/nirenr/talkman/TalkManAccessibilityService;->checkPackageName(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_28

    iget-object v5, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v5, v7}, Lcom/nirenr/talkman/TalkManAccessibilityService;->hasChildNodeInfoText(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v5

    if-eqz v5, :cond_28

    iget-object v5, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v5, v7}, Lcom/nirenr/talkman/TalkManAccessibilityService;->hasChildNodeInfoClick(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v5

    if-nez v5, :cond_28

    iget-object v1, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_27

    iget-object v1, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v2, "checkParent parent node_c"

    invoke-virtual {v1, v2, v7}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_27
    return-object v7

    :cond_28
    move-object v10, v7

    goto :goto_9

    :cond_29
    move/from16 v18, v8

    :goto_9
    if-nez v9, :cond_2c

    if-nez v13, :cond_2a

    if-nez v14, :cond_2a

    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->isLongClickable()Z

    move-result v5

    if-eqz v5, :cond_2c

    :cond_2a
    iget-object v5, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/nirenr/talkman/TalkManAccessibilityService;->checkNode(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v5

    if-eqz v5, :cond_2c

    iget-object v5, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v5}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isDebug()Z

    move-result v5

    if-eqz v5, :cond_2b

    iget-object v5, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v6, "node_ret"

    invoke-virtual {v5, v6, v7}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2b
    move-object v9, v7

    :cond_2c
    if-eqz v14, :cond_2e

    if-eqz v2, :cond_2d

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_2e

    :cond_2d
    iget-object v5, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v6, "com.eg.android.AlipayGphone"

    invoke-virtual {v5, v7, v6}, Lcom/nirenr/talkman/TalkManAccessibilityService;->checkPackageName(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2e

    iget-object v5, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v5, v7}, Lcom/nirenr/talkman/TalkManAccessibilityService;->hasChildNodeInfoText(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v5

    if-eqz v5, :cond_2e

    return-object v7

    :cond_2e
    if-eqz v3, :cond_44

    iget-object v2, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isDebug()Z

    move-result v2

    if-eqz v2, :cond_2f

    iget-object v2, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v3, "checkParent list item"

    invoke-virtual {v2, v3, v7}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2f
    iget-object v2, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isSupperMode()Z

    move-result v2

    if-eqz v2, :cond_31

    if-eqz v9, :cond_30

    if-eq v9, v7, :cond_30

    return-object v9

    :cond_30
    iget-object v2, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->hasNodeInfoText(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v2

    if-eqz v2, :cond_31

    return-object v1

    :cond_31
    invoke-virtual {v1, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    return-object v1

    :cond_32
    iget-object v2, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isDebug()Z

    move-result v2

    if-eqz v2, :cond_33

    iget-object v2, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v3, "checkParent list item node_c"

    invoke-virtual {v2, v3, v10}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_33
    if-eqz v10, :cond_34

    if-eq v10, v7, :cond_34

    iget-object v2, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2, v10}, Lcom/nirenr/talkman/TalkManAccessibilityService;->hasChildNodeInfoText(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v2

    if-eqz v2, :cond_34

    return-object v10

    :cond_34
    iget-object v2, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isDebug()Z

    move-result v2

    if-eqz v2, :cond_35

    iget-object v2, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v3, "checkParent list item node_f_t"

    invoke-virtual {v2, v3, v11}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_35
    if-eqz v11, :cond_36

    if-eq v11, v7, :cond_36

    return-object v11

    :cond_36
    iget-object v2, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isDebug()Z

    move-result v2

    const-string v3, "checkParent list item source"

    if-eqz v2, :cond_37

    iget-object v2, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2, v3, v7}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_37
    if-eqz v15, :cond_38

    return-object v7

    :cond_38
    iget-object v2, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isDebug()Z

    move-result v2

    if-eqz v2, :cond_39

    iget-object v2, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v5, "checkParent list item node_ret"

    invoke-virtual {v2, v5, v9}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_39
    if-eqz v9, :cond_3a

    if-eq v9, v7, :cond_3a

    invoke-direct {v0, v7, v9}, Lk2/a;->g(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v2

    if-nez v2, :cond_3a

    return-object v9

    :cond_3a
    iget-object v2, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2, v7, v4}, Lcom/nirenr/talkman/TalkManAccessibilityService;->checkPackageName(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3c

    iget-object v2, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->checkWeixinVer()Z

    move-result v2

    if-eqz v2, :cond_3c

    if-eqz v9, :cond_3b

    if-eq v9, v7, :cond_3b

    invoke-direct {v0, v7, v9}, Lk2/a;->g(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v2

    if-eqz v2, :cond_3b

    return-object v9

    :cond_3b
    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_3c

    const/4 v4, 0x0

    invoke-static {v7, v4}, Lk2/a;->H(Landroid/view/accessibility/AccessibilityNodeInfo;I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    if-eqz v2, :cond_3c

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocusable()Z

    move-result v4

    if-eqz v4, :cond_3c

    return-object v2

    :cond_3c
    iget-object v2, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isDebug()Z

    move-result v2

    if-eqz v2, :cond_3d

    iget-object v2, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2, v3, v7}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3d
    if-nez v13, :cond_3e

    if-nez v14, :cond_3e

    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_3e

    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->isLongClickable()Z

    move-result v2

    if-nez v2, :cond_3e

    invoke-direct {v0, v7}, Lk2/a;->f(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v2

    if-eqz v2, :cond_3f

    :cond_3e
    iget-object v2, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v7}, Lcom/nirenr/talkman/TalkManAccessibilityService;->checkNode(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v2

    if-eqz v2, :cond_3f

    iget-object v2, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const/4 v3, 0x1

    invoke-virtual {v2, v7, v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->hasChildNodeInfoText(Landroid/view/accessibility/AccessibilityNodeInfo;Z)Z

    move-result v2

    if-eqz v2, :cond_3f

    return-object v7

    :cond_3f
    iget-object v2, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isDebug()Z

    move-result v2

    if-eqz v2, :cond_40

    iget-object v2, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v3, "checkParent list item node1"

    invoke-virtual {v2, v3, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_40
    iget-object v2, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->hasNodeInfoText(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v2

    if-eqz v2, :cond_41

    return-object v1

    :cond_41
    iget-object v2, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isDebug()Z

    move-result v2

    if-eqz v2, :cond_42

    iget-object v2, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v3, "checkParent list item end"

    invoke-virtual {v2, v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;)V

    :cond_42
    iget-object v2, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v7}, Lcom/nirenr/talkman/TalkManAccessibilityService;->checkNode(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v2

    if-eqz v2, :cond_43

    move-object v1, v7

    :cond_43
    return-object v1

    :cond_44
    move-object v7, v2

    move-object v5, v12

    move/from16 v3, v16

    move-object/from16 v4, v17

    move/from16 v8, v18

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_45
    :goto_a
    iget-object v2, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isDebug()Z

    move-result v2

    if-eqz v2, :cond_46

    iget-object v2, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v3, "checkParent no list"

    invoke-virtual {v2, v3, v7}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_46
    invoke-virtual/range {p2 .. p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->isCheckable()Z

    move-result v2

    if-eqz v2, :cond_47

    return-object v1

    :cond_47
    invoke-virtual/range {p2 .. p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocusable()Z

    move-result v2

    if-nez v2, :cond_48

    invoke-virtual/range {p2 .. p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    move-result v2

    if-eqz v2, :cond_49

    :cond_48
    iget-object v2, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-object/from16 v3, p1

    invoke-virtual {v2, v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getEventText(Landroid/view/accessibility/AccessibilityEvent;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_49

    return-object v1

    :cond_49
    if-eqz v10, :cond_4a

    invoke-static {v10}, Lk2/a;->M(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    if-eqz v2, :cond_4a

    iget-object v2, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2, v10}, Lcom/nirenr/talkman/TalkManAccessibilityService;->hasChildNodeInfoText(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v2

    if-eqz v2, :cond_4a

    return-object v10

    :cond_4a
    if-eqz v11, :cond_4b

    return-object v11

    :cond_4b
    if-eqz v9, :cond_4c

    return-object v9

    :cond_4c
    return-object v1
.end method

.method public j(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    iget-object v3, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v3, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->hasNodeInfoText(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v3

    invoke-direct {v0, v1, v3}, Lk2/a;->e(Landroid/view/accessibility/AccessibilityNodeInfo;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v1

    :cond_1
    invoke-static/range {p1 .. p1}, Lk2/a;->S(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v4

    if-eqz v4, :cond_2

    return-object v1

    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getWindow()Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v5, v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    :cond_3
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    move-object v7, v1

    move-object v9, v2

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    const/4 v8, 0x0

    :goto_0
    if-eqz v7, :cond_3c

    const/4 v13, 0x1

    add-int/2addr v8, v13

    const/16 v14, 0x10

    if-le v8, v14, :cond_5

    if-eqz v9, :cond_4

    return-object v9

    :cond_4
    return-object v1

    :cond_5
    iget-object v14, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v14}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isDebug()Z

    move-result v14

    if-eqz v14, :cond_6

    iget-object v14, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v15, "checkParent"

    invoke-virtual {v14, v15, v7}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_6
    invoke-virtual {v7, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    invoke-virtual {v5, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    iget-object v14, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v14, v7}, Lcom/nirenr/talkman/TalkManAccessibilityService;->hasNodeInfoText(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v14

    if-eqz v14, :cond_3c

    iget-object v14, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v14, v2, v7}, Lcom/nirenr/talkman/TalkManAccessibilityService;->checkNode(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v14

    if-nez v14, :cond_7

    goto/16 :goto_a

    :cond_7
    iget-object v14, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v14, v7}, Lcom/nirenr/talkman/TalkManAccessibilityService;->checkNumber(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v14

    if-eqz v14, :cond_8

    return-object v7

    :cond_8
    iget-object v14, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v14, v7}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isClickable(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v14

    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocusable()Z

    move-result v15

    iget-object v2, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2, v7}, Lcom/nirenr/talkman/TalkManAccessibilityService;->hasNodeInfoText(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v2

    iget-object v6, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v6}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isSupperMode()Z

    move-result v6

    if-nez v6, :cond_9

    iget-object v6, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v6}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isUseMoreNode()Z

    move-result v6

    if-eqz v6, :cond_b

    :cond_9
    if-eqz v2, :cond_b

    if-eq v1, v7, :cond_b

    if-eqz v3, :cond_b

    iget-object v6, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v6, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getRawNodeInfoText(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    move-result-object v6

    iget-object v13, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v13, v7}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getRawNodeInfoText(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    move-result-object v13

    move/from16 v16, v3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3

    move-object/from16 v17, v4

    const/4 v4, 0x1

    if-le v3, v4, :cond_c

    if-eqz v13, :cond_c

    invoke-virtual {v13, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c

    iget-object v2, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isDebug()Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v3, "checkParent parent node1"

    invoke-virtual {v2, v3, v7}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_a
    return-object v1

    :cond_b
    move/from16 v16, v3

    move-object/from16 v17, v4

    :cond_c
    iget-object v3, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isSupperMode()Z

    move-result v3

    if-eqz v3, :cond_d

    if-eqz v14, :cond_d

    return-object v7

    :cond_d
    invoke-static {v7}, Lk2/a;->M(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    return-object v1

    :cond_e
    invoke-static {v3}, Lk2/a;->U(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v4

    if-eqz v14, :cond_11

    if-eqz v2, :cond_11

    if-eqz v4, :cond_f

    if-eqz v10, :cond_f

    iget-object v1, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v2, "com.alibaba.android.rimet"

    invoke-virtual {v1, v10, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->checkPackageName(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    return-object v10

    :cond_f
    if-eqz v10, :cond_10

    iget-object v1, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v2, "com.taobao.idlefish"

    invoke-virtual {v1, v10, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->checkPackageName(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    return-object v10

    :cond_10
    return-object v7

    :cond_11
    if-nez v9, :cond_12

    if-eqz v14, :cond_12

    if-eqz v15, :cond_12

    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v6

    const/16 v13, 0x1e

    if-ge v6, v13, :cond_12

    iget-object v6, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v6, v7}, Lcom/nirenr/talkman/TalkManAccessibilityService;->hasChildNodeInfoText(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v6

    if-eqz v6, :cond_12

    iget-object v6, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v6, v7}, Lcom/nirenr/talkman/TalkManAccessibilityService;->checkNode(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v6

    if-eqz v6, :cond_12

    const/4 v6, 0x0

    invoke-static {v7, v6}, Lk2/a;->H(Landroid/view/accessibility/AccessibilityNodeInfo;I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v13

    invoke-direct {v0, v7, v13}, Lk2/a;->g(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v6

    if-nez v6, :cond_12

    iget-object v6, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const/4 v13, 0x0

    invoke-virtual {v6, v13, v7}, Lcom/nirenr/talkman/TalkManAccessibilityService;->checkNode(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v6

    if-eqz v6, :cond_12

    return-object v7

    :cond_12
    if-nez v10, :cond_1a

    if-eqz v15, :cond_1a

    if-nez v14, :cond_1a

    if-eqz v2, :cond_1a

    iget-object v6, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v6}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isSupperMode()Z

    move-result v6

    if-eqz v6, :cond_13

    return-object v7

    :cond_13
    if-nez v3, :cond_14

    return-object v7

    :cond_14
    move-object v10, v3

    const/4 v6, 0x0

    :goto_1
    invoke-virtual {v10}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v13

    move-object/from16 v18, v5

    const/4 v5, 0x1

    if-ne v13, v5, :cond_19

    add-int/2addr v6, v5

    iget-object v5, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v5, v10}, Lcom/nirenr/talkman/TalkManAccessibilityService;->hasNodeInfoText(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v5

    if-eqz v5, :cond_15

    iget-object v5, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v5, v7}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getRawNodeInfoText2(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    move-result-object v5

    iget-object v13, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v13, v10}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getRawNodeInfoText2(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v5, v13}, Lk2/g0;->b(Ljava/lang/String;Ljava/lang/String;)F

    move-result v5

    move v13, v4

    float-to-double v4, v5

    const-wide v19, 0x3fe6666666666666L    # 0.7

    cmpg-double v21, v4, v19

    if-gez v21, :cond_16

    return-object v7

    :cond_15
    move v13, v4

    :cond_16
    invoke-static {v10}, Lk2/a;->M(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v10

    if-eqz v10, :cond_18

    const/16 v4, 0x8

    if-le v6, v4, :cond_17

    goto :goto_2

    :cond_17
    move v4, v13

    move-object/from16 v5, v18

    goto :goto_1

    :cond_18
    :goto_2
    return-object v7

    :cond_19
    move v13, v4

    move-object v10, v7

    goto :goto_3

    :cond_1a
    move v13, v4

    move-object/from16 v18, v5

    :goto_3
    const-string v4, "com.tencent.mm"

    if-nez v11, :cond_27

    if-eqz v14, :cond_27

    iget-object v5, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v6, "checkParent parent child click1 1"

    invoke-virtual {v5, v6, v7}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v5, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/nirenr/talkman/TalkManAccessibilityService;->checkNode(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v5

    if-eqz v5, :cond_27

    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1c

    const/4 v6, 0x0

    invoke-static {v7, v6}, Lk2/a;->H(Landroid/view/accessibility/AccessibilityNodeInfo;I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v5

    if-eqz v5, :cond_24

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v6

    if-nez v6, :cond_24

    iget-object v6, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v6, v5}, Lcom/nirenr/talkman/TalkManAccessibilityService;->hasNodeInfoText(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v6

    if-eqz v6, :cond_24

    invoke-direct {v0, v7, v5}, Lk2/a;->g(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v5

    if-nez v5, :cond_24

    iget-object v1, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_1b

    iget-object v1, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v2, "checkParent parent child click1"

    invoke-virtual {v1, v2, v7}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1b
    return-object v7

    :cond_1c
    if-eqz v3, :cond_24

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v6

    const/4 v11, 0x1

    if-le v6, v11, :cond_24

    const/4 v6, 0x0

    const/4 v11, 0x0

    :goto_4
    if-ge v6, v5, :cond_22

    move/from16 v19, v5

    invoke-static {v7, v6}, Lk2/a;->H(Landroid/view/accessibility/AccessibilityNodeInfo;I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v5

    if-nez v5, :cond_1d

    goto :goto_7

    :cond_1d
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v20

    if-nez v20, :cond_21

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    move-result v20

    if-nez v20, :cond_21

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocusable()Z

    move-result v20

    if-eqz v20, :cond_1e

    goto :goto_8

    :cond_1e
    if-nez v11, :cond_20

    iget-object v11, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v11, v5}, Lcom/nirenr/talkman/TalkManAccessibilityService;->hasNodeInfoText(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v5

    if-eqz v5, :cond_1f

    goto :goto_5

    :cond_1f
    const/4 v5, 0x0

    goto :goto_6

    :cond_20
    :goto_5
    const/4 v5, 0x1

    :goto_6
    move v11, v5

    :goto_7
    add-int/lit8 v6, v6, 0x1

    move/from16 v5, v19

    goto :goto_4

    :cond_21
    :goto_8
    const/4 v5, 0x0

    goto :goto_9

    :cond_22
    const/4 v5, 0x1

    :goto_9
    if-eqz v5, :cond_24

    if-eqz v11, :cond_24

    iget-object v1, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_23

    iget-object v1, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v2, "checkParent parent child click2"

    invoke-virtual {v1, v2, v7}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_23
    return-object v7

    :cond_24
    iget-object v5, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v5, v1, v4}, Lcom/nirenr/talkman/TalkManAccessibilityService;->checkPackageName(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_26

    iget-object v5, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v5, v7}, Lcom/nirenr/talkman/TalkManAccessibilityService;->hasChildNodeInfoText(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v5

    if-eqz v5, :cond_26

    iget-object v5, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v5, v7}, Lcom/nirenr/talkman/TalkManAccessibilityService;->hasChildNodeInfoClick(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v5

    if-nez v5, :cond_26

    iget-object v1, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_25

    iget-object v1, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v2, "checkParent parent node_c"

    invoke-virtual {v1, v2, v7}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_25
    return-object v7

    :cond_26
    move-object v11, v7

    :cond_27
    if-nez v9, :cond_2a

    if-nez v14, :cond_28

    if-nez v15, :cond_28

    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->isLongClickable()Z

    move-result v5

    if-eqz v5, :cond_2a

    :cond_28
    iget-object v5, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/nirenr/talkman/TalkManAccessibilityService;->checkNode(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v5

    if-eqz v5, :cond_2a

    iget-object v5, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v5}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isDebug()Z

    move-result v5

    if-eqz v5, :cond_29

    iget-object v5, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v6, "node_ret"

    invoke-virtual {v5, v6, v7}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_29
    move-object v9, v7

    :cond_2a
    if-nez v12, :cond_2b

    if-eqz v2, :cond_2b

    move-object v12, v7

    :cond_2b
    if-eqz v15, :cond_2d

    if-eqz v3, :cond_2c

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_2d

    :cond_2c
    iget-object v5, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v6, "com.eg.android.AlipayGphone"

    invoke-virtual {v5, v7, v6}, Lcom/nirenr/talkman/TalkManAccessibilityService;->checkPackageName(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2d

    iget-object v5, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v5, v7}, Lcom/nirenr/talkman/TalkManAccessibilityService;->hasChildNodeInfoText(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v5

    if-eqz v5, :cond_2d

    return-object v7

    :cond_2d
    if-eqz v13, :cond_3b

    iget-object v3, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isSupperMode()Z

    move-result v3

    if-eqz v3, :cond_2f

    if-eqz v9, :cond_2e

    if-eq v9, v7, :cond_2e

    return-object v9

    :cond_2e
    iget-object v3, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v3, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->hasNodeInfoText(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v3

    if-eqz v3, :cond_2f

    return-object v1

    :cond_2f
    invoke-virtual {v1, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    return-object v1

    :cond_30
    if-eqz v11, :cond_31

    iget-object v3, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v3, v11}, Lcom/nirenr/talkman/TalkManAccessibilityService;->hasChildNodeInfoText(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v3

    if-eqz v3, :cond_31

    if-eq v11, v7, :cond_31

    return-object v11

    :cond_31
    if-eqz v10, :cond_32

    if-eq v10, v7, :cond_32

    return-object v10

    :cond_32
    if-eqz v2, :cond_33

    return-object v7

    :cond_33
    if-eqz v9, :cond_34

    if-eq v9, v7, :cond_34

    invoke-direct {v0, v7, v9}, Lk2/a;->g(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v2

    if-nez v2, :cond_34

    return-object v9

    :cond_34
    iget-object v2, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2, v7, v4}, Lcom/nirenr/talkman/TalkManAccessibilityService;->checkPackageName(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_36

    iget-object v2, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->checkWeixinVer()Z

    move-result v2

    if-eqz v2, :cond_36

    if-eqz v9, :cond_35

    if-eq v9, v7, :cond_35

    invoke-direct {v0, v7, v9}, Lk2/a;->g(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v2

    if-eqz v2, :cond_35

    return-object v9

    :cond_35
    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_36

    const/4 v2, 0x0

    invoke-static {v7, v2}, Lk2/a;->H(Landroid/view/accessibility/AccessibilityNodeInfo;I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    if-eqz v2, :cond_36

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocusable()Z

    move-result v3

    if-eqz v3, :cond_36

    return-object v2

    :cond_36
    if-nez v14, :cond_37

    if-nez v15, :cond_37

    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_37

    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->isLongClickable()Z

    move-result v2

    if-nez v2, :cond_37

    invoke-direct {v0, v7}, Lk2/a;->f(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v2

    if-eqz v2, :cond_38

    :cond_37
    iget-object v2, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v7}, Lcom/nirenr/talkman/TalkManAccessibilityService;->checkNode(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v2

    if-eqz v2, :cond_38

    iget-object v2, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const/4 v3, 0x1

    invoke-virtual {v2, v7, v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->hasChildNodeInfoText(Landroid/view/accessibility/AccessibilityNodeInfo;Z)Z

    move-result v2

    if-eqz v2, :cond_38

    return-object v7

    :cond_38
    iget-object v2, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->hasNodeInfoText(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v2

    if-eqz v2, :cond_39

    return-object v1

    :cond_39
    iget-object v2, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v7}, Lcom/nirenr/talkman/TalkManAccessibilityService;->checkNode(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v2

    if-eqz v2, :cond_3a

    move-object v1, v7

    :cond_3a
    return-object v1

    :cond_3b
    move-object v7, v3

    move/from16 v3, v16

    move-object/from16 v4, v17

    move-object/from16 v5, v18

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_3c
    :goto_a
    if-eqz v11, :cond_3d

    invoke-static {v11}, Lk2/a;->M(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    if-eqz v2, :cond_3d

    iget-object v2, v0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2, v11}, Lcom/nirenr/talkman/TalkManAccessibilityService;->hasChildNodeInfoText(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v2

    if-eqz v2, :cond_3d

    return-object v11

    :cond_3d
    if-eqz v10, :cond_3e

    return-object v10

    :cond_3e
    if-eqz v9, :cond_3f

    return-object v9

    :cond_3f
    return-object v1
.end method

.method public k(Ljava/lang/String;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 11

    iget-object v0, p0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v1, "findAccessibilityNodeInfo"

    invoke-virtual {v0, v1, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    const-string v0, "@"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const-string v1, "!"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v0, :cond_9

    if-gt v0, v4, :cond_1

    const-string v5, ">"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_9

    :cond_1
    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    :goto_0
    iget-object v7, p0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v7}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isDebug()Z

    move-result v7

    const-string v8, "*"

    if-eqz v7, :cond_3

    iget-object v7, p0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const-string v10, "findAccessibilityNodeInfo app"

    invoke-virtual {v7, v10, v9}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v5, 0x1

    goto :goto_3

    :cond_4
    const-string v7, "\\|"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v7}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getFocusView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getAppName(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    move-result-object v7

    array-length v8, v5

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_6

    aget-object v10, v5, v9

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    const/4 v5, 0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_6
    const/4 v5, 0x0

    :goto_2
    if-eqz v6, :cond_7

    if-eqz v5, :cond_8

    return-object v2

    :cond_7
    if-nez v5, :cond_8

    return-object v2

    :cond_8
    const/4 v5, 0x0

    :goto_3
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_9
    const/4 v5, 0x0

    :goto_4
    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v6, -0x1

    if-lez v0, :cond_a

    add-int/lit8 v7, v0, 0x1

    :try_start_0
    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_a
    if-lez v6, :cond_b

    add-int/lit8 v6, v6, -0x1

    :cond_b
    iget-object v0, p0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_c

    return-object v2

    :cond_c
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v7, v4, :cond_d

    invoke-virtual {p0, p1, v6, v5}, Lk2/a;->s(Ljava/lang/String;IZ)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1

    :cond_d
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x3e

    if-eq v7, v8, :cond_13

    const/16 v8, 0x40

    if-eq v7, v8, :cond_12

    packed-switch v7, :pswitch_data_0

    invoke-virtual {p0, p1, v6, v5}, Lk2/a;->s(Ljava/lang/String;IZ)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1

    :pswitch_0
    const/16 v0, 0x26

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-lez v0, :cond_10

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v7, 0x7f070122

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_10

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {v5, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lk2/a;->k(Ljava/lang/String;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    if-eqz v1, :cond_f

    return-object v2

    :cond_e
    invoke-virtual {p0, v5}, Lk2/a;->k(Ljava/lang/String;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    if-nez v1, :cond_f

    return-object v2

    :cond_f
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_10
    iget-object v0, p0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getFocusView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->execute(Ljava/lang/String;Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result p1

    if-eqz p1, :cond_11

    sget-object p1, Lk2/a;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    return-object p1

    :cond_11
    return-object v2

    :pswitch_1
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lk2/a;->n(Ljava/lang/String;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1

    :pswitch_2
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1, v6}, Lk2/a;->o(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1

    :cond_12
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1, v6}, Lk2/a;->l(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1

    :cond_13
    iget-object v0, p0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->startApp(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_14

    sget-object p1, Lk2/a;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    return-object p1

    :cond_14
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x23
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public l(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-string v1, " "

    const-string v2, "_"

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lk2/a;->m(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ","

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "findAccessibilityNodeInfoById"

    invoke-virtual {v1, v2, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    return-object v0

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 v1, p3, 0x1

    if-gt v1, p2, :cond_5

    rsub-int/lit8 v1, p3, 0x0

    if-le v1, p2, :cond_3

    goto :goto_1

    :cond_3
    if-gez p3, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    add-int/2addr p2, p3

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    return-object p1

    :cond_4
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_5
    :goto_1
    return-object v0
.end method

.method public m(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "\\|"

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v5, v0, p1, v4}, Lk2/a;->E(Ljava/util/HashMap;Ljava/util/List;Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->findAccessibilityNodeInfosByViewId(Ljava/lang/String;)Ljava/util/List;

    :cond_3
    return-object v0
.end method

.method public n(Ljava/lang/String;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 6

    iget-object v0, p0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v2, "-"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, p1, v3

    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v5

    if-gt v5, v4, :cond_1

    return-object v1

    :cond_1
    invoke-static {v0, v4}, Lk2/a;->H(Landroid/view/accessibility/AccessibilityNodeInfo;I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_2

    return-object v1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v1

    :cond_3
    return-object v0
.end method

.method public o(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lk2/a;->l(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p0, p1, p2}, Lk2/a;->p(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    return-object v0

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 v1, p3, 0x1

    if-gt v1, p2, :cond_5

    rsub-int/lit8 v1, p3, 0x0

    if-le v1, p2, :cond_3

    goto :goto_1

    :cond_3
    if-gez p3, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    add-int/2addr p2, p3

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    return-object p1

    :cond_4
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_5
    :goto_1
    return-object v0
.end method

.method public p(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_0

    return-object v7

    :cond_0
    const-string v0, "\\|"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    array-length v8, p2

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v8, :cond_8

    aget-object v0, p2, v10

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x25

    const/4 v3, 0x1

    if-eq v1, v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object p1, p0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getFocusView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->execute(Ljava/lang/String;Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    return-object v7

    :cond_3
    :goto_1
    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-lez v1, :cond_5

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lk2/a;->k(Ljava/lang/String;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v0, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_5
    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    xor-int/lit8 v5, v2, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v6, v1, 0x1

    if-nez v5, :cond_6

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_6
    if-nez v6, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {v0, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_7
    move-object v4, v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object v0, p0

    move-object v2, v7

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lk2/a;->y(Ljava/util/HashMap;Ljava/util/List;Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;ZZ)V

    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_8
    return-object v7
.end method

.method public q(Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "findAccessibilityNodeInfoByPinyin: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TalkManAccessibility"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    if-nez v0, :cond_0

    return-object v8

    :cond_0
    const-string v1, "\\|"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getFocusView()Landroid/view/accessibility/AccessibilityNodeInfo;

    array-length v9, p1

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v9, :cond_5

    aget-object v1, p1, v11

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    xor-int/lit8 v6, v3, 0x1

    if-nez v6, :cond_2

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :cond_2
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    xor-int/lit8 v7, v2, 0x1

    if-nez v7, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v4

    invoke-virtual {v1, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_3
    move-object v5, v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object v1, p0

    move-object v3, v8

    move-object v4, v0

    invoke-direct/range {v1 .. v7}, Lk2/a;->z(Ljava/util/HashMap;Ljava/util/List;Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;ZZ)V

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    return-object v8

    :cond_4
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_5
    return-object v8
.end method

.method public r(Ljava/lang/String;I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lk2/a;->s(Ljava/lang/String;IZ)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1
.end method

.method public s(Ljava/lang/String;IZ)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 3

    iget-object v0, p0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "findAccessibilityNodeInfoByText"

    invoke-virtual {v0, v2, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0, p1, p3}, Lk2/a;->v(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    return-object v0

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    add-int/lit8 v1, p2, 0x1

    if-gt v1, p3, :cond_4

    rsub-int/lit8 v1, p2, 0x0

    if-le v1, p3, :cond_2

    goto :goto_1

    :cond_2
    if-gez p2, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    add-int/2addr p3, p2

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    return-object p1

    :cond_3
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_4
    :goto_1
    return-object v0
.end method

.method public t(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lk2/a;->v(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public u(Ljava/lang/String;Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "findAccessibilityNodeInfoByText: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p2, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_5

    const-string v1, "*"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    xor-int/2addr v3, v2

    if-nez v3, :cond_3

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_3
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    xor-int/2addr v1, v2

    if-nez v1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v2

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_4
    move v8, v1

    move v7, v3

    goto :goto_0

    :cond_5
    const/4 v7, 0x1

    const/4 v8, 0x1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move-object v2, p0

    move-object v4, v0

    move-object v5, p2

    invoke-direct/range {v2 .. v8}, Lk2/a;->A(Ljava/util/HashMap;Ljava/util/List;Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;ZZ)V

    return-object v0
.end method

.method public v(Ljava/lang/String;Z)Ljava/util/List;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v0, p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "findAccessibilityNodeInfoByText: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TalkManAccessibility"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, v9, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v11

    iget-object v1, v9, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v9, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v2, "findAccessibilityNodeInfo getWindow all"

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, v9, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v2, "findAccessibilityNodeInfo getWindow root"

    invoke-virtual {v1, v2, v11}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    if-nez v11, :cond_1

    return-object v10

    :cond_1
    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    iget-object v0, v9, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getFocusView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v13

    invoke-virtual {v9, v11}, Lk2/a;->F(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/util/ArrayList;

    move-result-object v14

    array-length v15, v12

    const/16 v16, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v16

    move-object/from16 v17, v0

    move-object/from16 v18, v17

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v15, :cond_2a

    aget-object v1, v12, v7

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_1
    move/from16 v24, v7

    const/16 v25, 0x0

    goto/16 :goto_f

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_11

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x25

    const/16 v5, 0x26

    if-eq v2, v4, :cond_3

    if-eq v2, v5, :cond_5

    goto :goto_2

    :cond_3
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v0, v9, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v13}, Lcom/nirenr/talkman/TalkManAccessibilityService;->doBooleanFunction(Ljava/lang/String;Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, v9, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v13}, Lcom/nirenr/talkman/TalkManAccessibilityService;->execute(Ljava/lang/String;Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    :cond_4
    return-object v10

    :cond_5
    iget-object v2, v9, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isDebug()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, v9, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ";"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "findAccessibilityNodeInfo check"

    invoke-virtual {v2, v6, v4}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_6
    iget-object v2, v9, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v13}, Lcom/nirenr/talkman/TalkManAccessibilityService;->check(Ljava/lang/String;Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object v0, Lk2/a;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v10

    :cond_7
    :goto_2
    invoke-virtual {v1, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    if-lez v2, :cond_e

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v5, :cond_8

    move v2, v4

    :cond_8
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "^"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    const-string v6, "!"

    if-eqz v5, :cond_a

    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    :goto_3
    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    goto :goto_5

    :cond_9
    :goto_4
    const/4 v5, 0x0

    goto :goto_5

    :cond_a
    const-string v5, "&"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    goto :goto_3

    :cond_b
    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Lk2/a;->k(Ljava/lang/String;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v4

    if-eqz v4, :cond_d

    goto/16 :goto_1

    :cond_c
    invoke-virtual {v9, v4}, Lk2/a;->k(Ljava/lang/String;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v4

    if-nez v4, :cond_d

    goto/16 :goto_1

    :cond_d
    move-object/from16 v4, v16

    goto :goto_4

    :goto_5
    invoke-virtual {v1, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :cond_e
    move-object/from16 v4, v16

    const/4 v5, 0x0

    :goto_6
    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    xor-int/2addr v6, v3

    if-nez v6, :cond_f

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :cond_f
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    xor-int/2addr v2, v3

    if-nez v2, :cond_10

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v19

    add-int/lit8 v3, v19, -0x1

    invoke-virtual {v1, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_10
    move/from16 v20, v2

    move-object/from16 v21, v4

    move/from16 v22, v5

    move/from16 v19, v6

    goto :goto_7

    :cond_11
    move-object/from16 v21, v16

    const/16 v19, 0x1

    const/16 v20, 0x1

    const/16 v22, 0x0

    :goto_7
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v23

    if-eqz v21, :cond_12

    move-object/from16 v1, p0

    move-object v2, v14

    move-object v3, v10

    move-object/from16 v4, v23

    move/from16 v5, v19

    move/from16 v6, v20

    move/from16 v24, v7

    move-object/from16 v7, v21

    const/16 v25, 0x0

    move/from16 v8, v22

    invoke-direct/range {v1 .. v8}, Lk2/a;->D(Ljava/util/List;Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Z)V

    goto :goto_8

    :cond_12
    move/from16 v24, v7

    const/16 v25, 0x0

    move-object/from16 v1, p0

    move-object v2, v14

    move-object v3, v10

    move-object/from16 v4, v23

    move/from16 v5, v19

    move/from16 v6, v20

    invoke-direct/range {v1 .. v6}, Lk2/a;->C(Ljava/util/List;Ljava/util/List;Ljava/lang/String;ZZ)V

    :goto_8
    if-eqz v21, :cond_13

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_13

    goto/16 :goto_f

    :cond_13
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v26

    if-eqz v26, :cond_19

    :try_start_0
    invoke-virtual {v13}, Landroid/view/accessibility/AccessibilityNodeInfo;->getWindowId()I

    move-result v1

    invoke-virtual {v11}, Landroid/view/accessibility/AccessibilityNodeInfo;->getWindowId()I

    move-result v2

    if-eq v1, v2, :cond_19

    if-nez v0, :cond_17

    move-object v1, v13

    :goto_9
    invoke-static {v1}, Lk2/a;->M(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    if-eqz v2, :cond_14

    move-object v1, v2

    goto :goto_9

    :cond_14
    iget-object v2, v9, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isDebug()Z

    move-result v2

    if-eqz v2, :cond_15

    iget-object v2, v9, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v3, "findAccessibilityNodeInfo getWindow FocusView"

    invoke-virtual {v2, v3, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_15
    invoke-virtual {v1, v11}, Landroid/view/accessibility/AccessibilityNodeInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    invoke-virtual {v9, v1}, Lk2/a;->F(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_a

    :cond_16
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    :cond_17
    :goto_a
    move-object/from16 v1, p0

    move-object v2, v0

    move-object v3, v10

    move-object/from16 v4, v23

    move/from16 v5, v19

    move/from16 v6, v20

    if-eqz v21, :cond_18

    move-object/from16 v7, v21

    move/from16 v8, v22

    invoke-direct/range {v1 .. v8}, Lk2/a;->D(Ljava/util/List;Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;Z)V

    goto :goto_b

    :cond_18
    invoke-direct/range {v1 .. v6}, Lk2/a;->C(Ljava/util/List;Ljava/util/List;Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_19
    :goto_b
    move-object v7, v0

    if-nez p2, :cond_1a

    if-eqz v26, :cond_28

    :cond_1a
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v11}, Landroid/view/accessibility/AccessibilityNodeInfo;->getWindow()Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v8

    if-nez v17, :cond_1f

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    if-eqz v8, :cond_1e

    invoke-virtual {v8}, Landroid/view/accessibility/AccessibilityWindowInfo;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v2, :cond_1e

    invoke-virtual {v8, v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->getChild(I)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v4

    if-nez v4, :cond_1b

    goto :goto_d

    :cond_1b
    iget-object v5, v9, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v5}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isDebug()Z

    move-result v5

    if-eqz v5, :cond_1c

    iget-object v5, v9, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v6, "findAccessibilityNodeInfo getWindow child"

    invoke-virtual {v5, v6, v4}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1c
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->getRoot()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v4

    if-eqz v4, :cond_1d

    invoke-direct {v9, v1, v0, v4}, Lk2/a;->G(Ljava/util/HashMap;Ljava/util/ArrayList;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    :cond_1d
    :goto_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_1e
    move-object/from16 v17, v0

    :cond_1f
    move-object/from16 v1, p0

    move-object/from16 v2, v17

    move-object v3, v10

    move-object/from16 v4, v23

    move/from16 v5, v19

    move/from16 v6, v20

    invoke-direct/range {v1 .. v6}, Lk2/a;->C(Ljava/util/List;Ljava/util/List;Ljava/lang/String;ZZ)V

    if-eqz p2, :cond_28

    if-nez v18, :cond_27

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v0, v9, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isDebug()Z

    move-result v0

    const-string v3, "findAccessibilityNodeInfo getWindows"

    if-eqz v0, :cond_20

    iget-object v0, v9, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;)V

    :cond_20
    iget-object v0, v9, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getWindows()Ljava/util/List;

    move-result-object v0

    iget-object v4, v9, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v4}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isDebug()Z

    move-result v4

    if-eqz v4, :cond_21

    iget-object v4, v9, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_21
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_22
    :goto_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityWindowInfo;

    if-nez v0, :cond_23

    goto :goto_e

    :cond_23
    iget-object v5, v9, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v5}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isDebug()Z

    move-result v5

    if-eqz v5, :cond_24

    iget-object v5, v9, Lk2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v5, v3, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_24
    :try_start_1
    invoke-virtual {v0, v8}, Landroid/view/accessibility/AccessibilityWindowInfo;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_22

    if-nez p2, :cond_25

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->getType()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_25

    goto :goto_e

    :cond_25
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->getRoot()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-direct {v9, v2, v1, v0}, Lk2/a;->G(Ljava/util/HashMap;Ljava/util/ArrayList;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_e

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_e

    :cond_26
    move-object/from16 v18, v1

    :cond_27
    move-object/from16 v1, p0

    move-object/from16 v2, v18

    move-object v3, v10

    move-object/from16 v4, v23

    move/from16 v5, v19

    move/from16 v6, v20

    invoke-direct/range {v1 .. v6}, Lk2/a;->C(Ljava/util/List;Ljava/util/List;Ljava/lang/String;ZZ)V

    :cond_28
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_29

    return-object v10

    :cond_29
    move-object v0, v7

    :goto_f
    add-int/lit8 v7, v24, 0x1

    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_2a
    return-object v10
.end method
