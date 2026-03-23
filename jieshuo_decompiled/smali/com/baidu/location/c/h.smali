.class public Lcom/baidu/location/c/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private b:J

.field private c:J

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>(Ljava/util/List;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;J)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/location/c/h;->c:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/c/h;->d:Z

    iput-wide p2, p0, Lcom/baidu/location/c/h;->b:J

    iput-object p1, p0, Lcom/baidu/location/c/h;->a:Ljava/util/List;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/baidu/location/c/h;->c:J

    :try_start_0
    invoke-direct {p0}, Lcom/baidu/location/c/h;->n()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "wpa|wep"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    :goto_0
    return p1
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_1

    const-string v0, "&"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ";"

    if-nez v1, :cond_0

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "_"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method private m()I
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/c/h;->a:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method private n()V
    .locals 7

    invoke-direct {p0}, Lcom/baidu/location/c/h;->m()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/baidu/location/c/h;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    const/4 v2, 0x1

    :goto_0
    if-lt v0, v1, :cond_3

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v2, v0, :cond_2

    iget-object v4, p0, Lcom/baidu/location/c/h;->a:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/baidu/location/c/h;->a:Ljava/util/List;

    add-int/lit8 v5, v2, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/baidu/location/c/h;->a:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScanResult;

    iget v4, v4, Landroid/net/wifi/ScanResult;->level:I

    iget-object v6, p0, Lcom/baidu/location/c/h;->a:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/ScanResult;

    iget v6, v6, Landroid/net/wifi/ScanResult;->level:I

    if-ge v4, v6, :cond_1

    iget-object v3, p0, Lcom/baidu/location/c/h;->a:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    iget-object v4, p0, Lcom/baidu/location/c/h;->a:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/baidu/location/c/h;->a:Ljava/util/List;

    invoke-interface {v4, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, -0x1

    move v2, v3

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/c/h;->a:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public a(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/baidu/location/c/h;->a(IZZ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(IZZ)Ljava/lang/String;
    .locals 27

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/location/c/h;->a()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v1, v3, :cond_0

    return-object v2

    :cond_0
    :try_start_0
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    new-instance v4, Ljava/lang/StringBuffer;

    const/16 v5, 0x200

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/baidu/location/c/i;->a()Lcom/baidu/location/c/i;

    move-result-object v6

    invoke-virtual {v6}, Lcom/baidu/location/c/i;->k()Landroid/net/wifi/WifiInfo;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    const-string v7, ":"

    const-string v9, ""

    if-eqz v6, :cond_1

    :try_start_1
    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_1

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v7, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v6

    invoke-static {}, Lcom/baidu/location/c/i;->a()Lcom/baidu/location/c/i;

    move-result-object v11

    invoke-virtual {v11}, Lcom/baidu/location/c/i;->m()Ljava/lang/String;

    move-result-object v11
    :try_end_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    if-gez v6, :cond_2

    neg-int v6, v6

    goto :goto_0

    :cond_1
    move-object v10, v2

    move-object v11, v10

    const/4 v6, -0x1

    :cond_2
    :goto_0
    const-wide/16 v12, 0x0

    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16
    :try_end_2
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    goto :goto_1

    :catch_0
    nop

    move-wide v14, v12

    :goto_1
    cmp-long v16, v14, v12

    if-lez v16, :cond_3

    const/16 v16, 0x1

    goto :goto_2

    :cond_3
    const/16 v16, 0x0

    :goto_2
    if-eqz v16, :cond_5

    if-eqz v16, :cond_4

    if-eqz p2, :cond_4

    const/16 v16, 0x1

    goto :goto_3

    :cond_4
    const/16 v16, 0x0

    :cond_5
    :goto_3
    :try_start_3
    iget-object v12, v0, Lcom/baidu/location/c/h;->a:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12
    :try_end_3
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    move/from16 v13, p1

    if-le v12, v13, :cond_6

    move v12, v13

    :cond_6
    const/4 v8, 0x0

    const/4 v13, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    :goto_4
    const-string v2, "|"

    if-ge v8, v12, :cond_14

    :try_start_4
    iget-object v3, v0, Lcom/baidu/location/c/h;->a:Ljava/util/List;

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_13

    iget-object v3, v0, Lcom/baidu/location/c/h;->a:Ljava/util/List;

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    iget v3, v3, Landroid/net/wifi/ScanResult;->level:I
    :try_end_4
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    if-nez v3, :cond_7

    goto/16 :goto_a

    :cond_7
    if-eqz v16, :cond_8

    :try_start_5
    iget-object v3, v0, Lcom/baidu/location/c/h;->a:Ljava/util/List;

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Error; {:try_start_5 .. :try_end_5} :catch_5

    move-object/from16 v24, v11

    move/from16 p1, v12

    :try_start_6
    iget-wide v11, v3, Landroid/net/wifi/ScanResult;->timestamp:J

    sub-long v11, v14, v11

    const-wide/32 v25, 0xf4240

    div-long v11, v11, v25
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Error; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_5

    :catch_1
    move-object/from16 v24, v11

    move/from16 p1, v12

    :catch_2
    const-wide/16 v11, 0x0

    :goto_5
    :try_start_7
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    cmp-long v3, v11, v18

    if-lez v3, :cond_9

    move-wide/from16 v18, v11

    goto :goto_6

    :cond_8
    move-object/from16 v24, v11

    move/from16 p1, v12

    :cond_9
    :goto_6
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x17

    if-lt v3, v11, :cond_b

    iget-object v3, v0, Lcom/baidu/location/c/h;->a:Ljava/util/List;

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    invoke-static {v3}, Lcom/baidu/location/c/u;->a(Landroid/net/wifi/ScanResult;)Z

    move-result v3

    if-eqz v3, :cond_b

    if-nez v13, :cond_a

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    move-object v13, v3

    :cond_a
    invoke-virtual {v13, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_b
    if-eqz v20, :cond_c

    const-string v2, "&wf="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v20, 0x0

    goto :goto_7

    :cond_c
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_7
    iget-object v2, v0, Lcom/baidu/location/c/h;->a:Ljava/util/List;

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    iget-object v2, v2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    if-eqz v2, :cond_12

    invoke-virtual {v2, v7, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, v0, Lcom/baidu/location/c/h;->a:Ljava/util/List;

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    iget v3, v3, Landroid/net/wifi/ScanResult;->level:I

    if-gez v3, :cond_d

    neg-int v3, v3

    :cond_d
    sget-object v11, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v12, ";%d;"

    move-object/from16 v25, v7

    move-object/from16 p2, v13

    const/4 v7, 0x1

    new-array v13, v7, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v7, 0x0

    aput-object v3, v13, v7

    invoke-static {v11, v12, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v22, v22, 0x1

    if-eqz v10, :cond_e

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, v0, Lcom/baidu/location/c/h;->a:Ljava/util/List;

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    iget-object v2, v2, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/baidu/location/c/h;->a(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/baidu/location/c/h;->e:Z
    :try_end_7
    .catch Ljava/lang/Error; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    move/from16 v21, v22

    const/4 v2, 0x1

    goto :goto_8

    :cond_e
    const/4 v2, 0x0

    :goto_8
    if-nez v2, :cond_11

    const/16 v2, 0x1e

    const/4 v3, 0x2

    move/from16 v7, v23

    if-nez v7, :cond_f

    const/16 v11, 0xa

    :try_start_8
    invoke-virtual {v1, v11}, Ljava/util/Random;->nextInt(I)I

    move-result v11

    if-ne v11, v3, :cond_10

    iget-object v3, v0, Lcom/baidu/location/c/h;->a:Ljava/util/List;

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    iget-object v3, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v3, :cond_10

    iget-object v3, v0, Lcom/baidu/location/c/h;->a:Ljava/util/List;

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    iget-object v3, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v2, :cond_10

    iget-object v2, v0, Lcom/baidu/location/c/h;->a:Ljava/util/List;

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    iget-object v2, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/baidu/location/c/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v23, 0x1

    goto :goto_9

    :cond_f
    const/4 v11, 0x1

    if-ne v7, v11, :cond_10

    const/16 v12, 0x14

    invoke-virtual {v1, v12}, Ljava/util/Random;->nextInt(I)I

    move-result v12

    if-ne v12, v11, :cond_10

    iget-object v11, v0, Lcom/baidu/location/c/h;->a:Ljava/util/List;

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/wifi/ScanResult;

    iget-object v11, v11, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v11, :cond_10

    iget-object v11, v0, Lcom/baidu/location/c/h;->a:Ljava/util/List;

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/wifi/ScanResult;

    iget-object v11, v11, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v11, v2, :cond_10

    iget-object v2, v0, Lcom/baidu/location/c/h;->a:Ljava/util/List;

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    iget-object v2, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/baidu/location/c/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Error; {:try_start_8 .. :try_end_8} :catch_5

    const/16 v23, 0x2

    goto :goto_9

    :cond_10
    move/from16 v23, v7

    :goto_9
    move-object/from16 v13, p2

    goto :goto_c

    :cond_11
    move/from16 v7, v23

    :try_start_9
    iget-object v2, v0, Lcom/baidu/location/c/h;->a:Ljava/util/List;

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    iget-object v2, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/baidu/location/c/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :catch_3
    move-object/from16 v13, p2

    goto :goto_b

    :cond_12
    move-object/from16 v25, v7

    move-object/from16 p2, v13

    move/from16 v7, v23

    goto :goto_c

    :cond_13
    :goto_a
    move-object/from16 v25, v7

    move-object/from16 v24, v11

    move/from16 p1, v12

    move/from16 v7, v23

    :goto_b
    move/from16 v23, v7

    :goto_c
    add-int/lit8 v8, v8, 0x1

    move/from16 v12, p1

    move-object/from16 v11, v24

    move-object/from16 v7, v25

    const/4 v3, 0x1

    goto/16 :goto_4

    :cond_14
    move-object/from16 v24, v11

    if-nez v20, :cond_1e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&wf_n="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, v21

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v13, :cond_15

    const-string v1, "&wf_mc="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_15
    if-eqz v10, :cond_16

    const/4 v1, -0x1

    if-eq v6, v1, :cond_16

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "&wf_rs="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_16
    const-wide/16 v6, 0xa

    cmp-long v1, v18, v6

    if-lez v1, :cond_1a

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1a

    const/4 v1, 0x0

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v10, 0x0

    cmp-long v1, v6, v10

    if-lez v1, :cond_1a

    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v6, 0x80

    invoke-direct {v1, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v6, "&wf_ut="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v8, 0x1

    :goto_d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_19

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    if-eqz v8, :cond_17

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const/4 v8, 0x0

    const-wide/16 v12, 0x0

    goto :goto_e

    :cond_17
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    sub-long/2addr v10, v12

    const-wide/16 v12, 0x0

    cmp-long v14, v10, v12

    if-eqz v14, :cond_18

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_18
    :goto_e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_d

    :cond_19
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_f

    :cond_1a
    const/4 v6, 0x0

    :goto_f
    const-string v1, "&wf_st="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v1, v0, Lcom/baidu/location/c/h;->b:J

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v1, "&wf_et="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v1, v0, Lcom/baidu/location/c/h;->c:J

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v1, "&wf_vt="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-wide v1, Lcom/baidu/location/c/i;->a:J

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    if-lez v3, :cond_1c

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/baidu/location/c/h;->d:Z

    const-string v2, "&wf_en="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v2, v0, Lcom/baidu/location/c/h;->e:Z

    if-eqz v2, :cond_1b

    const/4 v3, 0x1

    goto :goto_10

    :cond_1b
    const/4 v3, 0x0

    :goto_10
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_1c
    if-eqz v24, :cond_1d

    const-string v1, "&wf_gw="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v11, v24

    invoke-virtual {v4, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1d
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_9
    .catch Ljava/lang/Error; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    return-object v1

    :cond_1e
    const/4 v1, 0x0

    return-object v1

    :catch_4
    const/4 v1, 0x0

    goto :goto_11

    :catch_5
    const/4 v1, 0x0

    goto :goto_12

    :catch_6
    move-object v1, v2

    :goto_11
    return-object v1

    :catch_7
    move-object v1, v2

    :goto_12
    return-object v1
.end method

.method public a(J)Z
    .locals 18

    move-object/from16 v0, p0

    const-wide/16 v1, 0x3e8

    const-wide/16 v3, 0x0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v5

    div-long/2addr v5, v1
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    move-wide v5, v3

    :goto_0
    const/4 v7, 0x1

    const/4 v8, 0x0

    cmp-long v9, v5, v3

    if-lez v9, :cond_0

    const/4 v9, 0x1

    goto :goto_1

    :cond_0
    const/4 v9, 0x0

    :goto_1
    if-nez v9, :cond_1

    return v8

    :cond_1
    iget-object v10, v0, Lcom/baidu/location/c/h;->a:Ljava/util/List;

    if-eqz v10, :cond_9

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_2

    goto :goto_6

    :cond_2
    iget-object v10, v0, Lcom/baidu/location/c/h;->a:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    const/16 v11, 0x10

    if-le v10, v11, :cond_3

    const/16 v10, 0x10

    :cond_3
    move-wide v12, v3

    move-wide v14, v12

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v10, :cond_6

    iget-object v3, v0, Lcom/baidu/location/c/h;->a:Ljava/util/List;

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v3, v0, Lcom/baidu/location/c/h;->a:Ljava/util/List;

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    iget v3, v3, Landroid/net/wifi/ScanResult;->level:I

    if-nez v3, :cond_4

    goto :goto_4

    :cond_4
    if-eqz v9, :cond_5

    :try_start_1
    iget-object v3, v0, Lcom/baidu/location/c/h;->a:Ljava/util/List;

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    iget-wide v3, v3, Landroid/net/wifi/ScanResult;->timestamp:J

    sub-long v3, v5, v3

    const-wide/32 v16, 0xf4240

    div-long v3, v3, v16
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    nop

    const-wide/16 v3, 0x0

    :goto_3
    add-long/2addr v12, v3

    cmp-long v16, v3, v14

    if-lez v16, :cond_5

    move-wide v14, v3

    :cond_5
    :goto_4
    add-int/lit8 v11, v11, 0x1

    const-wide/16 v3, 0x0

    goto :goto_2

    :cond_6
    int-to-long v3, v10

    div-long/2addr v12, v3

    mul-long v14, v14, v1

    cmp-long v3, v14, p1

    if-gtz v3, :cond_8

    mul-long v12, v12, v1

    cmp-long v1, v12, p1

    if-lez v1, :cond_7

    goto :goto_5

    :cond_7
    const/4 v7, 0x0

    :cond_8
    :goto_5
    return v7

    :cond_9
    :goto_6
    return v8
.end method

.method public a(Lcom/baidu/location/c/h;)Z
    .locals 5

    iget-object v0, p0, Lcom/baidu/location/c/h;->a:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    iget-object v2, p1, Lcom/baidu/location/c/h;->a:Ljava/util/List;

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v2, p1, Lcom/baidu/location/c/h;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v0, p0, Lcom/baidu/location/c/h;->a:Ljava/util/List;

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/baidu/location/c/h;->a:Ljava/util/List;

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_3

    iget-object v3, p0, Lcom/baidu/location/c/h;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_2

    :cond_1
    iget-object v3, p0, Lcom/baidu/location/c/h;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    iget-object v3, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iget-object v4, p1, Lcom/baidu/location/c/h;->a:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScanResult;

    iget-object v4, v4, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v1

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    return v1
.end method

.method public b()Ljava/lang/String;
    .locals 2

    :try_start_0
    sget v0, Lcom/baidu/location/e/k;->O:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, v1}, Lcom/baidu/location/c/h;->a(IZZ)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public b(I)Ljava/lang/String;
    .locals 8

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/baidu/location/c/h;->a()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto/16 :goto_3

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v2, 0x100

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    iget-object v2, p0, Lcom/baidu/location/c/h;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sget v3, Lcom/baidu/location/e/k;->O:I

    if-le v2, v3, :cond_1

    move v2, v3

    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v2, :cond_5

    iget-object v5, p0, Lcom/baidu/location/c/h;->a:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_2

    goto :goto_2

    :cond_2
    and-int v5, v1, p1

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/baidu/location/c/h;->a:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/ScanResult;

    iget-object v5, v5, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    if-eqz v5, :cond_4

    if-nez v4, :cond_3

    const-string v5, "&ssid="

    goto :goto_1

    :cond_3
    const-string v5, "|"

    :goto_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v5, p0, Lcom/baidu/location/c/h;->a:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/ScanResult;

    iget-object v5, v5, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    const-string v6, ":"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, ";"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v5, p0, Lcom/baidu/location/c/h;->a:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/ScanResult;

    iget-object v5, v5, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/baidu/location/c/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    :cond_4
    shl-int/lit8 v1, v1, 0x1

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_6
    :goto_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public b(Lcom/baidu/location/c/h;)Z
    .locals 7

    iget-object v0, p0, Lcom/baidu/location/c/h;->a:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    if-eqz p1, :cond_5

    iget-object v2, p1, Lcom/baidu/location/c/h;->a:Ljava/util/List;

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v2, p1, Lcom/baidu/location/c/h;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v0, p0, Lcom/baidu/location/c/h;->a:Ljava/util/List;

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/baidu/location/c/h;->a:Ljava/util/List;

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_4

    iget-object v3, p0, Lcom/baidu/location/c/h;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_2

    :cond_1
    iget-object v3, p0, Lcom/baidu/location/c/h;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    iget-object v3, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iget-object v4, p0, Lcom/baidu/location/c/h;->a:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScanResult;

    iget v4, v4, Landroid/net/wifi/ScanResult;->level:I

    iget-object v5, p1, Lcom/baidu/location/c/h;->a:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/ScanResult;

    iget-object v5, v5, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iget-object v6, p1, Lcom/baidu/location/c/h;->a:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/ScanResult;

    iget v6, v6, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-eq v4, v6, :cond_2

    goto :goto_3

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    :goto_3
    return v1

    :cond_4
    const/4 p1, 0x1

    return p1

    :cond_5
    return v1
.end method

.method public c()Ljava/lang/String;
    .locals 3

    :try_start_0
    sget v0, Lcom/baidu/location/e/k;->O:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/baidu/location/c/h;->a(IZZ)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public c(Lcom/baidu/location/c/h;)Z
    .locals 0

    invoke-static {p1, p0}, Lcom/baidu/location/c/i;->a(Lcom/baidu/location/c/h;Lcom/baidu/location/c/h;)Z

    move-result p1

    return p1
.end method

.method public d()Ljava/lang/String;
    .locals 1

    const/16 v0, 0xf

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/baidu/location/c/h;->a(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public e()Z
    .locals 2

    sget v0, Lcom/baidu/location/e/k;->ag:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/baidu/location/c/h;->a(J)Z

    move-result v0

    return v0
.end method

.method public f()J
    .locals 13

    iget-object v0, p0, Lcom/baidu/location/c/h;->a:Ljava/util/List;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_6

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    move-wide v3, v1

    :goto_0
    const/4 v0, 0x0

    cmp-long v5, v3, v1

    if-lez v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-nez v5, :cond_2

    return-wide v1

    :cond_2
    iget-object v6, p0, Lcom/baidu/location/c/h;->a:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/16 v7, 0x10

    if-le v6, v7, :cond_3

    const/16 v6, 0x10

    :cond_3
    const-wide/32 v7, 0x7fffffff

    :goto_2
    if-ge v0, v6, :cond_6

    iget-object v9, p0, Lcom/baidu/location/c/h;->a:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/baidu/location/c/h;->a:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/ScanResult;

    iget v9, v9, Landroid/net/wifi/ScanResult;->level:I

    if-nez v9, :cond_4

    goto :goto_4

    :cond_4
    if-eqz v5, :cond_5

    :try_start_1
    iget-object v9, p0, Lcom/baidu/location/c/h;->a:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/ScanResult;

    iget-wide v9, v9, Landroid/net/wifi/ScanResult;->timestamp:J

    sub-long v9, v3, v9

    const-wide/32 v11, 0xf4240

    div-long/2addr v9, v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    nop

    move-wide v9, v1

    :goto_3
    cmp-long v11, v9, v7

    if-gez v11, :cond_5

    move-wide v7, v9

    :cond_5
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    if-eqz v5, :cond_7

    goto :goto_5

    :cond_7
    move-wide v7, v1

    :goto_5
    cmp-long v0, v7, v1

    if-gez v0, :cond_8

    goto :goto_6

    :cond_8
    move-wide v1, v7

    :cond_9
    :goto_6
    return-wide v1
.end method

.method public g()J
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/location/c/h;->a:Ljava/util/List;

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_8

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_5

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    move-wide v4, v2

    :goto_0
    const/4 v1, 0x0

    cmp-long v6, v4, v2

    if-lez v6, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    if-nez v6, :cond_2

    return-wide v2

    :cond_2
    iget-object v7, v0, Lcom/baidu/location/c/h;->a:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const/16 v8, 0x10

    if-le v7, v8, :cond_3

    const/16 v7, 0x10

    :cond_3
    move-wide v8, v2

    move-wide v10, v8

    move-wide v12, v10

    :goto_2
    const-wide/16 v14, 0x1

    if-ge v1, v7, :cond_6

    iget-object v2, v0, Lcom/baidu/location/c/h;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, v0, Lcom/baidu/location/c/h;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    iget v2, v2, Landroid/net/wifi/ScanResult;->level:I

    if-nez v2, :cond_4

    goto :goto_4

    :cond_4
    if-eqz v6, :cond_5

    :try_start_1
    iget-object v2, v0, Lcom/baidu/location/c/h;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    iget-wide v2, v2, Landroid/net/wifi/ScanResult;->timestamp:J

    sub-long v2, v4, v2

    const-wide/32 v16, 0xf4240

    div-long v2, v2, v16
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    nop

    const-wide/16 v2, 0x0

    :goto_3
    add-long/2addr v12, v2

    add-long/2addr v8, v14

    cmp-long v14, v2, v10

    if-lez v14, :cond_5

    move-wide v10, v2

    :cond_5
    :goto_4
    add-int/lit8 v1, v1, 0x1

    const-wide/16 v2, 0x0

    goto :goto_2

    :cond_6
    cmp-long v1, v8, v14

    if-lez v1, :cond_7

    sub-long/2addr v12, v10

    sub-long/2addr v8, v14

    div-long v10, v12, v8

    :cond_7
    return-wide v10

    :cond_8
    :goto_5
    move-wide v1, v2

    return-wide v1
.end method

.method public h()I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/baidu/location/c/h;->a()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/baidu/location/c/h;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/baidu/location/c/h;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    iget v2, v2, Landroid/net/wifi/ScanResult;->level:I

    neg-int v2, v2

    if-lez v2, :cond_1

    return v2

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/c/h;->d:Z

    return v0
.end method

.method public j()Z
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/baidu/location/c/h;->c:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/baidu/location/c/h;->c:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public k()Z
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/baidu/location/c/h;->c:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/baidu/location/c/h;->c:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public l()Z
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/baidu/location/c/h;->c:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/baidu/location/c/h;->b:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
