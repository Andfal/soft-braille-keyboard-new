.class public Lcom/nirenr/talkman/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nirenr/talkman/j$h;
    }
.end annotation


# static fields
.field private static Z:Lcom/nirenr/talkman/j;


# instance fields
.field private A:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private B:Lcom/nirenr/talkman/j$h;

.field private C:Lcom/nirenr/talkman/j$h;

.field private D:Landroid/widget/LinearLayout$LayoutParams;

.field private E:Landroid/widget/LinearLayout$LayoutParams;

.field private F:I

.field private G:Landroid/widget/LinearLayout;

.field private H:Landroid/widget/LinearLayout$LayoutParams;

.field private I:Landroid/view/WindowManager$LayoutParams;

.field private J:Landroid/widget/TextView;

.field private K:Z

.field private L:Z

.field private M:Z

.field private N:Z

.field private O:Z

.field private P:Landroid/widget/LinearLayout;

.field private Q:Landroid/view/WindowManager$LayoutParams;

.field private R:Z

.field private S:Landroid/view/WindowManager$LayoutParams;

.field private T:Landroid/widget/LinearLayout;

.field private U:Landroid/widget/TextView;

.field private V:Landroid/widget/TextView;

.field private W:Z

.field private X:Ljava/lang/Runnable;

.field private Y:Ljava/lang/Runnable;

.field private final a:Lcom/nirenr/talkman/TalkManAccessibilityService;

.field private final b:Landroid/util/DisplayMetrics;

.field private final c:I

.field private final d:I

.field private final e:[Ljava/lang/String;

.field private final f:[Ljava/lang/String;

.field private g:[Ljava/lang/String;

.field private h:[Ljava/lang/String;

.field private i:[Ljava/lang/String;

.field private j:Landroid/widget/LinearLayout;

.field private k:Landroid/widget/LinearLayout;

.field private l:Landroid/view/WindowManager$LayoutParams;

.field private m:Landroid/view/WindowManager$LayoutParams;

.field private n:Z

.field private o:Landroid/view/WindowManager;

.field private p:Landroid/widget/LinearLayout;

.field private q:Landroid/view/WindowManager$LayoutParams;

.field private r:Z

.field private s:I

.field private t:Z

.field private u:Landroid/widget/LinearLayout;

.field private v:Landroid/view/WindowManager$LayoutParams;

.field private w:Z

.field private x:Landroid/widget/LinearLayout$LayoutParams;

.field private y:Ljava/lang/Integer;

.field private z:Z


# direct methods
.method public constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nirenr/talkman/j;->n:Z

    new-instance v1, Lcom/nirenr/talkman/j$d;

    invoke-direct {v1, p0}, Lcom/nirenr/talkman/j$d;-><init>(Lcom/nirenr/talkman/j;)V

    iput-object v1, p0, Lcom/nirenr/talkman/j;->X:Ljava/lang/Runnable;

    new-instance v1, Lcom/nirenr/talkman/j$e;

    invoke-direct {v1, p0}, Lcom/nirenr/talkman/j$e;-><init>(Lcom/nirenr/talkman/j;)V

    iput-object v1, p0, Lcom/nirenr/talkman/j;->Y:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/nirenr/talkman/j;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    sput-object p0, Lcom/nirenr/talkman/j;->Z:Lcom/nirenr/talkman/j;

    invoke-virtual {p1}, Lcom/androlua/LuaService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iput-object v1, p0, Lcom/nirenr/talkman/j;->b:Landroid/util/DisplayMetrics;

    invoke-virtual {p1}, Lcom/androlua/LuaService;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/nirenr/talkman/j;->c:I

    invoke-virtual {p1}, Lcom/androlua/LuaService;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/nirenr/talkman/j;->d:I

    invoke-virtual {p1}, Lcom/androlua/LuaService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f01000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nirenr/talkman/j;->e:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/androlua/LuaService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f010017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nirenr/talkman/j;->f:[Ljava/lang/String;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const v2, 0x7f070169

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const v0, 0x7f07016b

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const v0, 0x7f070183

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v1, v2

    const v0, 0x7f070177

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    aput-object v0, v1, v2

    const v0, 0x7f070148

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x4

    aput-object v0, v1, v2

    const v0, 0x7f070095

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x5

    aput-object p1, v1, v0

    iput-object v1, p0, Lcom/nirenr/talkman/j;->i:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/nirenr/talkman/j;->J()V

    invoke-virtual {p0}, Lcom/nirenr/talkman/j;->C()V

    return-void
.end method

.method private A(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nirenr/talkman/j;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f0701f3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/j;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f0708ae

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/nirenr/talkman/j;->A:Ljava/util/ArrayList;

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/nirenr/talkman/j;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v4}, Lk2/b0;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    iget-object v5, p0, Lcom/nirenr/talkman/j;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v6, 0x7f070033

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "config"

    if-eqz v4, :cond_1

    :try_start_1
    invoke-interface {v4, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Lorg/json/JSONObject;

    new-instance v6, Ljava/lang/String;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v8

    invoke-virtual {v8, v0, v5}, Lcom/androlua/LuaApplication;->getLuaExtPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/androlua/LuaUtil;->readAll(Ljava/io/InputStream;)[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v4, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, ""

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/nirenr/talkman/j;->A:Ljava/util/ArrayList;

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v9

    invoke-virtual {v9, v0, v7}, Lcom/androlua/LuaApplication;->getLuaExtPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nirenr/talkman/j;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isUseShowDisabledQuickMenu()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/androlua/LuaApplication;->getGesturesDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_5

    aget-object v6, v0, v4

    const-string v7, "\u65e0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "\u8bf4\u660e"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v7

    invoke-virtual {v7, p1, v6}, Lcom/androlua/LuaApplication;->getGesturePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/nirenr/talkman/j;->A:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/nirenr/talkman/j;->A:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcom/nirenr/talkman/j;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v0, 0x7f070095

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/nirenr/talkman/j;->A:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/nirenr/talkman/j;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v2

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v3
.end method

.method private D(I)Landroid/view/WindowManager$LayoutParams;
    .locals 2

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 p1, p1, 0x8

    or-int/lit8 p1, p1, 0x10

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt p1, v1, :cond_0

    const/16 p1, 0x7f0

    goto :goto_0

    :cond_0
    const/16 p1, 0x7d2

    :goto_0
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object p1, p0, Lcom/nirenr/talkman/j;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p1}, Lcom/androlua/LuaService;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-direct {p0, p1}, Lcom/nirenr/talkman/j;->z(F)I

    move-result p1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    return-object v0
.end method

.method private E(I)Landroid/view/WindowManager$LayoutParams;
    .locals 3

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const p1, 0x80008

    or-int/lit16 p1, p1, 0x100

    or-int/lit16 p1, p1, 0x200

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt p1, v1, :cond_0

    const/16 p1, 0x7f0

    goto :goto_0

    :cond_0
    const/16 p1, 0x7d2

    :goto_0
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iget-object v1, p0, Lcom/nirenr/talkman/j;->o:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget v1, p1, Landroid/graphics/Point;->x:I

    iget v2, p1, Landroid/graphics/Point;->y:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v1, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    return-object v0
.end method

.method private F(I)Landroid/view/WindowManager$LayoutParams;
    .locals 2

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 p1, p1, 0x10

    or-int/lit8 p1, p1, 0x8

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt p1, v1, :cond_0

    const/16 p1, 0x7f0

    goto :goto_0

    :cond_0
    const/16 p1, 0x7d2

    :goto_0
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/high16 p1, 0x41800000    # 16.0f

    invoke-direct {p0, p1}, Lcom/nirenr/talkman/j;->z(F)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-direct {p0, p1}, Lcom/nirenr/talkman/j;->z(F)I

    move-result p1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 p1, p1, 0x80

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    return-object v0
.end method

.method private G(I)Landroid/view/WindowManager$LayoutParams;
    .locals 2

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 p1, 0x8

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt p1, v1, :cond_0

    const/16 p1, 0x7f0

    goto :goto_0

    :cond_0
    const/16 p1, 0x7d2

    :goto_0
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 p1, -0x2

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/high16 p1, 0x1030000

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const/4 p1, 0x0

    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    return-object v0
.end method

.method private H()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nirenr/talkman/j;->A:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/nirenr/talkman/j;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v1, 0x7f07032e

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lk2/b0;->h(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/nirenr/talkman/j;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f070095

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nirenr/talkman/j;->g:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/j;->e:[Ljava/lang/String;

    iput-object v0, p0, Lcom/nirenr/talkman/j;->g:[Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Lcom/nirenr/talkman/j;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v1, 0x7f070795

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lk2/b0;->a(Landroid/content/Context;IZ)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nirenr/talkman/j;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getFocusView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getAppName(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getDescriptionFromConfig(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nirenr/talkman/j;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getFocusView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getAppName(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nirenr/talkman/j;->A(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/nirenr/talkman/j;->g:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/nirenr/talkman/j;->C:Lcom/nirenr/talkman/j$h;

    iget-object v1, p0, Lcom/nirenr/talkman/j;->g:[Ljava/lang/String;

    array-length v1, v1

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/j$h;->a(I)V

    iget-object v0, p0, Lcom/nirenr/talkman/j;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iget-object v1, p0, Lcom/nirenr/talkman/j;->g:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "EdgeGestures"

    invoke-virtual {v0, v2, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private I(I)Landroid/view/WindowManager$LayoutParams;
    .locals 2

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 p1, 0x8

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt p1, v1, :cond_0

    const/16 p1, 0x7f0

    goto :goto_0

    :cond_0
    const/16 p1, 0x7d2

    :goto_0
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 p1, -0x1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 p1, -0x2

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    return-object v0
.end method

.method private J()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/nirenr/talkman/j;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v1, "8"

    const v2, 0x7f070246

    invoke-static {v0, v2, v1}, Lk2/b0;->h(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/nirenr/talkman/j;->y:Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/nirenr/talkman/j;->y:Ljava/lang/Integer;

    :goto_0
    iget-object v0, p0, Lcom/nirenr/talkman/j;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isTouchMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nirenr/talkman/j;->y:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/nirenr/talkman/j;->y:Ljava/lang/Integer;

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/j;->y:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/nirenr/talkman/j;->z(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/nirenr/talkman/j;->y:Ljava/lang/Integer;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/nirenr/talkman/j;->y:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/nirenr/talkman/j;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2}, Lcom/androlua/LuaService;->getWidth()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/nirenr/talkman/j;->x:Landroid/widget/LinearLayout$LayoutParams;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/nirenr/talkman/j;->D:Landroid/widget/LinearLayout$LayoutParams;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, v1}, Lcom/nirenr/talkman/j;->z(F)I

    move-result v2

    invoke-direct {p0, v1}, Lcom/nirenr/talkman/j;->z(F)I

    move-result v1

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/nirenr/talkman/j;->E:Landroid/widget/LinearLayout$LayoutParams;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/nirenr/talkman/j;->c:I

    div-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x2

    const/high16 v2, 0x41000000    # 8.0f

    invoke-direct {p0, v2}, Lcom/nirenr/talkman/j;->z(F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/nirenr/talkman/j;->H:Landroid/widget/LinearLayout$LayoutParams;

    return-void
.end method

.method private K()V
    .locals 3

    iget-object v0, p0, Lcom/nirenr/talkman/j;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v1, 0x7f07057e

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lk2/b0;->h(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/nirenr/talkman/j;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f070095

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nirenr/talkman/j;->h:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/j;->f:[Ljava/lang/String;

    iput-object v0, p0, Lcom/nirenr/talkman/j;->h:[Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Lcom/nirenr/talkman/j;->B:Lcom/nirenr/talkman/j$h;

    iget-object v1, p0, Lcom/nirenr/talkman/j;->h:[Ljava/lang/String;

    array-length v1, v1

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/j$h;->a(I)V

    iget-object v0, p0, Lcom/nirenr/talkman/j;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iget-object v1, p0, Lcom/nirenr/talkman/j;->h:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "EdgeGestures"

    invoke-virtual {v0, v2, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private L(I)Landroid/view/WindowManager$LayoutParams;
    .locals 2

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 p1, p1, 0x10

    or-int/lit8 p1, p1, 0x8

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt p1, v1, :cond_0

    const/16 p1, 0x7f0

    goto :goto_0

    :cond_0
    const/16 p1, 0x7da

    :goto_0
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 p1, -0x2

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    return-object v0
.end method

.method private Z(Ljava/lang/String;)V
    .locals 2

    const-string v0, "([^/]+)/([^/]+)"

    const-string v1, "$2/$1"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/nirenr/talkman/j;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->ttsSpeak(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic a(Lcom/nirenr/talkman/j;)I
    .locals 0

    iget p0, p0, Lcom/nirenr/talkman/j;->s:I

    return p0
.end method

.method static bridge synthetic b(Lcom/nirenr/talkman/j;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/j;->g:[Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/nirenr/talkman/j;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/j;->i:[Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic d(Lcom/nirenr/talkman/j;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/j;->A:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic e(Lcom/nirenr/talkman/j;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/j;->h:[Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic f(Lcom/nirenr/talkman/j;)Lcom/nirenr/talkman/TalkManAccessibilityService;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/j;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    return-object p0
.end method

.method static bridge synthetic g(Lcom/nirenr/talkman/j;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/nirenr/talkman/j;->N:Z

    return p0
.end method

.method static bridge synthetic h(Lcom/nirenr/talkman/j;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/nirenr/talkman/j;->O:Z

    return p0
.end method

.method static bridge synthetic i(Lcom/nirenr/talkman/j;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/nirenr/talkman/j;->M:Z

    return p0
.end method

.method static bridge synthetic j(Lcom/nirenr/talkman/j;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/j;->V:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic k(Lcom/nirenr/talkman/j;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/nirenr/talkman/j;->W:Z

    return p0
.end method

.method static bridge synthetic l(Lcom/nirenr/talkman/j;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/j;->X:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic m(Lcom/nirenr/talkman/j;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/j;->Y:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic n(Lcom/nirenr/talkman/j;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/j;->U:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic o(Lcom/nirenr/talkman/j;)I
    .locals 0

    iget p0, p0, Lcom/nirenr/talkman/j;->c:I

    return p0
.end method

.method static bridge synthetic p(Lcom/nirenr/talkman/j;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/nirenr/talkman/j;->t:Z

    return p0
.end method

.method static bridge synthetic q(Lcom/nirenr/talkman/j;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/nirenr/talkman/j;->z:Z

    return p0
.end method

.method static bridge synthetic r(Lcom/nirenr/talkman/j;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/j;->y:Ljava/lang/Integer;

    return-object p0
.end method

.method static bridge synthetic s(Lcom/nirenr/talkman/j;I)V
    .locals 0

    iput p1, p0, Lcom/nirenr/talkman/j;->s:I

    return-void
.end method

.method static bridge synthetic t(Lcom/nirenr/talkman/j;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nirenr/talkman/j;->t:Z

    return-void
.end method

.method static bridge synthetic u(Lcom/nirenr/talkman/j;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nirenr/talkman/j;->z:Z

    return-void
.end method

.method static bridge synthetic v(Lcom/nirenr/talkman/j;F)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/nirenr/talkman/j;->z(F)I

    move-result p0

    return p0
.end method

.method static bridge synthetic w(Lcom/nirenr/talkman/j;)V
    .locals 0

    invoke-direct {p0}, Lcom/nirenr/talkman/j;->H()V

    return-void
.end method

.method static bridge synthetic x(Lcom/nirenr/talkman/j;)V
    .locals 0

    invoke-direct {p0}, Lcom/nirenr/talkman/j;->K()V

    return-void
.end method

.method static bridge synthetic y(Lcom/nirenr/talkman/j;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nirenr/talkman/j;->Z(Ljava/lang/String;)V

    return-void
.end method

.method private z(F)I
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/nirenr/talkman/j;->b:Landroid/util/DisplayMetrics;

    invoke-static {v0, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    if-gtz v0, :cond_0

    float-to-int p1, p1

    return p1

    :cond_0
    const/16 p1, 0x40

    if-le v0, p1, :cond_1

    const/16 p1, 0x41

    return p1

    :cond_1
    return v0
.end method


# virtual methods
.method public B(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nirenr/talkman/j;->P(Z)Z

    return-void
.end method

.method public C()V
    .locals 5

    iget-object v0, p0, Lcom/nirenr/talkman/j;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/nirenr/talkman/j;->o:Landroid/view/WindowManager;

    new-instance v0, Lcom/nirenr/talkman/j$a;

    iget-object v1, p0, Lcom/nirenr/talkman/j;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {v0, p0, v1}, Lcom/nirenr/talkman/j$a;-><init>(Lcom/nirenr/talkman/j;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nirenr/talkman/j;->j:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/nirenr/talkman/j$h;

    iget-object v1, p0, Lcom/nirenr/talkman/j;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {v0, p0, v1}, Lcom/nirenr/talkman/j$h;-><init>(Lcom/nirenr/talkman/j;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nirenr/talkman/j;->C:Lcom/nirenr/talkman/j$h;

    iget-object v1, p0, Lcom/nirenr/talkman/j;->j:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/nirenr/talkman/j;->x:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/nirenr/talkman/j$b;

    iget-object v1, p0, Lcom/nirenr/talkman/j;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {v0, p0, v1}, Lcom/nirenr/talkman/j$b;-><init>(Lcom/nirenr/talkman/j;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nirenr/talkman/j;->k:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/nirenr/talkman/j$h;

    iget-object v1, p0, Lcom/nirenr/talkman/j;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {v0, p0, v1}, Lcom/nirenr/talkman/j$h;-><init>(Lcom/nirenr/talkman/j;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nirenr/talkman/j;->B:Lcom/nirenr/talkman/j$h;

    iget-object v1, p0, Lcom/nirenr/talkman/j;->k:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/nirenr/talkman/j;->x:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/nirenr/talkman/j$c;

    iget-object v1, p0, Lcom/nirenr/talkman/j;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {v0, p0, v1}, Lcom/nirenr/talkman/j$c;-><init>(Lcom/nirenr/talkman/j;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nirenr/talkman/j;->G:Landroid/widget/LinearLayout;

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nirenr/talkman/j;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nirenr/talkman/j;->J:Landroid/widget/TextView;

    const/high16 v1, 0x42000000    # 32.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/nirenr/talkman/j;->G:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/view/View;

    iget-object v2, p0, Lcom/nirenr/talkman/j;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/nirenr/talkman/j;->H:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/nirenr/talkman/j;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nirenr/talkman/j;->p:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/view/View;

    iget-object v2, p0, Lcom/nirenr/talkman/j;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/nirenr/talkman/j;->D:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/nirenr/talkman/j;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nirenr/talkman/j;->u:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/view/View;

    iget-object v2, p0, Lcom/nirenr/talkman/j;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/nirenr/talkman/j;->D:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/nirenr/talkman/j;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nirenr/talkman/j;->T:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lcom/nirenr/talkman/j;->T:Landroid/widget/LinearLayout;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/nirenr/talkman/j;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nirenr/talkman/j;->U:Landroid/widget/TextView;

    const/high16 v2, -0x78000000

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/nirenr/talkman/j;->U:Landroid/widget/TextView;

    const/16 v3, -0x78

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/nirenr/talkman/j;->U:Landroid/widget/TextView;

    const/high16 v3, 0x41c00000    # 24.0f

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/nirenr/talkman/j;->U:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lcom/nirenr/talkman/j;->U:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/nirenr/talkman/j;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {v0, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nirenr/talkman/j;->V:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/nirenr/talkman/j;->V:Landroid/widget/TextView;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/nirenr/talkman/j;->V:Landroid/widget/TextView;

    const/high16 v2, 0x42200000    # 40.0f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/nirenr/talkman/j;->V:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lcom/nirenr/talkman/j;->V:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/nirenr/talkman/j;->T:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/nirenr/talkman/j;->U:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/nirenr/talkman/j;->T:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/nirenr/talkman/j;->V:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/16 v0, 0x13

    invoke-direct {p0, v0}, Lcom/nirenr/talkman/j;->G(I)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iput-object v1, p0, Lcom/nirenr/talkman/j;->l:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x15

    invoke-direct {p0, v1}, Lcom/nirenr/talkman/j;->G(I)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iput-object v1, p0, Lcom/nirenr/talkman/j;->m:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x31

    invoke-direct {p0, v1}, Lcom/nirenr/talkman/j;->D(I)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iput-object v1, p0, Lcom/nirenr/talkman/j;->q:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x51

    invoke-direct {p0, v1}, Lcom/nirenr/talkman/j;->F(I)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iput-object v2, p0, Lcom/nirenr/talkman/j;->v:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0, v1}, Lcom/nirenr/talkman/j;->I(I)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iput-object v2, p0, Lcom/nirenr/talkman/j;->I:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0, v1}, Lcom/nirenr/talkman/j;->L(I)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iput-object v1, p0, Lcom/nirenr/talkman/j;->S:Landroid/view/WindowManager$LayoutParams;

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/nirenr/talkman/j;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/nirenr/talkman/j;->P:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/nirenr/talkman/j;->E(I)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/nirenr/talkman/j;->Q:Landroid/view/WindowManager$LayoutParams;

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nirenr/talkman/j;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/nirenr/talkman/j;->P:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/nirenr/talkman/j;->D:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public M(Z)V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/nirenr/talkman/j;->r:Z

    if-ne p1, v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/nirenr/talkman/j;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v1, "setBottomEnabled"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p1, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/nirenr/talkman/j;->o:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/nirenr/talkman/j;->p:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/nirenr/talkman/j;->q:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/nirenr/talkman/j;->o:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/nirenr/talkman/j;->p:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    :goto_0
    iput-boolean p1, p0, Lcom/nirenr/talkman/j;->r:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    iget-object p1, p0, Lcom/nirenr/talkman/j;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iget-boolean v0, p0, Lcom/nirenr/talkman/j;->r:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "setBottomEnabled2"

    invoke-virtual {p1, v1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public N(Z)Z
    .locals 3

    iget-object v0, p0, Lcom/nirenr/talkman/j;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v1, "EdgeGestures"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/nirenr/talkman/j;->K:Z

    if-ne p1, v0, :cond_0

    return p1

    :cond_0
    if-eqz p1, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/nirenr/talkman/j;->o:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/nirenr/talkman/j;->G:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/nirenr/talkman/j;->I:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nirenr/talkman/j;->o:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/nirenr/talkman/j;->G:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    :goto_0
    iput-boolean p1, p0, Lcom/nirenr/talkman/j;->K:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    iget-boolean p1, p0, Lcom/nirenr/talkman/j;->K:Z

    return p1
.end method

.method public O(Ljava/lang/Integer;)V
    .locals 2

    invoke-direct {p0}, Lcom/nirenr/talkman/j;->J()V

    iget-object p1, p0, Lcom/nirenr/talkman/j;->j:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Lcom/nirenr/talkman/j;->x:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/nirenr/talkman/j;->k:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/nirenr/talkman/j;->x:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public P(Z)Z
    .locals 3

    iget-object v0, p0, Lcom/nirenr/talkman/j;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v1, "EdgeGestures"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/nirenr/talkman/j;->n:Z

    if-ne p1, v0, :cond_0

    return p1

    :cond_0
    if-eqz p1, :cond_2

    :try_start_0
    invoke-static {}, Lcom/nirenr/talkman/dialog/VirtualScreen;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    iget-object v0, p0, Lcom/nirenr/talkman/j;->o:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/nirenr/talkman/j;->j:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/nirenr/talkman/j;->l:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/nirenr/talkman/j;->o:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/nirenr/talkman/j;->k:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/nirenr/talkman/j;->m:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/nirenr/talkman/j;->o:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/nirenr/talkman/j;->j:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/nirenr/talkman/j;->o:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/nirenr/talkman/j;->k:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    :goto_0
    iput-boolean p1, p0, Lcom/nirenr/talkman/j;->n:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    iget-boolean p1, p0, Lcom/nirenr/talkman/j;->n:Z

    return p1
.end method

.method public Q(Z)V
    .locals 3

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/nirenr/talkman/j;->o:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/nirenr/talkman/j;->P:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/nirenr/talkman/j;->Q:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/j;->o:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/nirenr/talkman/j;->P:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    :goto_0
    iput-boolean p1, p0, Lcom/nirenr/talkman/j;->R:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public R(Z)V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/nirenr/talkman/j;->L:Z

    if-ne p1, v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/nirenr/talkman/j;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v1, "setKeepEnabled"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    iget v0, p0, Lcom/nirenr/talkman/j;->F:I

    const/4 v1, 0x1

    const/16 v2, 0xa

    if-le v0, v2, :cond_3

    rem-int/lit8 v3, v0, 0xa

    if-eqz v3, :cond_3

    add-int/2addr v0, v1

    iput v0, p0, Lcom/nirenr/talkman/j;->F:I

    const/16 p1, 0x3e8

    if-le v0, p1, :cond_2

    iput v2, p0, Lcom/nirenr/talkman/j;->F:I

    :cond_2
    return-void

    :cond_3
    if-eqz p1, :cond_4

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/nirenr/talkman/j;->S(Z)V

    iget-object v0, p0, Lcom/nirenr/talkman/j;->v:Landroid/view/WindowManager$LayoutParams;

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x80

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/nirenr/talkman/j;->v:Landroid/view/WindowManager$LayoutParams;

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, -0x81

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    :goto_0
    iget-object v0, p0, Lcom/nirenr/talkman/j;->o:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/nirenr/talkman/j;->u:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/nirenr/talkman/j;->v:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v2, v3}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-boolean p1, p0, Lcom/nirenr/talkman/j;->L:Z

    const/4 p1, 0x0

    iput p1, p0, Lcom/nirenr/talkman/j;->F:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    iget p1, p0, Lcom/nirenr/talkman/j;->F:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/nirenr/talkman/j;->F:I

    :goto_1
    return-void
.end method

.method public S(Z)V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/nirenr/talkman/j;->w:Z

    if-ne p1, v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/nirenr/talkman/j;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v1, "setKeepEnabled"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    iget v0, p0, Lcom/nirenr/talkman/j;->F:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_3

    rem-int/lit8 v2, v0, 0xa

    if-eqz v2, :cond_3

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nirenr/talkman/j;->F:I

    const/16 p1, 0x3e8

    if-le v0, p1, :cond_2

    iput v1, p0, Lcom/nirenr/talkman/j;->F:I

    :cond_2
    return-void

    :cond_3
    if-eqz p1, :cond_4

    :try_start_0
    iget-object v0, p0, Lcom/nirenr/talkman/j;->o:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/nirenr/talkman/j;->u:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/nirenr/talkman/j;->v:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/nirenr/talkman/j;->o:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/nirenr/talkman/j;->u:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    :goto_0
    iput-boolean p1, p0, Lcom/nirenr/talkman/j;->w:Z

    const/4 p1, 0x0

    iput p1, p0, Lcom/nirenr/talkman/j;->F:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    iget p1, p0, Lcom/nirenr/talkman/j;->F:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/nirenr/talkman/j;->F:I

    :goto_1
    return-void
.end method

.method public T(Z)V
    .locals 3

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/nirenr/talkman/j;->o:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/nirenr/talkman/j;->T:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/nirenr/talkman/j;->S:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/j;->U:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/nirenr/talkman/j;->V:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/nirenr/talkman/j;->o:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/nirenr/talkman/j;->T:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    :goto_0
    iput-boolean p1, p0, Lcom/nirenr/talkman/j;->W:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public U(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/nirenr/talkman/j;->N:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/nirenr/talkman/j;->N:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/nirenr/talkman/j;->D:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v0, p0, Lcom/nirenr/talkman/j;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/androlua/LuaService;->getWidth()I

    move-result v0

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget-object p1, p0, Lcom/nirenr/talkman/j;->C:Lcom/nirenr/talkman/j$h;

    iget-object v0, p0, Lcom/nirenr/talkman/j;->D:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/nirenr/talkman/j;->B:Lcom/nirenr/talkman/j$h;

    iget-object v0, p0, Lcom/nirenr/talkman/j;->E:Landroid/widget/LinearLayout$LayoutParams;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/nirenr/talkman/j;->C:Lcom/nirenr/talkman/j$h;

    iget-object v0, p0, Lcom/nirenr/talkman/j;->x:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/nirenr/talkman/j;->B:Lcom/nirenr/talkman/j$h;

    iget-object v0, p0, Lcom/nirenr/talkman/j;->x:Landroid/widget/LinearLayout$LayoutParams;

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public V(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/nirenr/talkman/j;->O:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/nirenr/talkman/j;->O:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/nirenr/talkman/j;->G:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/nirenr/talkman/j;->D:Landroid/widget/LinearLayout$LayoutParams;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/nirenr/talkman/j;->G:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/nirenr/talkman/j;->H:Landroid/widget/LinearLayout$LayoutParams;

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public W(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/nirenr/talkman/j;->M:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/nirenr/talkman/j;->M:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/nirenr/talkman/j;->D:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v0, p0, Lcom/nirenr/talkman/j;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/androlua/LuaService;->getWidth()I

    move-result v0

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget-object p1, p0, Lcom/nirenr/talkman/j;->B:Lcom/nirenr/talkman/j$h;

    iget-object v0, p0, Lcom/nirenr/talkman/j;->D:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/nirenr/talkman/j;->C:Lcom/nirenr/talkman/j$h;

    iget-object v0, p0, Lcom/nirenr/talkman/j;->E:Landroid/widget/LinearLayout$LayoutParams;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/nirenr/talkman/j;->B:Lcom/nirenr/talkman/j$h;

    iget-object v0, p0, Lcom/nirenr/talkman/j;->x:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/nirenr/talkman/j;->C:Lcom/nirenr/talkman/j$h;

    iget-object v0, p0, Lcom/nirenr/talkman/j;->x:Landroid/widget/LinearLayout$LayoutParams;

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/nirenr/talkman/j;->B:Lcom/nirenr/talkman/j$h;

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    iget-object p1, p0, Lcom/nirenr/talkman/j;->k:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    iget-object p1, p0, Lcom/nirenr/talkman/j;->C:Lcom/nirenr/talkman/j$h;

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    iget-object p1, p0, Lcom/nirenr/talkman/j;->j:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    return-void
.end method

.method public X(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/nirenr/talkman/j;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/nirenr/talkman/j$g;

    invoke-direct {v1, p0, p1}, Lcom/nirenr/talkman/j$g;-><init>(Lcom/nirenr/talkman/j;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public Y(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/nirenr/talkman/j;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/nirenr/talkman/j$f;

    invoke-direct {v1, p0, p1}, Lcom/nirenr/talkman/j$f;-><init>(Lcom/nirenr/talkman/j;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
