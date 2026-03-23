.class Lcom/vivo/speechsdk/module/record/RecordModule$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vivo/speechsdk/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/speechsdk/module/record/RecordModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/vivo/speechsdk/b/a<",
        "Lcom/vivo/speechsdk/module/api/record/IRecord;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/vivo/speechsdk/module/record/RecordModule;


# direct methods
.method constructor <init>(Lcom/vivo/speechsdk/module/record/RecordModule;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/module/record/RecordModule$a;->a:Lcom/vivo/speechsdk/module/record/RecordModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/os/Bundle;Landroid/os/Looper;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/vivo/speechsdk/module/record/RecordModule$a;->b(Landroid/os/Bundle;Landroid/os/Looper;)Lcom/vivo/speechsdk/module/api/record/IRecord;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroid/os/Bundle;Landroid/os/Looper;)Lcom/vivo/speechsdk/module/api/record/IRecord;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "key_inner_record"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "key_record_cache_enable"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string v5, "key_audio_source_type"

    invoke-virtual {v1, v5, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x2

    const-string v7, "key_channel_config"

    const/16 v8, 0x3e80

    const-string v9, "key_sample_rate"

    const-string v10, "key_audio_source"

    const/16 v11, 0x10

    if-nez v5, :cond_3

    const-string v5, "key_engine_hash_code"

    invoke-virtual {v1, v5, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v21

    invoke-virtual {v1, v10, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v13

    invoke-virtual {v1, v9, v8}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v14

    invoke-virtual {v1, v7, v11}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v15

    const-string v3, "key_audio_format"

    invoke-virtual {v1, v3, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v16

    const-string v3, "key_session_id"

    invoke-virtual {v1, v3, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v17

    const-string v3, "key_bluetooth_sco_on"

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    const-string v3, "key_record_silence_monitor"

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v20

    if-nez v2, :cond_0

    new-instance v1, Lcom/vivo/speechsdk/module/record/b;

    const/16 v18, 0x1

    move-object v12, v1

    invoke-direct/range {v12 .. v21}, Lcom/vivo/speechsdk/module/record/b;-><init>(IIIIIZZZI)V

    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/vivo/speechsdk/module/record/RecordModule$a;->a:Lcom/vivo/speechsdk/module/record/RecordModule;

    invoke-static {v2}, Lcom/vivo/speechsdk/module/record/RecordModule;->a(Lcom/vivo/speechsdk/module/record/RecordModule;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vivo/speechsdk/module/api/record/IRecord;

    if-nez v2, :cond_1

    iget-object v2, v0, Lcom/vivo/speechsdk/module/record/RecordModule$a;->a:Lcom/vivo/speechsdk/module/record/RecordModule;

    invoke-static {v2}, Lcom/vivo/speechsdk/module/record/RecordModule;->b(Lcom/vivo/speechsdk/module/record/RecordModule;)V

    new-instance v2, Lcom/vivo/speechsdk/module/record/b;

    const/16 v18, 0x0

    move-object v12, v2

    invoke-direct/range {v12 .. v21}, Lcom/vivo/speechsdk/module/record/b;-><init>(IIIIIZZZI)V

    iget-object v3, v0, Lcom/vivo/speechsdk/module/record/RecordModule$a;->a:Lcom/vivo/speechsdk/module/record/RecordModule;

    invoke-static {v3}, Lcom/vivo/speechsdk/module/record/RecordModule;->a(Lcom/vivo/speechsdk/module/record/RecordModule;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2

    :cond_1
    invoke-interface {v2}, Lcom/vivo/speechsdk/module/api/record/IRecord;->isInit()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v1, "RecordModule"

    const-string v3, "use record cache"

    invoke-static {v1, v3}, Lcom/vivo/speechsdk/common/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_2
    new-instance v2, Lcom/vivo/speechsdk/module/record/b;

    const/16 v18, 0x0

    move-object v12, v2

    invoke-direct/range {v12 .. v21}, Lcom/vivo/speechsdk/module/record/b;-><init>(IIIIIZZZI)V

    iget-object v3, v0, Lcom/vivo/speechsdk/module/record/RecordModule$a;->a:Lcom/vivo/speechsdk/module/record/RecordModule;

    invoke-static {v3}, Lcom/vivo/speechsdk/module/record/RecordModule;->a(Lcom/vivo/speechsdk/module/record/RecordModule;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2

    :cond_3
    invoke-virtual {v1, v10}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "key_source_file_type"

    invoke-virtual {v1, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v9, v8}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v1, v7, v11}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    const-string v8, "key_record_interval"

    const/16 v9, 0x28

    invoke-virtual {v1, v8, v9}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    const-string v9, "key_file_record_position"

    const-wide/16 v12, 0x0

    invoke-virtual {v1, v9, v12, v13}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    const/16 v18, 0x10

    if-eq v7, v11, :cond_4

    const/4 v3, 0x2

    :cond_4
    const-string v1, "assets:"

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    const-string v7, ""

    if-eqz v6, :cond_5

    invoke-virtual {v2, v1, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    new-instance v1, Lcom/vivo/speechsdk/module/record/a;

    invoke-static {}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getInstance()Lcom/vivo/speechsdk/common/module/ModuleManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getSpeechContext()Lcom/vivo/speechsdk/b/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vivo/speechsdk/b/c;->b()Landroid/content/Context;

    move-result-object v13

    move-object v12, v1

    move v15, v4

    move/from16 v16, v5

    move/from16 v17, v3

    move/from16 v19, v8

    move-wide/from16 v20, v9

    invoke-direct/range {v12 .. v21}, Lcom/vivo/speechsdk/module/record/a;-><init>(Landroid/content/Context;Ljava/lang/String;IIIIIJ)V

    return-object v1

    :cond_5
    const-string v1, "path:"

    invoke-virtual {v2, v1, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    new-instance v1, Lcom/vivo/speechsdk/module/record/c;

    const/16 v17, 0x10

    move-object v12, v1

    move v14, v4

    move v15, v5

    move/from16 v16, v3

    move/from16 v18, v8

    move-wide/from16 v19, v9

    invoke-direct/range {v12 .. v20}, Lcom/vivo/speechsdk/module/record/c;-><init>(Ljava/lang/String;IIIIIJ)V

    return-object v1

    :cond_6
    const/4 v1, 0x0

    return-object v1
.end method
