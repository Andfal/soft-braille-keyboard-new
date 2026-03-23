.class Lcom/vivo/speechsdk/module/net/utils/a$e;
.super Lcom/vivo/speechsdk/module/net/utils/a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/speechsdk/module/net/utils/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation
.end field

.field private d:Z

.field final synthetic e:Lcom/vivo/speechsdk/module/net/utils/a;


# direct methods
.method public constructor <init>(Lcom/vivo/speechsdk/module/net/utils/a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/module/net/utils/a$e;->e:Lcom/vivo/speechsdk/module/net/utils/a;

    invoke-direct {p0, p1, p2}, Lcom/vivo/speechsdk/module/net/utils/a$a;-><init>(Lcom/vivo/speechsdk/module/net/utils/a;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/vivo/speechsdk/module/net/utils/a$e;->d:Z

    return-void
.end method

.method private b()V
    .locals 12

    const-string v0, "sp_key_crc_"

    const-string v1, "DH"

    iget-boolean v2, p0, Lcom/vivo/speechsdk/module/net/utils/a$e;->d:Z

    if-nez v2, :cond_6

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/vivo/speechsdk/module/net/utils/a$e;->d:Z

    new-instance v3, Ljava/io/File;

    const-string v4, "data/bbkcore/domains/"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    new-instance v4, Lcom/vivo/speechsdk/module/net/utils/a$e$a;

    invoke-direct {v4, p0}, Lcom/vivo/speechsdk/module/net/utils/a$e$a;-><init>(Lcom/vivo/speechsdk/module/net/utils/a$e;)V

    invoke-virtual {v3, v4}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_0

    array-length v4, v3

    if-lez v4, :cond_0

    aget-object v3, v3, v5

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/vivo/speechsdk/module/net/utils/a$a;->a:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    if-gtz v6, :cond_1

    return-void

    :cond_1
    :try_start_0
    iget-object v7, p0, Lcom/vivo/speechsdk/module/net/utils/a$e;->e:Lcom/vivo/speechsdk/module/net/utils/a;

    invoke-static {v7}, Lcom/vivo/speechsdk/module/net/utils/a;->a(Lcom/vivo/speechsdk/module/net/utils/a;)Landroid/content/Context;

    move-result-object v7

    const-string v8, "sp_vivo_damons_domain_cache"

    invoke-virtual {v7, v8, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/vivo/speechsdk/module/net/utils/a$a;->a:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, ""

    invoke-interface {v7, v6, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v8, "skip read vivo damons file"

    if-eqz v6, :cond_2

    :try_start_1
    invoke-static {v1, v8}, Lcom/vivo/speechsdk/common/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v6, p0, Lcom/vivo/speechsdk/module/net/utils/a$e;->e:Lcom/vivo/speechsdk/module/net/utils/a;

    invoke-static {v6, v3}, Lcom/vivo/speechsdk/module/net/utils/a;->a(Lcom/vivo/speechsdk/module/net/utils/a;Ljava/io/File;)[B

    move-result-object v3

    if-nez v3, :cond_3

    const-string v0, "read vivoDomainFile error"

    invoke-static {v1, v0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    new-instance v6, Ljava/util/zip/CRC32;

    invoke-direct {v6}, Ljava/util/zip/CRC32;-><init>()V

    invoke-virtual {v6, v3}, Ljava/util/zip/CRC32;->update([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v9, "%08x"

    :try_start_2
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v2, v5

    invoke-static {v9, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {v1, v8}, Lcom/vivo/speechsdk/common/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    iget-object v4, p0, Lcom/vivo/speechsdk/module/net/utils/a$e;->e:Lcom/vivo/speechsdk/module/net/utils/a;

    invoke-static {v4, v3}, Lcom/vivo/speechsdk/module/net/utils/a;->a(Lcom/vivo/speechsdk/module/net/utils/a;[B)Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_6

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/utils/a$a;->a:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v4, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    :cond_5
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "commit failed!"

    invoke-static {v1, v0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v2, "read or parse error"

    invoke-static {v1, v2, v0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    :goto_2
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/utils/a$e;->e:Lcom/vivo/speechsdk/module/net/utils/a;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/net/utils/a;->a(Lcom/vivo/speechsdk/module/net/utils/a;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "sp_vivo_damons_domain_cache"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/speechsdk/module/net/utils/a$e;->c:Ljava/util/Map;

    if-nez v1, :cond_0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/speechsdk/module/net/utils/a$e;->c:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/utils/a$e;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, ""

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_2

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_2
    return-object v0
.end method

.method public a()Z
    .locals 1

    invoke-direct {p0}, Lcom/vivo/speechsdk/module/net/utils/a$e;->b()V

    const/4 v0, 0x1

    return v0
.end method
