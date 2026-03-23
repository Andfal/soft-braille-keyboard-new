.class public Lcom/baidu/location/b/c$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "c"
.end annotation


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

.field public b:Ljava/lang/String;

.field final synthetic c:Lcom/baidu/location/b/c;

.field private d:J

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/baidu/location/b/c;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/baidu/location/b/c$c;->c:Lcom/baidu/location/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/location/b/c$c;->d:J

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/baidu/location/b/c$c;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/baidu/location/b/c$c;->e:Ljava/lang/String;

    iput-object p2, p0, Lcom/baidu/location/b/c$c;->a:Ljava/util/List;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/baidu/location/b/c$c;->d:J

    :try_start_0
    invoke-direct {p0}, Lcom/baidu/location/b/c$c;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private b()V
    .locals 7

    invoke-virtual {p0}, Lcom/baidu/location/b/c$c;->a()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/baidu/location/b/c$c;->a:Ljava/util/List;

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

    iget-object v4, p0, Lcom/baidu/location/b/c$c;->a:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/baidu/location/b/c$c;->a:Ljava/util/List;

    add-int/lit8 v5, v2, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/baidu/location/b/c$c;->a:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScanResult;

    iget v4, v4, Landroid/net/wifi/ScanResult;->level:I

    iget-object v6, p0, Lcom/baidu/location/b/c$c;->a:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/ScanResult;

    iget v6, v6, Landroid/net/wifi/ScanResult;->level:I

    if-ge v4, v6, :cond_1

    iget-object v3, p0, Lcom/baidu/location/b/c$c;->a:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    iget-object v4, p0, Lcom/baidu/location/b/c$c;->a:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/baidu/location/b/c$c;->a:Ljava/util/List;

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

    iget-object v0, p0, Lcom/baidu/location/b/c$c;->a:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public a(ILjava/lang/String;)Ljava/lang/String;
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/location/b/c$c;->a()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ge v2, v3, :cond_0

    return-object v4

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v5, 0x0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    move-wide v7, v5

    :goto_0
    const/4 v3, 0x1

    cmp-long v10, v7, v5

    if-lez v10, :cond_1

    const/4 v10, 0x1

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    :goto_1
    new-instance v11, Ljava/lang/StringBuffer;

    const/16 v12, 0x200

    invoke-direct {v11, v12}, Ljava/lang/StringBuffer;-><init>(I)V

    iget-object v12, v0, Lcom/baidu/location/b/c$c;->a:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    move-wide/from16 v17, v5

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v19, 0x0

    :goto_2
    const-string v5, ""

    const-string v6, "|"

    if-ge v13, v12, :cond_8

    iget-object v4, v0, Lcom/baidu/location/b/c$c;->a:Ljava/util/List;

    invoke-interface {v4, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScanResult;

    iget v4, v4, Landroid/net/wifi/ScanResult;->level:I

    if-nez v4, :cond_2

    move/from16 v3, p1

    move/from16 v1, v16

    goto/16 :goto_5

    :cond_2
    add-int/lit8 v14, v14, 0x1

    if-eqz v15, :cond_3

    const-string v4, "&wf="

    invoke-virtual {v11, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v15, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {v11, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_3
    iget-object v4, v0, Lcom/baidu/location/b/c$c;->a:Ljava/util/List;

    invoke-interface {v4, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScanResult;

    iget-object v4, v4, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    const-string v9, ":"

    invoke-virtual {v4, v9, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v1, :cond_4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move/from16 v19, v14

    :cond_4
    iget-object v4, v0, Lcom/baidu/location/b/c$c;->a:Ljava/util/List;

    invoke-interface {v4, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScanResult;

    iget v4, v4, Landroid/net/wifi/ScanResult;->level:I

    if-gez v4, :cond_5

    neg-int v4, v4

    :cond_5
    sget-object v9, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v20, 0x0

    aput-object v4, v1, v20

    const-string v4, ";%d;"

    invoke-static {v9, v4, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v16, 0x1

    if-eqz v10, :cond_6

    :try_start_1
    iget-object v4, v0, Lcom/baidu/location/b/c$c;->a:Ljava/util/List;

    invoke-interface {v4, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScanResult;

    iget-wide v3, v4, Landroid/net/wifi/ScanResult;->timestamp:J

    sub-long v3, v7, v3

    const-wide/32 v21, 0xf4240

    div-long v3, v3, v21
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catchall_0
    nop

    const-wide/16 v3, 0x0

    :goto_4
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    cmp-long v9, v3, v17

    if-lez v9, :cond_6

    move-wide/from16 v17, v3

    :cond_6
    move/from16 v3, p1

    if-le v1, v3, :cond_7

    goto :goto_6

    :cond_7
    :goto_5
    add-int/lit8 v13, v13, 0x1

    move/from16 v16, v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object/from16 v1, p2

    goto/16 :goto_2

    :cond_8
    :goto_6
    move/from16 v1, v19

    if-lez v1, :cond_9

    const-string v3, "&wf_n="

    invoke-virtual {v11, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_9
    if-eqz v15, :cond_a

    const/4 v1, 0x0

    return-object v1

    :cond_a
    const-wide/16 v3, 0xa

    cmp-long v1, v17, v3

    if-lez v1, :cond_e

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_e

    const/4 v1, 0x0

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v7, 0x0

    cmp-long v9, v3, v7

    if-lez v9, :cond_e

    new-instance v3, Ljava/lang/StringBuffer;

    const/16 v4, 0x80

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v4, "&wf_ut="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/16 v16, 0x1

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    if-eqz v16, :cond_b

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-wide/16 v9, 0x0

    const/16 v16, 0x0

    goto :goto_8

    :cond_b
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    sub-long/2addr v7, v9

    const-wide/16 v9, 0x0

    cmp-long v12, v7, v9

    if-eqz v12, :cond_c

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_c
    :goto_8
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_7

    :cond_d
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_e
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
