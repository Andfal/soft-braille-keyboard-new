.class public Lcom/nirenr/talkman/util/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nirenr/talkman/util/b$w;
    }
.end annotation


# static fields
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

.field private final b:Lcom/nirenr/talkman/n;

.field private final c:Lk2/g;

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Landroid/os/Handler;

.field private h:Lcom/nirenr/talkman/ai/OcrResult$OCRListener;

.field private i:[Ljava/lang/String;

.field private j:Landroid/graphics/Rect;

.field private k:I

.field private l:Ljava/lang/String;

.field private m:Z

.field private n:Landroid/view/accessibility/AccessibilityNodeInfo;

.field private o:Z

.field private p:[Ljava/lang/String;

.field private q:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lk2/j;->j()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/nirenr/talkman/util/b;->r:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/String;

    const/16 v1, 0xa

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lcom/nirenr/talkman/util/b;->s:Ljava/lang/String;

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

.method public constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Lcom/nirenr/talkman/n;Lk2/g;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/nirenr/talkman/util/b;->g:Landroid/os/Handler;

    new-instance v0, Lcom/nirenr/talkman/util/b$k;

    invoke-direct {v0, p0}, Lcom/nirenr/talkman/util/b$k;-><init>(Lcom/nirenr/talkman/util/b;)V

    iput-object v0, p0, Lcom/nirenr/talkman/util/b;->h:Lcom/nirenr/talkman/ai/OcrResult$OCRListener;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/nirenr/talkman/util/b;->i:[Ljava/lang/String;

    new-instance v0, Lcom/nirenr/talkman/util/b$s;

    invoke-direct {v0, p0}, Lcom/nirenr/talkman/util/b$s;-><init>(Lcom/nirenr/talkman/util/b;)V

    iput-object v0, p0, Lcom/nirenr/talkman/util/b;->q:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iput-object p2, p0, Lcom/nirenr/talkman/util/b;->b:Lcom/nirenr/talkman/n;

    iput-object p3, p0, Lcom/nirenr/talkman/util/b;->c:Lk2/g;

    return-void
.end method

.method private C(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v1, 0x7f0708a1

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lk2/b0;->h(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const p2, 0x7f070475

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speak(I)V

    return-void

    :cond_0
    new-instance v0, Lcom/nirenr/talkman/util/b$b;

    invoke-direct {v0, p0, p1}, Lcom/nirenr/talkman/util/b$b;-><init>(Lcom/nirenr/talkman/util/b;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-string p1, "note"

    invoke-static {p1, p2, v0}, Lcom/nirenr/talkman/util/a;->h(Ljava/lang/String;Ljava/lang/String;Lcom/nirenr/talkman/util/HttpUtil$HttpCallback;)V

    return-void
.end method

.method private D(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f0701f3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Ljava/lang/String;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v3

    iget-object v4, p0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v5, 0x7f0701ee

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/androlua/LuaApplication;->getLuaExtPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/androlua/LuaUtil;->readAll(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-direct {p0}, Lcom/nirenr/talkman/util/b;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/nirenr/talkman/util/b;->E(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p1, p0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v0, 0x7f0702d0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private E(Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f0701f3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v1, 0x7f0708ae

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/String;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v4

    const-string v5, "config"

    invoke-virtual {v4, p1, v5}, Lcom/androlua/LuaApplication;->getLuaExtPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/androlua/LuaUtil;->readAll(Ljava/io/InputStream;)[B

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x2004

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v4, ",\n"

    const-string v5, ":"

    const-string v6, ""

    const-string v7, "_double_fling"

    if-eqz v3, :cond_2

    :try_start_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget-object v8, Lcom/nirenr/talkman/util/b;->r:Ljava/util/HashMap;

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v1, v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    sget-object v7, Lcom/nirenr/talkman/util/b;->r:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v8, :cond_3

    :try_start_2
    new-instance v8, Lorg/json/JSONObject;

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget-object v9, Lcom/nirenr/talkman/util/b;->r:Ljava/util/HashMap;

    invoke-virtual {v3, v7, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v3, 0x7f070207

    invoke-direct {p0, v3}, Lcom/nirenr/talkman/util/b;->F(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "enabled"

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const v3, 0x7f070512

    invoke-direct {p0, v3}, Lcom/nirenr/talkman/util/b;->F(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_4
    const v3, 0x7f0700bf

    invoke-direct {p0, v3}, Lcom/nirenr/talkman/util/b;->F(I)Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v9, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    const-string v11, "  "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v11, Lcom/nirenr/talkman/util/b;->r:Ljava/util/HashMap;

    invoke-virtual {v11, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception v3

    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1

    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    return-object p1

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object p1, p0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v0, 0x7f0702d0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private F(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private J()V
    .locals 8

    invoke-static {}, Lcom/nirenr/talkman/util/Music;->g()Lcom/nirenr/talkman/util/Music;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v2, "\u6682\u505c"

    const-string v3, "\u64ad\u653e"

    const-string v4, "\u4e0b\u4e00\u66f2"

    const-string v5, "\u4e0a\u4e00\u66f2"

    const-string v6, "\u505c\u6b62"

    const-string v7, "\u64ad\u653e\u5217\u8868"

    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u64ad\u653e\u63a7\u5236"

    invoke-virtual {v1, v3, v2}, Lcom/androlua/LuaService;->createDialog(Ljava/lang/String;[Ljava/lang/String;)Lcom/androlua/LuaDialog;

    move-result-object v1

    new-instance v2, Lcom/nirenr/talkman/util/b$v;

    invoke-direct {v2, p0, v0, v1}, Lcom/nirenr/talkman/util/b$v;-><init>(Lcom/nirenr/talkman/util/b;Lcom/nirenr/talkman/util/Music;Lcom/androlua/LuaDialog;)V

    invoke-virtual {v1, v2}, Lcom/androlua/LuaDialog;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v1}, Lcom/androlua/LuaDialog;->show()V

    return-void
.end method

.method private L(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v1, 0x7f0708a1

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lk2/b0;->h(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const p2, 0x7f070475

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speak(I)V

    return-void

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    const v1, 0x186a0

    if-le v0, v1, :cond_1

    iget-object p1, p0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string p2, "\u5185\u5bb9\u8fc7\u957f"

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speak(Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v0, Lcom/nirenr/talkman/util/b$a;

    invoke-direct {v0, p0}, Lcom/nirenr/talkman/util/b$a;-><init>(Lcom/nirenr/talkman/util/b;)V

    const-string v1, "note"

    invoke-static {v1, p1, p2, v0}, Lcom/nirenr/talkman/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nirenr/talkman/util/HttpUtil$HttpCallback;)V

    return-void
.end method

.method private O()Z
    .locals 8

    iget-object v0, p0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v1, 0x7f0708ae

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v1}, Lk2/b0;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v3, 0x7f0702c9

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v4}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getFocusView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getAppName(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Lcom/nirenr/talkman/util/b;->t()Z

    move-result v5

    const-string v6, ":\n"

    if-eqz v5, :cond_0

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v4}, Lcom/nirenr/talkman/util/b;->D(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/androlua/LuaService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f010009

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Lcom/nirenr/talkman/util/b;->D(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-direct {p0}, Lcom/nirenr/talkman/util/b;->t()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v5, 0x7f070033

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v1, v0, v5}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Lcom/nirenr/talkman/util/b;->D(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_5

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x16

    if-lt v2, v3, :cond_4

    const/16 v2, 0x7f0

    goto :goto_2

    :cond_4
    const/16 v2, 0x7da

    :goto_2
    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    :cond_5
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    const/4 v0, 0x1

    return v0
.end method

.method private P(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    new-instance v0, Lcom/nirenr/talkman/dialog/h;

    iget-object v1, p0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {v0, v1, p1}, Lcom/nirenr/talkman/dialog/h;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-virtual {v0}, Lcom/nirenr/talkman/dialog/h;->m()V

    return-void
.end method

.method private S(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    .locals 5

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/nirenr/talkman/util/b;->j:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    goto/16 :goto_4

    :pswitch_1
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/nirenr/talkman/util/b;->j:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/nirenr/talkman/util/b;->j:Landroid/graphics/Rect;

    iget p2, p1, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 p2, p2, 0x2

    goto/16 :goto_2

    :pswitch_2
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/nirenr/talkman/util/b;->j:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/nirenr/talkman/util/b;->j:Landroid/graphics/Rect;

    iget p2, p1, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 p2, p2, 0x2

    goto :goto_0

    :pswitch_3
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/nirenr/talkman/util/b;->j:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    goto :goto_1

    :pswitch_4
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/nirenr/talkman/util/b;->j:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/nirenr/talkman/util/b;->j:Landroid/graphics/Rect;

    iget p2, p1, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 v0, p2, 0x3

    iput v0, p1, Landroid/graphics/Rect;->top:I

    div-int/lit8 p2, p2, 0x3

    mul-int/lit8 p2, p2, 0x2

    goto :goto_0

    :pswitch_5
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/nirenr/talkman/util/b;->j:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/nirenr/talkman/util/b;->j:Landroid/graphics/Rect;

    iget p2, p1, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 p2, p2, 0x3

    :goto_0
    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_4

    :pswitch_6
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/nirenr/talkman/util/b;->j:Landroid/graphics/Rect;

    iget-object p2, p0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p2}, Lcom/androlua/LuaService;->getHeight()I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    iget-object p1, p0, Lcom/nirenr/talkman/util/b;->j:Landroid/graphics/Rect;

    iget-object p2, p0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p2}, Lcom/androlua/LuaService;->getWidth()I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->right:I

    :goto_1
    iget-object p1, p0, Lcom/nirenr/talkman/util/b;->j:Landroid/graphics/Rect;

    iget p2, p1, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 p2, p2, 0x3

    mul-int/lit8 p2, p2, 0x2

    goto :goto_2

    :pswitch_7
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/nirenr/talkman/util/b;->j:Landroid/graphics/Rect;

    iget-object p2, p0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p2}, Lcom/androlua/LuaService;->getHeight()I

    move-result p2

    div-int/lit8 p2, p2, 0x3

    mul-int/lit8 p2, p2, 0x2

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    iget-object p1, p0, Lcom/nirenr/talkman/util/b;->j:Landroid/graphics/Rect;

    iget-object p2, p0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p2}, Lcom/androlua/LuaService;->getWidth()I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->right:I

    iget-object p1, p0, Lcom/nirenr/talkman/util/b;->j:Landroid/graphics/Rect;

    iget-object p2, p0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p2}, Lcom/androlua/LuaService;->getHeight()I

    move-result p2

    div-int/lit8 p2, p2, 0x3

    goto :goto_2

    :pswitch_8
    iget-object p1, p0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p1}, Lcom/androlua/LuaService;->getWidth()I

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/nirenr/talkman/util/b;->j:Landroid/graphics/Rect;

    iget-object p2, p0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p2}, Lcom/androlua/LuaService;->getHeight()I

    move-result p2

    div-int/lit8 p2, p2, 0x3

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    iget-object p1, p0, Lcom/nirenr/talkman/util/b;->j:Landroid/graphics/Rect;

    iget-object p2, p0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p2}, Lcom/androlua/LuaService;->getWidth()I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->right:I

    goto/16 :goto_4

    :pswitch_9
    iget-object p1, p0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p1}, Lcom/androlua/LuaService;->getWidth()I

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/nirenr/talkman/util/b;->j:Landroid/graphics/Rect;

    iget-object p2, p0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p2}, Lcom/androlua/LuaService;->getHeight()I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    iget-object p1, p0, Lcom/nirenr/talkman/util/b;->j:Landroid/graphics/Rect;

    iget-object p2, p0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p2}, Lcom/androlua/LuaService;->getWidth()I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->right:I

    iget-object p1, p0, Lcom/nirenr/talkman/util/b;->j:Landroid/graphics/Rect;

    iget p2, p1, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 p2, p2, 0x4

    mul-int/lit8 p2, p2, 0x3

    :goto_2
    iput p2, p1, Landroid/graphics/Rect;->top:I

    goto :goto_4

    :pswitch_a
    iget-object p1, p0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p1}, Lcom/androlua/LuaService;->getWidth()I

    move-result p1

    iget-object p2, p0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p2}, Lcom/androlua/LuaService;->getHeight()I

    move-result p2

    div-int/lit8 p2, p2, 0x4

    iget-object v0, p0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getWindows()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityWindowInfo;

    if-eqz v2, :cond_0

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    iget v2, v3, Landroid/graphics/Rect;->left:I

    if-nez v2, :cond_0

    iget v2, v3, Landroid/graphics/Rect;->top:I

    if-nez v2, :cond_0

    iget v2, v3, Landroid/graphics/Rect;->bottom:I

    const/16 v4, 0x1f4

    if-ge v2, v4, :cond_0

    iget v3, v3, Landroid/graphics/Rect;->right:I

    div-int/lit8 v4, p1, 0x2

    if-le v3, v4, :cond_0

    div-int/lit8 v3, v3, 0x10

    mul-int/lit8 v3, v3, 0x9

    add-int p2, v3, v2

    move v1, v2

    goto :goto_3

    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/nirenr/talkman/util/b;->j:Landroid/graphics/Rect;

    iput p2, v0, Landroid/graphics/Rect;->bottom:I

    iput p1, v0, Landroid/graphics/Rect;->right:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    :goto_4
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/nirenr/talkman/util/b;->M(Z)V

    invoke-virtual {p0}, Lcom/nirenr/talkman/util/b;->x()V

    iget-object p1, p0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const p2, 0x7f070445

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/nirenr/talkman/util/b;->R(Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private T(Ljava/lang/String;)Z
    .locals 6

    iget-object v0, p0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v1, 0x7f070501

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p1, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setTimerMode(Z)V

    return v1

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f07067a

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    iget-object v2, p0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v3, "[]"

    const v4, 0x7f07066d

    invoke-static {v2, v4, v3}, Lk2/b0;->h(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object p1, p0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f0701b5

    invoke-static {p1, v2, v0}, Lk2/b0;->j(Landroid/content/Context;ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p1, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setTimerModeAux(Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    iget-object p1, p0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p1, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setTimerMode(Z)V

    return v1

    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p1, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setTimerModeAux(Z)V

    return v1
.end method

.method static bridge synthetic a(Lcom/nirenr/talkman/util/b;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/util/b;->q:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/nirenr/talkman/util/b;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/nirenr/talkman/util/b;->m:Z

    return p0
.end method

.method static bridge synthetic c(Lcom/nirenr/talkman/util/b;)I
    .locals 0

    iget p0, p0, Lcom/nirenr/talkman/util/b;->k:I

    return p0
.end method

.method static bridge synthetic d(Lcom/nirenr/talkman/util/b;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/util/b;->g:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic e(Lcom/nirenr/talkman/util/b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/util/b;->e:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic f(Lcom/nirenr/talkman/util/b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/util/b;->l:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic g(Lcom/nirenr/talkman/util/b;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/nirenr/talkman/util/b;->d:Z

    return p0
.end method

.method static bridge synthetic h(Lcom/nirenr/talkman/util/b;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/util/b;->i:[Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic i(Lcom/nirenr/talkman/util/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    return-object p0
.end method

.method static bridge synthetic j(Lcom/nirenr/talkman/util/b;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/util/b;->j:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic k(Lcom/nirenr/talkman/util/b;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/util/b;->p:[Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic l(Lcom/nirenr/talkman/util/b;I)V
    .locals 0

    iput p1, p0, Lcom/nirenr/talkman/util/b;->k:I

    return-void
.end method

.method static bridge synthetic m(Lcom/nirenr/talkman/util/b;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/util/b;->e:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic n(Lcom/nirenr/talkman/util/b;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/util/b;->l:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic o(Lcom/nirenr/talkman/util/b;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nirenr/talkman/util/b;->d:Z

    return-void
.end method

.method static bridge synthetic p(Lcom/nirenr/talkman/util/b;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/util/b;->p:[Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic q(Lcom/nirenr/talkman/util/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/nirenr/talkman/util/b;->w()V

    return-void
.end method

.method static bridge synthetic r(Lcom/nirenr/talkman/util/b;I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/nirenr/talkman/util/b;->F(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic s(Lcom/nirenr/talkman/util/b;Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/nirenr/talkman/util/b;->S(Landroid/view/accessibility/AccessibilityNodeInfo;I)V

    return-void
.end method

.method private t()Z
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

    sget-object v1, Lcom/nirenr/talkman/util/b;->s:Ljava/lang/String;

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

.method private w()V
    .locals 2

    invoke-direct {p0}, Lcom/nirenr/talkman/util/b;->t()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f07037f

    invoke-virtual {p0, v0}, Lcom/nirenr/talkman/util/b;->Q(I)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/nirenr/talkman/util/b;->I()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-instance v1, Lcom/nirenr/talkman/util/b$h;

    invoke-direct {v1, p0}, Lcom/nirenr/talkman/util/b$h;-><init>(Lcom/nirenr/talkman/util/b;)V

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getScreenShot(Lcom/nirenr/screencapture/ScreenCaptureListener;)V

    return-void
.end method

.method private y()V
    .locals 5

    iget-object v0, p0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v1, 0x7f0702c9

    invoke-direct {p0, v1}, Lcom/nirenr/talkman/util/b;->F(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0708ae

    invoke-direct {p0, v2}, Lcom/nirenr/talkman/util/b;->F(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lk2/b0;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2}, Lcom/nirenr/talkman/util/b;->F(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-class v4, Lcom/nirenr/talkman/settings/GestureSetting;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "RES_ID"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/androlua/LuaService;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0703af

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/nirenr/talkman/util/b$c;

    invoke-direct {v1, p0}, Lcom/nirenr/talkman/util/b$c;-><init>(Lcom/nirenr/talkman/util/b;)V

    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

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


# virtual methods
.method public A(Ljava/lang/String;Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v3

    :cond_1
    invoke-virtual/range {p0 .. p2}, Lcom/nirenr/talkman/util/b;->B(Ljava/lang/String;Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    return v4

    :cond_2
    iget-object v2, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-object/from16 v5, p1

    invoke-static {v2, v5}, Lcom/nirenr/talkman/o;->a(Lcom/nirenr/talkman/TalkManAccessibilityService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v5

    const-string v6, "\u8f93\u5165\u6cd5"

    const-string v7, "\u64cd\u4f5c"

    const-string v9, "\u590d\u5236"

    const/16 v10, 0xd

    const/4 v14, 0x5

    const-string v15, "\u7a0b\u5e8f"

    const/16 v8, 0xe

    const/4 v12, 0x2

    const/16 v13, 0xb

    const/16 v16, 0x4

    const/16 v17, 0x3

    const/16 v18, -0x1

    sparse-switch v5, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v5, "\u4ece\u4e91\u526a\u5207\u677f\u7c98\u8d34"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v5, 0xed

    const/16 v18, 0xed

    goto/16 :goto_0

    :sswitch_1
    const-string v5, "\u81ea\u52a8OCR\u8bc6\u522b"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v5, 0xec

    const/16 v18, 0xec

    goto/16 :goto_0

    :sswitch_2
    const-string v5, "\u81ea\u52a8\u6717\u8bfb\u6d88\u606f"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v5, 0xeb

    const/16 v18, 0xeb

    goto/16 :goto_0

    :sswitch_3
    const-string v5, "\u957f\u6587\u672c\u7f16\u8f91"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v5, 0xea

    const/16 v18, 0xea

    goto/16 :goto_0

    :sswitch_4
    const-string v5, "\u9009\u62e9\u5bfc\u822a\u7c7b\u578b"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v5, 0xe9

    const/16 v18, 0xe9

    goto/16 :goto_0

    :sswitch_5
    const-string v5, "\u8bed\u97f3\u8be2\u95ee\u5168\u5c4f"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v5, 0xe8

    const/16 v18, 0xe8

    goto/16 :goto_0

    :sswitch_6
    const-string v5, "\u589e\u5927\u8bfb\u5c4f\u97f3\u91cf"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v5, 0xe7

    const/16 v18, 0xe7

    goto/16 :goto_0

    :sswitch_7
    const-string v5, "\u5de6\u5feb\u6377\u529f\u80fd"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v5, 0xe6

    const/16 v18, 0xe6

    goto/16 :goto_0

    :sswitch_8
    const-string v5, "\u5e2e\u52a9\u4e0e\u53cd\u9988"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v5, 0xe5

    const/16 v18, 0xe5

    goto/16 :goto_0

    :sswitch_9
    const-string v5, "\u81ea\u5b9a\u4e49\u8bc6\u522b"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v5, 0xe4

    const/16 v18, 0xe4

    goto/16 :goto_0

    :sswitch_a
    const-string v5, "\u5f00\u59cb\u8bb0\u5f55\u65e5\u5fd7"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v5, 0xe3

    const/16 v18, 0xe3

    goto/16 :goto_0

    :sswitch_b
    const-string v5, "\u8bed\u97f3\u52a9\u624b\u8bbe\u7f6e"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v5, 0xe2

    const/16 v18, 0xe2

    goto/16 :goto_0

    :sswitch_c
    const-string v5, "\u9ed1\u5c4f\u6a21\u5f0f"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v5, 0xe1

    const/16 v18, 0xe1

    goto/16 :goto_0

    :sswitch_d
    const-string v5, "\u6682\u505c\u4e3b\u8bed\u97f3\u5408\u6210"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v5, 0xe0

    const/16 v18, 0xe0

    goto/16 :goto_0

    :sswitch_e
    const-string v5, "\u9ad8\u7ea7\u8bbe\u7f6e"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v5, 0xdf

    const/16 v18, 0xdf

    goto/16 :goto_0

    :sswitch_f
    const-string v5, "\u9ad8\u7ea7\u83dc\u5355"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v5, 0xde

    const/16 v18, 0xde

    goto/16 :goto_0

    :sswitch_10
    const-string v5, "\u9996\u9970\u8bf4\u660e"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v5, 0xdd

    const/16 v18, 0xdd

    goto/16 :goto_0

    :sswitch_11
    const-string v5, "\u9996\u9970\u5e2e\u52a9"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v5, 0xdc

    const/16 v18, 0xdc

    goto/16 :goto_0

    :sswitch_12
    const-string v5, "\u9605\u8bfb\u6a21\u5f0f"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v5, 0xdb

    const/16 v18, 0xdb

    goto/16 :goto_0

    :sswitch_13
    const-string v5, "\u901a\u77e5\u8bbe\u7f6e"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_16

    goto/16 :goto_0

    :cond_16
    const/16 v5, 0xda

    const/16 v18, 0xda

    goto/16 :goto_0

    :sswitch_14
    const-string v5, "\u901a\u77e5\u76d2\u5b50"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_17

    goto/16 :goto_0

    :cond_17
    const/16 v5, 0xd9

    const/16 v18, 0xd9

    goto/16 :goto_0

    :sswitch_15
    const-string v5, "\u9009\u62e9\u6a21\u5f0f"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_18

    goto/16 :goto_0

    :cond_18
    const/16 v5, 0xd8

    const/16 v18, 0xd8

    goto/16 :goto_0

    :sswitch_16
    const-string v5, "\u9010\u5b57\u89e3\u91ca"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_19

    goto/16 :goto_0

    :cond_19
    const/16 v5, 0xd7

    const/16 v18, 0xd7

    goto/16 :goto_0

    :sswitch_17
    const-string v5, "\u9010\u5b57\u6d4f\u89c8"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1a

    goto/16 :goto_0

    :cond_1a
    const/16 v5, 0xd6

    const/16 v18, 0xd6

    goto/16 :goto_0

    :sswitch_18
    const-string v5, "\u9010\u5b57\u6717\u8bfb"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1b

    goto/16 :goto_0

    :cond_1b
    const/16 v5, 0xd5

    const/16 v18, 0xd5

    goto/16 :goto_0

    :sswitch_19
    const-string v5, "\u9000\u51fa\u9ed1\u5c4f"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1c

    goto/16 :goto_0

    :cond_1c
    const/16 v5, 0xd4

    const/16 v18, 0xd4

    goto/16 :goto_0

    :sswitch_1a
    const-string v5, "\u8ffd\u52a0\u590d\u5236"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1d

    goto/16 :goto_0

    :cond_1d
    const/16 v5, 0xd3

    const/16 v18, 0xd3

    goto/16 :goto_0

    :sswitch_1b
    const-string v5, "\u8f85\u52a9\u529f\u80fd"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1e

    goto/16 :goto_0

    :cond_1e
    const/16 v5, 0xd2

    const/16 v18, 0xd2

    goto/16 :goto_0

    :sswitch_1c
    const-string v5, "\u8bed\u97f3\u8f93\u5165"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1f

    goto/16 :goto_0

    :cond_1f
    const/16 v5, 0xd1

    const/16 v18, 0xd1

    goto/16 :goto_0

    :sswitch_1d
    const-string v5, "\u8bed\u97f3\u8be2\u95ee"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_20

    goto/16 :goto_0

    :cond_20
    const/16 v5, 0xd0

    const/16 v18, 0xd0

    goto/16 :goto_0

    :sswitch_1e
    const-string v5, "\u8bed\u97f3\u8bbe\u7f6e"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_21

    goto/16 :goto_0

    :cond_21
    const/16 v5, 0xcf

    const/16 v18, 0xcf

    goto/16 :goto_0

    :sswitch_1f
    const-string v5, "\u8d44\u6e90\u7ba1\u7406"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_22

    goto/16 :goto_0

    :cond_22
    const/16 v5, 0xce

    const/16 v18, 0xce

    goto/16 :goto_0

    :sswitch_20
    const-string v5, "\u8d44\u6e90\u4e0b\u8f7d"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_23

    goto/16 :goto_0

    :cond_23
    const/16 v5, 0xcd

    const/16 v18, 0xcd

    goto/16 :goto_0

    :sswitch_21
    const-string v5, "\u8bed\u97f3\u52a9\u624b"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_24

    goto/16 :goto_0

    :cond_24
    const/16 v5, 0xcc

    const/16 v18, 0xcc

    goto/16 :goto_0

    :sswitch_22
    const-string v5, "\u8bbe\u7f6e\u5411\u5bfc"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_25

    goto/16 :goto_0

    :cond_25
    const/16 v5, 0xcb

    const/16 v18, 0xcb

    goto/16 :goto_0

    :sswitch_23
    const-string v5, "\u8c03\u6697\u5c4f\u5e55"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_26

    goto/16 :goto_0

    :cond_26
    const/16 v5, 0xca

    const/16 v18, 0xca

    goto/16 :goto_0

    :sswitch_24
    const-string v5, "\u89c6\u9891\u63cf\u8ff0"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_27

    goto/16 :goto_0

    :cond_27
    const/16 v5, 0xc9

    const/16 v18, 0xc9

    goto/16 :goto_0

    :sswitch_25
    const-string v5, "\u89e3\u8bf4\u793e\u533a"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_28

    goto/16 :goto_0

    :cond_28
    const/16 v5, 0xc8

    const/16 v18, 0xc8

    goto/16 :goto_0

    :sswitch_26
    const-string v5, "\u89e3\u8bf4\u76f8\u673a"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_29

    goto/16 :goto_0

    :cond_29
    const/16 v5, 0xc7

    const/16 v18, 0xc7

    goto/16 :goto_0

    :sswitch_27
    const-string v5, "\u8868\u683c\u8bc6\u522b"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2a

    goto/16 :goto_0

    :cond_2a
    const/16 v5, 0xc6

    const/16 v18, 0xc6

    goto/16 :goto_0

    :sswitch_28
    const-string v5, "\u865a\u62df\u5bfc\u822a"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2b

    goto/16 :goto_0

    :cond_2b
    const/16 v5, 0xc5

    const/16 v18, 0xc5

    goto/16 :goto_0

    :sswitch_29
    const-string v5, "\u865a\u62df\u5c4f\u5e55"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2c

    goto/16 :goto_0

    :cond_2c
    const/16 v5, 0xc4

    const/16 v18, 0xc4

    goto/16 :goto_0

    :sswitch_2a
    const-string v5, "\u8282\u70b9\u8be6\u60c5"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2d

    goto/16 :goto_0

    :cond_2d
    const/16 v5, 0xc3

    const/16 v18, 0xc3

    goto/16 :goto_0

    :sswitch_2b
    const-string v5, "\u8282\u70b9\u6d4f\u89c8"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2e

    goto/16 :goto_0

    :cond_2e
    const/16 v5, 0xc2

    const/16 v18, 0xc2

    goto/16 :goto_0

    :sswitch_2c
    const-string v5, "\u81ea\u52a8\u7ffb\u8bd1"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2f

    goto/16 :goto_0

    :cond_2f
    const/16 v5, 0xc1

    const/16 v18, 0xc1

    goto/16 :goto_0

    :sswitch_2d
    const-string v5, "\u81ea\u52a8\u6d4f\u89c8"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_30

    goto/16 :goto_0

    :cond_30
    const/16 v5, 0xc0

    const/16 v18, 0xc0

    goto/16 :goto_0

    :sswitch_2e
    const-string v5, "\u81ea\u52a8\u6717\u8bfb"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_31

    goto/16 :goto_0

    :cond_31
    const/16 v5, 0xbf

    const/16 v18, 0xbf

    goto/16 :goto_0

    :sswitch_2f
    const-string v5, "\u7f16\u8f91\u8bcd\u5178"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_32

    goto/16 :goto_0

    :cond_32
    const/16 v5, 0xbe

    const/16 v18, 0xbe

    goto/16 :goto_0

    :sswitch_30
    const-string v5, "\u7f16\u8f91\u624b\u52bf"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_33

    goto/16 :goto_0

    :cond_33
    const/16 v5, 0xbd

    const/16 v18, 0xbd

    goto/16 :goto_0

    :sswitch_31
    const-string v5, "\u7f51\u7edc\u4fe1\u606f"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_34

    goto/16 :goto_0

    :cond_34
    const/16 v5, 0xbc

    const/16 v18, 0xbc

    goto/16 :goto_0

    :sswitch_32
    const-string v5, "\u7f51\u683c\u6a21\u5f0f"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_35

    goto/16 :goto_0

    :cond_35
    const/16 v5, 0xbb

    const/16 v18, 0xbb

    goto/16 :goto_0

    :sswitch_33
    const-string v5, "\u7ed3\u675f\u8ba1\u65f6"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_36

    goto/16 :goto_0

    :cond_36
    const/16 v5, 0xba

    const/16 v18, 0xba

    goto/16 :goto_0

    :sswitch_34
    const-string v5, "\u7a0b\u5e8f\u8bbe\u7f6e"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_37

    goto/16 :goto_0

    :cond_37
    const/16 v5, 0xb9

    const/16 v18, 0xb9

    goto/16 :goto_0

    :sswitch_35
    const-string v5, "\u7535\u6c60\u7535\u91cf"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_38

    goto/16 :goto_0

    :cond_38
    const/16 v5, 0xb8

    const/16 v18, 0xb8

    goto/16 :goto_0

    :sswitch_36
    const-string v5, "\u7528\u6237\u4e2d\u5fc3"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_39

    goto/16 :goto_0

    :cond_39
    const/16 v5, 0xb7

    const/16 v18, 0xb7

    goto/16 :goto_0

    :sswitch_37
    const-string v5, "\u73b0\u5728\u65f6\u95f4"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3a

    goto/16 :goto_0

    :cond_3a
    const/16 v5, 0xb6

    const/16 v18, 0xb6

    goto/16 :goto_0

    :sswitch_38
    const-string v5, "\u7126\u70b9\u8bc6\u522b"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3b

    goto/16 :goto_0

    :cond_3b
    const/16 v5, 0xb5

    const/16 v18, 0xb5

    goto/16 :goto_0

    :sswitch_39
    const-string v5, "\u7126\u70b9\u83dc\u5355"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3c

    goto/16 :goto_0

    :cond_3c
    const/16 v5, 0xb4

    const/16 v18, 0xb4

    goto/16 :goto_0

    :sswitch_3a
    const-string v5, "\u7126\u70b9\u76d1\u63a7"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3d

    goto/16 :goto_0

    :cond_3d
    const/16 v5, 0xb3

    const/16 v18, 0xb3

    goto/16 :goto_0

    :sswitch_3b
    const-string v5, "\u7126\u70b9\u622a\u5c4f"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3e

    goto/16 :goto_0

    :cond_3e
    const/16 v5, 0xb2

    const/16 v18, 0xb2

    goto/16 :goto_0

    :sswitch_3c
    const-string v5, "\u70b9\u51fb\u6d4f\u89c8"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3f

    goto/16 :goto_0

    :cond_3f
    const/16 v5, 0xb1

    const/16 v18, 0xb1

    goto/16 :goto_0

    :sswitch_3d
    const-string v5, "\u70b9\u51fb\u6309\u4f4f"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_40

    goto/16 :goto_0

    :cond_40
    const/16 v5, 0xb0

    const/16 v18, 0xb0

    goto/16 :goto_0

    :sswitch_3e
    const-string v5, "\u6a21\u62df\u957f\u6309"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_41

    goto/16 :goto_0

    :cond_41
    const/16 v5, 0xaf

    const/16 v18, 0xaf

    goto/16 :goto_0

    :sswitch_3f
    const-string v5, "\u6a21\u62df\u70b9\u51fb"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_42

    goto/16 :goto_0

    :cond_42
    const/16 v5, 0xae

    const/16 v18, 0xae

    goto/16 :goto_0

    :sswitch_40
    const-string v5, "\u6a21\u62df\u5de6\u6ed1"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_43

    goto/16 :goto_0

    :cond_43
    const/16 v5, 0xad

    const/16 v18, 0xad

    goto/16 :goto_0

    :sswitch_41
    const-string v5, "\u6a21\u62df\u53f3\u6ed1"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_44

    goto/16 :goto_0

    :cond_44
    const/16 v5, 0xac

    const/16 v18, 0xac

    goto/16 :goto_0

    :sswitch_42
    const-string v5, "\u6a21\u62df\u53cc\u51fb"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_45

    goto/16 :goto_0

    :cond_45
    const/16 v5, 0xab

    const/16 v18, 0xab

    goto/16 :goto_0

    :sswitch_43
    const-string v5, "\u6a21\u62df\u4e0b\u6ed1"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_46

    goto/16 :goto_0

    :cond_46
    const/16 v5, 0xaa

    const/16 v18, 0xaa

    goto/16 :goto_0

    :sswitch_44
    const-string v5, "\u6a21\u62df\u4e0a\u6ed1"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_47

    goto/16 :goto_0

    :cond_47
    const/16 v5, 0xa9

    const/16 v18, 0xa9

    goto/16 :goto_0

    :sswitch_45
    const-string v5, "\u6781\u901f\u6d4f\u89c8"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_48

    goto/16 :goto_0

    :cond_48
    const/16 v5, 0xa8

    const/16 v18, 0xa8

    goto/16 :goto_0

    :sswitch_46
    const-string v5, "\u6700\u8fd1\u4efb\u52a1"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_49

    goto/16 :goto_0

    :cond_49
    const/16 v5, 0xa7

    const/16 v18, 0xa7

    goto/16 :goto_0

    :sswitch_47
    const-string v5, "\u6717\u8bfb\u5b57\u5e55"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4a

    goto/16 :goto_0

    :cond_4a
    const/16 v5, 0xa6

    const/16 v18, 0xa6

    goto/16 :goto_0

    :sswitch_48
    const-string v5, "\u65f6\u95f4\u7535\u91cf"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4b

    goto/16 :goto_0

    :cond_4b
    const/16 v5, 0xa5

    const/16 v18, 0xa5

    goto/16 :goto_0

    :sswitch_49
    const-string v5, "\u6682\u505c\u8ba1\u65f6"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4c

    goto/16 :goto_0

    :cond_4c
    const/16 v5, 0xa4

    const/16 v18, 0xa4

    goto/16 :goto_0

    :sswitch_4a
    const-string v5, "\u6587\u5b57\u8bc6\u522b"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4d

    goto/16 :goto_0

    :cond_4d
    const/16 v5, 0xa3

    const/16 v18, 0xa3

    goto/16 :goto_0

    :sswitch_4b
    const-string v5, "\u64ad\u653e\u6682\u505c"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4e

    goto/16 :goto_0

    :cond_4e
    const/16 v5, 0xa2

    const/16 v18, 0xa2

    goto/16 :goto_0

    :sswitch_4c
    const-string v5, "\u64ad\u653e\u63a7\u5236"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4f

    goto/16 :goto_0

    :cond_4f
    const/16 v5, 0xa1

    const/16 v18, 0xa1

    goto/16 :goto_0

    :sswitch_4d
    const-string v5, "\u64cd\u4f5c\u8bbe\u7f6e"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_50

    goto/16 :goto_0

    :cond_50
    const/16 v5, 0xa0

    const/16 v18, 0xa0

    goto/16 :goto_0

    :sswitch_4e
    const-string v5, "\u64cd\u4f5c\u83dc\u5355"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_51

    goto/16 :goto_0

    :cond_51
    const/16 v5, 0x9f

    const/16 v18, 0x9f

    goto/16 :goto_0

    :sswitch_4f
    const-string v5, "\u6307\u70b9\u6a21\u5f0f"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_52

    goto/16 :goto_0

    :cond_52
    const/16 v5, 0x9e

    const/16 v18, 0x9e

    goto/16 :goto_0

    :sswitch_50
    const-string v5, "\u63a5\u542c\u7535\u8bdd"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_53

    goto/16 :goto_0

    :cond_53
    const/16 v5, 0x9d

    const/16 v18, 0x9d

    goto/16 :goto_0

    :sswitch_51
    const-string v5, "\u6302\u65ad\u7535\u8bdd"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_54

    goto/16 :goto_0

    :cond_54
    const/16 v5, 0x9c

    const/16 v18, 0x9c

    goto/16 :goto_0

    :sswitch_52
    const-string v5, "\u63a7\u5236\u4e2d\u5fc3"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_55

    goto/16 :goto_0

    :cond_55
    const/16 v5, 0x9b

    const/16 v18, 0x9b

    goto/16 :goto_0

    :sswitch_53
    const-string v5, "\u6211\u7684\u4f4d\u7f6e"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_56

    goto/16 :goto_0

    :cond_56
    const/16 v5, 0x9a

    const/16 v18, 0x9a

    goto/16 :goto_0

    :sswitch_54
    const-string v5, "\u62ac\u624b\u6fc0\u6d3b"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_57

    goto/16 :goto_0

    :cond_57
    const/16 v5, 0x99

    const/16 v18, 0x99

    goto/16 :goto_0

    :sswitch_55
    const-string v5, "\u62c6\u5206\u7f16\u8f91"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_58

    goto/16 :goto_0

    :cond_58
    const/16 v5, 0x98

    const/16 v18, 0x98

    goto/16 :goto_0

    :sswitch_56
    const-string v5, "\u62c6\u5206\u6d4f\u89c8"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_59

    goto/16 :goto_0

    :cond_59
    const/16 v5, 0x97

    const/16 v18, 0x97

    goto/16 :goto_0

    :sswitch_57
    const-string v5, "\u6269\u5c55\u63d2\u4ef6"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5a

    goto/16 :goto_0

    :cond_5a
    const/16 v5, 0x96

    const/16 v18, 0x96

    goto/16 :goto_0

    :sswitch_58
    const-string v5, "\u6269\u5c55\u5de5\u5177"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5b

    goto/16 :goto_0

    :cond_5b
    const/16 v5, 0x95

    const/16 v18, 0x95

    goto/16 :goto_0

    :sswitch_59
    const-string v5, "\u624b\u52bf\u8bbe\u7f6e"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5c

    goto/16 :goto_0

    :cond_5c
    const/16 v5, 0x94

    const/16 v18, 0x94

    goto/16 :goto_0

    :sswitch_5a
    const-string v5, "\u624b\u52bf\u8bf4\u660e"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5d

    goto/16 :goto_0

    :cond_5d
    const/16 v5, 0x93

    const/16 v18, 0x93

    goto/16 :goto_0

    :sswitch_5b
    const-string v5, "\u624b\u52bf\u5e2e\u52a9"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5e

    goto/16 :goto_0

    :cond_5e
    const/16 v5, 0x92

    const/16 v18, 0x92

    goto/16 :goto_0

    :sswitch_5c
    const-string v5, "\u6211\u5728\u54ea\u91cc"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5f

    goto/16 :goto_0

    :cond_5f
    const/16 v5, 0x91

    const/16 v18, 0x91

    goto/16 :goto_0

    :sswitch_5d
    const-string v5, "\u5feb\u901f\u8bbe\u7f6e"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_60

    goto/16 :goto_0

    :cond_60
    const/16 v5, 0x90

    const/16 v18, 0x90

    goto/16 :goto_0

    :sswitch_5e
    const-string v5, "\u5feb\u901f\u6d4f\u89c8"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_61

    goto/16 :goto_0

    :cond_61
    const/16 v5, 0x8f

    const/16 v18, 0x8f

    goto/16 :goto_0

    :sswitch_5f
    const-string v5, "\u60c5\u666f\u6a21\u5f0f"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_62

    goto/16 :goto_0

    :cond_62
    const/16 v5, 0x8e

    const/16 v18, 0x8e

    goto/16 :goto_0

    :sswitch_60
    const-string v5, "\u5feb\u6377\u83dc\u5355"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_63

    goto/16 :goto_0

    :cond_63
    const/16 v5, 0x8d

    const/16 v18, 0x8d

    goto/16 :goto_0

    :sswitch_61
    const-string v5, "\u5e38\u7528\u8bbe\u7f6e"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_64

    goto/16 :goto_0

    :cond_64
    const/16 v5, 0x8c

    const/16 v18, 0x8c

    goto/16 :goto_0

    :sswitch_62
    const-string v5, "\u5f53\u524d\u7535\u91cf"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_65

    goto/16 :goto_0

    :cond_65
    const/16 v5, 0x8b

    const/16 v18, 0x8b

    goto/16 :goto_0

    :sswitch_63
    const-string v5, "\u5f53\u524d\u4f4d\u7f6e"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_66

    goto/16 :goto_0

    :cond_66
    const/16 v5, 0x8a

    const/16 v18, 0x8a

    goto/16 :goto_0

    :sswitch_64
    const-string v5, "\u5f53\u524d\u4eae\u5ea6"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_67

    goto/16 :goto_0

    :cond_67
    const/16 v5, 0x89

    const/16 v18, 0x89

    goto/16 :goto_0

    :sswitch_65
    const-string v5, "\u5f00\u59cb\u8ba1\u65f6"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_68

    goto/16 :goto_0

    :cond_68
    const/16 v5, 0x88

    const/16 v18, 0x88

    goto/16 :goto_0

    :sswitch_66
    const-string v5, "\u5f3a\u529b\u6a21\u5f0f"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_69

    goto/16 :goto_0

    :cond_69
    const/16 v5, 0x87

    const/16 v18, 0x87

    goto/16 :goto_0

    :sswitch_67
    const-string v5, "\u5de6\u6ed1\u7ffb\u9875"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6a

    goto/16 :goto_0

    :cond_6a
    const/16 v5, 0x86

    const/16 v18, 0x86

    goto/16 :goto_0

    :sswitch_68
    const-string v5, "\u591a\u6307\u624b\u52bf"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6b

    goto/16 :goto_0

    :cond_6b
    const/16 v5, 0x85

    const/16 v18, 0x85

    goto/16 :goto_0

    :sswitch_69
    const-string v5, "\u5907\u4efd\u7ba1\u7406"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6c

    goto/16 :goto_0

    :cond_6c
    const/16 v5, 0x84

    const/16 v18, 0x84

    goto/16 :goto_0

    :sswitch_6a
    const-string v5, "\u589e\u5927\u97f3\u91cf"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6d

    goto/16 :goto_0

    :cond_6d
    const/16 v5, 0x83

    const/16 v18, 0x83

    goto/16 :goto_0

    :sswitch_6b
    const-string v5, "\u589e\u52a0\u8fdb\u5ea6"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6e

    goto/16 :goto_0

    :cond_6e
    const/16 v5, 0x82

    const/16 v18, 0x82

    goto/16 :goto_0

    :sswitch_6c
    const-string v5, "\u56fe\u7247\u8bc6\u522b"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6f

    goto/16 :goto_0

    :cond_6f
    const/16 v5, 0x81

    const/16 v18, 0x81

    goto/16 :goto_0

    :sswitch_6d
    const-string v5, "\u56fe\u7247\u63cf\u8ff0"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_70

    goto/16 :goto_0

    :cond_70
    const/16 v5, 0x80

    const/16 v18, 0x80

    goto/16 :goto_0

    :sswitch_6e
    const-string v5, "\u56fe\u6807\u8bc6\u522b"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_71

    goto/16 :goto_0

    :cond_71
    const/16 v5, 0x7f

    const/16 v18, 0x7f

    goto/16 :goto_0

    :sswitch_6f
    const-string v5, "\u56fe\u50cf\u7406\u89e3"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_72

    goto/16 :goto_0

    :cond_72
    const/16 v5, 0x7e

    const/16 v18, 0x7e

    goto/16 :goto_0

    :sswitch_70
    const-string v5, "\u53cd\u9988\u8bbe\u7f6e"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_73

    goto/16 :goto_0

    :cond_73
    const/16 v5, 0x7d

    const/16 v18, 0x7d

    goto/16 :goto_0

    :sswitch_71
    const-string v5, "\u53d1\u9001\u65e5\u5fd7"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_74

    goto/16 :goto_0

    :cond_74
    const/16 v5, 0x7c

    const/16 v18, 0x7c

    goto/16 :goto_0

    :sswitch_72
    const-string v5, "\u542c\u7b52\u6a21\u5f0f"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_75

    goto/16 :goto_0

    :cond_75
    const/16 v5, 0x7b

    const/16 v18, 0x7b

    goto/16 :goto_0

    :sswitch_73
    const-string v5, "\u53f3\u6ed1\u7ffb\u9875"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_76

    goto/16 :goto_0

    :cond_76
    const/16 v5, 0x7a

    const/16 v18, 0x7a

    goto/16 :goto_0

    :sswitch_74
    const-string v5, "\u542c\u5199\u6a21\u5f0f"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_77

    goto/16 :goto_0

    :cond_77
    const/16 v5, 0x79

    const/16 v18, 0x79

    goto/16 :goto_0

    :sswitch_75
    const-string v5, "\u5411\u4e0b\u7ffb\u9875"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_78

    goto/16 :goto_0

    :cond_78
    const/16 v5, 0x78

    const/16 v18, 0x78

    goto/16 :goto_0

    :sswitch_76
    const-string v5, "\u5411\u4e0a\u7ffb\u9875"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_79

    goto/16 :goto_0

    :cond_79
    const/16 v5, 0x77

    const/16 v18, 0x77

    goto/16 :goto_0

    :sswitch_77
    const-string v5, "\u5411\u4e0a\u6d4f\u89c8"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7a

    goto/16 :goto_0

    :cond_7a
    const/16 v5, 0x76

    const/16 v18, 0x76

    goto/16 :goto_0

    :sswitch_78
    const-string v5, "\u5411\u4e0b\u6eda\u52a8"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7b

    goto/16 :goto_0

    :cond_7b
    const/16 v5, 0x75

    const/16 v18, 0x75

    goto/16 :goto_0

    :sswitch_79
    const-string v5, "\u5411\u4e0a\u6eda\u52a8"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7c

    goto/16 :goto_0

    :cond_7c
    const/16 v5, 0x74

    const/16 v18, 0x74

    goto/16 :goto_0

    :sswitch_7a
    const-string v5, "\u5217\u8868\u6d4f\u89c8"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7d

    goto/16 :goto_0

    :cond_7d
    const/16 v5, 0x73

    const/16 v18, 0x73

    goto/16 :goto_0

    :sswitch_7b
    const-string v5, "\u5173\u95ed\u5c4f\u5e55"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7e

    goto/16 :goto_0

    :cond_7e
    const/16 v5, 0x72

    const/16 v18, 0x72

    goto/16 :goto_0

    :sswitch_7c
    const-string v5, "\u5386\u53f2\u8bb0\u5f55"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7f

    goto/16 :goto_0

    :cond_7f
    const/16 v5, 0x71

    const/16 v18, 0x71

    goto/16 :goto_0

    :sswitch_7d
    const-string v5, "\u5168\u90e8\u8282\u70b9"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_80

    goto/16 :goto_0

    :cond_80
    const/16 v5, 0x70

    const/16 v18, 0x70

    goto/16 :goto_0

    :sswitch_7e
    const-string v5, "\u5168\u90e8\u505c\u6b62"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_81

    goto/16 :goto_0

    :cond_81
    const/16 v5, 0x6f

    const/16 v18, 0x6f

    goto/16 :goto_0

    :sswitch_7f
    const-string v5, "\u52a0\u5feb\u8bed\u901f"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_82

    goto/16 :goto_0

    :cond_82
    const/16 v5, 0x6e

    const/16 v18, 0x6e

    goto/16 :goto_0

    :sswitch_80
    const-string v5, "\u51cf\u6162\u8bed\u901f"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_83

    goto/16 :goto_0

    :cond_83
    const/16 v5, 0x6d

    const/16 v18, 0x6d

    goto/16 :goto_0

    :sswitch_81
    const-string v5, "\u51cf\u5c0f\u97f3\u91cf"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_84

    goto/16 :goto_0

    :cond_84
    const/16 v5, 0x6c

    const/16 v18, 0x6c

    goto/16 :goto_0

    :sswitch_82
    const-string v5, "\u51cf\u5c11\u8fdb\u5ea6"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_85

    goto/16 :goto_0

    :cond_85
    const/16 v5, 0x6b

    const/16 v18, 0x6b

    goto/16 :goto_0

    :sswitch_83
    const-string v5, "\u5173\u673a\u83dc\u5355"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_86

    goto/16 :goto_0

    :cond_86
    const/16 v5, 0x6a

    const/16 v18, 0x6a

    goto/16 :goto_0

    :sswitch_84
    const-string v5, "\u5168\u6587\u9009\u53d6"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_87

    goto/16 :goto_0

    :cond_87
    const/16 v5, 0x69

    const/16 v18, 0x69

    goto/16 :goto_0

    :sswitch_85
    const-string v5, "\u5168\u6587\u6d4f\u89c8"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_88

    goto/16 :goto_0

    :cond_88
    const/16 v5, 0x68

    const/16 v18, 0x68

    goto/16 :goto_0

    :sswitch_86
    const-string v5, "\u5168\u6587\u6717\u8bfb"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_89

    goto/16 :goto_0

    :cond_89
    const/16 v5, 0x67

    const/16 v18, 0x67

    goto/16 :goto_0

    :sswitch_87
    const-string v5, "\u5185\u5bb9\u8bbe\u7f6e"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8a

    goto/16 :goto_0

    :cond_8a
    const/16 v5, 0x66

    const/16 v18, 0x66

    goto/16 :goto_0

    :sswitch_88
    const-string v5, "\u5168\u5c4f\u6717\u8bfb"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8b

    goto/16 :goto_0

    :cond_8b
    const/16 v5, 0x65

    const/16 v18, 0x65

    goto/16 :goto_0

    :sswitch_89
    const-string v5, "\u4e0b\u6ed1\u7ffb\u9875"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8c

    goto/16 :goto_0

    :cond_8c
    const/16 v5, 0x64

    const/16 v18, 0x64

    goto/16 :goto_0

    :sswitch_8a
    const-string v5, "\u4e0a\u6ed1\u7ffb\u9875"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8d

    goto/16 :goto_0

    :cond_8d
    const/16 v5, 0x63

    const/16 v18, 0x63

    goto/16 :goto_0

    :sswitch_8b
    const-string v5, "\u4e0b\u4e2a\u94fe\u63a5"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8e

    goto/16 :goto_0

    :cond_8e
    const/16 v5, 0x62

    const/16 v18, 0x62

    goto/16 :goto_0

    :sswitch_8c
    const-string v5, "\u4e0a\u4e2a\u94fe\u63a5"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8f

    goto/16 :goto_0

    :cond_8f
    const/16 v5, 0x61

    const/16 v18, 0x61

    goto/16 :goto_0

    :sswitch_8d
    const-string v5, "\u4e0b\u4e2a\u7a97\u53e3"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_90

    goto/16 :goto_0

    :cond_90
    const/16 v5, 0x60

    const/16 v18, 0x60

    goto/16 :goto_0

    :sswitch_8e
    const-string v5, "\u4e0a\u4e2a\u7a97\u53e3"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_91

    goto/16 :goto_0

    :cond_91
    const/16 v5, 0x5f

    const/16 v18, 0x5f

    goto/16 :goto_0

    :sswitch_8f
    const-string v5, "\u4e0b\u4e2a\u7126\u70b9"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_92

    goto/16 :goto_0

    :cond_92
    const/16 v5, 0x5e

    const/16 v18, 0x5e

    goto/16 :goto_0

    :sswitch_90
    const-string v5, "\u4e0a\u4e2a\u7126\u70b9"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_93

    goto/16 :goto_0

    :cond_93
    const/16 v5, 0x5d

    const/16 v18, 0x5d

    goto/16 :goto_0

    :sswitch_91
    const-string v5, "\u4e0b\u4e2a\u6bb5\u843d"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_94

    goto/16 :goto_0

    :cond_94
    const/16 v5, 0x5c

    const/16 v18, 0x5c

    goto/16 :goto_0

    :sswitch_92
    const-string v5, "\u4e0b\u4e2a\u6807\u9898"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_95

    goto/16 :goto_0

    :cond_95
    const/16 v5, 0x5b

    const/16 v18, 0x5b

    goto/16 :goto_0

    :sswitch_93
    const-string v5, "\u4e0a\u4e2a\u6bb5\u843d"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_96

    goto/16 :goto_0

    :cond_96
    const/16 v5, 0x5a

    const/16 v18, 0x5a

    goto/16 :goto_0

    :sswitch_94
    const-string v5, "\u4e0a\u4e2a\u6807\u9898"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_97

    goto/16 :goto_0

    :cond_97
    const/16 v5, 0x59

    const/16 v18, 0x59

    goto/16 :goto_0

    :sswitch_95
    const-string v5, "\u4e0b\u4e2a\u63a7\u4ef6"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_98

    goto/16 :goto_0

    :cond_98
    const/16 v5, 0x58

    const/16 v18, 0x58

    goto/16 :goto_0

    :sswitch_96
    const-string v5, "\u4e0a\u4e2a\u63a7\u4ef6"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_99

    goto/16 :goto_0

    :cond_99
    const/16 v5, 0x57

    const/16 v18, 0x57

    goto/16 :goto_0

    :sswitch_97
    const-string v5, "\u4e0b\u4e2a\u5b57\u8bcd"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9a

    goto/16 :goto_0

    :cond_9a
    const/16 v5, 0x56

    const/16 v18, 0x56

    goto/16 :goto_0

    :sswitch_98
    const-string v5, "\u4e0b\u4e2a\u5b57\u7b26"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9b

    goto/16 :goto_0

    :cond_9b
    const/16 v5, 0x55

    const/16 v18, 0x55

    goto/16 :goto_0

    :sswitch_99
    const-string v5, "\u4e0a\u4e2a\u5b57\u8bcd"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9c

    goto/16 :goto_0

    :cond_9c
    const/16 v5, 0x54

    const/16 v18, 0x54

    goto/16 :goto_0

    :sswitch_9a
    const-string v5, "\u4e0a\u4e2a\u5b57\u7b26"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9d

    goto/16 :goto_0

    :cond_9d
    const/16 v5, 0x53

    const/16 v18, 0x53

    goto/16 :goto_0

    :sswitch_9b
    const-string v5, "\u4e0b\u4e2a\u53e5\u5b50"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9e

    goto/16 :goto_0

    :cond_9e
    const/16 v5, 0x52

    const/16 v18, 0x52

    goto/16 :goto_0

    :sswitch_9c
    const-string v5, "\u4e0a\u4e2a\u53e5\u5b50"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9f

    goto/16 :goto_0

    :cond_9f
    const/16 v5, 0x51

    const/16 v18, 0x51

    goto/16 :goto_0

    :sswitch_9d
    const-string v5, "\u9009\u62e9\u8f93\u5165\u6cd5"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a0

    goto/16 :goto_0

    :cond_a0
    const/16 v5, 0x50

    const/16 v18, 0x50

    goto/16 :goto_0

    :sswitch_9e
    const-string v5, "\u9009\u62e9\u8bed\u97f3\u5e93"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a1

    goto/16 :goto_0

    :cond_a1
    const/16 v5, 0x4f

    const/16 v18, 0x4f

    goto/16 :goto_0

    :sswitch_9f
    const-string v5, "\u56fe\u50cf\u7406\u89e3\u5168\u5c4f"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a2

    goto/16 :goto_0

    :cond_a2
    const/16 v5, 0x4e

    const/16 v18, 0x4e

    goto/16 :goto_0

    :sswitch_a0
    const-string v5, "[\u957f\u6309]"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a3

    goto/16 :goto_0

    :cond_a3
    const/16 v5, 0x4d

    const/16 v18, 0x4d

    goto/16 :goto_0

    :sswitch_a1
    const-string v5, "\u9a8c\u8bc1\u7801"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a4

    goto/16 :goto_0

    :cond_a4
    const/16 v5, 0x4c

    const/16 v18, 0x4c

    goto/16 :goto_0

    :sswitch_a2
    const-string v5, "\u957f\u590d\u5236"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a5

    goto/16 :goto_0

    :cond_a5
    const/16 v5, 0x4b

    const/16 v18, 0x4b

    goto/16 :goto_0

    :sswitch_a3
    const-string v5, "\u901a\u77e5\u680f"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a6

    goto/16 :goto_0

    :cond_a6
    const/16 v5, 0x4a

    const/16 v18, 0x4a

    goto/16 :goto_0

    :sswitch_a4
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a7

    goto/16 :goto_0

    :cond_a7
    const/16 v5, 0x49

    const/16 v18, 0x49

    goto/16 :goto_0

    :sswitch_a5
    const-string v5, "\u8ba1\u65f6\u5668"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a8

    goto/16 :goto_0

    :cond_a8
    const/16 v5, 0x48

    const/16 v18, 0x48

    goto/16 :goto_0

    :sswitch_a6
    const-string v5, "[\u70b9\u51fb]"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a9

    goto/16 :goto_0

    :cond_a9
    const/16 v5, 0x47

    const/16 v18, 0x47

    goto/16 :goto_0

    :sswitch_a7
    const-string v5, "\u672a\u9009\u62e9"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_aa

    goto/16 :goto_0

    :cond_aa
    const/16 v5, 0x46

    const/16 v18, 0x46

    goto/16 :goto_0

    :sswitch_a8
    const-string v5, "\u6536\u85cf\u5939"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_ab

    goto/16 :goto_0

    :cond_ab
    const/16 v5, 0x45

    const/16 v18, 0x45

    goto/16 :goto_0

    :sswitch_a9
    const-string v5, "\u65e0\u64cd\u4f5c"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_ac

    goto/16 :goto_0

    :cond_ac
    const/16 v5, 0x44

    const/16 v18, 0x44

    goto/16 :goto_0

    :sswitch_aa
    const-string v5, "\u89e3\u8bf4-\u7f16\u8f91\u5668"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_ad

    goto/16 :goto_0

    :cond_ad
    const/16 v5, 0x43

    const/16 v18, 0x43

    goto/16 :goto_0

    :sswitch_ab
    const-string v5, "\u5df2\u9009\u62e9"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_ae

    goto/16 :goto_0

    :cond_ae
    const/16 v5, 0x42

    const/16 v18, 0x42

    goto/16 :goto_0

    :sswitch_ac
    const-string v5, "[\u5411\u5de6]"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_af

    goto/16 :goto_0

    :cond_af
    const/16 v5, 0x41

    const/16 v18, 0x41

    goto/16 :goto_0

    :sswitch_ad
    const-string v5, "[\u5411\u53f3]"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b0

    goto/16 :goto_0

    :cond_b0
    const/16 v5, 0x40

    const/16 v18, 0x40

    goto/16 :goto_0

    :sswitch_ae
    const-string v5, "[\u5411\u4e0b]"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b1

    goto/16 :goto_0

    :cond_b1
    const/16 v5, 0x3f

    const/16 v18, 0x3f

    goto/16 :goto_0

    :sswitch_af
    const-string v5, "[\u5411\u4e0a]"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b2

    goto/16 :goto_0

    :cond_b2
    const/16 v5, 0x3e

    const/16 v18, 0x3e

    goto/16 :goto_0

    :sswitch_b0
    const-string v5, "[\u53cc\u51fb]"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b3

    goto/16 :goto_0

    :cond_b3
    const/16 v5, 0x3d

    const/16 v18, 0x3d

    goto/16 :goto_0

    :sswitch_b1
    const-string v5, "\u526a\u5207\u677f"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b4

    goto/16 :goto_0

    :cond_b4
    const/16 v5, 0x3c

    const/16 v18, 0x3c

    goto/16 :goto_0

    :sswitch_b2
    const-string v5, "\u89e3\u8bf4-\u6d4f\u89c8\u5668"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b5

    goto/16 :goto_0

    :cond_b5
    const/16 v5, 0x3b

    const/16 v18, 0x3b

    goto/16 :goto_0

    :sswitch_b3
    const-string v5, "\u4e3b\u83dc\u5355"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b6

    goto/16 :goto_0

    :cond_b6
    const/16 v5, 0x3a

    const/16 v18, 0x3a

    goto/16 :goto_0

    :sswitch_b4
    const-string v5, "\u4e3b\u5c4f\u5e55"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b7

    goto/16 :goto_0

    :cond_b7
    const/16 v5, 0x39

    const/16 v18, 0x39

    goto/16 :goto_0

    :sswitch_b5
    const-string v5, "\u4e0b\u4e00\u9875"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b8

    goto/16 :goto_0

    :cond_b8
    const/16 v5, 0x38

    const/16 v18, 0x38

    goto/16 :goto_0

    :sswitch_b6
    const-string v5, "\u4e0a\u4e00\u9875"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b9

    goto/16 :goto_0

    :cond_b9
    const/16 v5, 0x37

    const/16 v18, 0x37

    goto/16 :goto_0

    :sswitch_b7
    const-string v5, "\u4e0b\u4e00\u66f2"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_ba

    goto/16 :goto_0

    :cond_ba
    const/16 v5, 0x36

    const/16 v18, 0x36

    goto/16 :goto_0

    :sswitch_b8
    const-string v5, "\u4e0a\u4e00\u66f2"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_bb

    goto/16 :goto_0

    :cond_bb
    const/16 v5, 0x35

    const/16 v18, 0x35

    goto/16 :goto_0

    :sswitch_b9
    const-string v5, "\u4e0b\u4e00\u4e2a"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_bc

    goto/16 :goto_0

    :cond_bc
    const/16 v5, 0x34

    const/16 v18, 0x34

    goto/16 :goto_0

    :sswitch_ba
    const-string v5, "\u4e0a\u4e00\u4e2a"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_bd

    goto/16 :goto_0

    :cond_bd
    const/16 v5, 0x33

    const/16 v18, 0x33

    goto/16 :goto_0

    :sswitch_bb
    const-string v5, "\u957f\u6309"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_be

    goto/16 :goto_0

    :cond_be
    const/16 v5, 0x32

    const/16 v18, 0x32

    goto/16 :goto_0

    :sswitch_bc
    const-string v5, "\u94fe\u63a5"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_bf

    goto/16 :goto_0

    :cond_bf
    const/16 v5, 0x31

    const/16 v18, 0x31

    goto/16 :goto_0

    :sswitch_bd
    const-string v5, "\u9501\u5c4f"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c0

    goto/16 :goto_0

    :cond_c0
    const/16 v5, 0x30

    const/16 v18, 0x30

    goto/16 :goto_0

    :sswitch_be
    const-string v5, "\u8fd4\u56de"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c1

    goto/16 :goto_0

    :cond_c1
    const/16 v5, 0x2f

    const/16 v18, 0x2f

    goto/16 :goto_0

    :sswitch_bf
    const-string v5, "\u9009\u4e2d"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c2

    goto/16 :goto_0

    :cond_c2
    const/16 v5, 0x2e

    const/16 v18, 0x2e

    goto/16 :goto_0

    :sswitch_c0
    const-string v5, "\u89e3\u9501"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c3

    goto/16 :goto_0

    :cond_c3
    const/16 v5, 0x2d

    const/16 v18, 0x2d

    goto/16 :goto_0

    :sswitch_c1
    const-string v5, "\u7ffb\u8bd1"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c4

    goto/16 :goto_0

    :cond_c4
    const/16 v5, 0x2c

    const/16 v18, 0x2c

    goto/16 :goto_0

    :sswitch_c2
    const-string v5, "\u7ed3\u5c3e"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c5

    goto/16 :goto_0

    :cond_c5
    const/16 v5, 0x2b

    const/16 v18, 0x2b

    goto/16 :goto_0

    :sswitch_c3
    const-string v5, "\u7c98\u8d34"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c6

    goto/16 :goto_0

    :cond_c6
    const/16 v5, 0x2a

    const/16 v18, 0x2a

    goto/16 :goto_0

    :sswitch_c4
    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c7

    goto/16 :goto_0

    :cond_c7
    const/16 v5, 0x29

    const/16 v18, 0x29

    goto/16 :goto_0

    :sswitch_c5
    const-string v5, "\u7535\u91cf"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c8

    goto/16 :goto_0

    :cond_c8
    const/16 v5, 0x28

    const/16 v18, 0x28

    goto/16 :goto_0

    :sswitch_c6
    const-string v5, "\u70b9\u51fb"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c9

    goto/16 :goto_0

    :cond_c9
    const/16 v5, 0x27

    const/16 v18, 0x27

    goto/16 :goto_0

    :sswitch_c7
    const-string v5, "\u6e05\u7a7a"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_ca

    goto/16 :goto_0

    :cond_ca
    const/16 v5, 0x26

    const/16 v18, 0x26

    goto/16 :goto_0

    :sswitch_c8
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_cb

    goto/16 :goto_0

    :cond_cb
    const/16 v5, 0x25

    const/16 v18, 0x25

    goto/16 :goto_0

    :sswitch_c9
    const-string v5, "\u63d0\u53d6"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_cc

    goto/16 :goto_0

    :cond_cc
    const/16 v5, 0x24

    const/16 v18, 0x24

    goto/16 :goto_0

    :sswitch_ca
    const-string v5, "\u622a\u5c4f"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_cd

    goto/16 :goto_0

    :cond_cd
    const/16 v5, 0x23

    const/16 v18, 0x23

    goto/16 :goto_0

    :sswitch_cb
    const-string v5, "\u5feb\u9000"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_ce

    goto/16 :goto_0

    :cond_ce
    const/16 v5, 0x22

    const/16 v18, 0x22

    goto/16 :goto_0

    :sswitch_cc
    const-string v5, "\u5feb\u8fdb"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_cf

    goto/16 :goto_0

    :cond_cf
    const/16 v5, 0x21

    const/16 v18, 0x21

    goto/16 :goto_0

    :sswitch_cd
    const-string v5, "\u5ef6\u65f6"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d0

    goto/16 :goto_0

    :cond_d0
    const/16 v5, 0x20

    const/16 v18, 0x20

    goto/16 :goto_0

    :sswitch_ce
    const-string v5, "\u5f00\u5934"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d1

    goto/16 :goto_0

    :cond_d1
    const/16 v18, 0x1f

    goto/16 :goto_0

    :sswitch_cf
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d2

    goto/16 :goto_0

    :cond_d2
    const/16 v5, 0x1e

    const/16 v18, 0x1e

    goto/16 :goto_0

    :sswitch_d0
    const-string v5, "\u53ef\u89c1"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d3

    goto/16 :goto_0

    :cond_d3
    const/16 v5, 0x1d

    const/16 v18, 0x1d

    goto/16 :goto_0

    :sswitch_d1
    const-string v5, "\u53cc\u51fb"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d4

    goto/16 :goto_0

    :cond_d4
    const/16 v5, 0x1c

    const/16 v18, 0x1c

    goto/16 :goto_0

    :sswitch_d2
    const-string v5, "\u5206\u5c4f"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d5

    goto/16 :goto_0

    :cond_d5
    const/16 v5, 0x1b

    const/16 v18, 0x1b

    goto/16 :goto_0

    :sswitch_d3
    const-string v5, "\u5173\u5c4f"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d6

    goto/16 :goto_0

    :cond_d6
    const/16 v5, 0x1a

    const/16 v18, 0x1a

    goto/16 :goto_0

    :sswitch_d4
    const-string v5, "\u65e0"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d7

    goto/16 :goto_0

    :cond_d7
    const/16 v5, 0x19

    const/16 v18, 0x19

    goto/16 :goto_0

    :sswitch_d5
    const-string v5, "\u7f16\u8f91\u7126\u70b9\u522b\u540d"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d8

    goto/16 :goto_0

    :cond_d8
    const/16 v5, 0x18

    const/16 v18, 0x18

    goto/16 :goto_0

    :sswitch_d6
    const-string v5, "\u51cf\u5c0f\u8bfb\u5c4f\u97f3\u91cf"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d9

    goto/16 :goto_0

    :cond_d9
    const/16 v5, 0x17

    const/16 v18, 0x17

    goto/16 :goto_0

    :sswitch_d7
    const-string v5, "\u56fe\u7247\u63cf\u8ff0\u5168\u5c4f"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_da

    goto/16 :goto_0

    :cond_da
    const/16 v5, 0x16

    const/16 v18, 0x16

    goto/16 :goto_0

    :sswitch_d8
    const-string v5, "\u8bc6\u522b\u9a8c\u8bc1\u7801"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_db

    goto/16 :goto_0

    :cond_db
    const/16 v5, 0x15

    const/16 v18, 0x15

    goto/16 :goto_0

    :sswitch_d9
    const-string v5, "\u53f3\u5feb\u6377\u529f\u80fd"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_dc

    goto/16 :goto_0

    :cond_dc
    const/16 v5, 0x14

    const/16 v18, 0x14

    goto/16 :goto_0

    :sswitch_da
    const-string v5, "\u6682\u505c\u5feb\u6377\u952e"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_dd

    goto/16 :goto_0

    :cond_dd
    const/16 v5, 0x13

    const/16 v18, 0x13

    goto/16 :goto_0

    :sswitch_db
    const-string v5, "\u6717\u8bfb\u5168\u90e8\u901a\u77e5"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_de

    goto/16 :goto_0

    :cond_de
    const/16 v5, 0x12

    const/16 v18, 0x12

    goto/16 :goto_0

    :sswitch_dc
    const-string v5, "\u9a8c\u8bc1\u7801\u8bc6\u522b"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_df

    goto/16 :goto_0

    :cond_df
    const/16 v5, 0x11

    const/16 v18, 0x11

    goto/16 :goto_0

    :sswitch_dd
    const-string v5, "\u81ea\u52a8\u6717\u8bfb\u6d88\u606f\u8bb0\u5f55"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e0

    goto/16 :goto_0

    :cond_e0
    const/16 v5, 0x10

    const/16 v18, 0x10

    goto/16 :goto_0

    :sswitch_de
    const-string v5, "\u5207\u6362\u8bed\u97f3\u5e93"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e1

    goto/16 :goto_0

    :cond_e1
    const/16 v5, 0xf

    const/16 v18, 0xf

    goto/16 :goto_0

    :sswitch_df
    const-string v5, "\u590d\u5236\u5230\u4e91\u526a\u5207\u677f"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e2

    goto/16 :goto_0

    :cond_e2
    const/16 v18, 0xe

    goto/16 :goto_0

    :sswitch_e0
    const-string v5, "\u4e0b\u4e2a\u5bfc\u822a\u9879\u76ee"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e3

    goto/16 :goto_0

    :cond_e3
    const/16 v18, 0xd

    goto/16 :goto_0

    :sswitch_e1
    const-string v5, "\u4e0b\u4e2a\u5bfc\u822a\u7c7b\u578b"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e4

    goto/16 :goto_0

    :cond_e4
    const/16 v18, 0xc

    goto/16 :goto_0

    :sswitch_e2
    const-string v5, "\u4e0a\u4e2a\u5bfc\u822a\u9879\u76ee"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e5

    goto/16 :goto_0

    :cond_e5
    const/16 v18, 0xb

    goto/16 :goto_0

    :sswitch_e3
    const-string v5, "\u4e0a\u4e2a\u5bfc\u822a\u7c7b\u578b"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e6

    goto/16 :goto_0

    :cond_e6
    const/16 v18, 0xa

    goto/16 :goto_0

    :sswitch_e4
    const-string v5, "\u6682\u505c\u8fb9\u7f18\u624b\u52bf"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e7

    goto/16 :goto_0

    :cond_e7
    const/16 v18, 0x9

    goto/16 :goto_0

    :sswitch_e5
    const-string v5, "\u6682\u505c\u65e0\u969c\u788d\u97f3\u91cf"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e8

    goto/16 :goto_0

    :cond_e8
    const/16 v18, 0x8

    goto/16 :goto_0

    :sswitch_e6
    const-string v5, "\u6682\u505c\u8bed\u97f3\u53cd\u9988"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e9

    goto :goto_0

    :cond_e9
    const/16 v18, 0x7

    goto :goto_0

    :sswitch_e7
    const-string v5, "\u6682\u505c\u8bfb\u5c4f\u624b\u52bf"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_ea

    goto :goto_0

    :cond_ea
    const/16 v18, 0x6

    goto :goto_0

    :sswitch_e8
    const-string v5, "\u6682\u505c\u89e6\u6478\u6d4f\u89c8"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_eb

    goto :goto_0

    :cond_eb
    const/16 v18, 0x5

    goto :goto_0

    :sswitch_e9
    const-string v5, "\u6253\u5f00\u901a\u77e5\u680f"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_ec

    goto :goto_0

    :cond_ec
    const/16 v18, 0x4

    goto :goto_0

    :sswitch_ea
    const-string v5, "\u6dfb\u52a0\u5185\u5bb9\u9ed1\u540d\u5355"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_ed

    goto :goto_0

    :cond_ed
    const/16 v18, 0x3

    goto :goto_0

    :sswitch_eb
    const-string v5, "\u9632\u8bef\u89e6\u6a21\u5f0f"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_ee

    goto :goto_0

    :cond_ee
    const/16 v18, 0x2

    goto :goto_0

    :sswitch_ec
    const-string v5, "\u6682\u505c\u526f\u8bed\u97f3\u5408\u6210"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_ef

    goto :goto_0

    :cond_ef
    const/16 v18, 0x1

    goto :goto_0

    :sswitch_ed
    const-string v5, "\u7126\u70b9\u76d1\u63a7\u7ba1\u7406"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f0

    goto :goto_0

    :cond_f0
    const/16 v18, 0x0

    :goto_0
    const-string v5, ""

    const/high16 v11, 0x10000000

    packed-switch v18, :pswitch_data_0

    iget-object v8, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v8}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isDebug()Z

    move-result v8

    if-eqz v8, :cond_f1

    const-string v8, "execute"

    invoke-virtual {v0, v8, v2}, Lcom/nirenr/talkman/util/b;->K(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_f1
    const-string v8, "/"

    invoke-virtual {v2, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-le v8, v4, :cond_105

    invoke-virtual {v2, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    iget-object v11, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v11, v10}, Lcom/nirenr/talkman/o;->a(Lcom/nirenr/talkman/TalkManAccessibilityService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    add-int/2addr v8, v4

    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v8, "\u63d2\u4ef6"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f2

    iget-object v3, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v3, v10, v2, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->plugin(Ljava/lang/String;Ljava/lang/String;Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_f2
    const-string v8, "\u6307\u4ee4"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f3

    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v10, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->cmd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_f3
    const-string v8, "\u5de5\u5177"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f4

    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v10, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->tool(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_1

    :cond_f4
    const-string v8, "\u624b\u52bf"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f5

    iget-object v3, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v3, v10, v2}, Lcom/androlua/LuaService;->getLuaExtPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->doBooleanFile(Ljava/lang/String;Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    goto/16 :goto_1

    :cond_f5
    const-string v8, "\u5bfc\u822a"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f6

    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->navigation(Ljava/lang/String;)Z

    move-result v1

    return v1

    :cond_f6
    const-string v8, "\u529f\u80fd"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f7

    invoke-virtual {v0, v2, v1}, Lcom/nirenr/talkman/util/b;->z(Ljava/lang/String;Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v1

    return v1

    :cond_f7
    const-string v8, "\u6717\u8bfb"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f8

    invoke-virtual {v0, v2}, Lcom/nirenr/talkman/util/b;->R(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_f8
    const-string v8, "\u8f93\u5165"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_fa

    iget-object v3, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v3, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isEditable(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v3

    if-eqz v3, :cond_f9

    iget-object v3, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v3, v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setText(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Z

    goto/16 :goto_1

    :cond_f9
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setText(Ljava/lang/String;)Z

    goto/16 :goto_1

    :cond_fa
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_fb

    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->startApp(Ljava/lang/String;)Z

    goto/16 :goto_1

    :cond_fb
    const-string v8, "\u7528\u6237\u540d"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_fc

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/androlua/LuaApplication;->getUserName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    :cond_fc
    const-string v8, "\u7528\u6237ID"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_fd

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/androlua/LuaApplication;->getUserId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    :cond_fd
    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_fe

    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->copy(Ljava/lang/CharSequence;)Z

    move-result v1

    return v1

    :cond_fe
    const-string v5, "\u8ffd\u52a0\u590d\u5236"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ff

    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->appendCopy(Ljava/lang/CharSequence;)Z

    move-result v1

    return v1

    :cond_ff
    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_100

    iget-object v3, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v3, v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->execute_action(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Z

    move-result v1

    return v1

    :cond_100
    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_101

    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->sendKey(Ljava/lang/String;)V

    goto :goto_1

    :cond_101
    const-string v1, "\u8ba1\u65f6"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_103

    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isTimerMode()Z

    move-result v1

    if-eqz v1, :cond_102

    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setTimerMode(Z)V

    return v4

    :cond_102
    invoke-direct {v0, v2}, Lcom/nirenr/talkman/util/b;->T(Ljava/lang/String;)Z

    goto :goto_1

    :cond_103
    const-string v1, "\u60c5\u666f\u6a21\u5f0f"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_104

    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setProfiles(Ljava/lang/String;)V

    goto :goto_1

    :cond_104
    const-string v1, "\u4e3b\u8bed\u97f3\u5e93"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_105

    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setTtsEngine(Ljava/lang/String;)V

    :goto_1
    return v4

    :cond_105
    return v3

    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v5, 0x7f0700bd

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/nirenr/talkman/util/b;->C(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)V

    goto/16 :goto_13

    :pswitch_1
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isUseOCR()Z

    move-result v2

    xor-int/2addr v2, v4

    invoke-virtual {v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseOCR(Z)V

    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isUseOCR()Z

    move-result v1

    if-eqz v1, :cond_106

    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f0703c8

    goto/16 :goto_3

    :cond_106
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f0703bf

    goto/16 :goto_3

    :pswitch_2
    iget-object v2, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setAutoSpeak(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto/16 :goto_13

    :pswitch_3
    new-instance v2, Lh2/o;

    iget-object v3, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {v2, v3, v1}, Lh2/o;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-virtual {v2}, Lh2/o;->a()V

    goto/16 :goto_13

    :pswitch_4
    iget-object v2, v0, Lcom/nirenr/talkman/util/b;->b:Lcom/nirenr/talkman/n;

    invoke-virtual {v2, v1}, Lcom/nirenr/talkman/n;->c0(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto/16 :goto_13

    :pswitch_5
    new-instance v2, Lh2/b;

    iget-object v3, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {v2, v3}, Lh2/b;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;)V

    invoke-virtual {v2, v8, v1}, Lh2/b;->f(ILandroid/view/accessibility/AccessibilityNodeInfo;)V

    goto/16 :goto_13

    :pswitch_6
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->raiseVolume2()V

    goto/16 :goto_13

    :pswitch_7
    iget-object v2, v0, Lcom/nirenr/talkman/util/b;->b:Lcom/nirenr/talkman/n;

    invoke-virtual {v2, v1}, Lcom/nirenr/talkman/n;->O(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    goto/16 :goto_13

    :pswitch_8
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-class v5, Lcom/nirenr/talkman/settings/HelpFeedSetting;

    invoke-direct {v2, v3, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto/16 :goto_7

    :pswitch_9
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->ocrScreen()Z

    goto/16 :goto_13

    :pswitch_a
    iget-object v2, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->startDebug(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto/16 :goto_13

    :pswitch_b
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-class v5, Lcom/nirenr/talkman/settings/VoiceHelperSetting;

    invoke-direct {v2, v3, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto/16 :goto_7

    :pswitch_c
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isTTSEnabled()Z

    move-result v2

    xor-int/2addr v2, v4

    invoke-virtual {v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setTTSEnabled(Z)V

    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isTTSEnabled()Z

    move-result v2

    if-eqz v2, :cond_12c

    goto/16 :goto_11

    :pswitch_d
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-class v5, Lcom/nirenr/talkman/settings/AdvancedSetting;

    invoke-direct {v2, v3, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto/16 :goto_7

    :pswitch_e
    new-instance v2, Lh2/b;

    iget-object v3, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {v2, v3}, Lh2/b;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;)V

    invoke-virtual {v2, v1}, Lh2/b;->g(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto/16 :goto_13

    :pswitch_f
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->startReadMode()Z

    goto/16 :goto_13

    :pswitch_10
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-class v5, Lcom/nirenr/talkman/settings/NotificationSetting;

    invoke-direct {v2, v3, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto/16 :goto_7

    :pswitch_11
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->showNotificationBox()V

    goto/16 :goto_13

    :pswitch_12
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isSelectionMode()Z

    move-result v2

    xor-int/2addr v2, v4

    invoke-virtual {v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setSelectionMode(Z)V

    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isSelectionMode()Z

    move-result v2

    if-eqz v2, :cond_107

    const v2, 0x7f070449

    goto/16 :goto_10

    :cond_107
    const v2, 0x7f0703ad

    goto/16 :goto_10

    :pswitch_13
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isCharMode()Z

    move-result v2

    xor-int/2addr v2, v4

    invoke-virtual {v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setCharMode(Z)V

    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isCharMode()Z

    move-result v1

    if-eqz v1, :cond_108

    const v1, 0x7f07009b

    goto :goto_2

    :cond_108
    const v1, 0x7f070295

    goto :goto_2

    :pswitch_14
    iget-object v2, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getText(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->splitSpeak(Ljava/lang/String;)V

    goto/16 :goto_13

    :pswitch_15
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->c:Lk2/g;

    invoke-virtual {v1, v3}, Lk2/g;->l(Z)V

    :cond_109
    const v1, 0x7f07038b

    :goto_2
    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/util/b;->Q(I)V

    goto/16 :goto_13

    :pswitch_16
    iget-object v2, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getText(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->appendCopy(Ljava/lang/CharSequence;)Z

    const v1, 0x7f070371

    goto :goto_2

    :pswitch_17
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.ACCESSIBILITY_SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto/16 :goto_7

    :pswitch_18
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getEditText()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    if-nez v1, :cond_10a

    const v1, 0x7f070255

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/util/b;->Q(I)V

    return v3

    :cond_10a
    iget-object v2, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->startInput(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto/16 :goto_13

    :pswitch_19
    new-instance v2, Lh2/b;

    iget-object v3, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {v2, v3}, Lh2/b;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;)V

    invoke-virtual {v2, v10, v1}, Lh2/b;->f(ILandroid/view/accessibility/AccessibilityNodeInfo;)V

    goto/16 :goto_13

    :pswitch_1a
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-class v5, Lcom/nirenr/talkman/settings/VoiceSetting;

    invoke-direct {v2, v3, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto/16 :goto_7

    :pswitch_1b
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-class v5, Lcom/nirenr/talkman/settings/ManagerActivity;

    invoke-direct {v2, v3, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto/16 :goto_7

    :pswitch_1c
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-class v5, Lcom/nirenr/talkman/DownloadActivity;

    invoke-direct {v2, v3, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto/16 :goto_7

    :pswitch_1d
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->startListening()V

    goto/16 :goto_13

    :pswitch_1e
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-class v5, Lcom/nirenr/talkman/SetupActivity;

    invoke-direct {v2, v3, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto/16 :goto_9

    :pswitch_1f
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->c:Lk2/g;

    invoke-virtual {v1}, Lk2/g;->e()Z

    move-result v2

    xor-int/2addr v2, v4

    invoke-virtual {v1, v2}, Lk2/g;->l(Z)V

    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->c:Lk2/g;

    invoke-virtual {v1}, Lk2/g;->e()Z

    move-result v1

    if-eqz v1, :cond_109

    const v1, 0x7f070382

    goto/16 :goto_2

    :pswitch_20
    iput-boolean v4, v0, Lcom/nirenr/talkman/util/b;->d:Z

    iput-boolean v4, v0, Lcom/nirenr/talkman/util/b;->o:Z

    iput v3, v0, Lcom/nirenr/talkman/util/b;->k:I

    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f07044a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/util/b;->R(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/nirenr/talkman/util/b;->w()V

    goto/16 :goto_13

    :pswitch_21
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-class v5, Lcom/androlua/LuaActivityX;

    invoke-direct {v2, v3, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v3, Ljava/io/File;

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v5

    const-string v6, "bbs"

    const-string v7, "main.lua"

    invoke-virtual {v5, v6, v7}, Lcom/androlua/LuaApplication;->getLuaPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v2

    goto/16 :goto_7

    :pswitch_22
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-class v5, Lcom/nirenr/talkman/CameraActivity;

    invoke-direct {v2, v3, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto/16 :goto_7

    :pswitch_23
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->showVirtualTableScreen()V

    goto/16 :goto_13

    :pswitch_24
    invoke-direct {v0, v1}, Lcom/nirenr/talkman/util/b;->P(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto/16 :goto_13

    :pswitch_25
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->showVirtualScreen()V

    goto/16 :goto_13

    :pswitch_26
    iget-object v2, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->showNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto/16 :goto_13

    :pswitch_27
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isUseNode()Z

    move-result v2

    xor-int/2addr v2, v4

    invoke-virtual {v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseNode(Z)V

    goto/16 :goto_13

    :pswitch_28
    invoke-direct/range {p0 .. p0}, Lcom/nirenr/talkman/util/b;->t()Z

    move-result v1

    if-nez v1, :cond_10b

    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f0703a6

    :goto_3
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_e

    :cond_10b
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isAutoTrans()Z

    move-result v2

    xor-int/2addr v2, v4

    invoke-virtual {v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setAutoTrans(Z)V

    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isAutoTrans()Z

    move-result v1

    if-eqz v1, :cond_10c

    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f070446

    goto :goto_3

    :cond_10c
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f07044d

    goto :goto_3

    :pswitch_29
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isScreenOn()Z

    move-result v1

    if-nez v1, :cond_10d

    return v4

    :cond_10d
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->allStop()V

    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v4}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setAutoNext(Z)V

    const v1, 0x7f070053

    goto/16 :goto_2

    :pswitch_2a
    iget-object v2, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->editDict(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto/16 :goto_13

    :pswitch_2b
    invoke-direct/range {p0 .. p0}, Lcom/nirenr/talkman/util/b;->t()Z

    move-result v2

    if-eqz v2, :cond_10e

    iget-object v2, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getAppName(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-instance v3, Landroid/content/Intent;

    iget-object v5, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-class v6, Lcom/nirenr/talkman/settings/GestureSetting;

    invoke-direct {v3, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "RES_ID"

    invoke-virtual {v3, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/androlua/LuaService;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_13

    :cond_10e
    invoke-direct/range {p0 .. p0}, Lcom/nirenr/talkman/util/b;->y()V

    goto/16 :goto_13

    :pswitch_2c
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speakNetInfo()V

    goto/16 :goto_13

    :pswitch_2d
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->showGrid()V

    goto/16 :goto_13

    :pswitch_2e
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setTimerMode(Z)V

    goto/16 :goto_13

    :pswitch_2f
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-class v5, Lcom/nirenr/talkman/TalkManActivity;

    invoke-direct {v2, v3, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto/16 :goto_7

    :pswitch_30
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-class v5, Lcom/nirenr/talkman/settings/UserSetting;

    invoke-direct {v2, v3, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto/16 :goto_7

    :pswitch_31
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speakTime()V

    goto/16 :goto_13

    :pswitch_32
    iget-object v2, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-instance v3, Lcom/nirenr/talkman/util/b$f;

    invoke-direct {v3, v0}, Lcom/nirenr/talkman/util/b$f;-><init>(Lcom/nirenr/talkman/util/b;)V

    invoke-virtual {v2, v12, v1, v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->youTu(ILandroid/view/accessibility/AccessibilityNodeInfo;Lcom/nirenr/talkman/ai/OcrResult$OCRListener;)V

    goto/16 :goto_13

    :pswitch_33
    new-instance v2, Lcom/nirenr/talkman/dialog/e;

    iget-object v3, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {v2, v3}, Lcom/nirenr/talkman/dialog/e;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;)V

    invoke-virtual {v2, v1}, Lcom/nirenr/talkman/dialog/e;->m(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto/16 :goto_13

    :pswitch_34
    iget-object v2, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->addNodeChangedList(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto/16 :goto_13

    :pswitch_35
    iget-object v2, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->toTakeScreenshot(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto/16 :goto_13

    :pswitch_36
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isTapMode()Z

    move-result v2

    xor-int/2addr v2, v4

    invoke-virtual {v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setTapMode(Z)V

    goto/16 :goto_13

    :pswitch_37
    iget-object v2, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->longHold(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    goto/16 :goto_13

    :pswitch_38
    new-instance v1, Lk2/h;

    iget-object v2, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iget-object v3, v0, Lcom/nirenr/talkman/util/b;->b:Lcom/nirenr/talkman/n;

    invoke-direct {v1, v2, v3}, Lk2/h;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Lcom/nirenr/talkman/n;)V

    invoke-virtual {v1}, Lk2/h;->d()V

    goto/16 :goto_13

    :pswitch_39
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->toRecents()V

    goto/16 :goto_13

    :pswitch_3a
    invoke-virtual/range {p0 .. p0}, Lcom/nirenr/talkman/util/b;->I()Z

    move-result v2

    if-nez v2, :cond_114

    invoke-direct/range {p0 .. p0}, Lcom/nirenr/talkman/util/b;->t()Z

    move-result v2

    if-nez v2, :cond_10f

    const-string v1, "\u4ec5\u4f1a\u5458\u53ef\u7528\u81ea\u52a8\u6717\u8bfb\u5b57\u5e55"

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/util/b;->R(Ljava/lang/String;)V

    return v3

    :cond_10f
    iget-object v2, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v5, "com.smile.gifmaker"

    invoke-virtual {v2, v1, v5}, Lcom/nirenr/talkman/TalkManAccessibilityService;->checkPackageName(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_113

    iget-object v2, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v5, "com.kuaishou.nebula"

    invoke-virtual {v2, v1, v5}, Lcom/nirenr/talkman/TalkManAccessibilityService;->checkPackageName(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_110

    goto/16 :goto_4

    :cond_110
    iget-object v2, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isLandscape()Z

    move-result v2

    if-nez v2, :cond_111

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v0, Lcom/nirenr/talkman/util/b;->j:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    iget-object v2, v0, Lcom/nirenr/talkman/util/b;->j:Landroid/graphics/Rect;

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 v5, v5, 0x4

    mul-int/lit8 v5, v5, 0x3

    iput v5, v2, Landroid/graphics/Rect;->top:I

    iget-object v2, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v5, 0x7f070502

    const-string v6, "-1"

    invoke-static {v2, v5, v6}, Lk2/b0;->h(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_112

    invoke-direct {v0, v1, v2}, Lcom/nirenr/talkman/util/b;->S(Landroid/view/accessibility/AccessibilityNodeInfo;I)V

    return v4

    :cond_111
    iget-object v2, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2}, Lcom/androlua/LuaService;->getWidth()I

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v0, Lcom/nirenr/talkman/util/b;->j:Landroid/graphics/Rect;

    iget-object v5, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v5}, Lcom/androlua/LuaService;->getHeight()I

    move-result v5

    iput v5, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v2, v0, Lcom/nirenr/talkman/util/b;->j:Landroid/graphics/Rect;

    iget-object v5, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v5}, Lcom/androlua/LuaService;->getWidth()I

    move-result v5

    iput v5, v2, Landroid/graphics/Rect;->right:I

    iget-object v2, v0, Lcom/nirenr/talkman/util/b;->j:Landroid/graphics/Rect;

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 v5, v5, 0x4

    mul-int/lit8 v5, v5, 0x3

    iput v5, v2, Landroid/graphics/Rect;->top:I

    iget-object v2, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v5, 0x7f0704d5

    const-string v6, "-1"

    invoke-static {v2, v5, v6}, Lk2/b0;->h(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_112

    invoke-direct {v0, v1, v2}, Lcom/nirenr/talkman/util/b;->S(Landroid/view/accessibility/AccessibilityNodeInfo;I)V

    return v4

    :cond_112
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v5, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {v2, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f070632

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-array v5, v13, [Ljava/lang/String;

    iget-object v6, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v7, 0x7f0704f6

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    iget-object v3, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v6, 0x7f0704f7

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v4

    iget-object v3, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v6, 0x7f0704f9

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v12

    iget-object v3, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v6, 0x7f0704fa

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v17

    iget-object v3, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v6, 0x7f0704fb

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v16

    iget-object v3, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v6, 0x7f0704fc

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v14

    iget-object v3, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v6, 0x7f0704fd

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x6

    aput-object v3, v5, v6

    iget-object v3, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v6, 0x7f0704fe

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x7

    aput-object v3, v5, v6

    iget-object v3, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v6, 0x7f0704ff

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0x8

    aput-object v3, v5, v6

    iget-object v3, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v6, 0x7f070500

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0x9

    aput-object v3, v5, v6

    iget-object v3, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v6, 0x7f0704f8

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0xa

    aput-object v3, v5, v6

    new-instance v3, Lcom/nirenr/talkman/util/b$e;

    invoke-direct {v3, v0, v1}, Lcom/nirenr/talkman/util/b$e;-><init>(Lcom/nirenr/talkman/util/b;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-virtual {v2, v5, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f070095

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-static {v1}, Lh2/i;->b(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    return v4

    :cond_113
    :goto_4
    invoke-virtual {v0, v4}, Lcom/nirenr/talkman/util/b;->M(Z)V

    iput-boolean v4, v0, Lcom/nirenr/talkman/util/b;->f:Z

    const-string v1, "\u81ea\u52a8\u6717\u8bfb\u5feb\u624b\u5b57\u5e55"

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/util/b;->R(Ljava/lang/String;)V

    return v4

    :cond_114
    iput-boolean v3, v0, Lcom/nirenr/talkman/util/b;->d:Z

    iput-boolean v3, v0, Lcom/nirenr/talkman/util/b;->f:Z

    invoke-virtual {v0, v3}, Lcom/nirenr/talkman/util/b;->M(Z)V

    const v1, 0x7f07044c

    goto/16 :goto_2

    :pswitch_3b
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speakTimeInfo()V

    goto/16 :goto_13

    :pswitch_3c
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isTimerMode()Z

    move-result v1

    if-eqz v1, :cond_115

    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f070671

    invoke-static {v1, v2, v3}, Lk2/b0;->a(Landroid/content/Context;IZ)Z

    move-result v2

    xor-int/2addr v2, v4

    invoke-virtual {v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setTimerModePause(Z)V

    goto/16 :goto_13

    :cond_115
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f070458

    :goto_5
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_6
    invoke-virtual {v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speak(Ljava/lang/String;)V

    goto/16 :goto_13

    :pswitch_3d
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->toHeadsetHook()V

    goto/16 :goto_13

    :pswitch_3e
    invoke-direct/range {p0 .. p0}, Lcom/nirenr/talkman/util/b;->J()V

    goto/16 :goto_13

    :pswitch_3f
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-class v5, Lcom/nirenr/talkman/settings/ActionSetting;

    invoke-direct {v2, v3, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_7

    :pswitch_40
    new-instance v2, Lcom/nirenr/talkman/dialog/a;

    iget-object v3, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {v2, v3}, Lcom/nirenr/talkman/dialog/a;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;)V

    invoke-virtual {v2, v1}, Lcom/nirenr/talkman/dialog/a;->r(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto/16 :goto_13

    :pswitch_41
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isUseRawTap()Z

    move-result v2

    xor-int/2addr v2, v4

    invoke-virtual {v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseRawTap(Z)V

    goto/16 :goto_13

    :pswitch_42
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->acceptCall()Z

    goto/16 :goto_13

    :pswitch_43
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->endCall()Z

    goto/16 :goto_13

    :pswitch_44
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isUpTapEnabled()Z

    move-result v2

    xor-int/2addr v2, v4

    invoke-virtual {v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUpTapEnabled(Z)V

    goto/16 :goto_13

    :pswitch_45
    new-instance v2, Lcom/nirenr/talkman/dialog/SplitEditDialog;

    iget-object v3, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {v2, v3, v1}, Lcom/nirenr/talkman/dialog/SplitEditDialog;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-virtual {v2}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->U()V

    goto/16 :goto_13

    :pswitch_46
    new-instance v2, Lh2/s;

    iget-object v3, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {v2, v3, v1}, Lh2/s;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-virtual {v2}, Lh2/s;->l()V

    goto/16 :goto_13

    :pswitch_47
    new-instance v2, Lh2/p;

    iget-object v3, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {v2, v3}, Lh2/p;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;)V

    invoke-virtual {v2, v1}, Lh2/p;->h(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto/16 :goto_13

    :pswitch_48
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-class v5, Lcom/nirenr/talkman/ToolActivity;

    invoke-direct {v2, v3, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_7

    :pswitch_49
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-class v5, Lcom/nirenr/talkman/settings/GestureManager;

    invoke-direct {v2, v3, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_7
    invoke-virtual {v2, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v2

    goto/16 :goto_9

    :pswitch_4a
    invoke-direct/range {p0 .. p0}, Lcom/nirenr/talkman/util/b;->O()Z

    goto/16 :goto_13

    :pswitch_4b
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->toQuickSettings()V

    goto/16 :goto_13

    :pswitch_4c
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isQuickView()Z

    move-result v2

    xor-int/2addr v2, v4

    invoke-virtual {v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->showQuickView(Z)V

    goto/16 :goto_13

    :pswitch_4d
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setProfiles()V

    goto/16 :goto_13

    :pswitch_4e
    new-instance v2, Lh2/q;

    iget-object v3, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {v2, v3, v1}, Lh2/q;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-virtual {v2}, Lh2/q;->j()V

    goto/16 :goto_13

    :pswitch_4f
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-class v5, Lcom/nirenr/talkman/settings/GeneralSetting;

    invoke-direct {v2, v3, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_7

    :pswitch_50
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v1}, Lk2/b;->c(Lcom/nirenr/talkman/TalkManAccessibilityService;)V

    goto/16 :goto_13

    :pswitch_51
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speakLight()V

    goto/16 :goto_13

    :pswitch_52
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v4}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setTimerModeAux(Z)V

    goto/16 :goto_13

    :pswitch_53
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isSupperMode()Z

    move-result v2

    xor-int/2addr v2, v4

    invoke-virtual {v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setSupperMode(Z)V

    goto/16 :goto_13

    :pswitch_54
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->leftPage()Z

    goto/16 :goto_13

    :pswitch_55
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->toMulti()V

    goto/16 :goto_13

    :pswitch_56
    new-instance v1, Lh2/e;

    iget-object v2, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/androlua/LuaApplication;->getBackupDir()Ljava/lang/String;

    move-result-object v3

    const v5, 0x7f07006c

    invoke-direct {v1, v2, v3, v5}, Lh2/e;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {v1}, Lh2/e;->j()V

    goto/16 :goto_13

    :pswitch_57
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->raiseVolume()V

    goto/16 :goto_13

    :pswitch_58
    iget-object v2, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->scrollForward(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v1

    return v1

    :pswitch_59
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->ocrScreen()Z

    move-result v1

    return v1

    :pswitch_5a
    new-instance v2, Lh2/b;

    iget-object v3, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {v2, v3}, Lh2/b;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;)V

    const/16 v3, 0x9

    goto :goto_8

    :pswitch_5b
    new-instance v2, Lh2/b;

    iget-object v3, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {v2, v3}, Lh2/b;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;)V

    const/4 v3, 0x6

    :goto_8
    invoke-virtual {v2, v3, v1}, Lh2/b;->f(ILandroid/view/accessibility/AccessibilityNodeInfo;)V

    goto/16 :goto_13

    :pswitch_5c
    new-instance v2, Lh2/b;

    iget-object v3, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {v2, v3}, Lh2/b;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;)V

    invoke-virtual {v2, v13, v1}, Lh2/b;->f(ILandroid/view/accessibility/AccessibilityNodeInfo;)V

    goto/16 :goto_13

    :pswitch_5d
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-class v5, Lcom/nirenr/talkman/settings/FeedBackSetting;

    invoke-direct {v2, v3, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto/16 :goto_7

    :pswitch_5e
    iget-object v2, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v2, v1}, Lcom/nirenr/talkman/p;->o(Lcom/nirenr/talkman/TalkManAccessibilityService;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto/16 :goto_13

    :pswitch_5f
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setIncallMode()V

    goto/16 :goto_13

    :pswitch_60
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->rightPage()Z

    goto/16 :goto_13

    :pswitch_61
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getEditText()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    if-nez v1, :cond_116

    const v1, 0x7f070255

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/util/b;->Q(I)V

    return v3

    :cond_116
    iget-object v2, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->startInputting(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto/16 :goto_13

    :pswitch_62
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isScreenOn()Z

    move-result v1

    if-nez v1, :cond_117

    return v4

    :cond_117
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->allStop()V

    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v4}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setAutoPrevious(Z)V

    const v1, 0x7f070054

    goto/16 :goto_2

    :pswitch_63
    iget-object v2, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getListView2(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->scrollForward(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v1

    return v1

    :pswitch_64
    iget-object v2, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getListView2(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->scrollBackward(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v1

    return v1

    :pswitch_65
    new-instance v1, Lh2/c;

    iget-object v2, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {v1, v2}, Lh2/c;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;)V

    invoke-virtual {v1}, Lh2/c;->t()V

    goto/16 :goto_13

    :pswitch_66
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isPartialWakeLock()Z

    move-result v2

    xor-int/2addr v2, v4

    invoke-virtual {v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setAcquireWakeLock(Z)V

    goto/16 :goto_13

    :pswitch_67
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-class v5, Lcom/nirenr/talkman/settings/ChatActivity;

    invoke-direct {v2, v3, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_9
    invoke-virtual {v1, v2}, Lcom/androlua/LuaService;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_13

    :pswitch_68
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->showAllNode()V

    goto/16 :goto_13

    :pswitch_69
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v4}, Lcom/nirenr/talkman/TalkManAccessibilityService;->cancelAll(Z)V

    goto/16 :goto_13

    :pswitch_6a
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v4}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setTTSSpeed(Z)V

    goto/16 :goto_13

    :pswitch_6b
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setTTSSpeed(Z)V

    goto/16 :goto_13

    :pswitch_6c
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->lowerVolume()V

    goto/16 :goto_13

    :pswitch_6d
    iget-object v2, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->scrollBackward(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v1

    return v1

    :pswitch_6e
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->toPowerDialog()V

    goto/16 :goto_13

    :pswitch_6f
    new-instance v1, Lcom/nirenr/talkman/dialog/f;

    iget-object v2, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {v1, v2}, Lcom/nirenr/talkman/dialog/f;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;)V

    invoke-virtual {v1}, Lcom/nirenr/talkman/dialog/f;->q()V

    goto/16 :goto_13

    :pswitch_70
    new-instance v1, Lh2/d;

    iget-object v2, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {v1, v2}, Lh2/d;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;)V

    invoke-virtual {v1}, Lh2/d;->c()V

    goto/16 :goto_13

    :pswitch_71
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-class v5, Lcom/nirenr/talkman/settings/ContentSetting;

    invoke-direct {v2, v3, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto/16 :goto_7

    :pswitch_72
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speakAllText()V

    goto/16 :goto_13

    :pswitch_73
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->downPage()Z

    goto/16 :goto_13

    :pswitch_74
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->upPage()Z

    goto/16 :goto_13

    :pswitch_75
    iget-object v2, v0, Lcom/nirenr/talkman/util/b;->b:Lcom/nirenr/talkman/n;

    const-string v3, "LINK"

    invoke-virtual {v2, v1, v3}, Lcom/nirenr/talkman/n;->p0(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Z

    move-result v1

    return v1

    :pswitch_76
    iget-object v2, v0, Lcom/nirenr/talkman/util/b;->b:Lcom/nirenr/talkman/n;

    const-string v3, "LINK"

    invoke-virtual {v2, v1, v3}, Lcom/nirenr/talkman/n;->s0(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Z

    move-result v1

    return v1

    :pswitch_77
    iget-object v2, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->toNextWindow(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    goto/16 :goto_13

    :pswitch_78
    iget-object v2, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->toPreviousWindow(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    goto/16 :goto_13

    :pswitch_79
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->toNextParagraph()Z

    goto/16 :goto_13

    :pswitch_7a
    iget-object v2, v0, Lcom/nirenr/talkman/util/b;->b:Lcom/nirenr/talkman/n;

    const-string v3, "SECTION"

    invoke-virtual {v2, v1, v3}, Lcom/nirenr/talkman/n;->p0(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Z

    move-result v1

    return v1

    :pswitch_7b
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->toPreviousParagraph()Z

    goto/16 :goto_13

    :pswitch_7c
    iget-object v2, v0, Lcom/nirenr/talkman/util/b;->b:Lcom/nirenr/talkman/n;

    const-string v3, "SECTION"

    invoke-virtual {v2, v1, v3}, Lcom/nirenr/talkman/n;->s0(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Z

    move-result v1

    return v1

    :pswitch_7d
    iget-object v2, v0, Lcom/nirenr/talkman/util/b;->b:Lcom/nirenr/talkman/n;

    const-string v3, "CONTROL"

    invoke-virtual {v2, v1, v3}, Lcom/nirenr/talkman/n;->p0(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Z

    move-result v1

    return v1

    :pswitch_7e
    iget-object v2, v0, Lcom/nirenr/talkman/util/b;->b:Lcom/nirenr/talkman/n;

    const-string v3, "CONTROL"

    invoke-virtual {v2, v1, v3}, Lcom/nirenr/talkman/n;->s0(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Z

    move-result v1

    return v1

    :pswitch_7f
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->toNextWord()Z

    goto/16 :goto_13

    :pswitch_80
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->toNextChar()Z

    goto/16 :goto_13

    :pswitch_81
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->toPreviousWord()Z

    goto/16 :goto_13

    :pswitch_82
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->toPreviousChar()Z

    goto/16 :goto_13

    :pswitch_83
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->toNextLine()Z

    goto/16 :goto_13

    :pswitch_84
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->toPreviousLine()Z

    goto/16 :goto_13

    :pswitch_85
    new-instance v1, Lcom/nirenr/talkman/util/b$w;

    invoke-direct {v1, v0}, Lcom/nirenr/talkman/util/b$w;-><init>(Lcom/nirenr/talkman/util/b;)V

    invoke-virtual {v1}, Lcom/nirenr/talkman/util/b$w;->a()V

    goto/16 :goto_13

    :pswitch_86
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setTtsEngine()V

    goto/16 :goto_13

    :pswitch_87
    new-instance v2, Lh2/b;

    iget-object v3, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {v2, v3}, Lh2/b;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;)V

    const/16 v3, 0xc

    goto/16 :goto_8

    :pswitch_88
    iget-object v2, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->longClick(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    goto/16 :goto_13

    :pswitch_89
    invoke-direct/range {p0 .. p0}, Lcom/nirenr/talkman/util/b;->t()Z

    move-result v1

    if-nez v1, :cond_118

    const v1, 0x7f07037f

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/util/b;->Q(I)V

    return v3

    :cond_118
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setTTSEnabled(Z)V

    const v1, 0x7f070633

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/util/b;->u(I)V

    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v4}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setLongCopy(Z)V

    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->longCopy()V

    goto/16 :goto_13

    :pswitch_8a
    new-instance v1, Lh2/l;

    iget-object v2, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {v1, v2}, Lh2/l;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;)V

    invoke-virtual {v1}, Lh2/l;->e()V

    goto/16 :goto_13

    :pswitch_8b
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isTimerMode()Z

    move-result v1

    if-eqz v1, :cond_119

    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setTimerMode(Z)V

    return v4

    :cond_119
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f07065f

    invoke-static {v1, v2, v5}, Lk2/b0;->h(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nirenr/talkman/util/b;->T(Ljava/lang/String;)Z

    goto/16 :goto_13

    :pswitch_8c
    iget-object v2, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->click(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    goto/16 :goto_13

    :pswitch_8d
    invoke-virtual/range {p2 .. p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->isCheckable()Z

    move-result v2

    if-nez v2, :cond_11a

    iget-object v2, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->findCheckView(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    goto :goto_a

    :cond_11a
    move-object v2, v1

    :goto_a
    if-nez v2, :cond_11b

    goto :goto_b

    :cond_11b
    move-object v1, v2

    :goto_b
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isChecked()Z

    move-result v2

    if-nez v2, :cond_11c

    iget-object v2, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->click(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    :cond_11c
    return v4

    :pswitch_8e
    new-instance v2, Lcom/nirenr/talkman/dialog/c;

    iget-object v3, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {v2, v3, v1}, Lcom/nirenr/talkman/dialog/c;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-virtual {v2}, Lcom/nirenr/talkman/dialog/c;->q()V

    goto/16 :goto_13

    :pswitch_8f
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-class v5, Lcom/androlua/LuaEditActivity;

    invoke-direct {v2, v3, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto/16 :goto_9

    :pswitch_90
    invoke-virtual/range {p2 .. p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->isCheckable()Z

    move-result v2

    if-nez v2, :cond_11d

    iget-object v2, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->findCheckView(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    goto :goto_c

    :cond_11d
    move-object v2, v1

    :goto_c
    if-nez v2, :cond_11e

    goto :goto_d

    :cond_11e
    move-object v1, v2

    :goto_d
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_11f

    iget-object v2, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->click(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    :cond_11f
    return v4

    :pswitch_91
    iget-object v2, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->left(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    goto/16 :goto_13

    :pswitch_92
    iget-object v2, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->right(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    goto/16 :goto_13

    :pswitch_93
    iget-object v2, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->down(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    goto/16 :goto_13

    :pswitch_94
    iget-object v2, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->up(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    goto/16 :goto_13

    :pswitch_95
    new-instance v2, Lcom/nirenr/talkman/dialog/b;

    iget-object v3, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {v2, v3, v1}, Lcom/nirenr/talkman/dialog/b;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-virtual {v2}, Lcom/nirenr/talkman/dialog/b;->q()V

    goto/16 :goto_13

    :pswitch_96
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-class v5, Lcom/nirenr/talkman/WebActivity;

    invoke-direct {v2, v3, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto/16 :goto_9

    :pswitch_97
    new-instance v2, Lcom/nirenr/talkman/dialog/d;

    iget-object v3, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iget-object v5, v0, Lcom/nirenr/talkman/util/b;->b:Lcom/nirenr/talkman/n;

    invoke-direct {v2, v3, v5}, Lcom/nirenr/talkman/dialog/d;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Lcom/nirenr/talkman/n;)V

    invoke-virtual {v2, v1}, Lcom/nirenr/talkman/dialog/d;->m(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto/16 :goto_13

    :pswitch_98
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->toHome()V

    goto/16 :goto_13

    :pswitch_99
    iget-object v2, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getListView2(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    if-nez v1, :cond_120

    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->findListView(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    :cond_120
    if-nez v1, :cond_121

    return v3

    :cond_121
    iget-object v2, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->scrollForward(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v1

    return v1

    :pswitch_9a
    iget-object v2, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getListView2(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    if-nez v1, :cond_122

    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->findListView(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    :cond_122
    if-nez v1, :cond_123

    return v3

    :cond_123
    iget-object v2, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->scrollBackward(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v1

    return v1

    :pswitch_9b
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v1}, Lk2/r;->c(Landroid/content/Context;)V

    goto/16 :goto_13

    :pswitch_9c
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v1}, Lk2/r;->b(Landroid/content/Context;)V

    goto/16 :goto_13

    :pswitch_9d
    iget-object v2, v0, Lcom/nirenr/talkman/util/b;->b:Lcom/nirenr/talkman/n;

    invoke-virtual {v2, v1}, Lcom/nirenr/talkman/n;->u0(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v1

    return v1

    :pswitch_9e
    iget-object v2, v0, Lcom/nirenr/talkman/util/b;->b:Lcom/nirenr/talkman/n;

    invoke-virtual {v2, v1}, Lcom/nirenr/talkman/n;->E0(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v1

    return v1

    :pswitch_9f
    iget-object v2, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->toLongClick(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto/16 :goto_13

    :pswitch_a0
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setWakeLock(Z)V

    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->lock()V

    goto/16 :goto_13

    :pswitch_a1
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->toBack()V

    goto/16 :goto_13

    :pswitch_a2
    iget-object v2, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->toSelect(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto/16 :goto_13

    :pswitch_a3
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->unlock()V

    goto/16 :goto_13

    :pswitch_a4
    iget-object v2, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->asyncTrans(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto/16 :goto_13

    :pswitch_a5
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->toEnd()Z

    goto/16 :goto_13

    :pswitch_a6
    iget-object v2, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->paste(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    goto/16 :goto_13

    :pswitch_a7
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    if-lt v1, v2, :cond_124

    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v8}, Landroid/accessibilityservice/AccessibilityService;->performGlobalAction(I)Z

    :cond_124
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getAllAppList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v15, v2}, Lcom/androlua/LuaService;->createDialog(Ljava/lang/String;Ljava/util/List;)Lcom/androlua/LuaDialog;

    move-result-object v1

    new-instance v2, Lcom/nirenr/talkman/util/b$d;

    invoke-direct {v2, v0, v1}, Lcom/nirenr/talkman/util/b$d;-><init>(Lcom/nirenr/talkman/util/b;Lcom/androlua/LuaDialog;)V

    invoke-virtual {v1, v2}, Lcom/androlua/LuaDialog;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v1}, Lcom/androlua/LuaDialog;->show()V

    goto/16 :goto_13

    :pswitch_a8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u7535\u91cf\u767e\u5206\u4e4b"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getBatteryLevel()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_e
    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/util/b;->R(Ljava/lang/String;)V

    goto/16 :goto_13

    :pswitch_a9
    iget-object v2, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->toClick6(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto/16 :goto_13

    :pswitch_aa
    iget-object v2, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->clear(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v1

    return v1

    :pswitch_ab
    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/util/b;->N(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v1

    return v1

    :pswitch_ac
    iget-object v2, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->hasClickSpan(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v2

    if-eqz v2, :cond_125

    new-instance v2, Lh2/t;

    iget-object v3, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {v2, v3, v1}, Lh2/t;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-virtual {v2}, Lh2/t;->f()V

    return v4

    :cond_125
    return v3

    :pswitch_ad
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->toTakeScreenshot()V

    goto/16 :goto_13

    :pswitch_ae
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v1}, Lk2/r;->e(Landroid/content/Context;)V

    goto/16 :goto_13

    :pswitch_af
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v1}, Lk2/r;->a(Landroid/content/Context;)V

    goto/16 :goto_13

    :pswitch_b0
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->toStart()Z

    goto/16 :goto_13

    :pswitch_b1
    iget-object v2, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getText(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->copy(Ljava/lang/CharSequence;)Z

    const v1, 0x7f070374

    goto/16 :goto_2

    :pswitch_b2
    invoke-static/range {p2 .. p2}, Lk2/a;->a0(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v1

    return v1

    :pswitch_b3
    iget-object v2, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->doubleClick(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    goto/16 :goto_13

    :pswitch_b4
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->toSplitScreen()V

    goto/16 :goto_13

    :pswitch_b5
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->toLockScreen()V

    goto/16 :goto_13

    :pswitch_b6
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v4}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setWakeLock(Z)V

    return v4

    :pswitch_b7
    iget-object v2, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->editNodeName(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto/16 :goto_13

    :pswitch_b8
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->lowerVolume2()V

    goto/16 :goto_13

    :pswitch_b9
    new-instance v2, Lh2/b;

    iget-object v3, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {v2, v3}, Lh2/b;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;)V

    const/16 v3, 0xa

    goto/16 :goto_8

    :pswitch_ba
    iget-object v2, v0, Lcom/nirenr/talkman/util/b;->b:Lcom/nirenr/talkman/n;

    invoke-virtual {v2, v1}, Lcom/nirenr/talkman/n;->Y(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    goto/16 :goto_13

    :pswitch_bb
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isUseHotkey()Z

    move-result v2

    xor-int/2addr v2, v4

    invoke-virtual {v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseHotkey(Z)V

    goto/16 :goto_13

    :pswitch_bc
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speakAllNotification()V

    goto/16 :goto_13

    :pswitch_bd
    iget-object v2, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-instance v3, Lcom/nirenr/talkman/util/b$g;

    invoke-direct {v3, v0}, Lcom/nirenr/talkman/util/b$g;-><init>(Lcom/nirenr/talkman/util/b;)V

    invoke-static {v2, v1, v3}, Lcom/nirenr/talkman/util/VerificationCode;->c(Lcom/nirenr/talkman/TalkManAccessibilityService;Landroid/view/accessibility/AccessibilityNodeInfo;Lcom/nirenr/talkman/util/VerificationCode$VerificationCodeListener;)V

    goto/16 :goto_13

    :pswitch_be
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->showAutoSpeakCache()V

    goto/16 :goto_13

    :pswitch_bf
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    sget-boolean v2, Lcom/nirenr/talkman/TalkManAccessibilityService;->useAppTTS:Z

    xor-int/2addr v2, v4

    invoke-virtual {v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseAppTTS(Z)V

    goto/16 :goto_13

    :pswitch_c0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v5, 0x7f0700bd

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v3, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getText(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/nirenr/talkman/util/b;->L(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_13

    :pswitch_c1
    iget-object v2, v0, Lcom/nirenr/talkman/util/b;->b:Lcom/nirenr/talkman/n;

    invoke-virtual {v2, v1}, Lcom/nirenr/talkman/n;->y0(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v1

    return v1

    :pswitch_c2
    iget-object v2, v0, Lcom/nirenr/talkman/util/b;->b:Lcom/nirenr/talkman/n;

    invoke-virtual {v2, v1}, Lcom/nirenr/talkman/n;->x0(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto/16 :goto_13

    :pswitch_c3
    iget-object v2, v0, Lcom/nirenr/talkman/util/b;->b:Lcom/nirenr/talkman/n;

    invoke-virtual {v2, v1}, Lcom/nirenr/talkman/n;->I0(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v1

    return v1

    :pswitch_c4
    iget-object v2, v0, Lcom/nirenr/talkman/util/b;->b:Lcom/nirenr/talkman/n;

    invoke-virtual {v2, v1}, Lcom/nirenr/talkman/n;->H0(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto/16 :goto_13

    :pswitch_c5
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isUseEdgeGesture()Z

    move-result v2

    xor-int/2addr v2, v4

    invoke-virtual {v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseEdgeGesture(Z)V

    goto/16 :goto_13

    :pswitch_c6
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f070702

    invoke-direct {v0, v2}, Lcom/nirenr/talkman/util/b;->F(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v3}, Lk2/b0;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    iget-object v2, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v5, 0x7f070008

    invoke-static {v2, v5, v3}, Lk2/b0;->a(Landroid/content/Context;IZ)Z

    move-result v2

    if-nez v1, :cond_126

    if-nez v2, :cond_126

    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f070402

    goto/16 :goto_5

    :cond_126
    iget-object v5, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v5}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isAccessibilityVolume()Z

    move-result v5

    xor-int/2addr v5, v4

    if-eqz v5, :cond_127

    iget-object v6, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v6, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseAccessibilityVolume(Z)V

    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setAsyncUseAccessibilityVolume(Z)V

    goto :goto_f

    :cond_127
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseAccessibilityVolume(Z)V

    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setAsyncUseAccessibilityVolume(Z)V

    :goto_f
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v5}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setAccessibilityVolume(Z)Z

    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isAccessibilityVolume()Z

    move-result v1

    if-nez v1, :cond_128

    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseAccessibilityVolume(Z)V

    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f07039f

    goto/16 :goto_5

    :cond_128
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f0703a0

    goto/16 :goto_5

    :pswitch_c7
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_129

    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setEnabled(Z)V

    goto/16 :goto_13

    :cond_129
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v4}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setTouchMode(Z)V

    goto/16 :goto_13

    :pswitch_c8
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isPauseGesture()Z

    move-result v2

    xor-int/2addr v2, v4

    invoke-virtual {v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setPauseGesture(Z)Z

    move-result v1

    if-nez v1, :cond_12a

    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    const v3, 0x7f070478

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_6

    :cond_12a
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isPauseGesture()Z

    move-result v1

    if-eqz v1, :cond_12b

    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f0703d9

    goto :goto_10

    :cond_12b
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f0703db

    :goto_10
    invoke-virtual {v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speak(I)V

    goto :goto_13

    :pswitch_c9
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isTouchMode()Z

    move-result v2

    xor-int/2addr v2, v4

    invoke-virtual {v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setTouchMode(Z)V

    goto :goto_13

    :pswitch_ca
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->toNotifications()V

    goto :goto_13

    :pswitch_cb
    iget-object v2, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->addContentBlacklist(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto :goto_13

    :pswitch_cc
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v4}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setFalseTouchPreventionEnabled(Z)V

    goto :goto_13

    :pswitch_cd
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isAsyncSpeakEnabled()Z

    move-result v2

    xor-int/2addr v2, v4

    invoke-virtual {v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setAsyncSpeakEnabled(Z)V

    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isAsyncSpeakEnabled()Z

    move-result v2

    if-eqz v2, :cond_12c

    :goto_11
    const-string v2, "feedback_resume"

    goto :goto_12

    :cond_12c
    const-string v2, "feedback_paused"

    :goto_12
    invoke-virtual {v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->play(Ljava/lang/String;)V

    goto :goto_13

    :pswitch_ce
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->nodeChangedListManager()V

    :goto_13
    return v4

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7f89ef32 -> :sswitch_ed
        -0x7b46afbd -> :sswitch_ec
        -0x79cab7a9 -> :sswitch_eb
        -0x73cc54c0 -> :sswitch_ea
        -0x6913dfc9 -> :sswitch_e9
        -0x673b91bb -> :sswitch_e8
        -0x6669765e -> :sswitch_e7
        -0x65916b65 -> :sswitch_e6
        -0x64e1ee8d -> :sswitch_e5
        -0x64336653 -> :sswitch_e4
        -0x5bad9202 -> :sswitch_e3
        -0x5baa0edd -> :sswitch_e2
        -0x59f8b963 -> :sswitch_e1
        -0x59f5363e -> :sswitch_e0
        -0x510a78e8 -> :sswitch_df
        -0x4cc8b66e -> :sswitch_de
        -0x4c3dd2f2 -> :sswitch_dd
        -0x3ccc7fef -> :sswitch_dc
        -0x39d142b1 -> :sswitch_db
        -0x357e7698 -> :sswitch_da
        -0x33e6e563 -> :sswitch_d9
        -0x26a74159 -> :sswitch_d8
        -0x13e64fcf -> :sswitch_d7
        -0x13e5a0f0 -> :sswitch_d6
        -0x6c17f70 -> :sswitch_d5
        0x65e0 -> :sswitch_d4
        0xa393c -> :sswitch_d3
        0xa4b09 -> :sswitch_d2
        0xa77af -> :sswitch_d1
        0xab3b2 -> :sswitch_d0
        0xb1ac9 -> :sswitch_cf
        0xbda34 -> :sswitch_ce
        0xbe5c0 -> :sswitch_cd
        0xc2d50 -> :sswitch_cc
        0xc2d75 -> :sswitch_cb
        0xc3f65 -> :sswitch_ca
        0xc6a06 -> :sswitch_c9
        0xc842f -> :sswitch_c8
        0xdcd15 -> :sswitch_c7
        0xdf862 -> :sswitch_c6
        0xec33a -> :sswitch_c5
        0xf25e4 -> :sswitch_c4
        0xfa39c -> :sswitch_c3
        0xfb7cb -> :sswitch_c2
        0x100b36 -> :sswitch_c1
        0x11477e -> :sswitch_c0
        0x11bf44 -> :sswitch_bf
        0x11c18a -> :sswitch_be
        0x12676e -> :sswitch_bd
        0x126e67 -> :sswitch_bc
        0x127d6a -> :sswitch_bb
        0x12eb3b4 -> :sswitch_ba
        0x12eb775 -> :sswitch_b9
        0x12ecc7c -> :sswitch_b8
        0x12ed03d -> :sswitch_b7
        0x12efdff -> :sswitch_b6
        0x12f01c0 -> :sswitch_b5
        0x1313761 -> :sswitch_b4
        0x135f674 -> :sswitch_b3
        0x13a6dd3 -> :sswitch_b2
        0x13fb642 -> :sswitch_b1
        0x16ddc53 -> :sswitch_b0
        0x16e6529 -> :sswitch_af
        0x16e6548 -> :sswitch_ae
        0x16f1c60 -> :sswitch_ad
        0x17050cd -> :sswitch_ac
        0x1727d72 -> :sswitch_ab
        0x17ddd31 -> :sswitch_aa
        0x18af20f -> :sswitch_a9
        0x18c7d00 -> :sswitch_a8
        0x19518aa -> :sswitch_a7
        0x1da7200 -> :sswitch_a6
        0x218d693 -> :sswitch_a5
        0x2253ee3 -> :sswitch_a4
        0x22bde64 -> :sswitch_a3
        0x23c4c88 -> :sswitch_a2
        0x2558bec -> :sswitch_a1
        0x2668df8 -> :sswitch_a0
        0x1bbf4455 -> :sswitch_9f
        0x1ccdb5ad -> :sswitch_9e
        0x1cd2eae3 -> :sswitch_9d
        0x24a96d6b -> :sswitch_9c
        0x24a9e1ca -> :sswitch_9b
        0x24aa740f -> :sswitch_9a
        0x24aa84b6 -> :sswitch_99
        0x24aae86e -> :sswitch_98
        0x24aaf915 -> :sswitch_97
        0x24ab498f -> :sswitch_96
        0x24abbdee -> :sswitch_95
        0x24ac1ad1 -> :sswitch_94
        0x24ac7888 -> :sswitch_93
        0x24ac8f30 -> :sswitch_92
        0x24acece7 -> :sswitch_91
        0x24ad0db3 -> :sswitch_90
        0x24ad8212 -> :sswitch_8f
        0x24ae158c -> :sswitch_8e
        0x24ae89eb -> :sswitch_8d
        0x24b157c7 -> :sswitch_8c
        0x24b1cc26 -> :sswitch_8b
        0x25299421 -> :sswitch_8a
        0x252a0880 -> :sswitch_89
        0x2668e1eb -> :sswitch_88
        0x26784144 -> :sswitch_87
        0x268b7d23 -> :sswitch_86
        0x268c3bb8 -> :sswitch_85
        0x26903a4c -> :sswitch_84
        0x269a2160 -> :sswitch_83
        0x269b8dcd -> :sswitch_82
        0x269cb45c -> :sswitch_81
        0x26af3a85 -> :sswitch_80
        0x2708bc5d -> :sswitch_7f
        0x272b7306 -> :sswitch_7e
        0x27318af7 -> :sswitch_7d
        0x27441fd1 -> :sswitch_7c
        0x2744b040 -> :sswitch_7b
        0x275eb74a -> :sswitch_7a
        0x276998e7 -> :sswitch_79
        0x27699ca8 -> :sswitch_78
        0x2769a032 -> :sswitch_77
        0x276bf1b3 -> :sswitch_76
        0x276bf574 -> :sswitch_75
        0x2782b4bb -> :sswitch_74
        0x27d95998 -> :sswitch_73
        0x281f5434 -> :sswitch_72
        0x284318e2 -> :sswitch_71
        0x2869c00b -> :sswitch_70
        0x28c94fee -> :sswitch_6f
        0x292321ae -> :sswitch_6e
        0x294502ca -> :sswitch_6d
        0x29499bee -> :sswitch_6c
        0x29906f6d -> :sswitch_6b
        0x29aa1e45 -> :sswitch_6a
        0x29b025db -> :sswitch_69
        0x2a00cfc1 -> :sswitch_68
        0x2c5f26c5 -> :sswitch_67
        0x2c8cef6f -> :sswitch_66
        0x2c91a280 -> :sswitch_65
        0x2c93d492 -> :sswitch_64
        0x2c94089b -> :sswitch_63
        0x2c98b214 -> :sswitch_62
        0x2c9d8d60 -> :sswitch_61
        0x2d1fc0e5 -> :sswitch_60
        0x2d8aecd8 -> :sswitch_5f
        0x2dc4deed -> :sswitch_5e
        0x2dc88404 -> :sswitch_5d
        0x2de61f99 -> :sswitch_5c
        0x2df0cf0f -> :sswitch_5b
        0x2df66d6e -> :sswitch_5a
        0x2df68044 -> :sswitch_59
        0x2e22643e -> :sswitch_58
        0x2e231970 -> :sswitch_57
        0x2e280e59 -> :sswitch_56
        0x2e2a3b3b -> :sswitch_55
        0x2e597eda -> :sswitch_54
        0x2e5b1794 -> :sswitch_53
        0x2e8b1ae5 -> :sswitch_52
        0x2e8e1173 -> :sswitch_51
        0x2e9674af -> :sswitch_50
        0x2eb84b20 -> :sswitch_4f
        0x2f0c7f68 -> :sswitch_4e
        0x2f0d9fdf -> :sswitch_4d
        0x2f4c3160 -> :sswitch_4c
        0x2f4c880b -> :sswitch_4b
        0x2f8ef9d5 -> :sswitch_4a
        0x2fd7ea0f -> :sswitch_49
        0x309afa78 -> :sswitch_48
        0x30f594a2 -> :sswitch_47
        0x30f7fb97 -> :sswitch_46
        0x3137a797 -> :sswitch_45
        0x31bb5f65 -> :sswitch_44
        0x31bb5f84 -> :sswitch_43
        0x31bbf50d -> :sswitch_42
        0x31bc169c -> :sswitch_41
        0x31bd4b09 -> :sswitch_40
        0x31bf75c0 -> :sswitch_3f
        0x31c3fac8 -> :sswitch_3e
        0x347db548 -> :sswitch_3d
        0x347f2e3b -> :sswitch_3c
        0x35229af8 -> :sswitch_3b
        0x35252289 -> :sswitch_3a
        0x3526a68c -> :sswitch_39
        0x35279ab8 -> :sswitch_38
        0x35eaca36 -> :sswitch_37
        0x36bc2185 -> :sswitch_36
        0x36ed1a45 -> :sswitch_35
        0x38eea854 -> :sswitch_34
        0x3b3c0661 -> :sswitch_33
        0x3b747559 -> :sswitch_32
        0x3bc63799 -> :sswitch_31
        0x3bec4a4f -> :sswitch_30
        0x3bf14fc6 -> :sswitch_2f
        0x3c518e42 -> :sswitch_2e
        0x3c524cd7 -> :sswitch_2d
        0x3c5491b4 -> :sswitch_2c
        0x3d084310 -> :sswitch_2b
        0x3d0bce56 -> :sswitch_2a
        0x3e91566b -> :sswitch_29
        0x3e917033 -> :sswitch_28
        0x3f9a46f9 -> :sswitch_27
        0x40ca3573 -> :sswitch_26
        0x40ca67ed -> :sswitch_25
        0x40ea36cc -> :sswitch_24
        0x4131f9da -> :sswitch_23
        0x416ed97b -> :sswitch_22
        0x41e01ce8 -> :sswitch_21
        0x41e0499e -> :sswitch_20
        0x41e5b351 -> :sswitch_1f
        0x41e72396 -> :sswitch_1e
        0x41e73e72 -> :sswitch_1d
        0x41e76c58 -> :sswitch_1c
        0x427e5502 -> :sswitch_1b
        0x42b5584c -> :sswitch_1a
        0x42bcc318 -> :sswitch_19
        0x42e09f4b -> :sswitch_18
        0x42e15de0 -> :sswitch_17
        0x42e4dbce -> :sswitch_16
        0x42fa0d0e -> :sswitch_15
        0x43521309 -> :sswitch_14
        0x4354bfbb -> :sswitch_13
        0x464ca224 -> :sswitch_12
        0x481cae55 -> :sswitch_11
        0x48224cb4 -> :sswitch_10
        0x484f1208 -> :sswitch_f
        0x4850327f -> :sswitch_e
        0x497e860f -> :sswitch_d
        0x4999612c -> :sswitch_c
        0x4a5dee58 -> :sswitch_b
        0x4eada842 -> :sswitch_a
        0x5194623e -> :sswitch_9
        0x55ec99ce -> :sswitch_8
        0x584cf310 -> :sswitch_7
        0x6174f2b9 -> :sswitch_6
        0x651ba1d9 -> :sswitch_5
        0x66d0309e -> :sswitch_4
        0x6a65d67f -> :sswitch_3
        0x6e34a9a9 -> :sswitch_2
        0x6ee92965 -> :sswitch_1
        0x78fb71bb -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_ce
        :pswitch_cd
        :pswitch_cc
        :pswitch_cb
        :pswitch_ca
        :pswitch_c9
        :pswitch_c8
        :pswitch_c7
        :pswitch_c6
        :pswitch_c5
        :pswitch_c4
        :pswitch_c3
        :pswitch_c2
        :pswitch_c1
        :pswitch_c0
        :pswitch_bf
        :pswitch_be
        :pswitch_bd
        :pswitch_bc
        :pswitch_bb
        :pswitch_ba
        :pswitch_bd
        :pswitch_b9
        :pswitch_b8
        :pswitch_b7
        :pswitch_b6
        :pswitch_b5
        :pswitch_b4
        :pswitch_b3
        :pswitch_b2
        :pswitch_b1
        :pswitch_b0
        :pswitch_b6
        :pswitch_af
        :pswitch_ae
        :pswitch_ad
        :pswitch_ac
        :pswitch_ab
        :pswitch_aa
        :pswitch_a9
        :pswitch_a8
        :pswitch_a7
        :pswitch_a6
        :pswitch_a5
        :pswitch_a4
        :pswitch_a3
        :pswitch_a2
        :pswitch_a1
        :pswitch_a0
        :pswitch_ac
        :pswitch_9f
        :pswitch_9e
        :pswitch_9d
        :pswitch_9c
        :pswitch_9b
        :pswitch_9a
        :pswitch_99
        :pswitch_98
        :pswitch_97
        :pswitch_96
        :pswitch_95
        :pswitch_b3
        :pswitch_94
        :pswitch_93
        :pswitch_92
        :pswitch_91
        :pswitch_90
        :pswitch_8f
        :pswitch_b6
        :pswitch_8e
        :pswitch_8d
        :pswitch_8c
        :pswitch_8b
        :pswitch_8a
        :pswitch_ca
        :pswitch_89
        :pswitch_bd
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_9e
        :pswitch_9d
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_72
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_9a
        :pswitch_99
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_a8
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_50
        :pswitch_4a
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_50
        :pswitch_4b
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_59
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_94
        :pswitch_93
        :pswitch_b3
        :pswitch_92
        :pswitch_91
        :pswitch_8c
        :pswitch_88
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_a8
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_14
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_4a
        :pswitch_4a
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_1f
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public B(Ljava/lang/String;Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    return v4

    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/nirenr/talkman/g;->b(Ljava/lang/String;)Lcom/nirenr/talkman/g;

    move-result-object v3

    const v5, 0x7f070032

    const-string v6, ""

    const/4 v7, 0x1

    if-nez v3, :cond_17

    iget-object v3, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isDebug()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "execute"

    invoke-virtual {v0, v3, v1}, Lcom/nirenr/talkman/util/b;->K(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-le v3, v7, :cond_16

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    add-int/2addr v3, v7

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iget-object v9, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v10, 0x7f0701f9

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v3, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->plugin(Ljava/lang/String;Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_2
    iget-object v9, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v10, 0x7f0701f1

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->cmd(Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_3
    iget-object v9, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v10, 0x7f070469

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->navigation(Ljava/lang/String;)Z

    move-result v1

    return v1

    :cond_4
    iget-object v9, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v11, 0x7f07029a

    invoke-virtual {v9, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {v0, v3, v2}, Lcom/nirenr/talkman/util/b;->z(Ljava/lang/String;Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v1

    return v1

    :cond_5
    iget-object v9, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v11, 0x7f0701fe

    invoke-virtual {v9, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->tool(Ljava/lang/String;)Z

    goto/16 :goto_0

    :cond_6
    iget-object v9, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v11, 0x7f0701f3

    invoke-virtual {v9, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    iget-object v3, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v3, v1}, Lcom/androlua/LuaService;->getLuaExtPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->doBooleanFile(Ljava/lang/String;Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    goto/16 :goto_0

    :cond_7
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v9, 0x7f07015a

    invoke-virtual {v1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v0, v3}, Lcom/nirenr/talkman/util/b;->R(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v9, 0x7f070122

    invoke-virtual {v1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isEditable(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v2, v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setText(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Z

    goto/16 :goto_0

    :cond_9
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setText(Ljava/lang/String;)Z

    goto/16 :goto_0

    :cond_a
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->startApp(Ljava/lang/String;)Z

    goto/16 :goto_0

    :cond_b
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->navigation(Ljava/lang/String;)Z

    move-result v1

    return v1

    :cond_c
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v5, 0x7f0708a2

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/androlua/LuaApplication;->getUserName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    :cond_d
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v5, 0x7f070899

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/androlua/LuaApplication;->getUserId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    :cond_e
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v5, 0x7f070107

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->copy(Ljava/lang/CharSequence;)Z

    move-result v1

    return v1

    :cond_f
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v5, 0x7f0700fc

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->appendCopy(Ljava/lang/CharSequence;)Z

    move-result v1

    return v1

    :cond_10
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v5, 0x7f07000d

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v2, v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->execute_action(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Z

    move-result v1

    return v1

    :cond_11
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f070305

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->sendKey(Ljava/lang/String;)V

    goto :goto_0

    :cond_12
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f0701fd

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isTimerMode()Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v4}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setTimerMode(Z)V

    return v7

    :cond_13
    invoke-direct {v0, v3}, Lcom/nirenr/talkman/util/b;->T(Ljava/lang/String;)Z

    goto :goto_0

    :cond_14
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f070532

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setProfiles(Ljava/lang/String;)V

    goto :goto_0

    :cond_15
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f0706a2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setTtsEngine(Ljava/lang/String;)V

    :goto_0
    return v7

    :cond_16
    return v4

    :cond_17
    sget-object v1, Lcom/nirenr/talkman/util/b$n;->a:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v1, v1, v3

    const-string v3, "feedback_resume"

    const-string v8, "feedback_paused"

    const v9, 0x7f070255

    const v10, 0x7f07038b

    const-string v11, "CONTROL"

    const-string v12, "LINK"

    const-string v13, "SECTION"

    const/4 v14, 0x2

    const-string v15, "."

    const/high16 v5, 0x10000000

    packed-switch v1, :pswitch_data_0

    return v4

    :pswitch_0
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v1, v2}, Lcom/nirenr/talkman/p;->o(Lcom/nirenr/talkman/TalkManAccessibilityService;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto/16 :goto_c

    :pswitch_1
    invoke-direct/range {p0 .. p0}, Lcom/nirenr/talkman/util/b;->t()Z

    move-result v1

    if-eqz v1, :cond_18

    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getAppName(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-instance v3, Landroid/content/Intent;

    iget-object v4, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-class v5, Lcom/nirenr/talkman/settings/GestureSetting;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "RES_ID"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/androlua/LuaService;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_c

    :cond_18
    invoke-direct/range {p0 .. p0}, Lcom/nirenr/talkman/util/b;->y()V

    goto/16 :goto_c

    :pswitch_2
    new-instance v1, Lh2/q;

    iget-object v3, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {v1, v3, v2}, Lh2/q;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-virtual {v1}, Lh2/q;->j()V

    goto/16 :goto_c

    :pswitch_3
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-array v2, v7, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getBatteryLevel()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const v3, 0x7f070074

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3

    :pswitch_4
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->toNotifications()V

    goto/16 :goto_c

    :pswitch_5
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v4}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setEnabled(Z)V

    goto/16 :goto_c

    :cond_19
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v7}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setTouchMode(Z)V

    goto/16 :goto_c

    :pswitch_6
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isTouchMode()Z

    move-result v2

    xor-int/2addr v2, v7

    invoke-virtual {v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setTouchMode(Z)V

    goto/16 :goto_c

    :pswitch_7
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-class v4, Lcom/nirenr/talkman/CameraActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto/16 :goto_4

    :pswitch_8
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-class v4, Lcom/nirenr/talkman/TalkManActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto/16 :goto_4

    :pswitch_9
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->ocrScreen()Z

    move-result v1

    return v1

    :pswitch_a
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-class v4, Lcom/nirenr/talkman/ToolActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto/16 :goto_4

    :pswitch_b
    new-instance v1, Lh2/p;

    iget-object v3, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {v1, v3}, Lh2/p;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;)V

    invoke-virtual {v1, v2}, Lh2/p;->h(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto/16 :goto_c

    :pswitch_c
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getEditText()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    if-nez v1, :cond_1a

    invoke-virtual {v0, v9}, Lcom/nirenr/talkman/util/b;->Q(I)V

    return v4

    :cond_1a
    iget-object v2, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->startInputting(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto/16 :goto_c

    :pswitch_d
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getEditText()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    if-nez v1, :cond_1b

    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/util/b;->R(Ljava/lang/String;)V

    return v4

    :cond_1b
    iget-object v2, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->startInput(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto/16 :goto_c

    :pswitch_e
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->startListening()V

    goto/16 :goto_c

    :pswitch_f
    new-instance v1, Lcom/nirenr/talkman/dialog/f;

    iget-object v2, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {v1, v2}, Lcom/nirenr/talkman/dialog/f;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;)V

    invoke-virtual {v1}, Lcom/nirenr/talkman/dialog/f;->q()V

    goto/16 :goto_c

    :pswitch_10
    new-instance v1, Lh2/d;

    iget-object v2, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {v1, v2}, Lh2/d;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;)V

    invoke-virtual {v1}, Lh2/d;->c()V

    goto/16 :goto_c

    :pswitch_11
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speakAllText()V

    goto/16 :goto_c

    :pswitch_12
    new-instance v1, Lh2/c;

    iget-object v2, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {v1, v2}, Lh2/c;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;)V

    invoke-virtual {v1}, Lh2/c;->t()V

    goto/16 :goto_c

    :pswitch_13
    new-instance v1, Lcom/nirenr/talkman/dialog/SplitEditDialog;

    iget-object v3, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {v1, v3, v2}, Lcom/nirenr/talkman/dialog/SplitEditDialog;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-virtual {v1}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->U()V

    goto/16 :goto_c

    :pswitch_14
    new-instance v1, Lh2/s;

    iget-object v3, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {v1, v3, v2}, Lh2/s;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-virtual {v1}, Lh2/s;->l()V

    goto/16 :goto_c

    :pswitch_15
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isScreenOn()Z

    move-result v1

    if-nez v1, :cond_1c

    return v7

    :cond_1c
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->allStop()V

    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v7}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setAutoNext(Z)V

    const v1, 0x7f070053

    goto/16 :goto_1

    :pswitch_16
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isCharMode()Z

    move-result v2

    xor-int/2addr v2, v7

    invoke-virtual {v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setCharMode(Z)V

    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isCharMode()Z

    move-result v1

    if-eqz v1, :cond_1d

    const v1, 0x7f07009b

    goto/16 :goto_1

    :cond_1d
    const v1, 0x7f070295

    goto/16 :goto_1

    :pswitch_17
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isSelectionMode()Z

    move-result v2

    xor-int/2addr v2, v7

    invoke-virtual {v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setSelectionMode(Z)V

    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isSelectionMode()Z

    move-result v2

    if-eqz v2, :cond_1e

    const v2, 0x7f070449

    goto/16 :goto_b

    :cond_1e
    const v2, 0x7f0703ad

    goto/16 :goto_b

    :pswitch_18
    new-instance v1, Lcom/nirenr/talkman/dialog/d;

    iget-object v3, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iget-object v4, v0, Lcom/nirenr/talkman/util/b;->b:Lcom/nirenr/talkman/n;

    invoke-direct {v1, v3, v4}, Lcom/nirenr/talkman/dialog/d;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Lcom/nirenr/talkman/n;)V

    invoke-virtual {v1, v2}, Lcom/nirenr/talkman/dialog/d;->m(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto/16 :goto_c

    :pswitch_19
    new-instance v1, Lcom/nirenr/talkman/dialog/a;

    iget-object v3, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {v1, v3}, Lcom/nirenr/talkman/dialog/a;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;)V

    invoke-virtual {v1, v2}, Lcom/nirenr/talkman/dialog/a;->r(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto/16 :goto_c

    :pswitch_1a
    new-instance v1, Lh2/o;

    iget-object v3, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {v1, v3, v2}, Lh2/o;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-virtual {v1}, Lh2/o;->a()V

    goto/16 :goto_c

    :pswitch_1b
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->toLongClick(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto/16 :goto_c

    :pswitch_1c
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->toClick6(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto/16 :goto_c

    :pswitch_1d
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->downPage()Z

    goto/16 :goto_c

    :pswitch_1e
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->upPage()Z

    goto/16 :goto_c

    :pswitch_1f
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->rightPage()Z

    goto/16 :goto_c

    :pswitch_20
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->leftPage()Z

    goto/16 :goto_c

    :pswitch_21
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->down(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    goto/16 :goto_c

    :pswitch_22
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->up(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    goto/16 :goto_c

    :pswitch_23
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->right(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    goto/16 :goto_c

    :pswitch_24
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->left(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    goto/16 :goto_c

    :pswitch_25
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->longClick(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    goto/16 :goto_c

    :pswitch_26
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->click(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    goto/16 :goto_c

    :pswitch_27
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->toSplitScreen()V

    goto/16 :goto_c

    :pswitch_28
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->toBack()V

    goto/16 :goto_c

    :pswitch_29
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->toHome()V

    goto/16 :goto_c

    :pswitch_2a
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isUseNode()Z

    move-result v2

    xor-int/2addr v2, v7

    invoke-virtual {v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseNode(Z)V

    goto/16 :goto_c

    :pswitch_2b
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isTapMode()Z

    move-result v2

    xor-int/2addr v2, v7

    invoke-virtual {v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setTapMode(Z)V

    goto/16 :goto_c

    :pswitch_2c
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isUpTapEnabled()Z

    move-result v2

    xor-int/2addr v2, v7

    invoke-virtual {v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUpTapEnabled(Z)V

    goto/16 :goto_c

    :pswitch_2d
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->showNotificationBox()V

    goto/16 :goto_c

    :pswitch_2e
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getText(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->appendCopy(Ljava/lang/CharSequence;)Z

    const v1, 0x7f070371

    :goto_1
    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/util/b;->Q(I)V

    goto/16 :goto_c

    :pswitch_2f
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getText(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->copy(Ljava/lang/CharSequence;)Z

    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f070374

    :goto_2
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/util/b;->R(Ljava/lang/String;)V

    goto/16 :goto_c

    :pswitch_30
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->clear(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v1

    return v1

    :pswitch_31
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->toRecents()V

    goto/16 :goto_c

    :pswitch_32
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->paste(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    goto/16 :goto_c

    :pswitch_33
    new-instance v1, Lh2/b;

    iget-object v3, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {v1, v3}, Lh2/b;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;)V

    invoke-virtual {v1, v2}, Lh2/b;->g(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto/16 :goto_c

    :pswitch_34
    new-instance v1, Lh2/l;

    iget-object v2, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {v1, v2}, Lh2/l;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;)V

    invoke-virtual {v1}, Lh2/l;->e()V

    goto/16 :goto_c

    :pswitch_35
    new-instance v1, Lcom/nirenr/talkman/dialog/c;

    iget-object v3, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {v1, v3, v2}, Lcom/nirenr/talkman/dialog/c;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-virtual {v1}, Lcom/nirenr/talkman/dialog/c;->q()V

    goto/16 :goto_c

    :pswitch_36
    new-instance v1, Lcom/nirenr/talkman/dialog/b;

    iget-object v3, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {v1, v3, v2}, Lcom/nirenr/talkman/dialog/b;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-virtual {v1}, Lcom/nirenr/talkman/dialog/b;->q()V

    goto/16 :goto_c

    :pswitch_37
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->c:Lk2/g;

    invoke-virtual {v1}, Lk2/g;->e()Z

    move-result v2

    xor-int/2addr v2, v7

    invoke-virtual {v1, v2}, Lk2/g;->l(Z)V

    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->c:Lk2/g;

    invoke-virtual {v1}, Lk2/g;->e()Z

    move-result v1

    if-eqz v1, :cond_1f

    const v1, 0x7f070382

    goto :goto_1

    :pswitch_38
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->c:Lk2/g;

    invoke-virtual {v1, v4}, Lk2/g;->l(Z)V

    :cond_1f
    invoke-virtual {v0, v10}, Lcom/nirenr/talkman/util/b;->Q(I)V

    goto/16 :goto_c

    :pswitch_39
    invoke-direct/range {p0 .. p0}, Lcom/nirenr/talkman/util/b;->t()Z

    move-result v1

    if-nez v1, :cond_20

    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f0703a6

    goto :goto_2

    :cond_20
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isAutoTrans()Z

    move-result v2

    xor-int/2addr v2, v7

    invoke-virtual {v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setAutoTrans(Z)V

    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isAutoTrans()Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f070446

    goto/16 :goto_2

    :cond_21
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f07044d

    goto/16 :goto_2

    :pswitch_3a
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->asyncTrans(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto/16 :goto_c

    :pswitch_3b
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isQuickView()Z

    move-result v2

    xor-int/2addr v2, v7

    invoke-virtual {v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->showQuickView(Z)V

    goto/16 :goto_c

    :pswitch_3c
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v7}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setTimerModeAux(Z)V

    goto/16 :goto_c

    :pswitch_3d
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isTimerMode()Z

    move-result v1

    if-eqz v1, :cond_22

    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v4}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setTimerMode(Z)V

    return v7

    :cond_22
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f07065f

    invoke-static {v1, v2, v6}, Lk2/b0;->h(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nirenr/talkman/util/b;->T(Ljava/lang/String;)Z

    goto/16 :goto_c

    :pswitch_3e
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speakTime()V

    goto/16 :goto_c

    :pswitch_3f
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->raiseVolume()V

    goto/16 :goto_c

    :pswitch_40
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->lowerVolume()V

    goto/16 :goto_c

    :pswitch_41
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->scrollForward(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v1

    return v1

    :pswitch_42
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->scrollBackward(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v1

    return v1

    :pswitch_43
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getListView2(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->scrollForward(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v1

    return v1

    :pswitch_44
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getListView2(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->scrollBackward(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v1

    return v1

    :pswitch_45
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getListView2(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    if-nez v1, :cond_23

    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->findListView(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    :cond_23
    if-nez v1, :cond_24

    return v4

    :cond_24
    iget-object v2, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->scrollForward(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v1

    return v1

    :pswitch_46
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getListView2(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    if-nez v1, :cond_25

    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->findListView(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    :cond_25
    if-nez v1, :cond_26

    return v4

    :cond_26
    iget-object v2, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->scrollBackward(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v1

    return v1

    :pswitch_47
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->b:Lcom/nirenr/talkman/n;

    invoke-virtual {v1, v2}, Lcom/nirenr/talkman/n;->u0(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v1

    return v1

    :pswitch_48
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->b:Lcom/nirenr/talkman/n;

    invoke-virtual {v1, v2}, Lcom/nirenr/talkman/n;->E0(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v1

    return v1

    :pswitch_49
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->b:Lcom/nirenr/talkman/n;

    invoke-virtual {v1, v2, v11}, Lcom/nirenr/talkman/n;->p0(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Z

    move-result v1

    return v1

    :pswitch_4a
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->b:Lcom/nirenr/talkman/n;

    invoke-virtual {v1, v2, v11}, Lcom/nirenr/talkman/n;->s0(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Z

    move-result v1

    return v1

    :pswitch_4b
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->b:Lcom/nirenr/talkman/n;

    invoke-virtual {v1, v2, v12}, Lcom/nirenr/talkman/n;->p0(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Z

    move-result v1

    return v1

    :pswitch_4c
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->b:Lcom/nirenr/talkman/n;

    invoke-virtual {v1, v2, v12}, Lcom/nirenr/talkman/n;->s0(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Z

    move-result v1

    return v1

    :pswitch_4d
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->b:Lcom/nirenr/talkman/n;

    invoke-virtual {v1, v2, v13}, Lcom/nirenr/talkman/n;->p0(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Z

    move-result v1

    return v1

    :pswitch_4e
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->b:Lcom/nirenr/talkman/n;

    invoke-virtual {v1, v2, v13}, Lcom/nirenr/talkman/n;->s0(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Z

    move-result v1

    return v1

    :pswitch_4f
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getText(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->splitSpeak(Ljava/lang/String;)V

    goto/16 :goto_c

    :pswitch_50
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->startReadMode()Z

    goto/16 :goto_c

    :pswitch_51
    invoke-direct/range {p0 .. p0}, Lcom/nirenr/talkman/util/b;->J()V

    goto/16 :goto_c

    :pswitch_52
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->showVirtualScreen()V

    goto/16 :goto_c

    :pswitch_53
    invoke-direct/range {p0 .. p0}, Lcom/nirenr/talkman/util/b;->O()Z

    goto/16 :goto_c

    :pswitch_54
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-instance v3, Lcom/nirenr/talkman/util/b$m;

    invoke-direct {v3, v0}, Lcom/nirenr/talkman/util/b$m;-><init>(Lcom/nirenr/talkman/util/b;)V

    invoke-static {v1, v2, v3}, Lcom/nirenr/talkman/util/VerificationCode;->c(Lcom/nirenr/talkman/TalkManAccessibilityService;Landroid/view/accessibility/AccessibilityNodeInfo;Lcom/nirenr/talkman/util/VerificationCode$VerificationCodeListener;)V

    goto/16 :goto_c

    :pswitch_55
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v1}, Lk2/b;->c(Lcom/nirenr/talkman/TalkManAccessibilityService;)V

    goto/16 :goto_c

    :pswitch_56
    invoke-direct/range {p0 .. p0}, Lcom/nirenr/talkman/util/b;->t()Z

    move-result v1

    if-nez v1, :cond_27

    const v1, 0x7f07037f

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/util/b;->Q(I)V

    return v4

    :cond_27
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v4}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setTTSEnabled(Z)V

    const v1, 0x7f070633

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/util/b;->u(I)V

    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v7}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setLongCopy(Z)V

    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->longCopy()V

    goto/16 :goto_c

    :pswitch_57
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->b:Lcom/nirenr/talkman/n;

    invoke-virtual {v1, v2}, Lcom/nirenr/talkman/n;->Y(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    goto/16 :goto_c

    :pswitch_58
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->b:Lcom/nirenr/talkman/n;

    invoke-virtual {v1, v2}, Lcom/nirenr/talkman/n;->O(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    goto/16 :goto_c

    :pswitch_59
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.ACCESSIBILITY_SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :pswitch_5a
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-class v4, Lcom/nirenr/talkman/settings/HelpFeedSetting;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_4

    :pswitch_5b
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-class v4, Lcom/nirenr/talkman/settings/ManagerActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_4

    :pswitch_5c
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-class v4, Lcom/nirenr/talkman/settings/AdvancedSetting;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_4

    :pswitch_5d
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-class v4, Lcom/nirenr/talkman/settings/NotificationSetting;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_4

    :pswitch_5e
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-class v4, Lcom/nirenr/talkman/settings/ContentSetting;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_4

    :pswitch_5f
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-class v4, Lcom/nirenr/talkman/settings/FeedBackSetting;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_4

    :pswitch_60
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-class v4, Lcom/nirenr/talkman/settings/ActionSetting;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_4

    :pswitch_61
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-class v4, Lcom/nirenr/talkman/settings/VoiceSetting;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_4

    :pswitch_62
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-class v4, Lcom/nirenr/talkman/settings/GestureActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_4
    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v2

    goto/16 :goto_9

    :pswitch_63
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->unlock()V

    goto/16 :goto_c

    :pswitch_64
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isPartialWakeLock()Z

    move-result v2

    xor-int/2addr v2, v7

    invoke-virtual {v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setAcquireWakeLock(Z)V

    goto/16 :goto_c

    :pswitch_65
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->toEnd()Z

    goto/16 :goto_c

    :pswitch_66
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->toStart()Z

    goto/16 :goto_c

    :pswitch_67
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-instance v3, Lcom/nirenr/talkman/util/b$l;

    invoke-direct {v3, v0}, Lcom/nirenr/talkman/util/b$l;-><init>(Lcom/nirenr/talkman/util/b;)V

    invoke-virtual {v1, v14, v2, v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->youTu(ILandroid/view/accessibility/AccessibilityNodeInfo;Lcom/nirenr/talkman/ai/OcrResult$OCRListener;)V

    goto/16 :goto_c

    :pswitch_68
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isSupperMode()Z

    move-result v2

    xor-int/2addr v2, v7

    invoke-virtual {v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setSupperMode(Z)V

    goto/16 :goto_c

    :pswitch_69
    invoke-direct {v0, v2}, Lcom/nirenr/talkman/util/b;->P(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto/16 :goto_c

    :pswitch_6a
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isUseRawTap()Z

    move-result v2

    xor-int/2addr v2, v7

    invoke-virtual {v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseRawTap(Z)V

    goto/16 :goto_c

    :pswitch_6b
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isScreenOn()Z

    move-result v1

    if-nez v1, :cond_28

    return v7

    :cond_28
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->allStop()V

    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v7}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setAutoPrevious(Z)V

    const v1, 0x7f070054

    goto/16 :goto_1

    :pswitch_6c
    invoke-virtual {v0, v2}, Lcom/nirenr/talkman/util/b;->N(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v1

    return v1

    :pswitch_6d
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->hasClickSpan(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v1

    if-eqz v1, :cond_29

    new-instance v1, Lh2/t;

    iget-object v3, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {v1, v3, v2}, Lh2/t;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-virtual {v1}, Lh2/t;->f()V

    return v7

    :cond_29
    return v4

    :pswitch_6e
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v7}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setWakeLock(Z)V

    return v7

    :pswitch_6f
    invoke-virtual/range {p0 .. p0}, Lcom/nirenr/talkman/util/b;->I()Z

    move-result v1

    if-nez v1, :cond_2e

    invoke-direct/range {p0 .. p0}, Lcom/nirenr/talkman/util/b;->t()Z

    move-result v1

    if-nez v1, :cond_2a

    const-string v1, "\u4ec5\u4f1a\u5458\u53ef\u7528\u81ea\u52a8\u6717\u8bfb\u5b57\u5e55"

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/util/b;->R(Ljava/lang/String;)V

    return v4

    :cond_2a
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v3, "com.smile.gifmaker"

    invoke-virtual {v1, v2, v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->checkPackageName(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-virtual {v0, v7}, Lcom/nirenr/talkman/util/b;->M(Z)V

    iput-boolean v7, v0, Lcom/nirenr/talkman/util/b;->f:Z

    const-string v1, "\u81ea\u52a8\u6717\u8bfb\u5feb\u624b\u5b57\u5e55"

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/util/b;->R(Ljava/lang/String;)V

    return v7

    :cond_2b
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isLandscape()Z

    move-result v1

    const/4 v3, 0x3

    const/4 v5, 0x4

    if-nez v1, :cond_2c

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lcom/nirenr/talkman/util/b;->j:Landroid/graphics/Rect;

    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->j:Landroid/graphics/Rect;

    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    div-int/2addr v6, v5

    mul-int/lit8 v6, v6, 0x3

    iput v6, v1, Landroid/graphics/Rect;->top:I

    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v6, 0x7f070502

    const-string v8, "-1"

    invoke-static {v1, v6, v8}, Lk2/b0;->h(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_2d

    invoke-direct {v0, v2, v1}, Lcom/nirenr/talkman/util/b;->S(Landroid/view/accessibility/AccessibilityNodeInfo;I)V

    return v7

    :cond_2c
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/androlua/LuaService;->getWidth()I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lcom/nirenr/talkman/util/b;->j:Landroid/graphics/Rect;

    iget-object v6, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v6}, Lcom/androlua/LuaService;->getHeight()I

    move-result v6

    iput v6, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->j:Landroid/graphics/Rect;

    iget-object v6, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v6}, Lcom/androlua/LuaService;->getWidth()I

    move-result v6

    iput v6, v1, Landroid/graphics/Rect;->right:I

    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->j:Landroid/graphics/Rect;

    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    div-int/2addr v6, v5

    mul-int/lit8 v6, v6, 0x3

    iput v6, v1, Landroid/graphics/Rect;->top:I

    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v6, 0x7f0704d5

    const-string v8, "-1"

    invoke-static {v1, v6, v8}, Lk2/b0;->h(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_2d

    invoke-direct {v0, v2, v1}, Lcom/nirenr/talkman/util/b;->S(Landroid/view/accessibility/AccessibilityNodeInfo;I)V

    return v7

    :cond_2d
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v6, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {v1, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f070632

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/16 v6, 0xb

    new-array v6, v6, [Ljava/lang/String;

    iget-object v8, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v9, 0x7f0704f6

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v4

    iget-object v4, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v8, 0x7f0704f7

    invoke-virtual {v4, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v7

    iget-object v4, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v8, 0x7f0704f9

    invoke-virtual {v4, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v14

    iget-object v4, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v8, 0x7f0704fa

    invoke-virtual {v4, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v3

    iget-object v3, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v4, 0x7f0704fb

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v5

    iget-object v3, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v4, 0x7f0704fc

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    aput-object v3, v6, v4

    iget-object v3, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v4, 0x7f0704fd

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x6

    aput-object v3, v6, v4

    iget-object v3, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v4, 0x7f0704fe

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x7

    aput-object v3, v6, v4

    iget-object v3, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v4, 0x7f0704ff

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x8

    aput-object v3, v6, v4

    iget-object v3, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v4, 0x7f070500

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x9

    aput-object v3, v6, v4

    iget-object v3, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v4, 0x7f0704f8

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xa

    aput-object v3, v6, v4

    new-instance v3, Lcom/nirenr/talkman/util/b$j;

    invoke-direct {v3, v0, v2}, Lcom/nirenr/talkman/util/b$j;-><init>(Lcom/nirenr/talkman/util/b;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-virtual {v1, v6, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f070095

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-static {v1}, Lh2/i;->b(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    return v7

    :cond_2e
    iput-boolean v4, v0, Lcom/nirenr/talkman/util/b;->d:Z

    iput-boolean v4, v0, Lcom/nirenr/talkman/util/b;->f:Z

    invoke-virtual {v0, v4}, Lcom/nirenr/talkman/util/b;->M(Z)V

    const v1, 0x7f07044c

    goto/16 :goto_1

    :pswitch_70
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->toPowerDialog()V

    goto/16 :goto_c

    :pswitch_71
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->toLockScreen()V

    goto/16 :goto_c

    :pswitch_72
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->toTakeScreenshot(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto/16 :goto_c

    :pswitch_73
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->toTakeScreenshot()V

    goto/16 :goto_c

    :pswitch_74
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->toQuickSettings()V

    goto/16 :goto_c

    :pswitch_75
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->doubleClick(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    goto/16 :goto_c

    :pswitch_76
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->b:Lcom/nirenr/talkman/n;

    invoke-virtual {v1, v2}, Lcom/nirenr/talkman/n;->I0(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v1

    return v1

    :pswitch_77
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->b:Lcom/nirenr/talkman/n;

    invoke-virtual {v1, v2}, Lcom/nirenr/talkman/n;->y0(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v1

    return v1

    :pswitch_78
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->b:Lcom/nirenr/talkman/n;

    invoke-virtual {v1, v2}, Lcom/nirenr/talkman/n;->H0(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto/16 :goto_c

    :pswitch_79
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->b:Lcom/nirenr/talkman/n;

    invoke-virtual {v1, v2}, Lcom/nirenr/talkman/n;->x0(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto/16 :goto_c

    :pswitch_7a
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->b:Lcom/nirenr/talkman/n;

    invoke-virtual {v1, v2}, Lcom/nirenr/talkman/n;->c0(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto/16 :goto_c

    :pswitch_7b
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f070032

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getAllAppList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/androlua/LuaService;->createDialog(Ljava/lang/String;Ljava/util/List;)Lcom/androlua/LuaDialog;

    move-result-object v1

    new-instance v2, Lcom/nirenr/talkman/util/b$i;

    invoke-direct {v2, v0, v1}, Lcom/nirenr/talkman/util/b$i;-><init>(Lcom/nirenr/talkman/util/b;Lcom/androlua/LuaDialog;)V

    invoke-virtual {v1, v2}, Lcom/androlua/LuaDialog;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v1}, Lcom/androlua/LuaDialog;->show()V

    goto/16 :goto_c

    :pswitch_7c
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->nodeChangedListManager()V

    goto/16 :goto_c

    :pswitch_7d
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->addNodeChangedList(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto/16 :goto_c

    :pswitch_7e
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->toMulti()V

    goto/16 :goto_c

    :pswitch_7f
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->toPreviousParagraph()Z

    goto/16 :goto_c

    :pswitch_80
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->toNextParagraph()Z

    goto/16 :goto_c

    :pswitch_81
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->toPreviousLine()Z

    goto/16 :goto_c

    :pswitch_82
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->toNextLine()Z

    goto/16 :goto_c

    :pswitch_83
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->toPreviousWord()Z

    goto/16 :goto_c

    :pswitch_84
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->toNextWord()Z

    goto/16 :goto_c

    :pswitch_85
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->toPreviousChar()Z

    goto/16 :goto_c

    :pswitch_86
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->toNextChar()Z

    goto/16 :goto_c

    :pswitch_87
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->toHeadsetHook()V

    goto/16 :goto_c

    :pswitch_88
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v1}, Lk2/r;->b(Landroid/content/Context;)V

    goto/16 :goto_c

    :pswitch_89
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v1}, Lk2/r;->c(Landroid/content/Context;)V

    goto/16 :goto_c

    :pswitch_8a
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v1}, Lk2/r;->e(Landroid/content/Context;)V

    goto/16 :goto_c

    :pswitch_8b
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v1}, Lk2/r;->a(Landroid/content/Context;)V

    goto/16 :goto_c

    :pswitch_8c
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->editDict(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto/16 :goto_c

    :pswitch_8d
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    sget-boolean v2, Lcom/nirenr/talkman/TalkManAccessibilityService;->useAppTTS:Z

    xor-int/2addr v2, v7

    invoke-virtual {v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseAppTTS(Z)V

    goto/16 :goto_c

    :pswitch_8e
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speakLight()V

    goto/16 :goto_c

    :pswitch_8f
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->addContentBlacklist(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto/16 :goto_c

    :pswitch_90
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->toNextWindow(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    goto/16 :goto_c

    :pswitch_91
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->toPreviousWindow(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    goto/16 :goto_c

    :pswitch_92
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->showNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto/16 :goto_c

    :pswitch_93
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setTtsEngine()V

    goto/16 :goto_c

    :pswitch_94
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setProfiles()V

    goto/16 :goto_c

    :pswitch_95
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isUseOCR()Z

    move-result v2

    xor-int/2addr v2, v7

    invoke-virtual {v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseOCR(Z)V

    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isUseOCR()Z

    move-result v1

    if-eqz v1, :cond_2f

    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f0703c8

    goto/16 :goto_2

    :cond_2f
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f0703bf

    goto/16 :goto_2

    :pswitch_96
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isUseHotkey()Z

    move-result v2

    xor-int/2addr v2, v7

    invoke-virtual {v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseHotkey(Z)V

    goto/16 :goto_c

    :pswitch_97
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speakNetInfo()V

    goto/16 :goto_c

    :pswitch_98
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speakTimeInfo()V

    goto/16 :goto_c

    :pswitch_99
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v7}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setFalseTouchPreventionEnabled(Z)V

    goto/16 :goto_c

    :pswitch_9a
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isTTSEnabled()Z

    move-result v2

    xor-int/2addr v2, v7

    invoke-virtual {v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setTTSEnabled(Z)V

    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isTTSEnabled()Z

    move-result v2

    if-eqz v2, :cond_30

    goto :goto_5

    :pswitch_9b
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isAsyncSpeakEnabled()Z

    move-result v2

    xor-int/2addr v2, v7

    invoke-virtual {v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setAsyncSpeakEnabled(Z)V

    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isAsyncSpeakEnabled()Z

    move-result v2

    if-eqz v2, :cond_30

    goto :goto_5

    :cond_30
    move-object v3, v8

    :goto_5
    invoke-virtual {v1, v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->play(Ljava/lang/String;)V

    goto/16 :goto_c

    :pswitch_9c
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->startDebug(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto/16 :goto_c

    :pswitch_9d
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->showVirtualTableScreen()V

    goto/16 :goto_c

    :pswitch_9e
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setIncallMode()V

    goto/16 :goto_c

    :pswitch_9f
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->editNodeName(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto/16 :goto_c

    :pswitch_a0
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isTimerMode()Z

    move-result v1

    if-eqz v1, :cond_31

    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f070671

    invoke-static {v1, v2, v4}, Lk2/b0;->a(Landroid/content/Context;IZ)Z

    move-result v2

    xor-int/2addr v2, v7

    invoke-virtual {v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setTimerModePause(Z)V

    goto/16 :goto_c

    :cond_31
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f070458

    :goto_6
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_7
    invoke-virtual {v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speak(Ljava/lang/String;)V

    goto/16 :goto_c

    :pswitch_a1
    new-instance v1, Lcom/nirenr/talkman/util/b$w;

    invoke-direct {v1, v0}, Lcom/nirenr/talkman/util/b$w;-><init>(Lcom/nirenr/talkman/util/b;)V

    invoke-virtual {v1}, Lcom/nirenr/talkman/util/b$w;->a()V

    goto/16 :goto_c

    :pswitch_a2
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->lowerVolume2()V

    goto/16 :goto_c

    :pswitch_a3
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->raiseVolume2()V

    goto/16 :goto_c

    :pswitch_a4
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v4}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setTTSSpeed(Z)V

    goto/16 :goto_c

    :pswitch_a5
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v7}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setTTSSpeed(Z)V

    goto/16 :goto_c

    :pswitch_a6
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speakAllNotification()V

    goto/16 :goto_c

    :pswitch_a7
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isUseEdgeGesture()Z

    move-result v2

    xor-int/2addr v2, v7

    invoke-virtual {v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseEdgeGesture(Z)V

    goto/16 :goto_c

    :pswitch_a8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v4, 0x7f0700bd

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v3, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getText(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/nirenr/talkman/util/b;->L(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    :pswitch_a9
    const v4, 0x7f0700bd

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/nirenr/talkman/util/b;->C(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)V

    goto/16 :goto_c

    :pswitch_aa
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-class v4, Lcom/nirenr/talkman/WebActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto/16 :goto_9

    :pswitch_ab
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-class v4, Lcom/androlua/LuaEditActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto/16 :goto_9

    :pswitch_ac
    new-instance v1, Lh2/b;

    iget-object v3, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {v1, v3}, Lh2/b;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;)V

    const/16 v3, 0x9

    goto/16 :goto_a

    :pswitch_ad
    new-instance v1, Lh2/b;

    iget-object v3, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {v1, v3}, Lh2/b;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;)V

    const/16 v3, 0xa

    goto/16 :goto_a

    :pswitch_ae
    new-instance v1, Lh2/b;

    iget-object v3, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {v1, v3}, Lh2/b;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;)V

    const/16 v3, 0xb

    goto/16 :goto_a

    :pswitch_af
    new-instance v1, Lh2/b;

    iget-object v3, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {v1, v3}, Lh2/b;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;)V

    const/16 v3, 0xc

    goto/16 :goto_a

    :pswitch_b0
    new-instance v1, Lh2/b;

    iget-object v3, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {v1, v3}, Lh2/b;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;)V

    const/16 v3, 0xd

    goto/16 :goto_a

    :pswitch_b1
    new-instance v1, Lh2/b;

    iget-object v3, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {v1, v3}, Lh2/b;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;)V

    const/16 v3, 0xe

    goto/16 :goto_a

    :pswitch_b2
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setAutoSpeak(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto/16 :goto_c

    :pswitch_b3
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->showAutoSpeakCache()V

    goto/16 :goto_c

    :pswitch_b4
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->endCall()Z

    goto/16 :goto_c

    :pswitch_b5
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->acceptCall()Z

    goto/16 :goto_c

    :pswitch_b6
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f070702

    invoke-direct {v0, v2}, Lcom/nirenr/talkman/util/b;->F(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lk2/b0;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    iget-object v2, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v3, 0x7f070008

    invoke-static {v2, v3, v4}, Lk2/b0;->a(Landroid/content/Context;IZ)Z

    move-result v2

    if-nez v1, :cond_32

    if-nez v2, :cond_32

    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f070402

    goto/16 :goto_6

    :cond_32
    iget-object v3, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isAccessibilityVolume()Z

    move-result v3

    xor-int/2addr v3, v7

    if-eqz v3, :cond_33

    iget-object v5, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v5, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseAccessibilityVolume(Z)V

    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setAsyncUseAccessibilityVolume(Z)V

    goto :goto_8

    :cond_33
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v4}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseAccessibilityVolume(Z)V

    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v4}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setAsyncUseAccessibilityVolume(Z)V

    :goto_8
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setAccessibilityVolume(Z)Z

    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isAccessibilityVolume()Z

    move-result v1

    if-nez v1, :cond_34

    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v4}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseAccessibilityVolume(Z)V

    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f07039f

    goto/16 :goto_6

    :cond_34
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f0703a0

    goto/16 :goto_6

    :pswitch_b7
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-class v4, Lcom/nirenr/talkman/settings/ChatActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_9
    invoke-virtual {v1, v2}, Lcom/androlua/LuaService;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_c

    :pswitch_b8
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->longHold(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    goto/16 :goto_c

    :pswitch_b9
    new-instance v1, Lh2/b;

    iget-object v3, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {v1, v3}, Lh2/b;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;)V

    const/4 v3, 0x6

    :goto_a
    invoke-virtual {v1, v3, v2}, Lh2/b;->f(ILandroid/view/accessibility/AccessibilityNodeInfo;)V

    goto :goto_c

    :pswitch_ba
    iput-boolean v7, v0, Lcom/nirenr/talkman/util/b;->d:Z

    iput-boolean v7, v0, Lcom/nirenr/talkman/util/b;->o:Z

    iput v4, v0, Lcom/nirenr/talkman/util/b;->k:I

    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f07044a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/util/b;->R(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/nirenr/talkman/util/b;->w()V

    goto :goto_c

    :pswitch_bb
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->showAllNode()V

    goto :goto_c

    :pswitch_bc
    new-instance v1, Lcom/nirenr/talkman/dialog/e;

    iget-object v3, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {v1, v3}, Lcom/nirenr/talkman/dialog/e;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;)V

    invoke-virtual {v1, v2}, Lcom/nirenr/talkman/dialog/e;->m(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto :goto_c

    :pswitch_bd
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isPauseGesture()Z

    move-result v2

    xor-int/2addr v2, v7

    invoke-virtual {v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setPauseGesture(Z)Z

    move-result v1

    if-nez v1, :cond_35

    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-array v2, v7, [Ljava/lang/Object;

    const/16 v3, 0xb

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const v3, 0x7f070478

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_7

    :cond_35
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isPauseGesture()Z

    move-result v1

    if-eqz v1, :cond_36

    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f0703d9

    goto :goto_b

    :cond_36
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f0703db

    :goto_b
    invoke-virtual {v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speak(I)V

    goto :goto_c

    :pswitch_be
    iget-object v1, v0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->showGrid()V

    :goto_c
    :pswitch_bf
    return v7

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_be
        :pswitch_bd
        :pswitch_bc
        :pswitch_bb
        :pswitch_ba
        :pswitch_b9
        :pswitch_b8
        :pswitch_b7
        :pswitch_b6
        :pswitch_b5
        :pswitch_b4
        :pswitch_b3
        :pswitch_b2
        :pswitch_b1
        :pswitch_b0
        :pswitch_af
        :pswitch_ae
        :pswitch_ad
        :pswitch_ac
        :pswitch_ab
        :pswitch_aa
        :pswitch_a9
        :pswitch_a8
        :pswitch_a7
        :pswitch_a6
        :pswitch_a5
        :pswitch_a4
        :pswitch_a3
        :pswitch_a2
        :pswitch_a1
        :pswitch_a0
        :pswitch_9f
        :pswitch_9e
        :pswitch_9d
        :pswitch_9c
        :pswitch_9b
        :pswitch_9a
        :pswitch_99
        :pswitch_98
        :pswitch_97
        :pswitch_96
        :pswitch_95
        :pswitch_94
        :pswitch_93
        :pswitch_92
        :pswitch_91
        :pswitch_90
        :pswitch_8f
        :pswitch_8e
        :pswitch_8d
        :pswitch_8c
        :pswitch_8b
        :pswitch_8a
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_bf
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_55
        :pswitch_55
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_53
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public G()V
    .locals 8

    iget-boolean v0, p0, Lcom/nirenr/talkman/util/b;->m:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput-object v1, p0, Lcom/nirenr/talkman/util/b;->p:[Ljava/lang/String;

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nirenr/talkman/util/b;->m:Z

    iget-object v2, p0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getRootNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v4, "com.smile.gifmaker"

    invoke-virtual {v3, v2, v4}, Lcom/nirenr/talkman/TalkManAccessibilityService;->checkPackageName(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "com.smile.gifmaker:id/message_list_view"

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->findAccessibilityNodeInfosByViewId(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    const-string v4, "com.smile.gifmaker:id/live_comment_bottom_container"

    :goto_0
    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->findAccessibilityNodeInfosByViewId(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v4, "com.kuaishou.nebula"

    invoke-virtual {v3, v2, v4}, Lcom/nirenr/talkman/TalkManAccessibilityService;->checkPackageName(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    const-string v3, "com.kuaishou.nebula.live_audience_plugin:id/message_list_view"

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->findAccessibilityNodeInfosByViewId(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    const-string v4, "com.kuaishou.nebula.live_audience_plugin:id/live_comment_bottom_container"

    goto :goto_0

    :goto_1
    invoke-direct {p0}, Lcom/nirenr/talkman/util/b;->t()Z

    move-result v4

    if-nez v4, :cond_2

    return-void

    :cond_2
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    const-wide/16 v5, 0x3e8

    if-nez v4, :cond_d

    iget-object v4, p0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v4}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isOcring()Z

    move-result v4

    if-eqz v4, :cond_3

    goto/16 :goto_3

    :cond_3
    iget-object v4, p0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v4}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isDebug()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "ocr gifmaker1"

    invoke-virtual {p0, v4, v3}, Lcom/nirenr/talkman/util/b;->K(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->isVisibleToUser()Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_2

    :cond_6
    move-object v4, v1

    :goto_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->isVisibleToUser()Z

    move-result v7

    if-eqz v7, :cond_7

    move-object v1, v3

    :cond_8
    if-nez v4, :cond_9

    iget-object v0, p0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/nirenr/talkman/util/b$p;

    invoke-direct {v1, p0}, Lcom/nirenr/talkman/util/b$p;-><init>(Lcom/nirenr/talkman/util/b;)V

    invoke-virtual {v0, v1, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_9
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-static {v4, v2}, Lk2/a;->H(Landroid/view/accessibility/AccessibilityNodeInfo;I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/nirenr/talkman/util/b;->n:Landroid/view/accessibility/AccessibilityNodeInfo;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iget-object v3, p0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isDebug()Z

    move-result v3

    if-eqz v3, :cond_a

    const-string v3, "ocr gifmaker2"

    invoke-virtual {p0, v3, v4}, Lcom/nirenr/talkman/util/b;->K(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_a
    iget-object v3, p0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isDebug()Z

    move-result v3

    if-eqz v3, :cond_b

    const-string v3, "ocr gifmaker3"

    invoke-virtual {p0, v3, v1}, Lcom/nirenr/talkman/util/b;->K(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_b
    invoke-virtual {v4, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    if-eqz v1, :cond_c

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    :cond_c
    iget-object v2, p0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/nirenr/talkman/util/b$q;

    invoke-direct {v3, p0}, Lcom/nirenr/talkman/util/b$q;-><init>(Lcom/nirenr/talkman/util/b;)V

    const-wide/16 v5, 0x258

    invoke-virtual {v2, v3, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v2, p0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-instance v3, Lcom/nirenr/talkman/util/b$r;

    invoke-direct {v3, p0, v4, v1}, Lcom/nirenr/talkman/util/b$r;-><init>(Lcom/nirenr/talkman/util/b;Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-virtual {v2, v0, v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->ocr(Landroid/graphics/Rect;Lcom/nirenr/talkman/ai/OcrResult$OCRListener;)V

    return-void

    :cond_d
    :goto_3
    iget-object v0, p0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/nirenr/talkman/util/b$o;

    invoke-direct {v1, p0}, Lcom/nirenr/talkman/util/b$o;-><init>(Lcom/nirenr/talkman/util/b;)V

    invoke-virtual {v0, v1, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_e
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nirenr/talkman/util/b;->m:Z

    iget-object v1, p0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getTTS()Lcom/nirenr/talkman/a;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/nirenr/talkman/a;->W(I)V

    const-string v1, "\u5df2\u9000\u51fa\u5feb\u624b\u5b57\u5e55\u6717\u8bfb"

    invoke-virtual {p0, v1}, Lcom/nirenr/talkman/util/b;->R(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/nirenr/talkman/util/b;->M(Z)V

    return-void
.end method

.method public H()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nirenr/talkman/util/b;->m:Z

    return v0
.end method

.method public I()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nirenr/talkman/util/b;->d:Z

    return v0
.end method

.method public K(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public M(Z)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAutoOcr "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/androlua/LuaUtil;->printStackTrace(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/nirenr/talkman/util/b;->k:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nirenr/talkman/util/b;->l:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/nirenr/talkman/util/b;->o:Z

    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    iput-boolean v0, p0, Lcom/nirenr/talkman/util/b;->d:Z

    iput-boolean v0, p0, Lcom/nirenr/talkman/util/b;->o:Z

    const p1, 0x7f07044f

    invoke-virtual {p0, p1}, Lcom/nirenr/talkman/util/b;->Q(I)V

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/nirenr/talkman/util/b;->d:Z

    if-eqz v1, :cond_1

    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f07044c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/nirenr/talkman/util/b;->v(Ljava/lang/String;)V

    :cond_1
    iput-boolean p1, p0, Lcom/nirenr/talkman/util/b;->d:Z

    invoke-static {p1}, Le2/a;->l(Z)V

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/nirenr/talkman/util/b;->c:Lk2/g;

    invoke-virtual {p1, v0}, Lk2/g;->l(Z)V

    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    iget-object v2, p0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v2}, Lk2/b0;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iget-object v3, p0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v4, 0x7f0704d0

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v4}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isCN()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "[\"\u817e\u8baf\u89c6\u9891\",\"\n[a-zA-Z ]*\"]"

    goto :goto_0

    :cond_2
    const-string v4, "[]"

    :goto_0
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/nirenr/talkman/util/b;->i:[Ljava/lang/String;

    :goto_2
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lcom/nirenr/talkman/util/b;->i:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iget-object v0, p0, Lcom/nirenr/talkman/util/b;->i:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutoOcr"

    invoke-virtual {p1, v1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_5
    return-void
.end method

.method public N(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 4

    iget-object v0, p0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getCustomActions(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getLabel()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/androlua/LuaDialog;

    iget-object v3, p0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {v2, v3}, Lcom/androlua/LuaDialog;-><init>(Landroid/content/Context;)V

    const v3, 0x7f07000d

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setTitle(I)V

    invoke-virtual {v2, v1}, Lcom/androlua/LuaDialog;->setItems(Ljava/util/List;)V

    iget-object v1, p0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v3, 0x7f070095

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/androlua/LuaDialog;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    new-instance v1, Lcom/nirenr/talkman/util/b$u;

    invoke-direct {v1, p0, v2, p1, v0}, Lcom/nirenr/talkman/util/b$u;-><init>(Lcom/nirenr/talkman/util/b;Lcom/androlua/LuaDialog;Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v1}, Lcom/androlua/LuaDialog;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v2}, Lcom/androlua/LuaDialog;->show()V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public Q(I)V
    .locals 1

    iget-object v0, p0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speak(I)V

    return-void
.end method

.method public R(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speak(Ljava/lang/String;)V

    return-void
.end method

.method public u(I)V
    .locals 1

    iget-object v0, p0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->asyncSpeak(I)V

    return-void
.end method

.method public v(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->asyncSpeak(Ljava/lang/String;)V

    return-void
.end method

.method public x()V
    .locals 6

    iget-boolean v0, p0, Lcom/nirenr/talkman/util/b;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/util/b;->l:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getPackageName(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/nirenr/talkman/util/b;->M(Z)V

    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/nirenr/talkman/util/b;->g:Landroid/os/Handler;

    iget-object v3, p0, Lcom/nirenr/talkman/util/b;->q:Ljava/lang/Runnable;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v2, p0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isOcring()Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    :cond_2
    iget-object v2, p0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iget-object v3, p0, Lcom/nirenr/talkman/util/b;->j:Landroid/graphics/Rect;

    new-instance v4, Lcom/nirenr/talkman/util/b$t;

    invoke-direct {v4, p0, v0, v1}, Lcom/nirenr/talkman/util/b$t;-><init>(Lcom/nirenr/talkman/util/b;J)V

    invoke-virtual {v2, v3, v4}, Lcom/nirenr/talkman/TalkManAccessibilityService;->ocr(Landroid/graphics/Rect;Lcom/nirenr/talkman/ai/OcrResult$OCRListener;)V

    return-void

    :cond_3
    :goto_0
    invoke-virtual {p0, v1}, Lcom/nirenr/talkman/util/b;->M(Z)V

    return-void
.end method

.method public z(Ljava/lang/String;Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    invoke-virtual {p0, p1, p2}, Lcom/nirenr/talkman/util/b;->A(Ljava/lang/String;Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    iget-object p1, p0, Lcom/nirenr/talkman/util/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->beep()V

    const/4 p1, 0x0

    return p1
.end method
