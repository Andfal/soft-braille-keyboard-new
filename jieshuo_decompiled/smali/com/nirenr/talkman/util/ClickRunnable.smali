.class public Lcom/nirenr/talkman/util/ClickRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/androlua/LuaGcable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nirenr/talkman/util/ClickRunnable$ClickCallback;
    }
.end annotation


# static fields
.field private static final i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/nirenr/talkman/util/ClickRunnable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcom/nirenr/talkman/TalkManAccessibilityService;

.field private b:Lcom/luajava/LuaTable;

.field private c:I

.field private d:I

.field private e:I

.field private f:Lcom/nirenr/talkman/util/ClickRunnable$ClickCallback;

.field private g:Z

.field private h:Lcom/nirenr/talkman/util/ClickRunnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/nirenr/talkman/util/ClickRunnable;->i:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Lcom/luajava/LuaTable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/nirenr/talkman/util/ClickRunnable;->c:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/nirenr/talkman/util/ClickRunnable;->d:I

    iput v0, p0, Lcom/nirenr/talkman/util/ClickRunnable;->e:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nirenr/talkman/util/ClickRunnable;->g:Z

    iput-object p1, p0, Lcom/nirenr/talkman/util/ClickRunnable;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iput-object p2, p0, Lcom/nirenr/talkman/util/ClickRunnable;->b:Lcom/luajava/LuaTable;

    invoke-virtual {p1, p0}, Lcom/androlua/LuaService;->regGc(Lcom/androlua/LuaGcable;)V

    sget-object p1, Lcom/nirenr/talkman/util/ClickRunnable;->i:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static bridge synthetic a(Lcom/nirenr/talkman/util/ClickRunnable;)Lcom/nirenr/talkman/TalkManAccessibilityService;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/util/ClickRunnable;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/nirenr/talkman/util/ClickRunnable;Lcom/luajava/LuaTable;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/util/ClickRunnable;->b:Lcom/luajava/LuaTable;

    return-void
.end method

.method static bridge synthetic c(Lcom/nirenr/talkman/util/ClickRunnable;Lcom/nirenr/talkman/util/ClickRunnable;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/util/ClickRunnable;->h:Lcom/nirenr/talkman/util/ClickRunnable;

    return-void
.end method

.method public static cancelAll()V
    .locals 2

    sget-object v0, Lcom/nirenr/talkman/util/ClickRunnable;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nirenr/talkman/util/ClickRunnable;

    invoke-virtual {v1}, Lcom/nirenr/talkman/util/ClickRunnable;->cancel()V

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private d(Ljava/lang/String;)Z
    .locals 31

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    :cond_0
    if-nez v0, :cond_1

    return v3

    :cond_1
    iget-boolean v2, v1, Lcom/nirenr/talkman/util/ClickRunnable;->g:Z

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-eqz v2, :cond_3

    iget-object v0, v1, Lcom/nirenr/talkman/util/ClickRunnable;->f:Lcom/nirenr/talkman/util/ClickRunnable$ClickCallback;

    if-eqz v0, :cond_2

    iget-object v2, v1, Lcom/nirenr/talkman/util/ClickRunnable;->b:Lcom/luajava/LuaTable;

    invoke-interface {v0, v3, v2, v4, v5}, Lcom/nirenr/talkman/util/ClickRunnable$ClickCallback;->onDone(ZLcom/luajava/LuaTable;Ljava/lang/String;I)V

    :cond_2
    return v3

    :cond_3
    const-string v2, "<"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_4

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x1

    goto :goto_0

    :cond_4
    const/4 v6, 0x0

    :goto_0
    const-string v8, "?"

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x1

    goto :goto_1

    :cond_5
    const/4 v8, 0x0

    :goto_1
    const-string v9, "$"

    invoke-virtual {v0, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    const-wide/16 v10, 0x3e8

    if-lez v9, :cond_6

    add-int/lit8 v12, v9, 0x1

    :try_start_0
    invoke-virtual {v0, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {v0, v3, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_6
    const-string v9, ">"

    invoke-virtual {v0, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    if-lez v9, :cond_8

    iget v12, v1, Lcom/nirenr/talkman/util/ClickRunnable;->d:I

    if-gez v12, :cond_7

    add-int/lit8 v12, v9, 0x1

    :try_start_1
    invoke-virtual {v0, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    iput v12, v1, Lcom/nirenr/talkman/util/ClickRunnable;->d:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    iput v5, v1, Lcom/nirenr/talkman/util/ClickRunnable;->d:I

    :cond_7
    :goto_2
    invoke-virtual {v0, v3, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_8
    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_a

    iget v9, v1, Lcom/nirenr/talkman/util/ClickRunnable;->e:I

    if-gez v9, :cond_9

    add-int/lit8 v9, v2, 0x1

    :try_start_2
    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v1, Lcom/nirenr/talkman/util/ClickRunnable;->e:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    iput v5, v1, Lcom/nirenr/talkman/util/ClickRunnable;->e:I

    :goto_3
    const/4 v9, 0x0

    goto :goto_4

    :cond_9
    const/4 v9, 0x1

    :goto_4
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_5

    :cond_a
    move-object v2, v0

    const/4 v9, 0x1

    :goto_5
    iget v12, v1, Lcom/nirenr/talkman/util/ClickRunnable;->e:I

    add-int/lit8 v0, v12, -0x1

    iput v0, v1, Lcom/nirenr/talkman/util/ClickRunnable;->e:I

    iget v0, v1, Lcom/nirenr/talkman/util/ClickRunnable;->d:I

    sub-int/2addr v0, v7

    iput v0, v1, Lcom/nirenr/talkman/util/ClickRunnable;->d:I

    iget-object v0, v1, Lcom/nirenr/talkman/util/ClickRunnable;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v13, "postClick"

    invoke-virtual {v0, v13, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/nirenr/talkman/util/ClickRunnable;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v14, "["

    invoke-virtual {v2, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    const-string v4, "]"

    if-eqz v15, :cond_b

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_b

    const/4 v15, 0x1

    goto :goto_6

    :cond_b
    const/4 v15, 0x0

    :goto_6
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v0, v13, v15}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v14, 0x2

    if-eqz v0, :cond_d

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, v1, Lcom/nirenr/talkman/util/ClickRunnable;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v7

    invoke-virtual {v2, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/nirenr/talkman/TalkManAccessibilityService;->findAccessibilityNodeInfo(Ljava/lang/String;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v4

    if-nez v4, :cond_c

    :try_start_3
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    iget-object v15, v1, Lcom/nirenr/talkman/util/ClickRunnable;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v15, v13, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v13

    const-wide/16 v16, 0x1f4

    const/4 v15, 0x3

    const/4 v5, 0x4

    packed-switch v13, :pswitch_data_0

    move-object/from16 p1, v4

    goto/16 :goto_9

    :pswitch_0
    iget-object v13, v1, Lcom/nirenr/talkman/util/ClickRunnable;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v19

    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v21

    invoke-virtual {v0, v14}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v23

    invoke-virtual {v0, v15}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v25

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v27

    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v28

    const/4 v5, 0x6

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v29

    const/4 v5, 0x7

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v30

    move-object/from16 v18, v13

    invoke-virtual/range {v18 .. v30}, Lcom/nirenr/talkman/TalkManAccessibilityService;->colorClick(DDDDIIII)V

    const-wide/16 v13, 0x7d0

    invoke-static {v10, v11, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    sget-object v0, Lk2/a;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    goto/16 :goto_8

    :pswitch_1
    iget-object v13, v1, Lcom/nirenr/talkman/util/ClickRunnable;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v19

    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v21

    invoke-virtual {v0, v14}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v23

    invoke-virtual {v0, v15}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v25

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v27

    const/4 v14, 0x5

    invoke-virtual {v0, v14}, Lorg/json/JSONArray;->getInt(I)I

    move-result v28

    const/4 v14, 0x6

    invoke-virtual {v0, v14}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v18, v13

    invoke-virtual/range {v18 .. v29}, Lcom/nirenr/talkman/TalkManAccessibilityService;->swipe(DDDDIILjava/lang/String;)V

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v5

    int-to-long v13, v5

    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v0
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_5

    move-object/from16 p1, v4

    int-to-long v3, v0

    mul-long v13, v13, v3

    add-long v13, v13, v16

    :try_start_4
    invoke-static {v10, v11, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    :try_start_5
    iget-object v0, v1, Lcom/nirenr/talkman/util/ClickRunnable;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, v1, v3, v4}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setTouchExplorationModeRunnable(Ljava/lang/Runnable;J)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_3

    return v7

    :pswitch_2
    move-object/from16 p1, v4

    :try_start_6
    iget-object v3, v1, Lcom/nirenr/talkman/util/ClickRunnable;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v20

    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v22

    invoke-virtual {v0, v14}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v24

    invoke-virtual {v0, v15}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v26

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v28

    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getInt(I)I

    move-result v29

    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v29}, Lcom/nirenr/talkman/TalkManAccessibilityService;->swipe(DDDDII)V

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3

    int-to-long v3, v3

    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v0

    int-to-long v13, v0

    mul-long v3, v3, v13

    add-long v3, v3, v16

    invoke-static {v10, v11, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    goto/16 :goto_7

    :pswitch_3
    move-object/from16 p1, v4

    iget-object v3, v1, Lcom/nirenr/talkman/util/ClickRunnable;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v20

    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v22

    invoke-virtual {v0, v14}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v24

    invoke-virtual {v0, v15}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v26

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v28

    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v28}, Lcom/nirenr/talkman/TalkManAccessibilityService;->swipe(DDDDI)Z

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v0

    add-int/lit16 v0, v0, 0x1f4

    int-to-long v3, v0

    invoke-static {v10, v11, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    goto/16 :goto_7

    :pswitch_4
    move-object/from16 p1, v4

    iget-object v3, v1, Lcom/nirenr/talkman/util/ClickRunnable;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v20

    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v22

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v24

    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v26

    const/16 v28, 0xa

    invoke-virtual {v0, v14}, Lorg/json/JSONArray;->getInt(I)I

    move-result v29

    invoke-virtual {v0, v15}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v30}, Lcom/nirenr/talkman/TalkManAccessibilityService;->swipe(DDDDIILjava/lang/String;)V

    invoke-virtual {v0, v14}, Lorg/json/JSONArray;->getInt(I)I

    move-result v0

    int-to-long v3, v0

    const-wide/16 v13, 0xa

    mul-long v3, v3, v13

    add-long v3, v3, v16

    invoke-static {v10, v11, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_4

    :try_start_7
    iget-object v0, v1, Lcom/nirenr/talkman/util/ClickRunnable;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, v1, v3, v4}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setTouchExplorationModeRunnable(Ljava/lang/Runnable;J)V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_3

    return v7

    :pswitch_5
    move-object/from16 p1, v4

    :try_start_8
    iget-object v3, v1, Lcom/nirenr/talkman/util/ClickRunnable;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v20

    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v22

    invoke-virtual {v0, v14}, Lorg/json/JSONArray;->getInt(I)I

    move-result v24

    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v24}, Lcom/nirenr/talkman/TalkManAccessibilityService;->press(DDI)V

    invoke-virtual {v0, v14}, Lorg/json/JSONArray;->getInt(I)I

    move-result v0

    add-int/lit16 v0, v0, 0x1f4

    int-to-long v3, v0

    invoke-static {v10, v11, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    goto :goto_7

    :pswitch_6
    move-object/from16 p1, v4

    iget-object v3, v1, Lcom/nirenr/talkman/util/ClickRunnable;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v13

    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v4

    invoke-virtual {v3, v13, v14, v4, v5}, Lcom/nirenr/talkman/TalkManAccessibilityService;->click(DD)V

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    add-int/lit16 v0, v0, 0x1f4

    int-to-long v3, v0

    invoke-static {v10, v11, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_4

    :goto_7
    :try_start_9
    sget-object v0, Lk2/a;->b:Landroid/view/accessibility/AccessibilityNodeInfo;
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_3

    move-wide v10, v3

    :goto_8
    move-object v4, v0

    goto :goto_9

    :catch_3
    move-exception v0

    move-wide v10, v3

    goto :goto_a

    :pswitch_7
    move-object/from16 p1, v4

    :try_start_a
    iget-object v3, v1, Lcom/nirenr/talkman/util/ClickRunnable;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getFocusView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v13

    invoke-virtual {v3, v4, v13}, Lcom/nirenr/talkman/TalkManAccessibilityService;->press(Landroid/view/accessibility/AccessibilityNodeInfo;I)Z

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v0

    add-int/lit16 v0, v0, 0x1f4

    int-to-long v3, v0

    invoke-static {v10, v11, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_4

    goto :goto_7

    :catch_4
    move-exception v0

    goto :goto_a

    :goto_9
    move-object/from16 v16, v4

    goto :goto_b

    :catch_5
    move-exception v0

    move-object/from16 p1, v4

    :goto_a
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object/from16 v16, p1

    :goto_b
    const/4 v0, 0x0

    goto :goto_c

    :cond_c
    move-object/from16 p1, v4

    move-object/from16 v16, p1

    const/4 v0, 0x1

    :goto_c
    const/4 v4, 0x0

    goto/16 :goto_18

    :cond_d
    const-string v0, "%"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "#"

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_e

    add-int/lit8 v4, v3, 0x1

    :try_start_b
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    goto :goto_d

    :catch_6
    const/4 v4, -0x1

    :goto_d
    const/4 v5, 0x0

    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :cond_e
    const/4 v4, -0x1

    :goto_e
    iget-object v3, v1, Lcom/nirenr/talkman/util/ClickRunnable;->b:Lcom/luajava/LuaTable;

    invoke-virtual {v3}, Lcom/luajava/LuaObject;->getLuaState()Lcom/luajava/LuaState;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/luajava/LuaState;->o(Ljava/lang/String;)Lcom/luajava/LuaFunction;

    move-result-object v5

    if-eqz v5, :cond_13

    :try_start_c
    new-array v0, v14, [Ljava/lang/Object;

    iget-object v3, v1, Lcom/nirenr/talkman/util/ClickRunnable;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getFocusView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    const/4 v14, 0x0

    aput-object v3, v0, v14

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    invoke-virtual {v5, v0}, Lcom/luajava/LuaFunction;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Ljava/lang/Boolean;

    if-eqz v3, :cond_f

    move-object v3, v0

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_f

    sget-object v0, Lk2/a;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    goto :goto_f

    :cond_f
    instance-of v3, v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eqz v3, :cond_10

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    :goto_f
    move-object v4, v0

    goto :goto_10

    :cond_10
    instance-of v3, v0, Lcom/luajava/LuaTable;

    if-eqz v3, :cond_12

    move-object v3, v0

    check-cast v3, Lcom/luajava/LuaTable;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/luajava/LuaTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eqz v4, :cond_11

    check-cast v3, Landroid/view/accessibility/AccessibilityNodeInfo;

    move-object v4, v3

    goto :goto_10

    :cond_11
    new-instance v3, Lcom/nirenr/talkman/util/ClickRunnable;

    iget-object v4, v1, Lcom/nirenr/talkman/util/ClickRunnable;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    check-cast v0, Lcom/luajava/LuaTable;

    invoke-direct {v3, v4, v0}, Lcom/nirenr/talkman/util/ClickRunnable;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Lcom/luajava/LuaTable;)V

    iput-object v3, v1, Lcom/nirenr/talkman/util/ClickRunnable;->h:Lcom/nirenr/talkman/util/ClickRunnable;

    new-instance v0, Lcom/nirenr/talkman/util/ClickRunnable$b;

    invoke-direct {v0, v1}, Lcom/nirenr/talkman/util/ClickRunnable$b;-><init>(Lcom/nirenr/talkman/util/ClickRunnable;)V

    invoke-virtual {v3, v0}, Lcom/nirenr/talkman/util/ClickRunnable;->canClick(Lcom/nirenr/talkman/util/ClickRunnable$ClickCallback;)Z

    move-result v0
    :try_end_c
    .catch Lcom/luajava/LuaException; {:try_start_c .. :try_end_c} :catch_7

    if-eqz v0, :cond_12

    return v7

    :cond_12
    const/4 v4, 0x0

    :goto_10
    move-object/from16 v16, v4

    const/4 v0, 0x0

    const/4 v4, 0x1

    goto/16 :goto_18

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v3, v1, Lcom/nirenr/talkman/util/ClickRunnable;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v3, v13, v0}, Lcom/androlua/LuaService;->sendError(Ljava/lang/String;Ljava/lang/Exception;)V

    const/4 v0, 0x0

    const/4 v4, 0x1

    goto/16 :goto_17

    :cond_13
    const-string v5, ")"

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1a

    :try_start_d
    const-string v5, "/"

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const-string v14, "("

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    const/4 v15, -0x1

    if-eq v5, v15, :cond_15

    if-le v5, v14, :cond_14

    goto :goto_12

    :cond_14
    const/4 v4, 0x0

    :goto_11
    const/16 v16, 0x0

    goto :goto_15

    :cond_15
    :goto_12
    iget-object v5, v1, Lcom/nirenr/talkman/util/ClickRunnable;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "return "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v14, 0x0

    new-array v15, v14, [Ljava/lang/Object;

    invoke-virtual {v5, v3, v0, v15}, Lcom/androlua/LuaService;->doString(Lcom/luajava/LuaState;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9

    :try_start_e
    instance-of v3, v0, Ljava/lang/Boolean;

    if-eqz v3, :cond_16

    move-object v3, v0

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_16

    sget-object v0, Lk2/a;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    goto :goto_13

    :cond_16
    instance-of v3, v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eqz v3, :cond_17

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    :goto_13
    move-object/from16 v16, v0

    :goto_14
    const/4 v4, 0x1

    goto :goto_15

    :cond_17
    instance-of v3, v0, Lcom/luajava/LuaTable;

    if-eqz v3, :cond_19

    move-object v3, v0

    check-cast v3, Lcom/luajava/LuaTable;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/luajava/LuaTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eqz v4, :cond_18

    check-cast v3, Landroid/view/accessibility/AccessibilityNodeInfo;

    move-object/from16 v16, v3

    goto :goto_14

    :cond_18
    new-instance v3, Lcom/nirenr/talkman/util/ClickRunnable;

    iget-object v4, v1, Lcom/nirenr/talkman/util/ClickRunnable;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    check-cast v0, Lcom/luajava/LuaTable;

    invoke-direct {v3, v4, v0}, Lcom/nirenr/talkman/util/ClickRunnable;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Lcom/luajava/LuaTable;)V

    iput-object v3, v1, Lcom/nirenr/talkman/util/ClickRunnable;->h:Lcom/nirenr/talkman/util/ClickRunnable;

    new-instance v0, Lcom/nirenr/talkman/util/ClickRunnable$c;

    invoke-direct {v0, v1}, Lcom/nirenr/talkman/util/ClickRunnable$c;-><init>(Lcom/nirenr/talkman/util/ClickRunnable;)V

    invoke-virtual {v3, v0}, Lcom/nirenr/talkman/util/ClickRunnable;->canClick(Lcom/nirenr/talkman/util/ClickRunnable$ClickCallback;)Z

    move-result v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_8

    if-eqz v0, :cond_19

    return v7

    :cond_19
    const/4 v4, 0x1

    goto :goto_11

    :goto_15
    const/4 v0, 0x0

    goto :goto_18

    :catch_8
    move-exception v0

    const/4 v4, 0x1

    goto :goto_16

    :catch_9
    move-exception v0

    const/4 v4, 0x0

    :goto_16
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v3, v1, Lcom/nirenr/talkman/util/ClickRunnable;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v3, v13, v0}, Lcom/androlua/LuaService;->sendError(Ljava/lang/String;Ljava/lang/Exception;)V

    const/4 v0, 0x0

    goto :goto_17

    :cond_1a
    const/4 v0, 0x0

    const/4 v4, 0x0

    :goto_17
    const/16 v16, 0x0

    :goto_18
    if-nez v4, :cond_1b

    if-nez v0, :cond_1b

    if-nez v16, :cond_1b

    iget-object v3, v1, Lcom/nirenr/talkman/util/ClickRunnable;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v3, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->findAccessibilityNodeInfo(Ljava/lang/String;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v16

    :cond_1b
    move-object/from16 v3, v16

    iget-object v4, v1, Lcom/nirenr/talkman/util/ClickRunnable;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ","

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v1, Lcom/nirenr/talkman/util/ClickRunnable;->c:I

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v1, Lcom/nirenr/talkman/util/ClickRunnable;->d:I

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v1, Lcom/nirenr/talkman/util/ClickRunnable;->e:I

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v14, "findAccessibilityNodeInfo "

    invoke-virtual {v4, v14, v5}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz v3, :cond_1e

    const/4 v4, -0x1

    iput v4, v1, Lcom/nirenr/talkman/util/ClickRunnable;->d:I

    sget-object v2, Lk2/a;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eq v3, v2, :cond_1d

    iget-object v2, v1, Lcom/nirenr/talkman/util/ClickRunnable;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2, v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->accessibilityFocus2(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    if-nez v6, :cond_1d

    if-eqz v0, :cond_1c

    iget-object v0, v1, Lcom/nirenr/talkman/util/ClickRunnable;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->click2(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto :goto_19

    :cond_1c
    iget-object v0, v1, Lcom/nirenr/talkman/util/ClickRunnable;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->toClick6(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    :cond_1d
    :goto_19
    iget-object v0, v1, Lcom/nirenr/talkman/util/ClickRunnable;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    :goto_1a
    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return v7

    :cond_1e
    if-eqz v9, :cond_1f

    iget v0, v1, Lcom/nirenr/talkman/util/ClickRunnable;->d:I

    if-gtz v0, :cond_1d

    iget v0, v1, Lcom/nirenr/talkman/util/ClickRunnable;->e:I

    if-gtz v0, :cond_1d

    if-lez v12, :cond_1f

    goto :goto_19

    :cond_1f
    iget-object v0, v1, Lcom/nirenr/talkman/util/ClickRunnable;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    if-eqz v8, :cond_20

    goto :goto_1a

    :cond_20
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/nirenr/talkman/util/ClickRunnable;->d:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/nirenr/talkman/util/ClickRunnable;->e:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "findAccessibilityNodeInfo end"

    invoke-virtual {v0, v3, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x0

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
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


# virtual methods
.method public canClick()Z
    .locals 10

    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/util/ClickRunnable;->b:Lcom/luajava/LuaTable;

    invoke-virtual {v0}, Lcom/luajava/LuaTable;->b()I

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-boolean v2, p0, Lcom/nirenr/talkman/util/ClickRunnable;->g:Z

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/nirenr/talkman/util/ClickRunnable;->f:Lcom/nirenr/talkman/util/ClickRunnable$ClickCallback;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/nirenr/talkman/util/ClickRunnable;->b:Lcom/luajava/LuaTable;

    invoke-interface {v0, v1, v2, v4, v3}, Lcom/nirenr/talkman/util/ClickRunnable$ClickCallback;->onDone(ZLcom/luajava/LuaTable;Ljava/lang/String;I)V

    :cond_2
    return v1

    :cond_3
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_e

    iget-object v5, p0, Lcom/nirenr/talkman/util/ClickRunnable;->b:Lcom/luajava/LuaTable;

    add-int/lit8 v6, v2, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/luajava/LuaTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iget-boolean v7, p0, Lcom/nirenr/talkman/util/ClickRunnable;->g:Z

    if-eqz v7, :cond_5

    iget-object v0, p0, Lcom/nirenr/talkman/util/ClickRunnable;->f:Lcom/nirenr/talkman/util/ClickRunnable$ClickCallback;

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/nirenr/talkman/util/ClickRunnable;->b:Lcom/luajava/LuaTable;

    invoke-interface {v0, v1, v2, v4, v3}, Lcom/nirenr/talkman/util/ClickRunnable$ClickCallback;->onDone(ZLcom/luajava/LuaTable;Ljava/lang/String;I)V

    :cond_4
    return v1

    :cond_5
    instance-of v7, v5, Lcom/luajava/LuaTable;

    const/4 v8, 0x1

    if-eqz v7, :cond_a

    check-cast v5, Lcom/luajava/LuaTable;

    invoke-virtual {v5}, Lcom/luajava/LuaTable;->b()I

    move-result v2

    if-nez v2, :cond_6

    goto :goto_1

    :cond_6
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/luajava/LuaTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_7

    goto :goto_1

    :cond_7
    instance-of v7, v2, Lcom/luajava/LuaTable;

    if-eqz v7, :cond_9

    check-cast v2, Lcom/luajava/LuaTable;

    invoke-virtual {v2}, Lcom/luajava/LuaTable;->b()I

    move-result v7

    if-nez v7, :cond_8

    goto :goto_1

    :cond_8
    new-instance v7, Lcom/nirenr/talkman/util/ClickRunnable;

    iget-object v9, p0, Lcom/nirenr/talkman/util/ClickRunnable;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {v7, v9, v2}, Lcom/nirenr/talkman/util/ClickRunnable;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Lcom/luajava/LuaTable;)V

    iput-object v7, p0, Lcom/nirenr/talkman/util/ClickRunnable;->h:Lcom/nirenr/talkman/util/ClickRunnable;

    new-instance v2, Lcom/nirenr/talkman/util/ClickRunnable$a;

    invoke-direct {v2, p0, v5}, Lcom/nirenr/talkman/util/ClickRunnable$a;-><init>(Lcom/nirenr/talkman/util/ClickRunnable;Lcom/luajava/LuaTable;)V

    invoke-virtual {v7, v2}, Lcom/nirenr/talkman/util/ClickRunnable;->canClick(Lcom/nirenr/talkman/util/ClickRunnable$ClickCallback;)Z

    move-result v2

    if-eqz v2, :cond_d

    iput-object v5, p0, Lcom/nirenr/talkman/util/ClickRunnable;->b:Lcom/luajava/LuaTable;

    return v8

    :cond_9
    instance-of v7, v2, Ljava/lang/String;

    if-eqz v7, :cond_d

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/nirenr/talkman/util/ClickRunnable;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    iput-object v5, p0, Lcom/nirenr/talkman/util/ClickRunnable;->b:Lcom/luajava/LuaTable;

    return v8

    :cond_a
    instance-of v7, v5, Ljava/lang/String;

    if-eqz v7, :cond_d

    check-cast v5, Ljava/lang/String;

    iget-object v7, p0, Lcom/nirenr/talkman/util/ClickRunnable;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v7, v5}, Lcom/nirenr/talkman/TalkManAccessibilityService;->findAccessibilityNodeInfo(Ljava/lang/String;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v7

    if-eqz v7, :cond_d

    sget-object v0, Lk2/a;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eq v7, v0, :cond_b

    iget-object v0, p0, Lcom/nirenr/talkman/util/ClickRunnable;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, v7}, Lcom/nirenr/talkman/TalkManAccessibilityService;->accessibilityFocus2(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    iget-object v0, p0, Lcom/nirenr/talkman/util/ClickRunnable;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, v7}, Lcom/nirenr/talkman/TalkManAccessibilityService;->toClick6(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    :cond_b
    iget-object v0, p0, Lcom/nirenr/talkman/util/ClickRunnable;->f:Lcom/nirenr/talkman/util/ClickRunnable$ClickCallback;

    if-eqz v0, :cond_c

    iget-object v1, p0, Lcom/nirenr/talkman/util/ClickRunnable;->b:Lcom/luajava/LuaTable;

    invoke-interface {v0, v8, v1, v5, v2}, Lcom/nirenr/talkman/util/ClickRunnable$ClickCallback;->onDone(ZLcom/luajava/LuaTable;Ljava/lang/String;I)V

    :cond_c
    return v8

    :cond_d
    :goto_1
    move v2, v6

    goto/16 :goto_0

    :cond_e
    iget-object v0, p0, Lcom/nirenr/talkman/util/ClickRunnable;->f:Lcom/nirenr/talkman/util/ClickRunnable$ClickCallback;

    if-eqz v0, :cond_f

    iget-object v2, p0, Lcom/nirenr/talkman/util/ClickRunnable;->b:Lcom/luajava/LuaTable;

    invoke-interface {v0, v1, v2, v4, v3}, Lcom/nirenr/talkman/util/ClickRunnable$ClickCallback;->onDone(ZLcom/luajava/LuaTable;Ljava/lang/String;I)V

    :cond_f
    return v1
.end method

.method public canClick(Lcom/nirenr/talkman/util/ClickRunnable$ClickCallback;)Z
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/util/ClickRunnable;->f:Lcom/nirenr/talkman/util/ClickRunnable$ClickCallback;

    invoke-virtual {p0}, Lcom/nirenr/talkman/util/ClickRunnable;->canClick()Z

    move-result p1

    return p1
.end method

.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nirenr/talkman/util/ClickRunnable;->g:Z

    iget-object v0, p0, Lcom/nirenr/talkman/util/ClickRunnable;->h:Lcom/nirenr/talkman/util/ClickRunnable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nirenr/talkman/util/ClickRunnable;->cancel()V

    :cond_0
    return-void
.end method

.method public gc()V
    .locals 0

    invoke-virtual {p0}, Lcom/nirenr/talkman/util/ClickRunnable;->cancel()V

    return-void
.end method

.method public run()V
    .locals 8

    iget-boolean v0, p0, Lcom/nirenr/talkman/util/ClickRunnable;->g:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nirenr/talkman/util/ClickRunnable;->f:Lcom/nirenr/talkman/util/ClickRunnable$ClickCallback;

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/nirenr/talkman/util/ClickRunnable;->b:Lcom/luajava/LuaTable;

    const/4 v4, -0x1

    invoke-interface {v0, v2, v3, v1, v4}, Lcom/nirenr/talkman/util/ClickRunnable$ClickCallback;->onDone(ZLcom/luajava/LuaTable;Ljava/lang/String;I)V

    :cond_0
    return-void

    :cond_1
    iget v0, p0, Lcom/nirenr/talkman/util/ClickRunnable;->d:I

    const/4 v3, 0x1

    if-gtz v0, :cond_2

    iget v0, p0, Lcom/nirenr/talkman/util/ClickRunnable;->e:I

    if-gtz v0, :cond_2

    iget v0, p0, Lcom/nirenr/talkman/util/ClickRunnable;->c:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/nirenr/talkman/util/ClickRunnable;->c:I

    :cond_2
    iget-object v0, p0, Lcom/nirenr/talkman/util/ClickRunnable;->b:Lcom/luajava/LuaTable;

    iget v4, p0, Lcom/nirenr/talkman/util/ClickRunnable;->c:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/luajava/LuaTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v4, p0, Lcom/nirenr/talkman/util/ClickRunnable;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/nirenr/talkman/util/ClickRunnable;->c:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/nirenr/talkman/util/ClickRunnable;->d:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/nirenr/talkman/util/ClickRunnable;->e:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "findAccessibilityNodeInfo run"

    invoke-virtual {v4, v6, v5}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/nirenr/talkman/util/ClickRunnable;->f:Lcom/nirenr/talkman/util/ClickRunnable$ClickCallback;

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/nirenr/talkman/util/ClickRunnable;->b:Lcom/luajava/LuaTable;

    iget v4, p0, Lcom/nirenr/talkman/util/ClickRunnable;->c:I

    invoke-interface {v0, v3, v2, v1, v4}, Lcom/nirenr/talkman/util/ClickRunnable$ClickCallback;->onDone(ZLcom/luajava/LuaTable;Ljava/lang/String;I)V

    :cond_3
    return-void

    :cond_4
    instance-of v1, v0, Lcom/luajava/LuaTable;

    if-eqz v1, :cond_6

    check-cast v0, Lcom/luajava/LuaTable;

    invoke-virtual {v0}, Lcom/luajava/LuaTable;->b()I

    move-result v1

    if-nez v1, :cond_5

    return-void

    :cond_5
    new-instance v1, Lcom/nirenr/talkman/util/ClickRunnable;

    iget-object v2, p0, Lcom/nirenr/talkman/util/ClickRunnable;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {v1, v2, v0}, Lcom/nirenr/talkman/util/ClickRunnable;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Lcom/luajava/LuaTable;)V

    iput-object v1, p0, Lcom/nirenr/talkman/util/ClickRunnable;->h:Lcom/nirenr/talkman/util/ClickRunnable;

    new-instance v0, Lcom/nirenr/talkman/util/ClickRunnable$d;

    invoke-direct {v0, p0}, Lcom/nirenr/talkman/util/ClickRunnable$d;-><init>(Lcom/nirenr/talkman/util/ClickRunnable;)V

    invoke-virtual {v1, v0}, Lcom/nirenr/talkman/util/ClickRunnable;->canClick(Lcom/nirenr/talkman/util/ClickRunnable$ClickCallback;)Z

    goto/16 :goto_0

    :cond_6
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_7

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/nirenr/talkman/util/ClickRunnable;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/nirenr/talkman/util/ClickRunnable;->f:Lcom/nirenr/talkman/util/ClickRunnable$ClickCallback;

    if-eqz v1, :cond_a

    iget-object v3, p0, Lcom/nirenr/talkman/util/ClickRunnable;->b:Lcom/luajava/LuaTable;

    iget v4, p0, Lcom/nirenr/talkman/util/ClickRunnable;->c:I

    invoke-interface {v1, v2, v3, v0, v4}, Lcom/nirenr/talkman/util/ClickRunnable$ClickCallback;->onDone(ZLcom/luajava/LuaTable;Ljava/lang/String;I)V

    goto :goto_0

    :cond_7
    instance-of v1, v0, Lcom/luajava/LuaFunction;

    if-eqz v1, :cond_a

    check-cast v0, Lcom/luajava/LuaFunction;

    :try_start_0
    new-array v1, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/nirenr/talkman/util/ClickRunnable;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getFocusView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/luajava/LuaFunction;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/nirenr/talkman/util/ClickRunnable;->run()V

    return-void

    :cond_8
    instance-of v1, v0, Lcom/luajava/LuaTable;

    if-eqz v1, :cond_9

    new-instance v1, Lcom/nirenr/talkman/util/ClickRunnable;

    iget-object v3, p0, Lcom/nirenr/talkman/util/ClickRunnable;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-object v4, v0

    check-cast v4, Lcom/luajava/LuaTable;

    invoke-direct {v1, v3, v4}, Lcom/nirenr/talkman/util/ClickRunnable;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Lcom/luajava/LuaTable;)V

    iput-object v1, p0, Lcom/nirenr/talkman/util/ClickRunnable;->h:Lcom/nirenr/talkman/util/ClickRunnable;

    new-instance v3, Lcom/nirenr/talkman/util/ClickRunnable$e;

    invoke-direct {v3, p0}, Lcom/nirenr/talkman/util/ClickRunnable$e;-><init>(Lcom/nirenr/talkman/util/ClickRunnable;)V

    invoke-virtual {v1, v3}, Lcom/nirenr/talkman/util/ClickRunnable;->canClick(Lcom/nirenr/talkman/util/ClickRunnable$ClickCallback;)Z

    move-result v1

    if-eqz v1, :cond_9

    return-void

    :cond_9
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/nirenr/talkman/util/ClickRunnable;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/nirenr/talkman/util/ClickRunnable;->f:Lcom/nirenr/talkman/util/ClickRunnable$ClickCallback;

    if-eqz v1, :cond_a

    iget-object v3, p0, Lcom/nirenr/talkman/util/ClickRunnable;->b:Lcom/luajava/LuaTable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget v4, p0, Lcom/nirenr/talkman/util/ClickRunnable;->c:I

    invoke-interface {v1, v2, v3, v0, v4}, Lcom/nirenr/talkman/util/ClickRunnable$ClickCallback;->onDone(ZLcom/luajava/LuaTable;Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/luajava/LuaException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/nirenr/talkman/util/ClickRunnable;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v2, "ClickRunnable"

    invoke-virtual {v1, v2, v0}, Lcom/androlua/LuaService;->sendError(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_a
    :goto_0
    return-void
.end method
