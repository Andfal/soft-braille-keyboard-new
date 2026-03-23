.class public Lcom/nirenr/talkman/tts/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/tts/TextToSpeak;


# instance fields
.field private final a:Lcom/nirenr/talkman/TalkManAccessibilityService;

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Lcom/nirenr/talkman/tts/TextToSpeak;


# direct methods
.method public constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Ljava/lang/String;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Lcom/nirenr/talkman/tts/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static/range {p1 .. p1}, Lk2/b0;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const v4, 0x7f070716

    invoke-direct {v0, v4}, Lcom/nirenr/talkman/tts/a;->b(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v0, Lcom/nirenr/talkman/tts/a;->g:Z

    const v4, 0x7f0706c1

    invoke-direct {v0, v4}, Lcom/nirenr/talkman/tts/a;->b(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "100"

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    const v8, 0x7f0706b1

    invoke-direct {v0, v8}, Lcom/nirenr/talkman/tts/a;->b(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "50"

    invoke-interface {v1, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const v11, 0x7f0706a7

    invoke-direct {v0, v11}, Lcom/nirenr/talkman/tts/a;->b(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v1, v12, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    const v13, 0x7f0706a9

    invoke-direct {v0, v13}, Lcom/nirenr/talkman/tts/a;->b(I)Ljava/lang/String;

    move-result-object v14

    const-string v15, "1"

    invoke-interface {v1, v14, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v14, v5}, Lk2/i;->a(Ljava/lang/String;F)F

    move-result v14

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/androlua/LuaApplication;->isVip()Z

    move-result v16

    if-nez v16, :cond_0

    const/high16 v14, 0x3f800000    # 1.0f

    :cond_0
    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/androlua/LuaApplication;->isVip()Z

    move-result v16

    if-eqz v16, :cond_1

    const-string v5, "system"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "AsyncTextToSpeak"

    invoke-virtual {v2, v5, v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {v0, v4}, Lcom/nirenr/talkman/tts/a;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/high16 v5, 0x42c80000    # 100.0f

    invoke-static {v4, v5}, Lk2/i;->a(Ljava/lang/String;F)F

    move-result v6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {v0, v8}, Lcom/nirenr/talkman/tts/a;->b(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {v0, v11}, Lcom/nirenr/talkman/tts/a;->b(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {v0, v13}, Lcom/nirenr/talkman/tts/a;->b(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v4, v5}, Lk2/i;->a(Ljava/lang/String;F)F

    move-result v14

    :cond_1
    move v11, v6

    move v13, v12

    move v12, v9

    const v4, 0x7f0707f0

    invoke-direct {v0, v4}, Lcom/nirenr/talkman/tts/a;->b(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v0, Lcom/nirenr/talkman/tts/a;->h:Z

    const v4, 0x7f070864

    invoke-direct {v0, v4}, Lcom/nirenr/talkman/tts/a;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v0, Lcom/nirenr/talkman/tts/a;->f:Z

    const v4, 0x7f07088b

    invoke-direct {v0, v4}, Lcom/nirenr/talkman/tts/a;->b(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    invoke-interface {v1, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v0, Lcom/nirenr/talkman/tts/a;->e:Z

    const v4, 0x7f07088c

    invoke-direct {v0, v4}, Lcom/nirenr/talkman/tts/a;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v0, Lcom/nirenr/talkman/tts/a;->d:Z

    const v4, 0x7f070043

    invoke-direct {v0, v4}, Lcom/nirenr/talkman/tts/a;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v0, Lcom/nirenr/talkman/tts/a;->b:Z

    const v4, 0x7f070008

    invoke-direct {v0, v4}, Lcom/nirenr/talkman/tts/a;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/nirenr/talkman/tts/a;->c:Z

    const-string v1, "audio"

    invoke-virtual {v2, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    new-instance v4, Lcom/nirenr/talkman/tts/a$a;

    invoke-direct {v4, v0}, Lcom/nirenr/talkman/tts/a$a;-><init>(Lcom/nirenr/talkman/tts/a;)V

    new-instance v7, Lcom/nirenr/talkman/tts/a$b;

    invoke-direct {v7, v0, v1, v4}, Lcom/nirenr/talkman/tts/a$b;-><init>(Lcom/nirenr/talkman/tts/a;Landroid/media/AudioManager;Landroid/media/AudioManager$OnAudioFocusChangeListener;)V

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v5, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "iflytek"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v5, 0x3

    goto :goto_0

    :sswitch_1
    const-string v1, "baidu"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v5, 0x2

    goto :goto_0

    :sswitch_2
    const-string v1, "unisound"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v5, 0x1

    goto :goto_0

    :sswitch_3
    const-string v1, "echovoice"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v5, 0x0

    :goto_0
    packed-switch v5, :pswitch_data_0

    const-string v1, "x2_"

    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v8, Lj2/h;

    const/4 v4, 0x0

    iget-boolean v5, v0, Lcom/nirenr/talkman/tts/a;->c:Z

    move-object v1, v8

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Lj2/h;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Ljava/lang/String;ZZLcom/nirenr/talkman/tts/TextToSpeakListener;)V

    iput-object v8, v0, Lcom/nirenr/talkman/tts/a;->i:Lcom/nirenr/talkman/tts/TextToSpeak;

    goto/16 :goto_2

    :cond_6
    new-instance v15, Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    const/4 v5, 0x0

    iget-boolean v6, v0, Lcom/nirenr/talkman/tts/a;->c:Z

    move-object v1, v15

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v4, v7

    move v7, v12

    move v8, v14

    move v9, v11

    move v10, v13

    invoke-direct/range {v1 .. v10}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Ljava/lang/String;Lcom/nirenr/talkman/tts/TextToSpeakListener;ZZIFFI)V

    goto :goto_1

    :pswitch_0
    new-instance v10, Lj2/c;

    const/4 v4, 0x0

    iget-boolean v5, v0, Lcom/nirenr/talkman/tts/a;->c:Z

    move-object v1, v10

    move-object/from16 v2, p1

    move-object v3, v7

    move v6, v12

    move v7, v14

    move v8, v11

    move v9, v13

    invoke-direct/range {v1 .. v9}, Lj2/c;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Lcom/nirenr/talkman/tts/TextToSpeakListener;ZZIFFI)V

    iput-object v10, v0, Lcom/nirenr/talkman/tts/a;->i:Lcom/nirenr/talkman/tts/TextToSpeak;

    goto :goto_2

    :pswitch_1
    new-instance v1, Lj2/a;

    invoke-direct {v1, v2, v7}, Lj2/a;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Lcom/nirenr/talkman/tts/TextToSpeakListener;)V

    iput-object v1, v0, Lcom/nirenr/talkman/tts/a;->i:Lcom/nirenr/talkman/tts/TextToSpeak;

    goto :goto_2

    :pswitch_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v1, v3, :cond_7

    new-instance v1, Lcom/nirenr/talkman/tts/c;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4, v7}, Lcom/nirenr/talkman/tts/c;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Ljava/lang/String;ZLcom/nirenr/talkman/tts/TextToSpeakListener;)V

    iput-object v1, v0, Lcom/nirenr/talkman/tts/a;->i:Lcom/nirenr/talkman/tts/TextToSpeak;

    iget-boolean v2, v0, Lcom/nirenr/talkman/tts/a;->c:Z

    invoke-interface {v1, v2}, Lcom/nirenr/talkman/tts/TextToSpeak;->setUseAccessibilityVolume(Z)V

    goto :goto_2

    :cond_7
    new-instance v15, Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    const-string v3, "system"

    const/4 v5, 0x0

    iget-boolean v6, v0, Lcom/nirenr/talkman/tts/a;->c:Z

    move-object v1, v15

    move-object/from16 v2, p1

    move-object v4, v7

    move v7, v12

    move v8, v14

    move v9, v11

    move v10, v13

    invoke-direct/range {v1 .. v10}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Ljava/lang/String;Lcom/nirenr/talkman/tts/TextToSpeakListener;ZZIFFI)V

    :goto_1
    iput-object v15, v0, Lcom/nirenr/talkman/tts/a;->i:Lcom/nirenr/talkman/tts/TextToSpeak;

    goto :goto_2

    :pswitch_3
    new-instance v9, Lj2/b;

    iget-boolean v4, v0, Lcom/nirenr/talkman/tts/a;->c:Z

    move-object v1, v9

    move-object/from16 v2, p1

    move-object v3, v7

    move v5, v12

    move v6, v14

    move v7, v11

    move v8, v13

    invoke-direct/range {v1 .. v8}, Lj2/b;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Lcom/nirenr/talkman/tts/TextToSpeakListener;ZIFFI)V

    iput-object v9, v0, Lcom/nirenr/talkman/tts/a;->i:Lcom/nirenr/talkman/tts/TextToSpeak;

    :goto_2
    iget-object v1, v0, Lcom/nirenr/talkman/tts/a;->i:Lcom/nirenr/talkman/tts/TextToSpeak;

    invoke-interface {v1, v14}, Lcom/nirenr/talkman/tts/TextToSpeak;->setTtsScale(F)V

    iget-object v1, v0, Lcom/nirenr/talkman/tts/a;->i:Lcom/nirenr/talkman/tts/TextToSpeak;

    invoke-interface {v1, v12}, Lcom/nirenr/talkman/tts/TextToSpeak;->setTtsSpeed(I)V

    iget-object v1, v0, Lcom/nirenr/talkman/tts/a;->i:Lcom/nirenr/talkman/tts/TextToSpeak;

    invoke-interface {v1, v11}, Lcom/nirenr/talkman/tts/TextToSpeak;->setTtsVolume(F)V

    iget-object v1, v0, Lcom/nirenr/talkman/tts/a;->i:Lcom/nirenr/talkman/tts/TextToSpeak;

    invoke-interface {v1, v13}, Lcom/nirenr/talkman/tts/TextToSpeak;->setTtsPitch(I)V

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

.method public constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Ljava/lang/String;I)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Lcom/nirenr/talkman/tts/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static/range {p1 .. p1}, Lk2/b0;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const v4, 0x7f070716

    invoke-direct {v0, v4}, Lcom/nirenr/talkman/tts/a;->b(I)Ljava/lang/String;

    move-result-object v4

    const/4 v11, 0x0

    invoke-interface {v1, v4, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v0, Lcom/nirenr/talkman/tts/a;->g:Z

    const v4, 0x7f070685

    invoke-direct {v0, v4}, Lcom/nirenr/talkman/tts/a;->b(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "100"

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v12

    const v4, 0x7f070684

    invoke-direct {v0, v4}, Lcom/nirenr/talkman/tts/a;->b(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "50"

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    const v4, 0x7f070681

    invoke-direct {v0, v4}, Lcom/nirenr/talkman/tts/a;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    const v4, 0x7f07085e

    invoke-direct {v0, v4}, Lcom/nirenr/talkman/tts/a;->b(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "3"

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    const v4, 0x7f070682

    invoke-direct {v0, v4}, Lcom/nirenr/talkman/tts/a;->b(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v1, v4}, Lk2/i;->a(Ljava/lang/String;F)F

    move-result v1

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/androlua/LuaApplication;->isVip()Z

    move-result v5

    if-nez v5, :cond_0

    const/high16 v10, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    move v10, v1

    :goto_0
    iput-boolean v11, v0, Lcom/nirenr/talkman/tts/a;->h:Z

    iput-boolean v11, v0, Lcom/nirenr/talkman/tts/a;->f:Z

    iput-boolean v11, v0, Lcom/nirenr/talkman/tts/a;->e:Z

    iput-boolean v11, v0, Lcom/nirenr/talkman/tts/a;->d:Z

    iput-boolean v11, v0, Lcom/nirenr/talkman/tts/a;->b:Z

    iput-boolean v11, v0, Lcom/nirenr/talkman/tts/a;->c:Z

    const-string v1, "audio"

    invoke-virtual {v2, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    new-instance v4, Lcom/nirenr/talkman/tts/a$c;

    invoke-direct {v4, v0}, Lcom/nirenr/talkman/tts/a$c;-><init>(Lcom/nirenr/talkman/tts/a;)V

    new-instance v6, Lcom/nirenr/talkman/tts/a$d;

    invoke-direct {v6, v0, v1, v4}, Lcom/nirenr/talkman/tts/a$d;-><init>(Lcom/nirenr/talkman/tts/a;Landroid/media/AudioManager;Landroid/media/AudioManager$OnAudioFocusChangeListener;)V

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v4, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v1, "iflytek"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x3

    goto :goto_1

    :sswitch_1
    const-string v1, "baidu"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x2

    goto :goto_1

    :sswitch_2
    const-string v1, "unisound"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v4, 0x1

    goto :goto_1

    :sswitch_3
    const-string v1, "echovoice"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    :goto_1
    packed-switch v4, :pswitch_data_0

    const-string v1, "x2_"

    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v7, Lj2/h;

    const/4 v4, 0x0

    iget-boolean v5, v0, Lcom/nirenr/talkman/tts/a;->c:Z

    move-object v1, v7

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lj2/h;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Ljava/lang/String;ZZLcom/nirenr/talkman/tts/TextToSpeakListener;)V

    iput-object v7, v0, Lcom/nirenr/talkman/tts/a;->i:Lcom/nirenr/talkman/tts/TextToSpeak;

    move/from16 p2, v10

    goto/16 :goto_3

    :cond_5
    new-instance v7, Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    const/4 v5, 0x0

    iget-boolean v4, v0, Lcom/nirenr/talkman/tts/a;->c:Z

    move-object v1, v7

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v16, v4

    move-object v4, v6

    move/from16 v6, v16

    move-object v11, v7

    move v7, v13

    move v8, v10

    move v9, v12

    move/from16 p2, v10

    move v10, v14

    invoke-direct/range {v1 .. v10}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Ljava/lang/String;Lcom/nirenr/talkman/tts/TextToSpeakListener;ZZIFFI)V

    goto :goto_2

    :pswitch_0
    move/from16 p2, v10

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/androlua/LuaApplication;->isVip()Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v10, Lj2/c;

    const/4 v4, 0x0

    iget-boolean v5, v0, Lcom/nirenr/talkman/tts/a;->c:Z

    move-object v1, v10

    move-object/from16 v2, p1

    move-object v3, v6

    move v6, v13

    move/from16 v7, p2

    move v8, v12

    move v9, v14

    invoke-direct/range {v1 .. v9}, Lj2/c;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Lcom/nirenr/talkman/tts/TextToSpeakListener;ZZIFFI)V

    iput-object v10, v0, Lcom/nirenr/talkman/tts/a;->i:Lcom/nirenr/talkman/tts/TextToSpeak;

    goto/16 :goto_3

    :cond_6
    new-instance v11, Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    const-string v3, "system"

    const/4 v5, 0x0

    iget-boolean v7, v0, Lcom/nirenr/talkman/tts/a;->c:Z

    move-object v1, v11

    move-object/from16 v2, p1

    move-object v4, v6

    move v6, v7

    move v7, v13

    move/from16 v8, p2

    move v9, v12

    move v10, v14

    invoke-direct/range {v1 .. v10}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Ljava/lang/String;Lcom/nirenr/talkman/tts/TextToSpeakListener;ZZIFFI)V

    :goto_2
    iput-object v11, v0, Lcom/nirenr/talkman/tts/a;->i:Lcom/nirenr/talkman/tts/TextToSpeak;

    goto :goto_3

    :pswitch_1
    move/from16 p2, v10

    new-instance v1, Lj2/a;

    invoke-direct {v1, v2, v6}, Lj2/a;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Lcom/nirenr/talkman/tts/TextToSpeakListener;)V

    iput-object v1, v0, Lcom/nirenr/talkman/tts/a;->i:Lcom/nirenr/talkman/tts/TextToSpeak;

    goto :goto_3

    :pswitch_2
    move/from16 p2, v10

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v1, v3, :cond_7

    new-instance v1, Lcom/nirenr/talkman/tts/c;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4, v6}, Lcom/nirenr/talkman/tts/c;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Ljava/lang/String;ZLcom/nirenr/talkman/tts/TextToSpeakListener;)V

    iput-object v1, v0, Lcom/nirenr/talkman/tts/a;->i:Lcom/nirenr/talkman/tts/TextToSpeak;

    iget-boolean v2, v0, Lcom/nirenr/talkman/tts/a;->c:Z

    invoke-interface {v1, v2}, Lcom/nirenr/talkman/tts/TextToSpeak;->setUseAccessibilityVolume(Z)V

    goto :goto_3

    :cond_7
    new-instance v11, Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    const-string v3, "system"

    const/4 v5, 0x0

    iget-boolean v7, v0, Lcom/nirenr/talkman/tts/a;->c:Z

    move-object v1, v11

    move-object/from16 v2, p1

    move-object v4, v6

    move v6, v7

    move v7, v13

    move/from16 v8, p2

    move v9, v12

    move v10, v14

    invoke-direct/range {v1 .. v10}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Ljava/lang/String;Lcom/nirenr/talkman/tts/TextToSpeakListener;ZZIFFI)V

    iput-object v11, v0, Lcom/nirenr/talkman/tts/a;->i:Lcom/nirenr/talkman/tts/TextToSpeak;

    iget-boolean v1, v0, Lcom/nirenr/talkman/tts/a;->c:Z

    invoke-interface {v11, v1}, Lcom/nirenr/talkman/tts/TextToSpeak;->setUseAccessibilityVolume(Z)V

    goto :goto_3

    :pswitch_3
    move/from16 p2, v10

    new-instance v9, Lj2/b;

    iget-boolean v4, v0, Lcom/nirenr/talkman/tts/a;->c:Z

    move-object v1, v9

    move-object/from16 v2, p1

    move-object v3, v6

    move v5, v13

    move/from16 v6, p2

    move v7, v12

    move v8, v14

    invoke-direct/range {v1 .. v8}, Lj2/b;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Lcom/nirenr/talkman/tts/TextToSpeakListener;ZIFFI)V

    iput-object v9, v0, Lcom/nirenr/talkman/tts/a;->i:Lcom/nirenr/talkman/tts/TextToSpeak;

    :goto_3
    iget-object v1, v0, Lcom/nirenr/talkman/tts/a;->i:Lcom/nirenr/talkman/tts/TextToSpeak;

    move/from16 v4, p2

    invoke-interface {v1, v4}, Lcom/nirenr/talkman/tts/TextToSpeak;->setTtsScale(F)V

    iget-object v1, v0, Lcom/nirenr/talkman/tts/a;->i:Lcom/nirenr/talkman/tts/TextToSpeak;

    invoke-interface {v1, v13}, Lcom/nirenr/talkman/tts/TextToSpeak;->setTtsSpeed(I)V

    iget-object v1, v0, Lcom/nirenr/talkman/tts/a;->i:Lcom/nirenr/talkman/tts/TextToSpeak;

    invoke-interface {v1, v12}, Lcom/nirenr/talkman/tts/TextToSpeak;->setTtsVolume(F)V

    iget-object v1, v0, Lcom/nirenr/talkman/tts/a;->i:Lcom/nirenr/talkman/tts/TextToSpeak;

    invoke-interface {v1, v14}, Lcom/nirenr/talkman/tts/TextToSpeak;->setTtsPitch(I)V

    const/16 v1, 0xa

    if-ne v15, v1, :cond_8

    iget-object v1, v0, Lcom/nirenr/talkman/tts/a;->i:Lcom/nirenr/talkman/tts/TextToSpeak;

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Lcom/nirenr/talkman/tts/TextToSpeak;->setStreamType(I)V

    iget-object v1, v0, Lcom/nirenr/talkman/tts/a;->i:Lcom/nirenr/talkman/tts/TextToSpeak;

    const/4 v2, 0x1

    goto :goto_4

    :cond_8
    iget-object v1, v0, Lcom/nirenr/talkman/tts/a;->i:Lcom/nirenr/talkman/tts/TextToSpeak;

    invoke-interface {v1, v15}, Lcom/nirenr/talkman/tts/TextToSpeak;->setStreamType(I)V

    iget-object v1, v0, Lcom/nirenr/talkman/tts/a;->i:Lcom/nirenr/talkman/tts/TextToSpeak;

    const/4 v2, 0x0

    :goto_4
    invoke-interface {v1, v2}, Lcom/nirenr/talkman/tts/TextToSpeak;->setUseAccessibilityVolume(Z)V

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

.method static bridge synthetic a(Lcom/nirenr/talkman/tts/a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/nirenr/talkman/tts/a;->b:Z

    return p0
.end method

.method private b(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nirenr/talkman/tts/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public appendSpeak(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/nirenr/talkman/tts/a;->i:Lcom/nirenr/talkman/tts/TextToSpeak;

    invoke-interface {v0, p1}, Lcom/nirenr/talkman/tts/TextToSpeak;->appendSpeak(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public c(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/nirenr/talkman/tts/a;->stop()V

    iput-boolean p1, p0, Lcom/nirenr/talkman/tts/a;->b:Z

    return-void
.end method

.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/nirenr/talkman/tts/a;->i:Lcom/nirenr/talkman/tts/TextToSpeak;

    invoke-interface {v0}, Lcom/nirenr/talkman/tts/TextToSpeak;->destroy()V

    return-void
.end method

.method public isSpeaking()Z
    .locals 1

    iget-object v0, p0, Lcom/nirenr/talkman/tts/a;->i:Lcom/nirenr/talkman/tts/TextToSpeak;

    invoke-interface {v0}, Lcom/nirenr/talkman/tts/TextToSpeak;->isSpeaking()Z

    move-result v0

    return v0
.end method

.method public setStreamType(I)V
    .locals 2

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/nirenr/talkman/tts/a;->i:Lcom/nirenr/talkman/tts/TextToSpeak;

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Lcom/nirenr/talkman/tts/TextToSpeak;->setStreamType(I)V

    iget-object p1, p0, Lcom/nirenr/talkman/tts/a;->i:Lcom/nirenr/talkman/tts/TextToSpeak;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/nirenr/talkman/tts/TextToSpeak;->setUseAccessibilityVolume(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/tts/a;->i:Lcom/nirenr/talkman/tts/TextToSpeak;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/nirenr/talkman/tts/TextToSpeak;->setUseAccessibilityVolume(Z)V

    iget-object v0, p0, Lcom/nirenr/talkman/tts/a;->i:Lcom/nirenr/talkman/tts/TextToSpeak;

    invoke-interface {v0, p1}, Lcom/nirenr/talkman/tts/TextToSpeak;->setStreamType(I)V

    :goto_0
    return-void
.end method

.method public setTtsPitch(I)V
    .locals 1

    iget-object v0, p0, Lcom/nirenr/talkman/tts/a;->i:Lcom/nirenr/talkman/tts/TextToSpeak;

    invoke-interface {v0, p1}, Lcom/nirenr/talkman/tts/TextToSpeak;->setTtsPitch(I)V

    return-void
.end method

.method public setTtsScale(F)V
    .locals 1

    iget-object v0, p0, Lcom/nirenr/talkman/tts/a;->i:Lcom/nirenr/talkman/tts/TextToSpeak;

    invoke-interface {v0, p1}, Lcom/nirenr/talkman/tts/TextToSpeak;->setTtsScale(F)V

    return-void
.end method

.method public setTtsSpeed(I)V
    .locals 1

    iget-object v0, p0, Lcom/nirenr/talkman/tts/a;->i:Lcom/nirenr/talkman/tts/TextToSpeak;

    invoke-interface {v0, p1}, Lcom/nirenr/talkman/tts/TextToSpeak;->setTtsSpeed(I)V

    return-void
.end method

.method public setTtsVolume(F)V
    .locals 1

    iget-object v0, p0, Lcom/nirenr/talkman/tts/a;->i:Lcom/nirenr/talkman/tts/TextToSpeak;

    invoke-interface {v0, p1}, Lcom/nirenr/talkman/tts/TextToSpeak;->setTtsVolume(F)V

    return-void
.end method

.method public setUseAccessibilityVolume(Z)V
    .locals 1

    iget-object v0, p0, Lcom/nirenr/talkman/tts/a;->i:Lcom/nirenr/talkman/tts/TextToSpeak;

    invoke-interface {v0, p1}, Lcom/nirenr/talkman/tts/TextToSpeak;->setUseAccessibilityVolume(Z)V

    return-void
.end method

.method public slowSpeak(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/nirenr/talkman/tts/a;->i:Lcom/nirenr/talkman/tts/TextToSpeak;

    invoke-interface {v0, p1}, Lcom/nirenr/talkman/tts/TextToSpeak;->slowSpeak(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public speak(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/nirenr/talkman/tts/a;->i:Lcom/nirenr/talkman/tts/TextToSpeak;

    invoke-interface {v0, p1}, Lcom/nirenr/talkman/tts/TextToSpeak;->speak(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lcom/nirenr/talkman/tts/a;->i:Lcom/nirenr/talkman/tts/TextToSpeak;

    invoke-interface {v0}, Lcom/nirenr/talkman/tts/TextToSpeak;->stop()V

    return-void
.end method
