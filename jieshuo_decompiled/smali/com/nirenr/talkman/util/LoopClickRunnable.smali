.class public Lcom/nirenr/talkman/util/LoopClickRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/androlua/LuaGcable;


# static fields
.field private static final i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/nirenr/talkman/util/LoopClickRunnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final j:Ljava/lang/String;


# instance fields
.field private final a:Lcom/nirenr/talkman/TalkManAccessibilityService;

.field private final b:Landroid/os/Handler;

.field private final c:Lcom/luajava/LuaTable;

.field private d:J

.field private e:Lcom/nirenr/talkman/util/ClickRunnable;

.field private f:Z

.field private g:I

.field private h:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/nirenr/talkman/util/LoopClickRunnable;->i:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/String;

    const/16 v1, 0xa

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lcom/nirenr/talkman/util/LoopClickRunnable;->j:Ljava/lang/String;

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

.method public constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Landroid/os/Handler;Lcom/luajava/LuaTable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    iput v0, p0, Lcom/nirenr/talkman/util/LoopClickRunnable;->g:I

    iput-object p1, p0, Lcom/nirenr/talkman/util/LoopClickRunnable;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iput-object p2, p0, Lcom/nirenr/talkman/util/LoopClickRunnable;->b:Landroid/os/Handler;

    iput-object p3, p0, Lcom/nirenr/talkman/util/LoopClickRunnable;->c:Lcom/luajava/LuaTable;

    invoke-virtual {p1, p0}, Lcom/androlua/LuaService;->regGc(Lcom/androlua/LuaGcable;)V

    sget-object p1, Lcom/nirenr/talkman/util/LoopClickRunnable;->i:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
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

    sget-object v1, Lcom/nirenr/talkman/util/LoopClickRunnable;->j:Ljava/lang/String;

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

.method public static cancelAll()V
    .locals 2

    sget-object v0, Lcom/nirenr/talkman/util/LoopClickRunnable;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nirenr/talkman/util/LoopClickRunnable;

    invoke-virtual {v1}, Lcom/nirenr/talkman/util/LoopClickRunnable;->cancel()V

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    iget-object v0, p0, Lcom/nirenr/talkman/util/LoopClickRunnable;->b:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nirenr/talkman/util/LoopClickRunnable;->f:Z

    iget-object v0, p0, Lcom/nirenr/talkman/util/LoopClickRunnable;->e:Lcom/nirenr/talkman/util/ClickRunnable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nirenr/talkman/util/ClickRunnable;->cancel()V

    :cond_0
    return-void
.end method

.method public gc()V
    .locals 0

    invoke-virtual {p0}, Lcom/nirenr/talkman/util/LoopClickRunnable;->cancel()V

    return-void
.end method

.method public loop(JI)V
    .locals 0

    iput-wide p1, p0, Lcom/nirenr/talkman/util/LoopClickRunnable;->h:J

    iput p3, p0, Lcom/nirenr/talkman/util/LoopClickRunnable;->g:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/nirenr/talkman/util/LoopClickRunnable;->d:J

    invoke-virtual {p0}, Lcom/nirenr/talkman/util/LoopClickRunnable;->run()V

    return-void
.end method

.method public run()V
    .locals 7

    iget v0, p0, Lcom/nirenr/talkman/util/LoopClickRunnable;->g:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/nirenr/talkman/util/LoopClickRunnable;->g:I

    if-gez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/nirenr/talkman/util/LoopClickRunnable;->f:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Lcom/nirenr/talkman/util/ClickRunnable;

    iget-object v1, p0, Lcom/nirenr/talkman/util/LoopClickRunnable;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iget-object v2, p0, Lcom/nirenr/talkman/util/LoopClickRunnable;->c:Lcom/luajava/LuaTable;

    invoke-direct {v0, v1, v2}, Lcom/nirenr/talkman/util/ClickRunnable;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Lcom/luajava/LuaTable;)V

    iput-object v0, p0, Lcom/nirenr/talkman/util/LoopClickRunnable;->e:Lcom/nirenr/talkman/util/ClickRunnable;

    invoke-virtual {v0}, Lcom/nirenr/talkman/util/ClickRunnable;->canClick()Z

    invoke-direct {p0}, Lcom/nirenr/talkman/util/LoopClickRunnable;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nirenr/talkman/util/LoopClickRunnable;->b:Landroid/os/Handler;

    iget-wide v1, p0, Lcom/nirenr/talkman/util/LoopClickRunnable;->h:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/nirenr/talkman/util/LoopClickRunnable;->d:J

    sub-long/2addr v3, v5

    iget-wide v5, p0, Lcom/nirenr/talkman/util/LoopClickRunnable;->h:J

    rem-long/2addr v3, v5

    sub-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/nirenr/talkman/util/LoopClickRunnable;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v1, 0x7f070380

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->asyncSpeak(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
