.class public Lcom/nirenr/talkman/tts/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/tts/TextToSpeak;


# instance fields
.field private final a:Lcom/nirenr/talkman/TalkManAccessibilityService;

.field private b:F

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Lcom/nirenr/talkman/tts/TextToSpeak;


# direct methods
.method public constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService;ILcom/nirenr/talkman/tts/TextToSpeakListener;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move/from16 v1, p2

    move-object/from16 v6, p3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x5

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eq v1, v3, :cond_1

    if-eq v1, v5, :cond_1

    const/4 v3, 0x4

    if-eq v1, v3, :cond_1

    if-ne v1, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v9, 0x1

    :goto_1
    iput-object v2, v0, Lcom/nirenr/talkman/tts/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static/range {p1 .. p1}, Lk2/b0;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const v10, 0x7f070716

    invoke-direct {v0, v10}, Lcom/nirenr/talkman/tts/b;->a(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v10, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    iput-boolean v10, v0, Lcom/nirenr/talkman/tts/b;->g:Z

    invoke-static/range {p1 .. p1}, Lk2/b0;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const v12, 0x7f07064f

    invoke-direct {v0, v12}, Lcom/nirenr/talkman/tts/b;->a(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lcom/nirenr/talkman/a;->t:[Ljava/lang/String;

    aget-object v12, v12, v1

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "MainTextToSpeak"

    invoke-virtual {v2, v11, v10}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const v12, 0x7f070656

    invoke-direct {v0, v12}, Lcom/nirenr/talkman/tts/b;->a(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "100"

    invoke-interface {v3, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/high16 v12, 0x42c80000    # 100.0f

    invoke-static {v11, v12}, Lk2/i;->a(Ljava/lang/String;F)F

    move-result v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const v13, 0x7f070654

    invoke-direct {v0, v13}, Lcom/nirenr/talkman/tts/b;->a(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "50"

    invoke-interface {v3, v12, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const v15, 0x7f070651

    invoke-direct {v0, v15}, Lcom/nirenr/talkman/tts/b;->a(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v3, v14, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const v15, 0x7f070652

    invoke-direct {v0, v15}, Lcom/nirenr/talkman/tts/b;->a(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v15, "1"

    invoke-interface {v3, v14, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-static {v14, v15}, Lk2/i;->a(Ljava/lang/String;F)F

    move-result v14

    iput v14, v0, Lcom/nirenr/talkman/tts/b;->b:F

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const v15, 0x7f070655

    invoke-direct {v0, v15}, Lcom/nirenr/talkman/tts/b;->a(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v14, "3"

    invoke-interface {v3, v1, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    const/16 v1, 0xa

    if-ne v14, v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    iput-boolean v1, v0, Lcom/nirenr/talkman/tts/b;->c:Z

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v3, -0x1

    sparse-switch v1, :sswitch_data_0

    :goto_3
    const/4 v4, -0x1

    goto :goto_4

    :sswitch_0
    const-string v1, "iflytek"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v4, 0x3

    goto :goto_4

    :sswitch_1
    const-string v1, "baidu"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_3

    :sswitch_2
    const-string v1, "unisound"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_3

    :cond_4
    const/4 v4, 0x1

    goto :goto_4

    :sswitch_3
    const-string v1, "echovoice"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_3

    :cond_5
    const/4 v4, 0x0

    :cond_6
    :goto_4
    packed-switch v4, :pswitch_data_0

    const-string v1, "x2_"

    invoke-virtual {v10, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance v7, Lj2/h;

    iget-boolean v5, v0, Lcom/nirenr/talkman/tts/b;->c:Z

    move-object v1, v7

    move-object/from16 v2, p1

    move-object v3, v10

    move v4, v9

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v6}, Lj2/h;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Ljava/lang/String;ZZLcom/nirenr/talkman/tts/TextToSpeakListener;)V

    iput-object v7, v0, Lcom/nirenr/talkman/tts/b;->i:Lcom/nirenr/talkman/tts/TextToSpeak;

    goto/16 :goto_6

    :cond_7
    new-instance v15, Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    iget-boolean v7, v0, Lcom/nirenr/talkman/tts/b;->c:Z

    iget v8, v0, Lcom/nirenr/talkman/tts/b;->b:F

    move-object v1, v15

    move-object/from16 v2, p1

    move-object v3, v10

    move-object/from16 v4, p3

    move v5, v9

    move v6, v7

    move v7, v12

    move v9, v11

    move v10, v13

    invoke-direct/range {v1 .. v10}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Ljava/lang/String;Lcom/nirenr/talkman/tts/TextToSpeakListener;ZZIFFI)V

    goto/16 :goto_5

    :pswitch_0
    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/androlua/LuaApplication;->isVip()Z

    move-result v1

    if-eqz v1, :cond_8

    new-instance v10, Lj2/c;

    iget-boolean v5, v0, Lcom/nirenr/talkman/tts/b;->c:Z

    iget v7, v0, Lcom/nirenr/talkman/tts/b;->b:F

    move-object v1, v10

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move v4, v9

    move v6, v12

    move v8, v11

    move v9, v13

    invoke-direct/range {v1 .. v9}, Lj2/c;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Lcom/nirenr/talkman/tts/TextToSpeakListener;ZZIFFI)V

    iput-object v10, v0, Lcom/nirenr/talkman/tts/b;->i:Lcom/nirenr/talkman/tts/TextToSpeak;

    goto/16 :goto_6

    :cond_8
    new-instance v15, Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    const-string v3, "system"

    iget-boolean v7, v0, Lcom/nirenr/talkman/tts/b;->c:Z

    iget v8, v0, Lcom/nirenr/talkman/tts/b;->b:F

    move-object v1, v15

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    move v5, v9

    move v6, v7

    move v7, v12

    move v9, v11

    move v10, v13

    invoke-direct/range {v1 .. v10}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Ljava/lang/String;Lcom/nirenr/talkman/tts/TextToSpeakListener;ZZIFFI)V

    goto :goto_5

    :pswitch_1
    new-instance v1, Lj2/a;

    invoke-direct {v1, v2, v6}, Lj2/a;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Lcom/nirenr/talkman/tts/TextToSpeakListener;)V

    iput-object v1, v0, Lcom/nirenr/talkman/tts/b;->i:Lcom/nirenr/talkman/tts/TextToSpeak;

    goto :goto_6

    :pswitch_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v1, v3, :cond_9

    new-instance v1, Lcom/nirenr/talkman/tts/c;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v9, v6}, Lcom/nirenr/talkman/tts/c;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Ljava/lang/String;ZLcom/nirenr/talkman/tts/TextToSpeakListener;)V

    iput-object v1, v0, Lcom/nirenr/talkman/tts/b;->i:Lcom/nirenr/talkman/tts/TextToSpeak;

    iget-boolean v2, v0, Lcom/nirenr/talkman/tts/b;->c:Z

    invoke-interface {v1, v2}, Lcom/nirenr/talkman/tts/TextToSpeak;->setUseAccessibilityVolume(Z)V

    goto :goto_6

    :cond_9
    new-instance v15, Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    const-string v3, "system"

    iget-boolean v7, v0, Lcom/nirenr/talkman/tts/b;->c:Z

    iget v8, v0, Lcom/nirenr/talkman/tts/b;->b:F

    move-object v1, v15

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    move v5, v9

    move v6, v7

    move v7, v12

    move v9, v11

    move v10, v13

    invoke-direct/range {v1 .. v10}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Ljava/lang/String;Lcom/nirenr/talkman/tts/TextToSpeakListener;ZZIFFI)V

    :goto_5
    iput-object v15, v0, Lcom/nirenr/talkman/tts/b;->i:Lcom/nirenr/talkman/tts/TextToSpeak;

    goto :goto_6

    :pswitch_3
    new-instance v9, Lj2/b;

    iget-boolean v4, v0, Lcom/nirenr/talkman/tts/b;->c:Z

    iget v7, v0, Lcom/nirenr/talkman/tts/b;->b:F

    move-object v1, v9

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move v5, v12

    move v6, v7

    move v7, v11

    move v8, v13

    invoke-direct/range {v1 .. v8}, Lj2/b;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Lcom/nirenr/talkman/tts/TextToSpeakListener;ZIFFI)V

    iput-object v9, v0, Lcom/nirenr/talkman/tts/b;->i:Lcom/nirenr/talkman/tts/TextToSpeak;

    :goto_6
    iget-object v1, v0, Lcom/nirenr/talkman/tts/b;->i:Lcom/nirenr/talkman/tts/TextToSpeak;

    iget v2, v0, Lcom/nirenr/talkman/tts/b;->b:F

    invoke-interface {v1, v2}, Lcom/nirenr/talkman/tts/TextToSpeak;->setTtsScale(F)V

    iget-object v1, v0, Lcom/nirenr/talkman/tts/b;->i:Lcom/nirenr/talkman/tts/TextToSpeak;

    invoke-interface {v1, v12}, Lcom/nirenr/talkman/tts/TextToSpeak;->setTtsSpeed(I)V

    iget-object v1, v0, Lcom/nirenr/talkman/tts/b;->i:Lcom/nirenr/talkman/tts/TextToSpeak;

    invoke-interface {v1, v11}, Lcom/nirenr/talkman/tts/TextToSpeak;->setTtsVolume(F)V

    iget-object v1, v0, Lcom/nirenr/talkman/tts/b;->i:Lcom/nirenr/talkman/tts/TextToSpeak;

    invoke-interface {v1, v13}, Lcom/nirenr/talkman/tts/TextToSpeak;->setTtsPitch(I)V

    iget-object v1, v0, Lcom/nirenr/talkman/tts/b;->i:Lcom/nirenr/talkman/tts/TextToSpeak;

    invoke-interface {v1, v14}, Lcom/nirenr/talkman/tts/TextToSpeak;->setStreamType(I)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x1346f9d3 -> :sswitch_3
        -0x117365e1 -> :sswitch_2
        0x592ae1b -> :sswitch_1
        0x66a74870 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Ljava/lang/String;Lcom/nirenr/talkman/tts/TextToSpeakListener;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v6, p3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Lcom/nirenr/talkman/tts/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static/range {p1 .. p1}, Lk2/b0;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const v4, 0x7f070716

    invoke-direct {v0, v4}, Lcom/nirenr/talkman/tts/b;->a(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v0, Lcom/nirenr/talkman/tts/b;->g:Z

    const v4, 0x7f070656

    invoke-direct {v0, v4}, Lcom/nirenr/talkman/tts/b;->a(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "100"

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/high16 v9, 0x42c80000    # 100.0f

    invoke-static {v7, v9}, Lk2/i;->a(Ljava/lang/String;F)F

    move-result v7

    const v10, 0x7f070654

    invoke-direct {v0, v10}, Lcom/nirenr/talkman/tts/b;->a(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, "50"

    invoke-interface {v1, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    const v13, 0x7f070651

    invoke-direct {v0, v13}, Lcom/nirenr/talkman/tts/b;->a(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v1, v14, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    const v15, 0x7f070652

    invoke-direct {v0, v15}, Lcom/nirenr/talkman/tts/b;->a(I)Ljava/lang/String;

    move-result-object v5

    const-string v15, "1"

    invoke-interface {v1, v5, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-static {v5, v13}, Lk2/i;->a(Ljava/lang/String;F)F

    move-result v5

    iput v5, v0, Lcom/nirenr/talkman/tts/b;->b:F

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/androlua/LuaApplication;->isVip()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "system"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "MainTextToSpeak"

    invoke-virtual {v2, v5, v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {v0, v4}, Lcom/nirenr/talkman/tts/b;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v9}, Lk2/i;->a(Ljava/lang/String;F)F

    move-result v7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {v0, v10}, Lcom/nirenr/talkman/tts/b;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f070651

    invoke-direct {v0, v5}, Lcom/nirenr/talkman/tts/b;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f070652

    invoke-direct {v0, v5}, Lcom/nirenr/talkman/tts/b;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v13}, Lk2/i;->a(Ljava/lang/String;F)F

    move-result v4

    iput v4, v0, Lcom/nirenr/talkman/tts/b;->b:F

    :cond_0
    move v12, v11

    move v11, v7

    const v4, 0x7f0707f0

    invoke-direct {v0, v4}, Lcom/nirenr/talkman/tts/b;->a(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v0, Lcom/nirenr/talkman/tts/b;->h:Z

    const v4, 0x7f070864

    invoke-direct {v0, v4}, Lcom/nirenr/talkman/tts/b;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v0, Lcom/nirenr/talkman/tts/b;->f:Z

    const v4, 0x7f07088b

    invoke-direct {v0, v4}, Lcom/nirenr/talkman/tts/b;->a(I)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x1

    invoke-interface {v1, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v0, Lcom/nirenr/talkman/tts/b;->e:Z

    const v4, 0x7f07088c

    invoke-direct {v0, v4}, Lcom/nirenr/talkman/tts/b;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v0, Lcom/nirenr/talkman/tts/b;->d:Z

    const v4, 0x7f070702

    invoke-direct {v0, v4}, Lcom/nirenr/talkman/tts/b;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/nirenr/talkman/tts/b;->c:Z

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v4, -0x1

    sparse-switch v1, :sswitch_data_0

    :goto_0
    const/4 v5, -0x1

    goto :goto_1

    :sswitch_0
    const-string v1, "iflytek"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x3

    goto :goto_1

    :sswitch_1
    const-string v1, "baidu"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v5, 0x2

    goto :goto_1

    :sswitch_2
    const-string v1, "unisound"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v5, 0x1

    goto :goto_1

    :sswitch_3
    const-string v1, "echovoice"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    :goto_1
    packed-switch v5, :pswitch_data_0

    const-string v1, "x2_"

    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v7, Lj2/h;

    const/4 v4, 0x1

    iget-boolean v5, v0, Lcom/nirenr/talkman/tts/b;->c:Z

    move-object v1, v7

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v6}, Lj2/h;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Ljava/lang/String;ZZLcom/nirenr/talkman/tts/TextToSpeakListener;)V

    iput-object v7, v0, Lcom/nirenr/talkman/tts/b;->i:Lcom/nirenr/talkman/tts/TextToSpeak;

    goto/16 :goto_3

    :cond_5
    new-instance v13, Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    const/4 v5, 0x1

    iget-boolean v7, v0, Lcom/nirenr/talkman/tts/b;->c:Z

    iget v8, v0, Lcom/nirenr/talkman/tts/b;->b:F

    move-object v1, v13

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move v6, v7

    move v7, v12

    move v9, v11

    move v10, v14

    invoke-direct/range {v1 .. v10}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Ljava/lang/String;Lcom/nirenr/talkman/tts/TextToSpeakListener;ZZIFFI)V

    goto/16 :goto_2

    :pswitch_0
    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/androlua/LuaApplication;->isVip()Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v10, Lj2/c;

    const/4 v4, 0x1

    iget-boolean v5, v0, Lcom/nirenr/talkman/tts/b;->c:Z

    iget v7, v0, Lcom/nirenr/talkman/tts/b;->b:F

    move-object v1, v10

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move v6, v12

    move v8, v11

    move v9, v14

    invoke-direct/range {v1 .. v9}, Lj2/c;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Lcom/nirenr/talkman/tts/TextToSpeakListener;ZZIFFI)V

    iput-object v10, v0, Lcom/nirenr/talkman/tts/b;->i:Lcom/nirenr/talkman/tts/TextToSpeak;

    goto/16 :goto_3

    :cond_6
    new-instance v13, Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    const-string v3, "system"

    const/4 v5, 0x1

    iget-boolean v7, v0, Lcom/nirenr/talkman/tts/b;->c:Z

    iget v8, v0, Lcom/nirenr/talkman/tts/b;->b:F

    move-object v1, v13

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    move v6, v7

    move v7, v12

    move v9, v11

    move v10, v14

    invoke-direct/range {v1 .. v10}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Ljava/lang/String;Lcom/nirenr/talkman/tts/TextToSpeakListener;ZZIFFI)V

    goto :goto_2

    :pswitch_1
    new-instance v1, Lj2/a;

    invoke-direct {v1, v2, v6}, Lj2/a;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Lcom/nirenr/talkman/tts/TextToSpeakListener;)V

    iput-object v1, v0, Lcom/nirenr/talkman/tts/b;->i:Lcom/nirenr/talkman/tts/TextToSpeak;

    goto :goto_3

    :pswitch_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v1, v3, :cond_7

    new-instance v1, Lcom/nirenr/talkman/tts/c;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v7, v6}, Lcom/nirenr/talkman/tts/c;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Ljava/lang/String;ZLcom/nirenr/talkman/tts/TextToSpeakListener;)V

    iput-object v1, v0, Lcom/nirenr/talkman/tts/b;->i:Lcom/nirenr/talkman/tts/TextToSpeak;

    iget-boolean v2, v0, Lcom/nirenr/talkman/tts/b;->c:Z

    invoke-interface {v1, v2}, Lcom/nirenr/talkman/tts/TextToSpeak;->setUseAccessibilityVolume(Z)V

    goto :goto_3

    :cond_7
    new-instance v13, Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    const-string v3, "system"

    const/4 v5, 0x1

    iget-boolean v7, v0, Lcom/nirenr/talkman/tts/b;->c:Z

    iget v8, v0, Lcom/nirenr/talkman/tts/b;->b:F

    move-object v1, v13

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    move v6, v7

    move v7, v12

    move v9, v11

    move v10, v14

    invoke-direct/range {v1 .. v10}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Ljava/lang/String;Lcom/nirenr/talkman/tts/TextToSpeakListener;ZZIFFI)V

    :goto_2
    iput-object v13, v0, Lcom/nirenr/talkman/tts/b;->i:Lcom/nirenr/talkman/tts/TextToSpeak;

    goto :goto_3

    :pswitch_3
    new-instance v9, Lj2/b;

    iget-boolean v4, v0, Lcom/nirenr/talkman/tts/b;->c:Z

    iget v7, v0, Lcom/nirenr/talkman/tts/b;->b:F

    move-object v1, v9

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move v5, v12

    move v6, v7

    move v7, v11

    move v8, v14

    invoke-direct/range {v1 .. v8}, Lj2/b;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Lcom/nirenr/talkman/tts/TextToSpeakListener;ZIFFI)V

    iput-object v9, v0, Lcom/nirenr/talkman/tts/b;->i:Lcom/nirenr/talkman/tts/TextToSpeak;

    :goto_3
    iget-object v1, v0, Lcom/nirenr/talkman/tts/b;->i:Lcom/nirenr/talkman/tts/TextToSpeak;

    iget v2, v0, Lcom/nirenr/talkman/tts/b;->b:F

    invoke-interface {v1, v2}, Lcom/nirenr/talkman/tts/TextToSpeak;->setTtsScale(F)V

    iget-object v1, v0, Lcom/nirenr/talkman/tts/b;->i:Lcom/nirenr/talkman/tts/TextToSpeak;

    invoke-interface {v1, v12}, Lcom/nirenr/talkman/tts/TextToSpeak;->setTtsSpeed(I)V

    iget-object v1, v0, Lcom/nirenr/talkman/tts/b;->i:Lcom/nirenr/talkman/tts/TextToSpeak;

    invoke-interface {v1, v11}, Lcom/nirenr/talkman/tts/TextToSpeak;->setTtsVolume(F)V

    iget-object v1, v0, Lcom/nirenr/talkman/tts/b;->i:Lcom/nirenr/talkman/tts/TextToSpeak;

    invoke-interface {v1, v14}, Lcom/nirenr/talkman/tts/TextToSpeak;->setTtsPitch(I)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1346f9d3 -> :sswitch_3
        -0x117365e1 -> :sswitch_2
        0x592ae1b -> :sswitch_1
        0x66a74870 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nirenr/talkman/tts/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public appendSpeak(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/nirenr/talkman/tts/b;->i:Lcom/nirenr/talkman/tts/TextToSpeak;

    invoke-interface {v0, p1}, Lcom/nirenr/talkman/tts/TextToSpeak;->appendSpeak(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public b()F
    .locals 1

    iget v0, p0, Lcom/nirenr/talkman/tts/b;->b:F

    return v0
.end method

.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/nirenr/talkman/tts/b;->i:Lcom/nirenr/talkman/tts/TextToSpeak;

    invoke-interface {v0}, Lcom/nirenr/talkman/tts/TextToSpeak;->destroy()V

    return-void
.end method

.method public isSpeaking()Z
    .locals 1

    iget-object v0, p0, Lcom/nirenr/talkman/tts/b;->i:Lcom/nirenr/talkman/tts/TextToSpeak;

    invoke-interface {v0}, Lcom/nirenr/talkman/tts/TextToSpeak;->isSpeaking()Z

    move-result v0

    return v0
.end method

.method public setStreamType(I)V
    .locals 2

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/nirenr/talkman/tts/b;->i:Lcom/nirenr/talkman/tts/TextToSpeak;

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Lcom/nirenr/talkman/tts/TextToSpeak;->setStreamType(I)V

    iget-object p1, p0, Lcom/nirenr/talkman/tts/b;->i:Lcom/nirenr/talkman/tts/TextToSpeak;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/nirenr/talkman/tts/TextToSpeak;->setUseAccessibilityVolume(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/tts/b;->i:Lcom/nirenr/talkman/tts/TextToSpeak;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/nirenr/talkman/tts/TextToSpeak;->setUseAccessibilityVolume(Z)V

    iget-object v0, p0, Lcom/nirenr/talkman/tts/b;->i:Lcom/nirenr/talkman/tts/TextToSpeak;

    invoke-interface {v0, p1}, Lcom/nirenr/talkman/tts/TextToSpeak;->setStreamType(I)V

    :goto_0
    return-void
.end method

.method public setTtsPitch(I)V
    .locals 1

    iget-object v0, p0, Lcom/nirenr/talkman/tts/b;->i:Lcom/nirenr/talkman/tts/TextToSpeak;

    invoke-interface {v0, p1}, Lcom/nirenr/talkman/tts/TextToSpeak;->setTtsPitch(I)V

    return-void
.end method

.method public setTtsScale(F)V
    .locals 1

    iget-object v0, p0, Lcom/nirenr/talkman/tts/b;->i:Lcom/nirenr/talkman/tts/TextToSpeak;

    invoke-interface {v0, p1}, Lcom/nirenr/talkman/tts/TextToSpeak;->setTtsScale(F)V

    iput p1, p0, Lcom/nirenr/talkman/tts/b;->b:F

    return-void
.end method

.method public setTtsSpeed(I)V
    .locals 1

    iget-object v0, p0, Lcom/nirenr/talkman/tts/b;->i:Lcom/nirenr/talkman/tts/TextToSpeak;

    invoke-interface {v0, p1}, Lcom/nirenr/talkman/tts/TextToSpeak;->setTtsSpeed(I)V

    return-void
.end method

.method public setTtsVolume(F)V
    .locals 1

    iget-object v0, p0, Lcom/nirenr/talkman/tts/b;->i:Lcom/nirenr/talkman/tts/TextToSpeak;

    invoke-interface {v0, p1}, Lcom/nirenr/talkman/tts/TextToSpeak;->setTtsVolume(F)V

    return-void
.end method

.method public setUseAccessibilityVolume(Z)V
    .locals 1

    iget-object v0, p0, Lcom/nirenr/talkman/tts/b;->i:Lcom/nirenr/talkman/tts/TextToSpeak;

    invoke-interface {v0, p1}, Lcom/nirenr/talkman/tts/TextToSpeak;->setUseAccessibilityVolume(Z)V

    return-void
.end method

.method public slowSpeak(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/nirenr/talkman/tts/b;->i:Lcom/nirenr/talkman/tts/TextToSpeak;

    invoke-interface {v0, p1}, Lcom/nirenr/talkman/tts/TextToSpeak;->slowSpeak(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public speak(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/nirenr/talkman/tts/b;->i:Lcom/nirenr/talkman/tts/TextToSpeak;

    invoke-interface {v0, p1}, Lcom/nirenr/talkman/tts/TextToSpeak;->speak(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lcom/nirenr/talkman/tts/b;->i:Lcom/nirenr/talkman/tts/TextToSpeak;

    invoke-interface {v0}, Lcom/nirenr/talkman/tts/TextToSpeak;->stop()V

    return-void
.end method
