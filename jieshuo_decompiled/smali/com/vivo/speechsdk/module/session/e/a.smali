.class public Lcom/vivo/speechsdk/module/session/e/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final d:Ljava/lang/String; = "ASRDebugMode"

.field private static final e:Ljava/lang/String; = "%s ==> %s ==> %s ==> %s: %s"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:Lcom/vivo/speechsdk/module/session/d/a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vivo/speechsdk/module/session/e/a;->a:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/vivo/speechsdk/module/session/e/a;->b:Z

    return-void
.end method

.method private a(J)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a()V
    .locals 7

    iget-object v0, p0, Lcom/vivo/speechsdk/module/session/e/a;->c:Lcom/vivo/speechsdk/module/session/d/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/module/session/e/a;->a:Ljava/lang/String;

    const-string v1, "asr"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/speechsdk/common/utils/PathUtil;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/vivo/speechsdk/b/h/h;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "asr.txt"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/vivo/speechsdk/b/h/h;-><init>(Ljava/lang/String;Z)V

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/vivo/speechsdk/module/session/e/a;->c:Lcom/vivo/speechsdk/module/session/d/a;

    iget-wide v3, v3, Lcom/vivo/speechsdk/module/session/d/a;->d:J

    invoke-direct {p0, v3, v4}, Lcom/vivo/speechsdk/module/session/e/a;->a(J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v0, v4

    iget-object v3, p0, Lcom/vivo/speechsdk/module/session/e/a;->c:Lcom/vivo/speechsdk/module/session/d/a;

    iget-wide v5, v3, Lcom/vivo/speechsdk/module/session/d/a;->j:J

    invoke-direct {p0, v5, v6}, Lcom/vivo/speechsdk/module/session/e/a;->a(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/vivo/speechsdk/module/session/e/a;->c:Lcom/vivo/speechsdk/module/session/d/a;

    iget-object v3, v3, Lcom/vivo/speechsdk/module/session/d/a;->w:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".pcm"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v0, v3

    iget-object v2, p0, Lcom/vivo/speechsdk/module/session/e/a;->c:Lcom/vivo/speechsdk/module/session/d/a;

    iget-object v3, v2, Lcom/vivo/speechsdk/module/session/d/a;->v:Ljava/lang/String;

    const/4 v5, 0x3

    aput-object v3, v0, v5

    iget-object v2, v2, Lcom/vivo/speechsdk/module/session/d/a;->x:Ljava/lang/String;

    invoke-static {v2}, Lcom/vivo/speechsdk/common/utils/StringUtils;->formatStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v0, v3

    const-string v2, "%s ==> %s ==> %s ==> %s: %s"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/vivo/speechsdk/b/h/d;->a(Ljava/lang/String;)V

    invoke-interface {v1, v4}, Lcom/vivo/speechsdk/b/h/d;->a(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(IIILjava/lang/Object;Lcom/vivo/speechsdk/module/session/d/a;)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p5

    iget-boolean v4, v0, Lcom/vivo/speechsdk/module/session/e/a;->b:Z

    const/4 v6, 0x3

    const-string v7, ".pcm"

    const/4 v8, 0x1

    if-eqz v4, :cond_b

    if-ne v1, v6, :cond_b

    if-eqz p4, :cond_b

    if-eqz v3, :cond_b

    iput-object v3, v0, Lcom/vivo/speechsdk/module/session/e/a;->c:Lcom/vivo/speechsdk/module/session/d/a;

    iget-object v4, v3, Lcom/vivo/speechsdk/module/session/d/a;->a:Landroid/os/Bundle;

    move-object/from16 v10, p4

    check-cast v10, [B

    const-string v11, ".wav"

    const/16 v13, 0x3e80

    const-string v14, "key_sample_rate"

    const-string v15, ""

    const-string v5, "key_save_audio_format"

    const-string v6, "wav"

    const-string v9, "asr"

    if-ne v2, v8, :cond_5

    iget-object v8, v3, Lcom/vivo/speechsdk/module/session/d/a;->y:Lcom/vivo/speechsdk/b/h/d;

    if-nez v8, :cond_4

    const-string v8, "pcm"

    if-eqz v4, :cond_3

    const-string v12, "key_save_audio_filename"

    invoke-virtual {v4, v12}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_0

    iput-object v12, v3, Lcom/vivo/speechsdk/module/session/d/a;->w:Ljava/lang/String;

    :cond_0
    invoke-virtual {v4, v5, v15}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    iget-object v8, v0, Lcom/vivo/speechsdk/module/session/e/a;->a:Ljava/lang/String;

    filled-new-array {v9, v6}, [Ljava/lang/String;

    move-result-object v12

    invoke-static {v8, v12}, Lcom/vivo/speechsdk/common/utils/PathUtil;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/vivo/speechsdk/b/h/c;->g(Ljava/lang/String;)V

    invoke-virtual {v4, v14, v13}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    const/16 v13, 0xc

    move/from16 v1, p3

    if-ne v1, v13, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    new-instance v13, Lcom/vivo/speechsdk/b/h/i$a$a;

    invoke-direct {v13}, Lcom/vivo/speechsdk/b/h/i$a$a;-><init>()V

    move-object/from16 v17, v14

    const/16 v14, 0x10

    invoke-virtual {v13, v14}, Lcom/vivo/speechsdk/b/h/i$a$a;->a(I)Lcom/vivo/speechsdk/b/h/i$a$a;

    move-result-object v13

    invoke-virtual {v13, v1}, Lcom/vivo/speechsdk/b/h/i$a$a;->b(I)Lcom/vivo/speechsdk/b/h/i$a$a;

    move-result-object v1

    invoke-virtual {v1, v12}, Lcom/vivo/speechsdk/b/h/i$a$a;->c(I)Lcom/vivo/speechsdk/b/h/i$a$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vivo/speechsdk/b/h/i$a$a;->a()Lcom/vivo/speechsdk/b/h/i$a;

    move-result-object v1

    new-instance v12, Lcom/vivo/speechsdk/b/h/i;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v3, Lcom/vivo/speechsdk/module/session/d/a;->w:Ljava/lang/String;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v13, 0x0

    invoke-direct {v12, v8, v13, v1}, Lcom/vivo/speechsdk/b/h/i;-><init>(Ljava/lang/String;ZLcom/vivo/speechsdk/b/h/i$a;)V

    iput-object v12, v3, Lcom/vivo/speechsdk/module/session/d/a;->y:Lcom/vivo/speechsdk/b/h/d;

    goto :goto_1

    :cond_2
    move-object/from16 v17, v14

    iget-object v1, v0, Lcom/vivo/speechsdk/module/session/e/a;->a:Ljava/lang/String;

    filled-new-array {v9, v8}, [Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/vivo/speechsdk/common/utils/PathUtil;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vivo/speechsdk/b/h/c;->g(Ljava/lang/String;)V

    new-instance v8, Lcom/vivo/speechsdk/b/h/g;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v3, Lcom/vivo/speechsdk/module/session/d/a;->w:Ljava/lang/String;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v12, 0x0

    invoke-direct {v8, v1, v12}, Lcom/vivo/speechsdk/b/h/g;-><init>(Ljava/lang/String;Z)V

    iput-object v8, v3, Lcom/vivo/speechsdk/module/session/d/a;->y:Lcom/vivo/speechsdk/b/h/d;

    goto :goto_1

    :cond_3
    move-object/from16 v17, v14

    iget-object v1, v0, Lcom/vivo/speechsdk/module/session/e/a;->a:Ljava/lang/String;

    filled-new-array {v9, v8}, [Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/vivo/speechsdk/common/utils/PathUtil;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vivo/speechsdk/b/h/c;->g(Ljava/lang/String;)V

    new-instance v8, Lcom/vivo/speechsdk/b/h/g;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v3, Lcom/vivo/speechsdk/module/session/d/a;->w:Ljava/lang/String;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v12, 0x0

    invoke-direct {v8, v1, v12}, Lcom/vivo/speechsdk/b/h/g;-><init>(Ljava/lang/String;Z)V

    iput-object v8, v3, Lcom/vivo/speechsdk/module/session/d/a;->y:Lcom/vivo/speechsdk/b/h/d;

    goto :goto_2

    :cond_4
    move-object/from16 v17, v14

    :goto_1
    const/4 v12, 0x0

    :goto_2
    iget-object v1, v3, Lcom/vivo/speechsdk/module/session/d/a;->y:Lcom/vivo/speechsdk/b/h/d;

    array-length v8, v10

    invoke-interface {v1, v10, v12, v8}, Lcom/vivo/speechsdk/b/h/d;->a([BII)V

    goto :goto_3

    :cond_5
    move-object/from16 v17, v14

    :goto_3
    const/4 v1, 0x3

    if-ne v2, v1, :cond_7

    iget-object v1, v3, Lcom/vivo/speechsdk/module/session/d/a;->z:Lcom/vivo/speechsdk/b/h/d;

    if-nez v1, :cond_6

    iget-object v1, v0, Lcom/vivo/speechsdk/module/session/e/a;->a:Ljava/lang/String;

    const-string v8, "opus"

    filled-new-array {v9, v8}, [Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/vivo/speechsdk/common/utils/PathUtil;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vivo/speechsdk/b/h/c;->g(Ljava/lang/String;)V

    new-instance v8, Lcom/vivo/speechsdk/b/h/g;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v3, Lcom/vivo/speechsdk/module/session/d/a;->w:Ljava/lang/String;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".opus"

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v12, 0x0

    invoke-direct {v8, v1, v12}, Lcom/vivo/speechsdk/b/h/g;-><init>(Ljava/lang/String;Z)V

    iput-object v8, v3, Lcom/vivo/speechsdk/module/session/d/a;->z:Lcom/vivo/speechsdk/b/h/d;

    goto :goto_4

    :cond_6
    const/4 v12, 0x0

    :goto_4
    iget-object v1, v3, Lcom/vivo/speechsdk/module/session/d/a;->z:Lcom/vivo/speechsdk/b/h/d;

    array-length v8, v10

    invoke-interface {v1, v10, v12, v8}, Lcom/vivo/speechsdk/b/h/d;->a([BII)V

    :cond_7
    const/4 v1, 0x2

    if-ne v2, v1, :cond_b

    iget-object v1, v3, Lcom/vivo/speechsdk/module/session/d/a;->A:Lcom/vivo/speechsdk/b/h/d;

    if-nez v1, :cond_a

    const-string v1, "vad"

    if-eqz v4, :cond_9

    invoke-virtual {v4, v5, v15}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, v0, Lcom/vivo/speechsdk/module/session/e/a;->a:Ljava/lang/String;

    filled-new-array {v9, v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/vivo/speechsdk/common/utils/PathUtil;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vivo/speechsdk/b/h/c;->g(Ljava/lang/String;)V

    move-object/from16 v5, v17

    const/16 v2, 0x3e80

    invoke-virtual {v4, v5, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    new-instance v4, Lcom/vivo/speechsdk/b/h/i$a$a;

    invoke-direct {v4}, Lcom/vivo/speechsdk/b/h/i$a$a;-><init>()V

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Lcom/vivo/speechsdk/b/h/i$a$a;->a(I)Lcom/vivo/speechsdk/b/h/i$a$a;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/vivo/speechsdk/b/h/i$a$a;->b(I)Lcom/vivo/speechsdk/b/h/i$a$a;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/vivo/speechsdk/b/h/i$a$a;->c(I)Lcom/vivo/speechsdk/b/h/i$a$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vivo/speechsdk/b/h/i$a$a;->a()Lcom/vivo/speechsdk/b/h/i$a;

    move-result-object v2

    new-instance v4, Lcom/vivo/speechsdk/b/h/i;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v3, Lcom/vivo/speechsdk/module/session/d/a;->w:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    invoke-direct {v4, v1, v5, v2}, Lcom/vivo/speechsdk/b/h/i;-><init>(Ljava/lang/String;ZLcom/vivo/speechsdk/b/h/i$a;)V

    iput-object v4, v3, Lcom/vivo/speechsdk/module/session/d/a;->A:Lcom/vivo/speechsdk/b/h/d;

    goto :goto_5

    :cond_8
    iget-object v2, v0, Lcom/vivo/speechsdk/module/session/e/a;->a:Ljava/lang/String;

    filled-new-array {v9, v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/vivo/speechsdk/common/utils/PathUtil;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vivo/speechsdk/b/h/c;->g(Ljava/lang/String;)V

    new-instance v2, Lcom/vivo/speechsdk/b/h/g;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v3, Lcom/vivo/speechsdk/module/session/d/a;->w:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-direct {v2, v1, v4}, Lcom/vivo/speechsdk/b/h/g;-><init>(Ljava/lang/String;Z)V

    iput-object v2, v3, Lcom/vivo/speechsdk/module/session/d/a;->A:Lcom/vivo/speechsdk/b/h/d;

    goto :goto_5

    :cond_9
    iget-object v2, v0, Lcom/vivo/speechsdk/module/session/e/a;->a:Ljava/lang/String;

    filled-new-array {v9, v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/vivo/speechsdk/common/utils/PathUtil;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vivo/speechsdk/b/h/c;->g(Ljava/lang/String;)V

    new-instance v2, Lcom/vivo/speechsdk/b/h/g;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v3, Lcom/vivo/speechsdk/module/session/d/a;->w:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-direct {v2, v1, v4}, Lcom/vivo/speechsdk/b/h/g;-><init>(Ljava/lang/String;Z)V

    iput-object v2, v3, Lcom/vivo/speechsdk/module/session/d/a;->A:Lcom/vivo/speechsdk/b/h/d;

    goto :goto_6

    :cond_a
    :goto_5
    const/4 v4, 0x0

    :goto_6
    iget-object v1, v3, Lcom/vivo/speechsdk/module/session/d/a;->A:Lcom/vivo/speechsdk/b/h/d;

    array-length v2, v10

    invoke-interface {v1, v10, v4, v2}, Lcom/vivo/speechsdk/b/h/d;->a([BII)V

    :cond_b
    const/4 v1, 0x6

    move/from16 v2, p1

    if-ne v2, v1, :cond_d

    iget-object v1, v0, Lcom/vivo/speechsdk/module/session/e/a;->c:Lcom/vivo/speechsdk/module/session/d/a;

    if-eqz v1, :cond_d

    iget-boolean v3, v1, Lcom/vivo/speechsdk/module/session/d/a;->C:Z

    if-eqz v3, :cond_d

    iget-object v1, v1, Lcom/vivo/speechsdk/module/session/d/a;->x:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    iget-object v1, v0, Lcom/vivo/speechsdk/module/session/e/a;->c:Lcom/vivo/speechsdk/module/session/d/a;

    iget-object v1, v1, Lcom/vivo/speechsdk/module/session/d/a;->B:Lcom/vivo/speechsdk/b/h/d;

    if-nez v1, :cond_c

    iget-object v1, v0, Lcom/vivo/speechsdk/module/session/e/a;->a:Ljava/lang/String;

    const-string v3, "lasr"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/vivo/speechsdk/common/utils/PathUtil;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, v0, Lcom/vivo/speechsdk/module/session/e/a;->c:Lcom/vivo/speechsdk/module/session/d/a;

    new-instance v4, Lcom/vivo/speechsdk/b/h/h;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "lasr.txt"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x1

    invoke-direct {v4, v1, v5}, Lcom/vivo/speechsdk/b/h/h;-><init>(Ljava/lang/String;Z)V

    iput-object v4, v3, Lcom/vivo/speechsdk/module/session/d/a;->B:Lcom/vivo/speechsdk/b/h/d;

    :cond_c
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, v0, Lcom/vivo/speechsdk/module/session/e/a;->c:Lcom/vivo/speechsdk/module/session/d/a;

    iget-wide v3, v3, Lcom/vivo/speechsdk/module/session/d/a;->d:J

    invoke-direct {v0, v3, v4}, Lcom/vivo/speechsdk/module/session/e/a;->a(J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    iget-object v3, v0, Lcom/vivo/speechsdk/module/session/e/a;->c:Lcom/vivo/speechsdk/module/session/d/a;

    iget-wide v3, v3, Lcom/vivo/speechsdk/module/session/d/a;->j:J

    invoke-direct {v0, v3, v4}, Lcom/vivo/speechsdk/module/session/e/a;->a(J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v1, v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/vivo/speechsdk/module/session/e/a;->c:Lcom/vivo/speechsdk/module/session/d/a;

    iget-object v4, v4, Lcom/vivo/speechsdk/module/session/d/a;->w:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v1, v4

    iget-object v3, v0, Lcom/vivo/speechsdk/module/session/e/a;->c:Lcom/vivo/speechsdk/module/session/d/a;

    iget-object v4, v3, Lcom/vivo/speechsdk/module/session/d/a;->v:Ljava/lang/String;

    const/4 v5, 0x3

    aput-object v4, v1, v5

    iget-object v3, v3, Lcom/vivo/speechsdk/module/session/d/a;->x:Ljava/lang/String;

    invoke-static {v3}, Lcom/vivo/speechsdk/common/utils/StringUtils;->formatStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    aput-object v3, v1, v4

    const-string v3, "%s ==> %s ==> %s ==> %s: %s"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, v0, Lcom/vivo/speechsdk/module/session/e/a;->c:Lcom/vivo/speechsdk/module/session/d/a;

    iget-object v3, v3, Lcom/vivo/speechsdk/module/session/d/a;->B:Lcom/vivo/speechsdk/b/h/d;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Lcom/vivo/speechsdk/b/h/d;->a(Ljava/lang/String;)V

    :cond_d
    const/16 v1, 0xa

    if-ne v2, v1, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/vivo/speechsdk/module/session/e/a;->b()V

    iget-object v1, v0, Lcom/vivo/speechsdk/module/session/e/a;->c:Lcom/vivo/speechsdk/module/session/d/a;

    if-eqz v1, :cond_f

    iget-boolean v2, v1, Lcom/vivo/speechsdk/module/session/d/a;->C:Z

    if-eqz v2, :cond_e

    iget-object v1, v1, Lcom/vivo/speechsdk/module/session/d/a;->B:Lcom/vivo/speechsdk/b/h/d;

    if-eqz v1, :cond_f

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/vivo/speechsdk/b/h/d;->a(Z)V

    goto :goto_7

    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/vivo/speechsdk/module/session/e/a;->a()V

    :cond_f
    :goto_7
    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/module/session/e/a;->c:Lcom/vivo/speechsdk/module/session/d/a;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/vivo/speechsdk/module/session/d/a;->y:Lcom/vivo/speechsdk/b/h/d;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Lcom/vivo/speechsdk/b/h/d;->a(Z)V

    :cond_0
    iget-object v0, p0, Lcom/vivo/speechsdk/module/session/e/a;->c:Lcom/vivo/speechsdk/module/session/d/a;

    iget-object v0, v0, Lcom/vivo/speechsdk/module/session/d/a;->z:Lcom/vivo/speechsdk/b/h/d;

    if-eqz v0, :cond_1

    invoke-interface {v0, v1}, Lcom/vivo/speechsdk/b/h/d;->a(Z)V

    :cond_1
    iget-object v0, p0, Lcom/vivo/speechsdk/module/session/e/a;->c:Lcom/vivo/speechsdk/module/session/d/a;

    iget-object v0, v0, Lcom/vivo/speechsdk/module/session/d/a;->A:Lcom/vivo/speechsdk/b/h/d;

    if-eqz v0, :cond_2

    invoke-interface {v0, v1}, Lcom/vivo/speechsdk/b/h/d;->a(Z)V

    :cond_2
    return-void
.end method
