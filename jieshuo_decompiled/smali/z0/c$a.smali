.class final Lz0/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz0/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz0/c;->c(Landroid/database/sqlite/SQLiteDatabase;Lcom/baidu/tts/client/model/ModelBags;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/tts/client/model/ModelBags;


# direct methods
.method constructor <init>(Lcom/baidu/tts/client/model/ModelBags;)V
    .locals 0

    iput-object p1, p0, Lz0/c$a;->a:Lcom/baidu/tts/client/model/ModelBags;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 13

    :try_start_0
    const-string v0, "insert into speechModel (name, version_min, version_max, language, gender, speaker, domain, quality, text_data_id, speech_data_id, id) values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object p1

    iget-object v0, p0, Lz0/c$a;->a:Lcom/baidu/tts/client/model/ModelBags;

    invoke-virtual {v0}, Lcom/baidu/tts/client/model/ModelBags;->getModelInfos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/tts/client/model/ModelInfo;

    invoke-virtual {v1}, Lcom/baidu/tts/client/model/ModelInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/baidu/tts/client/model/ModelInfo;->getVersionMin()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/baidu/tts/client/model/ModelInfo;->getVersionMax()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/baidu/tts/client/model/ModelInfo;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/baidu/tts/client/model/ModelInfo;->getGender()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lcom/baidu/tts/client/model/ModelInfo;->getSpeaker()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Lcom/baidu/tts/client/model/ModelInfo;->getDomain()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1}, Lcom/baidu/tts/client/model/ModelInfo;->getQuality()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1}, Lcom/baidu/tts/client/model/ModelInfo;->getTextDataId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1}, Lcom/baidu/tts/client/model/ModelInfo;->getSpeechDataId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1}, Lcom/baidu/tts/client/model/ModelInfo;->getServerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, v3}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v4}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v5}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    const/4 v2, 0x4

    invoke-virtual {p1, v2, v6}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    const/4 v2, 0x5

    invoke-virtual {p1, v2, v7}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    const/4 v2, 0x6

    invoke-virtual {p1, v2, v8}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    const/4 v2, 0x7

    invoke-virtual {p1, v2, v9}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    const/16 v2, 0x8

    invoke-virtual {p1, v2, v10}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    const/16 v2, 0x9

    invoke-virtual {p1, v2, v11}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    const/16 v2, 0xa

    invoke-virtual {p1, v2, v12}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    const/16 v2, 0xb

    invoke-virtual {p1, v2, v1}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return v2

    :catch_0
    const/4 p1, 0x0

    return p1
.end method
