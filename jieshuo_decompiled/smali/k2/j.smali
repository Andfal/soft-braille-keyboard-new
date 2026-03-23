.class public Lk2/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final l:[Ljava/lang/String;

.field public static final m:I

.field public static final n:I

.field public static final o:I

.field public static final p:I

.field private static q:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static r:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final s:Ljava/lang/String;


# instance fields
.field private final a:Lcom/nirenr/talkman/TalkManAccessibilityService;

.field private final b:[Ljava/lang/String;

.field private final c:[Ljava/lang/String;

.field private final d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:[[Ljava/lang/String;

.field private g:[[Ljava/lang/String;

.field private final h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 66

    const-string v0, "unknown"

    const-string v1, "up"

    const-string v2, "down"

    const-string v3, "left"

    const-string v4, "right"

    const-string v5, "left_right"

    const-string v6, "right_left"

    const-string v7, "up_down"

    const-string v8, "down_up"

    const-string v9, "left_up"

    const-string v10, "left_down"

    const-string v11, "right_up"

    const-string v12, "right_down"

    const-string v13, "up_left"

    const-string v14, "up_right"

    const-string v15, "down_left"

    const-string v16, "down_right"

    const-string v17, "double_tap"

    const-string v18, "double_tap_hold"

    const-string v19, "2_single_tap"

    const-string v20, "2_double_tap"

    const-string v21, "2_triple_tap"

    const-string v22, "3_single_tap"

    const-string v23, "3_double_tap"

    const-string v24, "3_triple_tap"

    const-string v25, "2_swipe_up"

    const-string v26, "2_swipe_down"

    const-string v27, "2_swipe_left"

    const-string v28, "2_swipe_right"

    const-string v29, "3_swipe_up"

    const-string v30, "3_swipe_down"

    const-string v31, "3_swipe_left"

    const-string v32, "3_swipe_right"

    const-string v33, "4_swipe_up"

    const-string v34, "4_swipe_down"

    const-string v35, "4_swipe_left"

    const-string v36, "4_swipe_right"

    const-string v37, "4_single_tap"

    const-string v38, "4_double_tap"

    const-string v39, "4_triple_tap"

    const-string v40, "2_double_tap_hold"

    const-string v41, "3_double_tap_hold"

    const-string v42, "4_double_tap_hold"

    const-string v43, "2_triple_tap_hold"

    const-string v44, "3_single_tap_hold"

    const-string v45, "3_triple_tap_hold"

    const-string v46, "up_long"

    const-string v47, "down_long"

    const-string v48, "left_long"

    const-string v49, "right_long"

    const-string v50, "left_right_long"

    const-string v51, "right_left_long"

    const-string v52, "up_down_long"

    const-string v53, "down_up_long"

    const-string v54, "left_up_long"

    const-string v55, "left_down_long"

    const-string v56, "right_up_long"

    const-string v57, "right_down_long"

    const-string v58, "up_left_long"

    const-string v59, "up_right_long"

    const-string v60, "down_left_long"

    const-string v61, "down_right_long"

    const-string v62, "edge_left"

    const-string v63, "edge_right"

    const-string v64, "edge_left_long"

    const-string v65, "edge_right_long"

    filled-new-array/range {v0 .. v65}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lk2/j;->l:[Ljava/lang/String;

    array-length v1, v0

    add-int/lit8 v1, v1, -0x4

    sput v1, Lk2/j;->m:I

    array-length v1, v0

    add-int/lit8 v1, v1, -0x3

    sput v1, Lk2/j;->n:I

    array-length v1, v0

    add-int/lit8 v1, v1, -0x2

    sput v1, Lk2/j;->o:I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    sput v0, Lk2/j;->p:I

    new-instance v0, Ljava/lang/String;

    const/16 v1, 0xa

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lk2/j;->s:Ljava/lang/String;

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
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x60

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lk2/j;->b:[Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lk2/j;->c:[Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lk2/j;->d:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lk2/j;->e:Ljava/util/HashMap;

    const/4 v0, 0x2

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    const-class v2, Ljava/lang/String;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Ljava/lang/String;

    iput-object v1, p0, Lk2/j;->f:[[Ljava/lang/String;

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/String;

    iput-object v0, p0, Lk2/j;->g:[[Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lk2/j;->h:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lk2/j;->i:Ljava/util/HashMap;

    iput-object p1, p0, Lk2/j;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    return-void

    nop

    :array_0
    .array-data 4
        0x60
        0x60
    .end array-data

    :array_1
    .array-data 4
        0x60
        0x60
    .end array-data
.end method

.method private a()Z
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

    sget-object v1, Lk2/j;->s:Ljava/lang/String;

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

.method public static b()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lk2/j;->q:Ljava/util/HashMap;

    return-void
.end method

.method public static c()V
    .locals 4

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f070649

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "up"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f07064c

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "up_right"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f07064a

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "up_down"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f07064b

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "up_left"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f07063d

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "down"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f07063f

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "down_right"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f070640

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "down_up"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f07063e

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "down_left"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f070641

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "left"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f070644

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "left_up"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f070642

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "left_down"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f070643

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "left_right"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f070645

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "right"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f070648

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "right_up"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f070646

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "right_down"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f070647

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "right_left"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const-string v2, "double_tap"

    const-string v3, "\u53cc\u51fb"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const-string v2, "double_tap_hold"

    const-string v3, "\u53cc\u51fb\u6309\u4f4f"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f0702a9

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "2_single_tap"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f0702a7

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "2_double_tap"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f0702ae

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "2_triple_tap"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f0702b2

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "3_single_tap"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f0702b0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "3_double_tap"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f0702b8

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "3_triple_tap"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f0702ad

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "2_swipe_up"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f0702aa

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "2_swipe_down"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f0702ab

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "2_swipe_left"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f0702ac

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "2_swipe_right"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f0702b7

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "3_swipe_up"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f0702b4

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "3_swipe_down"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f0702b5

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "3_swipe_left"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f0702b6

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "3_swipe_right"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f0702c0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "4_swipe_up"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f0702bd

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "4_swipe_down"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f0702be

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "4_swipe_left"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f0702bf

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "4_swipe_right"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f0702bc

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "4_single_tap"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f0702ba

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "4_double_tap"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f0702c1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "4_triple_tap"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f0702a8

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "2_double_tap_hold"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f0702b1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "3_double_tap_hold"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f0702bb

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "4_double_tap_hold"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f0702af

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "2_triple_tap_hold"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f0702b3

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "3_single_tap_hold"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f0702b9

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "3_triple_tap_hold"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f0702c2

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "4_triple_tap_hold"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f0706e1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "up_long"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f0706e7

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "up_right_long"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f0706d6

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "up_down_long"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f0706e0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "up_left_long"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f07021a

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "down_long"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f070224

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "down_right_long"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f07022a

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "down_up_long"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f070219

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "down_left_long"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f070333

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "left_long"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f070344

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "left_up_long"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f07032c

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "left_down_long"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f07033e

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "left_right_long"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f070589

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "right_long"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f070593

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "right_up_long"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f07057c

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "right_down_long"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f070588

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "right_left_long"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f070331

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "edge_left"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f070336

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "edge_left_long"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f070581

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "edge_right"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f07058c

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "edge_right_long"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private d(Ljava/lang/String;Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 1

    iget-object v0, p0, Lk2/j;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->doBooleanFile(Ljava/lang/String;Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result p1

    return p1
.end method

.method public static g()Ljava/util/HashMap;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lk2/j;->r:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lk2/j;->r:Ljava/util/HashMap;

    const v2, 0x7f07017a

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "up"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->r:Ljava/util/HashMap;

    const v2, 0x7f070009

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "up_right"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->r:Ljava/util/HashMap;

    const-string v2, "up_down"

    const v3, 0x7f070161

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->r:Ljava/util/HashMap;

    const v2, 0x7f070525

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "up_left"

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->r:Ljava/util/HashMap;

    const v2, 0x7f07016e

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "down"

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->r:Ljava/util/HashMap;

    const v2, 0x7f07035d

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "down_right"

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->r:Ljava/util/HashMap;

    const-string v2, "down_up"

    const v4, 0x7f070115

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->r:Ljava/util/HashMap;

    const v2, 0x7f070194

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v5, "down_left"

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->r:Ljava/util/HashMap;

    const v2, 0x7f070124

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v5, "left"

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->r:Ljava/util/HashMap;

    const-string v2, "left_up"

    const v5, 0x7f070177

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->r:Ljava/util/HashMap;

    const v2, 0x7f07009b

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v6, "left_down"

    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->r:Ljava/util/HashMap;

    const-string v2, "left_right"

    const v6, 0x7f070183

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->r:Ljava/util/HashMap;

    const v2, 0x7f070152

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v7, "right"

    invoke-virtual {v1, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->r:Ljava/util/HashMap;

    const-string v2, "right_up"

    const v7, 0x7f0700ff

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->r:Ljava/util/HashMap;

    const v2, 0x7f07034b

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v8, "right_down"

    invoke-virtual {v1, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->r:Ljava/util/HashMap;

    const v2, 0x7f070169

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v8, "right_left"

    invoke-virtual {v1, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->r:Ljava/util/HashMap;

    const-string v2, "double_tap"

    const-string v8, "\u53cc\u51fb"

    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->r:Ljava/util/HashMap;

    const-string v2, "double_tap_hold"

    const-string v8, "\u53cc\u51fb\u6309\u4f4f"

    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->r:Ljava/util/HashMap;

    const v2, 0x7f070545

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v8, "2_single_tap"

    invoke-virtual {v1, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->r:Ljava/util/HashMap;

    const v2, 0x7f07016a

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v8, "2_double_tap"

    invoke-virtual {v1, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->r:Ljava/util/HashMap;

    const v2, 0x7f07015e

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v8, "2_triple_tap"

    invoke-virtual {v1, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->r:Ljava/util/HashMap;

    const-string v2, "3_single_tap"

    const v8, 0x7f070134

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->r:Ljava/util/HashMap;

    const-string v2, "3_double_tap"

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->r:Ljava/util/HashMap;

    const-string v2, "3_triple_tap"

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->r:Ljava/util/HashMap;

    const-string v2, "2_swipe_up"

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->r:Ljava/util/HashMap;

    const-string v2, "2_swipe_down"

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->r:Ljava/util/HashMap;

    const-string v2, "2_swipe_left"

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->r:Ljava/util/HashMap;

    const-string v2, "2_swipe_right"

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->r:Ljava/util/HashMap;

    const v2, 0x7f07016b

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v7, "3_swipe_up"

    invoke-virtual {v1, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->r:Ljava/util/HashMap;

    const-string v2, "3_swipe_down"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->r:Ljava/util/HashMap;

    const-string v2, "3_swipe_left"

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->r:Ljava/util/HashMap;

    const v2, 0x7f070148

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v5, "3_swipe_right"

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->r:Ljava/util/HashMap;

    const-string v2, "4_swipe_up"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->r:Ljava/util/HashMap;

    const-string v2, "4_swipe_down"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->r:Ljava/util/HashMap;

    const v2, 0x7f07064d

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "4_swipe_left"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->r:Ljava/util/HashMap;

    const v2, 0x7f07014b

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "4_swipe_right"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->r:Ljava/util/HashMap;

    const-string v2, "4_single_tap"

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->r:Ljava/util/HashMap;

    const v2, 0x7f07014d

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "4_double_tap"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->r:Ljava/util/HashMap;

    const-string v2, "4_triple_tap"

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->r:Ljava/util/HashMap;

    const-string v2, "2_double_tap_hold"

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->r:Ljava/util/HashMap;

    const-string v2, "3_double_tap_hold"

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->r:Ljava/util/HashMap;

    const-string v2, "4_double_tap_hold"

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->r:Ljava/util/HashMap;

    const-string v2, "2_triple_tap_hold"

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->r:Ljava/util/HashMap;

    const-string v2, "3_single_tap_hold"

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->r:Ljava/util/HashMap;

    const-string v2, "3_triple_tap_hold"

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->r:Ljava/util/HashMap;

    const-string v2, "4_triple_tap_hold"

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->r:Ljava/util/HashMap;

    const-string v2, "up_long"

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->r:Ljava/util/HashMap;

    const-string v2, "up_right_long"

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->r:Ljava/util/HashMap;

    const-string v2, "up_down_long"

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->r:Ljava/util/HashMap;

    const-string v2, "up_left_long"

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->r:Ljava/util/HashMap;

    const-string v2, "down_long"

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->r:Ljava/util/HashMap;

    const-string v2, "down_right_long"

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->r:Ljava/util/HashMap;

    const-string v2, "down_up_long"

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->r:Ljava/util/HashMap;

    const-string v2, "down_left_long"

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->r:Ljava/util/HashMap;

    const-string v2, "left_long"

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->r:Ljava/util/HashMap;

    const-string v2, "left_up_long"

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->r:Ljava/util/HashMap;

    const-string v2, "left_down_long"

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->r:Ljava/util/HashMap;

    const-string v2, "left_right_long"

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->r:Ljava/util/HashMap;

    const-string v2, "right_long"

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->r:Ljava/util/HashMap;

    const-string v2, "right_up_long"

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->r:Ljava/util/HashMap;

    const-string v2, "right_down_long"

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->r:Ljava/util/HashMap;

    const-string v2, "right_left_long"

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->r:Ljava/util/HashMap;

    const v2, 0x7f07032d

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "edge_left"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->r:Ljava/util/HashMap;

    const v2, 0x7f070334

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "edge_left_long"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->r:Ljava/util/HashMap;

    const v2, 0x7f07057d

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "edge_right"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->r:Ljava/util/HashMap;

    const v2, 0x7f07058a

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "edge_right_long"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lk2/j;->r:Ljava/util/HashMap;

    return-object v0
.end method

.method public static h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const-string v5, "down_left_double_fling"

    const-string v7, "left_double_fling"

    const/4 v8, 0x5

    const-string v9, "down_double_fling"

    const/4 v10, 0x4

    const-string v11, "up_left_double_fling"

    const-string v12, "up_down_double_fling"

    const-string v13, "left_right_double_fling"

    const-string v14, "up_double_fling"

    const-string v15, "right_left_double_fling"

    const/16 v16, 0x3

    const/16 v17, 0x2

    const/16 v18, 0x1

    const/4 v4, 0x0

    const/16 v19, -0x1

    sparse-switch v3, :sswitch_data_0

    :goto_0
    const/4 v3, -0x1

    goto/16 :goto_1

    :sswitch_0
    const-string v3, "right_down_double_fling"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/16 v3, 0xf

    goto/16 :goto_1

    :sswitch_1
    const-string v3, "up_right_double_fling"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    const/16 v3, 0xe

    goto/16 :goto_1

    :sswitch_2
    const-string v3, "right_up_double_fling"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    const/16 v3, 0xd

    goto/16 :goto_1

    :sswitch_3
    const-string v3, "left_up_double_fling"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    const/16 v3, 0xc

    goto/16 :goto_1

    :sswitch_4
    const-string v3, "left_down_double_fling"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_0

    :cond_4
    const/16 v3, 0xb

    goto/16 :goto_1

    :sswitch_5
    const-string v3, "down_up_double_fling"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_0

    :cond_5
    const/16 v3, 0xa

    goto/16 :goto_1

    :sswitch_6
    const-string v3, "down_right_double_fling"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_0

    :cond_6
    const/16 v3, 0x9

    goto/16 :goto_1

    :sswitch_7
    const-string v3, "right_double_fling"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_0

    :cond_7
    const/16 v3, 0x8

    goto :goto_1

    :sswitch_8
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_0

    :cond_8
    const/4 v3, 0x7

    goto :goto_1

    :sswitch_9
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    goto :goto_0

    :cond_9
    const/4 v3, 0x6

    goto :goto_1

    :sswitch_a
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    goto/16 :goto_0

    :cond_a
    const/4 v3, 0x5

    goto :goto_1

    :sswitch_b
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    goto/16 :goto_0

    :cond_b
    const/4 v3, 0x4

    goto :goto_1

    :sswitch_c
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    goto/16 :goto_0

    :cond_c
    const/4 v3, 0x3

    goto :goto_1

    :sswitch_d
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    goto/16 :goto_0

    :cond_d
    const/4 v3, 0x2

    goto :goto_1

    :sswitch_e
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    goto/16 :goto_0

    :cond_e
    const/4 v3, 0x1

    goto :goto_1

    :sswitch_f
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    goto/16 :goto_0

    :cond_f
    const/4 v3, 0x0

    :goto_1
    const v6, 0x7f070134

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    const v3, 0x7f070866

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v4}, Lk2/b0;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_10

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_10
    :pswitch_1
    const v3, 0x7f070744

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v4}, Lk2/b0;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_11

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_11
    :pswitch_2
    const v3, 0x7f070791

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v4}, Lk2/b0;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_12

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_12
    :pswitch_3
    const v3, 0x7f0707fe

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v4}, Lk2/b0;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_13

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_13
    :pswitch_4
    const v3, 0x7f070798

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v4}, Lk2/b0;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_14

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_14
    :pswitch_5
    const v3, 0x7f070802

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v4}, Lk2/b0;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_15

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_15
    :pswitch_6
    const v3, 0x7f070868

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v4}, Lk2/b0;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_16

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_16
    :pswitch_7
    const v3, 0x7f07074a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v4}, Lk2/b0;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_17

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_17
    :pswitch_8
    const v3, 0x7f07079f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v4}, Lk2/b0;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_18

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_18
    :pswitch_9
    const v3, 0x7f070793

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v4}, Lk2/b0;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_19

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_19
    :pswitch_a
    const v3, 0x7f070804

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v4}, Lk2/b0;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_1a

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1a
    :pswitch_b
    const v3, 0x7f070800

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v4}, Lk2/b0;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_1b

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1b
    :pswitch_c
    const v3, 0x7f07086a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v4}, Lk2/b0;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_1c

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1c
    :pswitch_d
    const v3, 0x7f070872

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v4}, Lk2/b0;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_1d

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1d
    :pswitch_e
    const v3, 0x7f070746

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v4}, Lk2/b0;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_1e

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1e
    :pswitch_f
    const v3, 0x7f070748

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v4}, Lk2/b0;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_1f

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1f
    :goto_2
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_1

    :goto_3
    const/4 v0, -0x1

    goto/16 :goto_4

    :sswitch_10
    const-string v3, "right_down_double_fling"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    goto :goto_3

    :cond_20
    const/16 v0, 0xf

    goto/16 :goto_4

    :sswitch_11
    const-string v3, "up_right_double_fling"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    goto :goto_3

    :cond_21
    const/16 v0, 0xe

    goto/16 :goto_4

    :sswitch_12
    const-string v3, "right_up_double_fling"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    goto :goto_3

    :cond_22
    const/16 v0, 0xd

    goto/16 :goto_4

    :sswitch_13
    const-string v3, "left_up_double_fling"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    goto :goto_3

    :cond_23
    const/16 v0, 0xc

    goto/16 :goto_4

    :sswitch_14
    const-string v3, "left_down_double_fling"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    goto :goto_3

    :cond_24
    const/16 v0, 0xb

    goto/16 :goto_4

    :sswitch_15
    const-string v3, "down_up_double_fling"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    goto :goto_3

    :cond_25
    const/16 v0, 0xa

    goto/16 :goto_4

    :sswitch_16
    const-string v3, "down_right_double_fling"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    goto :goto_3

    :cond_26
    const/16 v0, 0x9

    goto/16 :goto_4

    :sswitch_17
    const-string v3, "right_double_fling"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    goto :goto_3

    :cond_27
    const/16 v0, 0x8

    goto :goto_4

    :sswitch_18
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    goto :goto_3

    :cond_28
    const/4 v0, 0x7

    goto :goto_4

    :sswitch_19
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    goto :goto_3

    :cond_29
    const/4 v0, 0x6

    goto :goto_4

    :sswitch_1a
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    goto/16 :goto_3

    :cond_2a
    const/4 v0, 0x5

    goto :goto_4

    :sswitch_1b
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    goto/16 :goto_3

    :cond_2b
    const/4 v0, 0x4

    goto :goto_4

    :sswitch_1c
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    goto/16 :goto_3

    :cond_2c
    const/4 v0, 0x3

    goto :goto_4

    :sswitch_1d
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    goto/16 :goto_3

    :cond_2d
    const/4 v0, 0x2

    goto :goto_4

    :sswitch_1e
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    goto/16 :goto_3

    :cond_2e
    const/4 v0, 0x1

    goto :goto_4

    :sswitch_1f
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    goto/16 :goto_3

    :cond_2f
    const/4 v0, 0x0

    :goto_4
    const-string v3, "right"

    const-string v5, "left"

    const-string v7, "down"

    const-string v8, "up"

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_26

    :pswitch_10
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_2

    :goto_5
    const/16 v16, -0x1

    goto :goto_6

    :sswitch_20
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    goto :goto_5

    :sswitch_21
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    goto :goto_5

    :cond_30
    const/16 v16, 0x2

    goto :goto_6

    :sswitch_22
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    goto :goto_5

    :cond_31
    const/16 v16, 0x1

    goto :goto_6

    :sswitch_23
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    goto :goto_5

    :cond_32
    const/16 v16, 0x0

    :cond_33
    :goto_6
    packed-switch v16, :pswitch_data_2

    goto/16 :goto_26

    :pswitch_11
    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f070579

    :goto_7
    invoke-static {v2, v1, v0}, Lk2/b0;->h(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_12
    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f070578

    goto :goto_7

    :pswitch_13
    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f070577

    goto :goto_7

    :pswitch_14
    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f07057b

    goto :goto_7

    :pswitch_15
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_3

    :goto_8
    const/16 v16, -0x1

    goto :goto_9

    :sswitch_24
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    goto :goto_8

    :sswitch_25
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    goto :goto_8

    :cond_34
    const/16 v16, 0x2

    goto :goto_9

    :sswitch_26
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    goto :goto_8

    :cond_35
    const/16 v16, 0x1

    goto :goto_9

    :sswitch_27
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    goto :goto_8

    :cond_36
    const/16 v16, 0x0

    :cond_37
    :goto_9
    packed-switch v16, :pswitch_data_3

    goto/16 :goto_26

    :pswitch_16
    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0706e4

    goto :goto_7

    :pswitch_17
    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0706e3

    goto :goto_7

    :pswitch_18
    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0706e2

    goto :goto_7

    :pswitch_19
    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0706e6

    goto :goto_7

    :pswitch_1a
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_4

    :goto_a
    const/16 v16, -0x1

    goto :goto_b

    :sswitch_28
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    goto :goto_a

    :sswitch_29
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    goto :goto_a

    :cond_38
    const/16 v16, 0x2

    goto :goto_b

    :sswitch_2a
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    goto :goto_a

    :cond_39
    const/16 v16, 0x1

    goto :goto_b

    :sswitch_2b
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    goto :goto_a

    :cond_3a
    const/16 v16, 0x0

    :cond_3b
    :goto_b
    packed-switch v16, :pswitch_data_4

    goto/16 :goto_26

    :pswitch_1b
    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f070590

    goto/16 :goto_7

    :pswitch_1c
    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f07058f

    goto/16 :goto_7

    :pswitch_1d
    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f07058e

    goto/16 :goto_7

    :pswitch_1e
    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f070592

    goto/16 :goto_7

    :pswitch_1f
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_5

    :goto_c
    const/16 v16, -0x1

    goto :goto_d

    :sswitch_2c
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    goto :goto_c

    :sswitch_2d
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3c

    goto :goto_c

    :cond_3c
    const/16 v16, 0x2

    goto :goto_d

    :sswitch_2e
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    goto :goto_c

    :cond_3d
    const/16 v16, 0x1

    goto :goto_d

    :sswitch_2f
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3e

    goto :goto_c

    :cond_3e
    const/16 v16, 0x0

    :cond_3f
    :goto_d
    packed-switch v16, :pswitch_data_5

    goto/16 :goto_26

    :pswitch_20
    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f070341

    goto/16 :goto_7

    :pswitch_21
    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f070340

    goto/16 :goto_7

    :pswitch_22
    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f07033f

    goto/16 :goto_7

    :pswitch_23
    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f070343

    goto/16 :goto_7

    :pswitch_24
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_6

    :goto_e
    const/16 v16, -0x1

    goto :goto_f

    :sswitch_30
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_43

    goto :goto_e

    :sswitch_31
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    goto :goto_e

    :cond_40
    const/16 v16, 0x2

    goto :goto_f

    :sswitch_32
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    goto :goto_e

    :cond_41
    const/16 v16, 0x1

    goto :goto_f

    :sswitch_33
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    goto :goto_e

    :cond_42
    const/16 v16, 0x0

    :cond_43
    :goto_f
    packed-switch v16, :pswitch_data_6

    goto/16 :goto_26

    :pswitch_25
    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f070329

    goto/16 :goto_7

    :pswitch_26
    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f070328

    goto/16 :goto_7

    :pswitch_27
    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f070327

    goto/16 :goto_7

    :pswitch_28
    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f07032b

    goto/16 :goto_7

    :pswitch_29
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_7

    :goto_10
    const/16 v16, -0x1

    goto :goto_11

    :sswitch_34
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_47

    goto :goto_10

    :sswitch_35
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_44

    goto :goto_10

    :cond_44
    const/16 v16, 0x2

    goto :goto_11

    :sswitch_36
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_45

    goto :goto_10

    :cond_45
    const/16 v16, 0x1

    goto :goto_11

    :sswitch_37
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_46

    goto :goto_10

    :cond_46
    const/16 v16, 0x0

    :cond_47
    :goto_11
    packed-switch v16, :pswitch_data_7

    goto/16 :goto_26

    :pswitch_2a
    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f070227

    goto/16 :goto_7

    :pswitch_2b
    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f070226

    goto/16 :goto_7

    :pswitch_2c
    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f070225

    goto/16 :goto_7

    :pswitch_2d
    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f070229

    goto/16 :goto_7

    :pswitch_2e
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_8

    :goto_12
    const/16 v16, -0x1

    goto :goto_13

    :sswitch_38
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    goto :goto_12

    :sswitch_39
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_48

    goto :goto_12

    :cond_48
    const/16 v16, 0x2

    goto :goto_13

    :sswitch_3a
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_49

    goto :goto_12

    :cond_49
    const/16 v16, 0x1

    goto :goto_13

    :sswitch_3b
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4a

    goto :goto_12

    :cond_4a
    const/16 v16, 0x0

    :cond_4b
    :goto_13
    packed-switch v16, :pswitch_data_8

    goto/16 :goto_26

    :pswitch_2f
    const v0, 0x7f070220

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f07021f

    goto/16 :goto_7

    :pswitch_30
    const v0, 0x7f07021e

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f07021d

    goto/16 :goto_7

    :pswitch_31
    const v0, 0x7f07021c

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f07021b

    goto/16 :goto_7

    :pswitch_32
    const v0, 0x7f070223

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f070222

    goto/16 :goto_7

    :pswitch_33
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_9

    :goto_14
    const/16 v16, -0x1

    goto :goto_15

    :sswitch_3c
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4f

    goto :goto_14

    :sswitch_3d
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4c

    goto :goto_14

    :cond_4c
    const/16 v16, 0x2

    goto :goto_15

    :sswitch_3e
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4d

    goto :goto_14

    :cond_4d
    const/16 v16, 0x1

    goto :goto_15

    :sswitch_3f
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4e

    goto :goto_14

    :cond_4e
    const/16 v16, 0x0

    :cond_4f
    :goto_15
    packed-switch v16, :pswitch_data_9

    goto/16 :goto_26

    :pswitch_34
    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f070574

    goto/16 :goto_7

    :pswitch_35
    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f070573

    goto/16 :goto_7

    :pswitch_36
    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f070572

    goto/16 :goto_7

    :pswitch_37
    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f070576

    goto/16 :goto_7

    :pswitch_38
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_a

    :goto_16
    const/16 v16, -0x1

    goto :goto_17

    :sswitch_40
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_53

    goto :goto_16

    :sswitch_41
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_50

    goto :goto_16

    :cond_50
    const/16 v16, 0x2

    goto :goto_17

    :sswitch_42
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_51

    goto :goto_16

    :cond_51
    const/16 v16, 0x1

    goto :goto_17

    :sswitch_43
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_52

    goto :goto_16

    :cond_52
    const/16 v16, 0x0

    :cond_53
    :goto_17
    packed-switch v16, :pswitch_data_a

    goto/16 :goto_26

    :pswitch_39
    const v0, 0x7f070215

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f070214

    goto/16 :goto_7

    :pswitch_3a
    const v0, 0x7f070213

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f070212

    goto/16 :goto_7

    :pswitch_3b
    const v0, 0x7f070211

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f070210

    goto/16 :goto_7

    :pswitch_3c
    const v0, 0x7f070218

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f070217

    goto/16 :goto_7

    :pswitch_3d
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_b

    :goto_18
    const/16 v16, -0x1

    goto :goto_19

    :sswitch_44
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_57

    goto :goto_18

    :sswitch_45
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_54

    goto :goto_18

    :cond_54
    const/16 v16, 0x2

    goto :goto_19

    :sswitch_46
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_55

    goto :goto_18

    :cond_55
    const/16 v16, 0x1

    goto :goto_19

    :sswitch_47
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_56

    goto :goto_18

    :cond_56
    const/16 v16, 0x0

    :cond_57
    :goto_19
    packed-switch v16, :pswitch_data_b

    goto/16 :goto_26

    :pswitch_3e
    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f070324

    goto/16 :goto_7

    :pswitch_3f
    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f070323

    goto/16 :goto_7

    :pswitch_40
    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f070322

    goto/16 :goto_7

    :pswitch_41
    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f070326

    goto/16 :goto_7

    :pswitch_42
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_c

    :goto_1a
    const/16 v16, -0x1

    goto :goto_1b

    :sswitch_48
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5b

    goto :goto_1a

    :sswitch_49
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_58

    goto :goto_1a

    :cond_58
    const/16 v16, 0x2

    goto :goto_1b

    :sswitch_4a
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_59

    goto :goto_1a

    :cond_59
    const/16 v16, 0x1

    goto :goto_1b

    :sswitch_4b
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5a

    goto :goto_1a

    :cond_5a
    const/16 v16, 0x0

    :cond_5b
    :goto_1b
    packed-switch v16, :pswitch_data_c

    goto/16 :goto_26

    :pswitch_43
    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f07020d

    goto/16 :goto_7

    :pswitch_44
    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f07020c

    goto/16 :goto_7

    :pswitch_45
    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f07020b

    goto/16 :goto_7

    :pswitch_46
    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f07020f

    goto/16 :goto_7

    :pswitch_47
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_d

    :goto_1c
    const/16 v16, -0x1

    goto :goto_1d

    :sswitch_4c
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5f

    goto :goto_1c

    :sswitch_4d
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5c

    goto :goto_1c

    :cond_5c
    const/16 v16, 0x2

    goto :goto_1d

    :sswitch_4e
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5d

    goto :goto_1c

    :cond_5d
    const/16 v16, 0x1

    goto :goto_1d

    :sswitch_4f
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5e

    goto :goto_1c

    :cond_5e
    const/16 v16, 0x0

    :cond_5f
    :goto_1d
    packed-switch v16, :pswitch_data_d

    goto/16 :goto_26

    :pswitch_48
    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0706dd

    goto/16 :goto_7

    :pswitch_49
    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0706dc

    goto/16 :goto_7

    :pswitch_4a
    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0706db

    goto/16 :goto_7

    :pswitch_4b
    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0706df

    goto/16 :goto_7

    :pswitch_4c
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_e

    :goto_1e
    const/16 v16, -0x1

    goto :goto_1f

    :sswitch_50
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_63

    goto :goto_1e

    :sswitch_51
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_60

    goto :goto_1e

    :cond_60
    const/16 v16, 0x2

    goto :goto_1f

    :sswitch_52
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_61

    goto :goto_1e

    :cond_61
    const/16 v16, 0x1

    goto :goto_1f

    :sswitch_53
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_62

    goto :goto_1e

    :cond_62
    const/16 v16, 0x0

    :cond_63
    :goto_1f
    packed-switch v16, :pswitch_data_e

    goto/16 :goto_26

    :pswitch_4d
    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0706d3

    goto/16 :goto_7

    :pswitch_4e
    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0706d2

    goto/16 :goto_7

    :pswitch_4f
    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0706d1

    goto/16 :goto_7

    :pswitch_50
    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0706d5

    goto/16 :goto_7

    :pswitch_51
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_f

    :goto_20
    const/16 v16, -0x1

    goto :goto_21

    :sswitch_54
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_67

    goto :goto_20

    :sswitch_55
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_64

    goto :goto_20

    :cond_64
    const/16 v16, 0x2

    goto :goto_21

    :sswitch_56
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_65

    goto :goto_20

    :cond_65
    const/16 v16, 0x1

    goto :goto_21

    :sswitch_57
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_66

    goto :goto_20

    :cond_66
    const/16 v16, 0x0

    :cond_67
    :goto_21
    packed-switch v16, :pswitch_data_f

    goto/16 :goto_26

    :pswitch_52
    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f07033a

    goto/16 :goto_7

    :pswitch_53
    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f070339

    goto/16 :goto_7

    :pswitch_54
    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f070338

    goto/16 :goto_7

    :pswitch_55
    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f07033c

    goto/16 :goto_7

    :pswitch_56
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_10

    :goto_22
    const/16 v16, -0x1

    goto :goto_23

    :sswitch_58
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6b

    goto :goto_22

    :sswitch_59
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_68

    goto :goto_22

    :cond_68
    const/16 v16, 0x2

    goto :goto_23

    :sswitch_5a
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_69

    goto :goto_22

    :cond_69
    const/16 v16, 0x1

    goto :goto_23

    :sswitch_5b
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6a

    goto :goto_22

    :cond_6a
    const/16 v16, 0x0

    :cond_6b
    :goto_23
    packed-switch v16, :pswitch_data_10

    goto :goto_26

    :pswitch_57
    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0706ce

    goto/16 :goto_7

    :pswitch_58
    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0706cd

    goto/16 :goto_7

    :pswitch_59
    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0706cc

    goto/16 :goto_7

    :pswitch_5a
    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0706d0

    goto/16 :goto_7

    :pswitch_5b
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_11

    :goto_24
    const/16 v16, -0x1

    goto :goto_25

    :sswitch_5c
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6f

    goto :goto_24

    :sswitch_5d
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6c

    goto :goto_24

    :cond_6c
    const/16 v16, 0x2

    goto :goto_25

    :sswitch_5e
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6d

    goto :goto_24

    :cond_6d
    const/16 v16, 0x1

    goto :goto_25

    :sswitch_5f
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6e

    goto :goto_24

    :cond_6e
    const/16 v16, 0x0

    :cond_6f
    :goto_25
    packed-switch v16, :pswitch_data_11

    :goto_26
    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_5c
    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f070585

    goto/16 :goto_7

    :pswitch_5d
    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f070584

    goto/16 :goto_7

    :pswitch_5e
    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f070583

    goto/16 :goto_7

    :pswitch_5f
    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f070587

    goto/16 :goto_7

    nop

    :sswitch_data_0
    .sparse-switch
        -0x799bcabd -> :sswitch_f
        -0x48fec56e -> :sswitch_e
        -0x45287c17 -> :sswitch_d
        -0x3ec4f0b9 -> :sswitch_c
        -0x3587fffe -> :sswitch_b
        -0x8699815 -> :sswitch_a
        0xd358a6 -> :sswitch_9
        0xf64249 -> :sswitch_8
        0xea700b1 -> :sswitch_7
        0x12e14b6e -> :sswitch_6
        0x1d0830f5 -> :sswitch_5
        0x1e2c9db3 -> :sswitch_4
        0x27ba425a -> :sswitch_3
        0x316a9a6f -> :sswitch_2
        0x799744d5 -> :sswitch_1
        0x7d274488 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_6
        :pswitch_c
        :pswitch_1
        :pswitch_2
        :pswitch_e
        :pswitch_3
        :pswitch_f
        :pswitch_7
        :pswitch_9
        :pswitch_8
        :pswitch_a
        :pswitch_d
        :pswitch_b
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x799bcabd -> :sswitch_1f
        -0x48fec56e -> :sswitch_1e
        -0x45287c17 -> :sswitch_1d
        -0x3ec4f0b9 -> :sswitch_1c
        -0x3587fffe -> :sswitch_1b
        -0x8699815 -> :sswitch_1a
        0xd358a6 -> :sswitch_19
        0xf64249 -> :sswitch_18
        0xea700b1 -> :sswitch_17
        0x12e14b6e -> :sswitch_16
        0x1d0830f5 -> :sswitch_15
        0x1e2c9db3 -> :sswitch_14
        0x27ba425a -> :sswitch_13
        0x316a9a6f -> :sswitch_12
        0x799744d5 -> :sswitch_11
        0x7d274488 -> :sswitch_10
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5b
        :pswitch_56
        :pswitch_51
        :pswitch_4c
        :pswitch_47
        :pswitch_42
        :pswitch_3d
        :pswitch_38
        :pswitch_33
        :pswitch_2e
        :pswitch_29
        :pswitch_24
        :pswitch_1f
        :pswitch_1a
        :pswitch_15
        :pswitch_10
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        0xe9b -> :sswitch_23
        0x2f24a2 -> :sswitch_22
        0x32a007 -> :sswitch_21
        0x677c21c -> :sswitch_20
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
    .end packed-switch

    :sswitch_data_3
    .sparse-switch
        0xe9b -> :sswitch_27
        0x2f24a2 -> :sswitch_26
        0x32a007 -> :sswitch_25
        0x677c21c -> :sswitch_24
    .end sparse-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
    .end packed-switch

    :sswitch_data_4
    .sparse-switch
        0xe9b -> :sswitch_2b
        0x2f24a2 -> :sswitch_2a
        0x32a007 -> :sswitch_29
        0x677c21c -> :sswitch_28
    .end sparse-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
    .end packed-switch

    :sswitch_data_5
    .sparse-switch
        0xe9b -> :sswitch_2f
        0x2f24a2 -> :sswitch_2e
        0x32a007 -> :sswitch_2d
        0x677c21c -> :sswitch_2c
    .end sparse-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
    .end packed-switch

    :sswitch_data_6
    .sparse-switch
        0xe9b -> :sswitch_33
        0x2f24a2 -> :sswitch_32
        0x32a007 -> :sswitch_31
        0x677c21c -> :sswitch_30
    .end sparse-switch

    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
    .end packed-switch

    :sswitch_data_7
    .sparse-switch
        0xe9b -> :sswitch_37
        0x2f24a2 -> :sswitch_36
        0x32a007 -> :sswitch_35
        0x677c21c -> :sswitch_34
    .end sparse-switch

    :pswitch_data_7
    .packed-switch 0x0
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
    .end packed-switch

    :sswitch_data_8
    .sparse-switch
        0xe9b -> :sswitch_3b
        0x2f24a2 -> :sswitch_3a
        0x32a007 -> :sswitch_39
        0x677c21c -> :sswitch_38
    .end sparse-switch

    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
    .end packed-switch

    :sswitch_data_9
    .sparse-switch
        0xe9b -> :sswitch_3f
        0x2f24a2 -> :sswitch_3e
        0x32a007 -> :sswitch_3d
        0x677c21c -> :sswitch_3c
    .end sparse-switch

    :pswitch_data_9
    .packed-switch 0x0
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
    .end packed-switch

    :sswitch_data_a
    .sparse-switch
        0xe9b -> :sswitch_43
        0x2f24a2 -> :sswitch_42
        0x32a007 -> :sswitch_41
        0x677c21c -> :sswitch_40
    .end sparse-switch

    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
    .end packed-switch

    :sswitch_data_b
    .sparse-switch
        0xe9b -> :sswitch_47
        0x2f24a2 -> :sswitch_46
        0x32a007 -> :sswitch_45
        0x677c21c -> :sswitch_44
    .end sparse-switch

    :pswitch_data_b
    .packed-switch 0x0
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
    .end packed-switch

    :sswitch_data_c
    .sparse-switch
        0xe9b -> :sswitch_4b
        0x2f24a2 -> :sswitch_4a
        0x32a007 -> :sswitch_49
        0x677c21c -> :sswitch_48
    .end sparse-switch

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
    .end packed-switch

    :sswitch_data_d
    .sparse-switch
        0xe9b -> :sswitch_4f
        0x2f24a2 -> :sswitch_4e
        0x32a007 -> :sswitch_4d
        0x677c21c -> :sswitch_4c
    .end sparse-switch

    :pswitch_data_d
    .packed-switch 0x0
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
    .end packed-switch

    :sswitch_data_e
    .sparse-switch
        0xe9b -> :sswitch_53
        0x2f24a2 -> :sswitch_52
        0x32a007 -> :sswitch_51
        0x677c21c -> :sswitch_50
    .end sparse-switch

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
    .end packed-switch

    :sswitch_data_f
    .sparse-switch
        0xe9b -> :sswitch_57
        0x2f24a2 -> :sswitch_56
        0x32a007 -> :sswitch_55
        0x677c21c -> :sswitch_54
    .end sparse-switch

    :pswitch_data_f
    .packed-switch 0x0
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
    .end packed-switch

    :sswitch_data_10
    .sparse-switch
        0xe9b -> :sswitch_5b
        0x2f24a2 -> :sswitch_5a
        0x32a007 -> :sswitch_59
        0x677c21c -> :sswitch_58
    .end sparse-switch

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
    .end packed-switch

    :sswitch_data_11
    .sparse-switch
        0xe9b -> :sswitch_5f
        0x2f24a2 -> :sswitch_5e
        0x32a007 -> :sswitch_5d
        0x677c21c -> :sswitch_5c
    .end sparse-switch

    :pswitch_data_11
    .packed-switch 0x0
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
    .end packed-switch
.end method

.method public static j()Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lk2/j;->q:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f070649

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "up"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f07064c

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "up_right"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f07064a

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "up_down"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f07064b

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "up_left"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f07063d

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "down"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f07063f

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "down_right"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f070640

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "down_up"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f07063e

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "down_left"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f070641

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "left"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f070644

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "left_up"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f070642

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "left_down"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f070643

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "left_right"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f070645

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "right"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f070648

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "right_up"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f070646

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "right_down"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f070647

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "right_left"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const-string v2, "double_tap"

    const-string v3, "\u53cc\u51fb"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const-string v2, "double_tap_hold"

    const-string v3, "\u53cc\u51fb\u6309\u4f4f"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f0702a9

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "2_single_tap"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f0702a7

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "2_double_tap"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f0702ae

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "2_triple_tap"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f0702b2

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "3_single_tap"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f0702b0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "3_double_tap"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f0702b8

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "3_triple_tap"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f0702ad

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "2_swipe_up"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f0702aa

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "2_swipe_down"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f0702ab

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "2_swipe_left"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f0702ac

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "2_swipe_right"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f0702b7

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "3_swipe_up"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f0702b4

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "3_swipe_down"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f0702b5

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "3_swipe_left"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f0702b6

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "3_swipe_right"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f0702c0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "4_swipe_up"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f0702bd

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "4_swipe_down"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f0702be

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "4_swipe_left"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f0702bf

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "4_swipe_right"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f0702bc

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "4_single_tap"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f0702ba

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "4_double_tap"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f0702c1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "4_triple_tap"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f0702a8

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "2_double_tap_hold"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f0702b1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "3_double_tap_hold"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f0702bb

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "4_double_tap_hold"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f0702af

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "2_triple_tap_hold"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f0702b3

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "3_single_tap_hold"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f0702b9

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "3_triple_tap_hold"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f0702c2

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "4_triple_tap_hold"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f0706e1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "up_long"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f0706e7

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "up_right_long"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f0706d6

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "up_down_long"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f0706e0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "up_left_long"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f07021a

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "down_long"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f070224

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "down_right_long"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f07022a

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "down_up_long"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f070219

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "down_left_long"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f070333

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "left_long"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f070344

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "left_up_long"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f07032c

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "left_down_long"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f07033e

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "left_right_long"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f070589

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "right_long"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f070593

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "right_up_long"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f07057c

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "right_down_long"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f070588

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "right_left_long"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f070331

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "edge_left"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f070336

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "edge_left_long"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f070581

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "edge_right"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lk2/j;->q:Ljava/util/HashMap;

    const v2, 0x7f07058c

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "edge_right_long"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lk2/j;->q:Ljava/util/HashMap;

    return-object v0
.end method

.method private m(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    const-string v3, "false"

    const-string v4, "true"

    const-string v5, "enabled"

    iget-object v6, v1, Lk2/j;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "loadGesturePackage"

    invoke-virtual {v6, v8, v7}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    const/16 v6, 0x60

    new-array v7, v6, [Ljava/lang/String;

    new-array v6, v6, [Ljava/lang/String;

    const/4 v8, 0x2

    new-array v9, v8, [I

    fill-array-data v9, :array_0

    const-class v10, Ljava/lang/String;

    invoke-static {v10, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[Ljava/lang/String;

    new-array v8, v8, [I

    fill-array-data v8, :array_1

    invoke-static {v10, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[Ljava/lang/String;

    iget-object v10, v1, Lk2/j;->d:Ljava/util/HashMap;

    invoke-virtual {v10, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v10, v1, Lk2/j;->e:Ljava/util/HashMap;

    invoke-virtual {v10, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v1, Lk2/j;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v12, 0x7f0701f3

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :try_start_0
    new-instance v12, Lorg/json/JSONObject;

    new-instance v0, Ljava/lang/String;

    new-instance v13, Ljava/io/FileInputStream;

    iget-object v14, v1, Lk2/j;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v15, "config"

    invoke-virtual {v14, v10, v15}, Lcom/androlua/LuaService;->getLuaExtPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v13}, Lcom/androlua/LuaUtil;->readAll(Ljava/io/InputStream;)[B

    move-result-object v13

    invoke-direct {v0, v13}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v12, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    const/4 v13, 0x0

    :goto_0
    sget-object v0, Lk2/j;->l:[Ljava/lang/String;

    array-length v14, v0

    if-ge v13, v14, :cond_c

    aget-object v0, v0, v13

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    const-string v11, "/"

    if-eqz v14, :cond_2

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_0

    aput-object v14, v6, v13

    goto :goto_1

    :cond_0
    iget-object v15, v1, Lk2/j;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v15, v10, v14}, Lcom/androlua/LuaService;->getLuaExtPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v18, v3

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    aput-object v15, v7, v13

    goto :goto_2

    :cond_1
    iget-object v3, v1, Lk2/j;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v15, 0x7f070134

    invoke-virtual {v3, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x2d

    if-gt v13, v3, :cond_3

    aput-object v14, v6, v13

    goto :goto_2

    :cond_2
    :goto_1
    move-object/from16 v18, v3

    :cond_3
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_double_fling"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v14, 0x5f

    if-eqz v0, :cond_9

    aget-object v0, v9, v13

    aput-object v4, v0, v14

    iget-object v0, v1, Lk2/j;->h:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lk2/j;->i:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_3
    const/16 v14, 0x2d

    if-ge v0, v14, :cond_a

    sget-object v14, Lk2/j;->l:[Ljava/lang/String;

    aget-object v14, v14, v0

    invoke-virtual {v3, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-virtual {v3, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_4

    aget-object v15, v8, v13

    aput-object v14, v15, v0

    goto :goto_4

    :cond_4
    iget-object v15, v1, Lk2/j;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v15, v10, v14}, Lcom/androlua/LuaService;->getLuaExtPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v19, v4

    :try_start_2
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_5

    aget-object v4, v9, v13

    aput-object v15, v4, v0

    goto :goto_5

    :cond_5
    iget-object v4, v1, Lk2/j;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v15, 0x7f070134

    invoke-virtual {v4, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/16 v4, 0x2d

    if-gt v0, v4, :cond_8

    aget-object v16, v8, v13

    aput-object v14, v16, v0

    goto :goto_6

    :cond_6
    const/16 v4, 0x2d

    goto :goto_6

    :cond_7
    :goto_4
    move-object/from16 v19, v4

    :goto_5
    const/16 v4, 0x2d

    const v15, 0x7f070134

    :cond_8
    :goto_6
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v4, v19

    goto :goto_3

    :cond_9
    move-object/from16 v19, v4

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object/from16 v3, v18

    :try_start_3
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    aget-object v0, v9, v13

    aput-object v3, v0, v14

    iget-object v0, v1, Lk2/j;->h:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_9

    :catch_0
    move-exception v0

    goto :goto_8

    :catch_1
    move-exception v0

    goto :goto_7

    :catch_2
    move-exception v0

    move-object/from16 v19, v4

    :goto_7
    move-object/from16 v3, v18

    :goto_8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_9

    :cond_a
    move-object/from16 v19, v4

    move-object/from16 v3, v18

    :cond_b
    :goto_9
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v4, v19

    goto/16 :goto_0

    :cond_c
    const/4 v0, 0x1

    return v0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v2, 0x0

    return v2

    nop

    :array_0
    .array-data 4
        0x60
        0x60
    .end array-data

    :array_1
    .array-data 4
        0x60
        0x60
    .end array-data
.end method


# virtual methods
.method public e(IILandroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 6

    sget-object v0, Lk2/j;->l:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x0

    if-lt p2, v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lk2/j;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "onGestureFling 01"

    invoke-virtual {v0, v3, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lk2/j;->a()Z

    move-result v0

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-nez v0, :cond_2

    if-eq p2, v3, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    if-eq p2, v2, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    iget-object v0, p0, Lk2/j;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, p3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getAppName(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lk2/j;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v5, "onGestureFling 02"

    invoke-virtual {v4, v5, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v4, p0, Lk2/j;->i:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[Ljava/lang/String;

    if-eqz v4, :cond_3

    aget-object v4, v4, p1

    if-eqz v4, :cond_3

    aget-object v4, v4, p2

    if-eqz v4, :cond_3

    iget-object p1, p0, Lk2/j;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p1, v4, p3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->execute(Ljava/lang/String;Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result p1

    return p1

    :cond_3
    iget-object v4, p0, Lk2/j;->h:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/String;

    if-eqz v0, :cond_4

    aget-object v4, v0, p2

    if-eqz v4, :cond_4

    aget-object v0, v0, p1

    aget-object v0, v0, p2

    if-eqz v0, :cond_4

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-direct {p0, v0, p3}, Lk2/j;->d(Ljava/lang/String;Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v3

    :cond_4
    :goto_0
    iget-object v0, p0, Lk2/j;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iget-object v4, p0, Lk2/j;->g:[[Ljava/lang/String;

    aget-object v4, v4, p1

    aget-object v4, v4, p2

    const-string v5, "onGestureFling 03"

    invoke-virtual {v0, v5, v4}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lk2/j;->g:[[Ljava/lang/String;

    aget-object v0, v0, p1

    aget-object v0, v0, p2

    if-eqz v0, :cond_7

    iget-object p1, p0, Lk2/j;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p1, v0, p3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->execute(Ljava/lang/String;Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result p1

    if-nez p1, :cond_5

    if-le p2, v2, :cond_6

    :cond_5
    const/4 v1, 0x1

    :cond_6
    return v1

    :cond_7
    iget-object v0, p0, Lk2/j;->f:[[Ljava/lang/String;

    aget-object v2, v0, p2

    if-nez v2, :cond_8

    return v1

    :cond_8
    iget-object v2, p0, Lk2/j;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    aget-object v0, v0, p1

    aget-object v0, v0, p2

    const-string v3, "onGestureFling 04"

    invoke-virtual {v2, v3, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lk2/j;->f:[[Ljava/lang/String;

    aget-object p1, v0, p1

    aget-object p1, p1, p2

    if-nez p1, :cond_9

    return v1

    :cond_9
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {p0, p1, p3}, Lk2/j;->d(Ljava/lang/String;Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result p1

    return p1

    :cond_a
    iget-object p1, p0, Lk2/j;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string p3, "onGesture 05 false"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    return v1
.end method

.method public f(ILandroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 6

    sget-object v0, Lk2/j;->l:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x0

    if-lt p1, v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lk2/j;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v2, "onGesture 01"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lk2/j;->a()Z

    move-result v0

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-nez v0, :cond_2

    if-eq p1, v3, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    if-eq p1, v2, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    iget-object v0, p0, Lk2/j;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getAppName(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lk2/j;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v5, "onGesture 02"

    invoke-virtual {v4, v5, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v4, p0, Lk2/j;->e:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    if-eqz v4, :cond_5

    aget-object v4, v4, p1

    if-eqz v4, :cond_5

    iget-object v0, p0, Lk2/j;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, v4, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->execute(Ljava/lang/String;Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result p2

    if-nez p2, :cond_3

    if-le p1, v2, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    return v1

    :cond_5
    iget-object v4, p0, Lk2/j;->d:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    if-eqz v0, :cond_6

    aget-object v0, v0, p1

    if-eqz v0, :cond_6

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-direct {p0, v0, p2}, Lk2/j;->d(Ljava/lang/String;Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v0

    if-eqz v0, :cond_6

    return v3

    :cond_6
    :goto_0
    iget-object v0, p0, Lk2/j;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iget-object v4, p0, Lk2/j;->c:[Ljava/lang/String;

    aget-object v4, v4, p1

    const-string v5, "onGesture 03"

    invoke-virtual {v0, v5, v4}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lk2/j;->c:[Ljava/lang/String;

    aget-object v0, v0, p1

    if-eqz v0, :cond_9

    iget-object v4, p0, Lk2/j;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v4, v0, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->execute(Ljava/lang/String;Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result p2

    if-nez p2, :cond_7

    if-le p1, v2, :cond_8

    :cond_7
    const/4 v1, 0x1

    :cond_8
    return v1

    :cond_9
    iget-object v0, p0, Lk2/j;->b:[Ljava/lang/String;

    aget-object v0, v0, p1

    if-nez v0, :cond_a

    return v1

    :cond_a
    iget-object v2, p0, Lk2/j;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v3, "onGesture 04"

    invoke-virtual {v2, v3, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lk2/j;->b:[Ljava/lang/String;

    aget-object v0, v0, p1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-direct {p0, v0, p2}, Lk2/j;->d(Ljava/lang/String;Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result p1

    return p1

    :cond_b
    iget-object p2, p0, Lk2/j;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v0, "onGesture 05 false"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    return v1
.end method

.method public i(ILandroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lk2/j;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getAppName(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lk2/j;->h:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [[Ljava/lang/String;

    const/16 v0, 0x5f

    if-eqz p2, :cond_0

    aget-object p2, p2, p1

    aget-object p2, p2, v0

    if-eqz p2, :cond_0

    return-object p2

    :cond_0
    iget-object p2, p0, Lk2/j;->f:[[Ljava/lang/String;

    aget-object p1, p2, p1

    aget-object p1, p1, v0

    if-eqz p1, :cond_1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public k(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lk2/j;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v1, "loadGesturePackage"

    invoke-virtual {v0, v1, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androlua/LuaApplication;->getGesturesDir()Ljava/lang/String;

    move-result-object v0

    iput-object p1, p0, Lk2/j;->j:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v1, v1}, Lk2/j;->m(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public l(Ljava/lang/String;)Z
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "false"

    const-string v4, "true"

    const-string v5, "enabled"

    const-string v6, "gesture"

    iget-object v0, v1, Lk2/j;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v7, 0x7f0708ae

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v7, v1, Lk2/j;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v8, "loadGesturePackage"

    invoke-virtual {v7, v8, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v7, v1, Lk2/j;->b:[Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v7, v1, Lk2/j;->c:[Ljava/lang/String;

    invoke-static {v7, v8}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v7, v1, Lk2/j;->d:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    iget-object v7, v1, Lk2/j;->e:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    const/4 v7, 0x2

    new-array v8, v7, [I

    fill-array-data v8, :array_0

    const-class v9, Ljava/lang/String;

    invoke-static {v9, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[Ljava/lang/String;

    iput-object v8, v1, Lk2/j;->f:[[Ljava/lang/String;

    new-array v7, v7, [I

    fill-array-data v7, :array_1

    invoke-static {v9, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[Ljava/lang/String;

    iput-object v7, v1, Lk2/j;->g:[[Ljava/lang/String;

    iget-object v7, v1, Lk2/j;->h:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    iget-object v7, v1, Lk2/j;->i:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    iput-object v2, v1, Lk2/j;->k:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v7, 0x1

    if-eqz v0, :cond_0

    return v7

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v1, Lk2/j;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v9, 0x7f0701f3

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :try_start_0
    new-instance v10, Lorg/json/JSONObject;

    new-instance v0, Ljava/lang/String;

    new-instance v11, Ljava/io/FileInputStream;

    iget-object v12, v1, Lk2/j;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v13, "config"

    invoke-virtual {v12, v8, v13}, Lcom/androlua/LuaService;->getLuaExtPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v11}, Lcom/androlua/LuaUtil;->readAll(Ljava/io/InputStream;)[B

    move-result-object v11

    invoke-direct {v0, v11}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v10, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    iget-object v0, v1, Lk2/j;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v11, "loadGesturePackage config"

    invoke-virtual {v0, v11, v10}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v11, 0x0

    :goto_0
    sget-object v0, Lk2/j;->l:[Ljava/lang/String;

    array-length v12, v0

    if-ge v11, v12, :cond_a

    aget-object v0, v0, v11

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    const v13, 0x7f070134

    const-string v14, "/"

    const/16 v15, 0x2d

    if-eqz v12, :cond_3

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_1

    iget-object v9, v1, Lk2/j;->c:[Ljava/lang/String;

    aput-object v12, v9, v11

    goto :goto_1

    :cond_1
    iget-object v9, v1, Lk2/j;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v9, v8, v12}, Lcom/androlua/LuaService;->getLuaExtPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, v1, Lk2/j;->b:[Ljava/lang/String;

    aput-object v9, v7, v11

    goto :goto_1

    :cond_2
    iget-object v7, v1, Lk2/j;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v7, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    if-gt v11, v15, :cond_3

    iget-object v7, v1, Lk2/j;->c:[Ljava/lang/String;

    aput-object v12, v7, v11

    :cond_3
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_double_fling"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    :try_start_1
    new-instance v7, Lorg/json/JSONObject;

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "loadGesturePackage:fling "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v9, 0x5f

    if-eqz v0, :cond_8

    iget-object v0, v1, Lk2/j;->f:[[Ljava/lang/String;

    aget-object v0, v0, v11

    aput-object v4, v0, v9

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v15, :cond_9

    sget-object v9, Lk2/j;->l:[Ljava/lang/String;

    aget-object v9, v9, v0

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "loadGesturePackage: "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_4

    iget-object v12, v1, Lk2/j;->g:[[Ljava/lang/String;

    aget-object v12, v12, v11

    aput-object v9, v12, v0

    goto :goto_3

    :cond_4
    iget-object v12, v1, Lk2/j;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v12, v8, v9}, Lcom/androlua/LuaService;->getLuaExtPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    new-instance v15, Ljava/io/File;

    invoke-direct {v15, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_5

    iget-object v9, v1, Lk2/j;->f:[[Ljava/lang/String;

    aget-object v9, v9, v11

    aput-object v12, v9, v0

    goto :goto_3

    :cond_5
    iget-object v12, v1, Lk2/j;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    const/16 v12, 0x2d

    if-gt v0, v12, :cond_7

    iget-object v15, v1, Lk2/j;->g:[[Ljava/lang/String;

    aget-object v15, v15, v11

    aput-object v9, v15, v0

    goto :goto_4

    :cond_6
    :goto_3
    const/16 v12, 0x2d

    :cond_7
    :goto_4
    add-int/lit8 v0, v0, 0x1

    const/16 v15, 0x2d

    goto :goto_2

    :cond_8
    invoke-virtual {v7, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, v1, Lk2/j;->f:[[Ljava/lang/String;

    aget-object v0, v0, v11

    aput-object v3, v0, v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_9
    :goto_5
    add-int/lit8 v11, v11, 0x1

    const/4 v7, 0x1

    goto/16 :goto_0

    :cond_a
    iget-object v0, v1, Lk2/j;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iget-object v3, v1, Lk2/j;->b:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "loadGesturePackage f"

    invoke-virtual {v0, v4, v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v1, Lk2/j;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iget-object v3, v1, Lk2/j;->c:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "loadGesturePackage c"

    invoke-virtual {v0, v4, v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Ljava/io/File;

    iget-object v3, v1, Lk2/j;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v3, v8}, Lcom/androlua/LuaService;->getLuaExtPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_c

    array-length v3, v0

    const/4 v9, 0x0

    :goto_6
    if-ge v9, v3, :cond_c

    aget-object v4, v0, v9

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v5, v4}, Lk2/j;->m(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_b
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_c
    invoke-direct/range {p0 .. p0}, Lk2/j;->a()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, v1, Lk2/j;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f0703dc

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->asyncSpeak(Ljava/lang/String;)V

    :cond_d
    const/4 v2, 0x1

    return v2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v2, 0x0

    return v2

    :array_0
    .array-data 4
        0x60
        0x60
    .end array-data

    :array_1
    .array-data 4
        0x60
        0x60
    .end array-data
.end method

.method public n()Z
    .locals 4

    iget-object v0, p0, Lk2/j;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lk2/b0;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lk2/j;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f0702c9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lk2/j;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v3, 0x7f0708ae

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lk2/j;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v3, 0x7f070033

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v1}, Lk2/j;->l(Ljava/lang/String;)Z

    invoke-virtual {p0, v0}, Lk2/j;->k(Ljava/util/Set;)V

    iget-object v0, p0, Lk2/j;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v1, 0x7f0703dd

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->postSpeak(JLjava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method
