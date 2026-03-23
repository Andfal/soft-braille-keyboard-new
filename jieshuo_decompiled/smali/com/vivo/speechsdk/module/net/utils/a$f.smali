.class Lcom/vivo/speechsdk/module/net/utils/a$f;
.super Lcom/vivo/speechsdk/module/net/utils/a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/speechsdk/module/net/utils/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
.end annotation


# instance fields
.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic d:Lcom/vivo/speechsdk/module/net/utils/a;


# direct methods
.method public constructor <init>(Lcom/vivo/speechsdk/module/net/utils/a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/module/net/utils/a$f;->d:Lcom/vivo/speechsdk/module/net/utils/a;

    invoke-direct {p0, p1, p2}, Lcom/vivo/speechsdk/module/net/utils/a$a;-><init>(Lcom/vivo/speechsdk/module/net/utils/a;Ljava/lang/String;)V

    return-void
.end method

.method private b()V
    .locals 10

    const-string v0, "DH"

    iget-object v1, p0, Lcom/vivo/speechsdk/module/net/utils/a$f;->c:Ljava/util/Map;

    if-nez v1, :cond_4

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/vivo/speechsdk/module/net/utils/a$f;->c:Ljava/util/Map;

    new-instance v1, Ljava/io/File;

    const-string v2, "data/bbkcore/domains/"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    new-instance v2, Lcom/vivo/speechsdk/module/net/utils/a$f$a;

    invoke-direct {v2, p0}, Lcom/vivo/speechsdk/module/net/utils/a$f$a;-><init>(Lcom/vivo/speechsdk/module/net/utils/a$f;)V

    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    aget-object v1, v1, v3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/vivo/speechsdk/module/net/utils/a$a;->a:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    if-gtz v4, :cond_1

    return-void

    :cond_1
    :try_start_0
    iget-object v5, p0, Lcom/vivo/speechsdk/module/net/utils/a$f;->d:Lcom/vivo/speechsdk/module/net/utils/a;

    invoke-static {v5, v1}, Lcom/vivo/speechsdk/module/net/utils/a;->a(Lcom/vivo/speechsdk/module/net/utils/a;Ljava/io/File;)[B

    move-result-object v1

    if-nez v1, :cond_2

    const-string v1, "read vivoDomainFile error"

    invoke-static {v0, v1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    new-instance v5, Ljava/util/zip/CRC32;

    invoke-direct {v5}, Ljava/util/zip/CRC32;-><init>()V

    invoke-virtual {v5, v1}, Ljava/util/zip/CRC32;->update([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "%08x"

    const/4 v7, 0x1

    :try_start_1
    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v7, v3

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v1, "skip read vivo damons file"

    invoke-static {v0, v1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    iget-object v2, p0, Lcom/vivo/speechsdk/module/net/utils/a$f;->d:Lcom/vivo/speechsdk/module/net/utils/a;

    invoke-static {v2, v1}, Lcom/vivo/speechsdk/module/net/utils/a;->a(Lcom/vivo/speechsdk/module/net/utils/a;[B)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/vivo/speechsdk/module/net/utils/a$f;->c:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "read or parse error"

    invoke-static {v0, v2, v1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/utils/a$f;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, ""

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_1
    return-object v0
.end method

.method public a()Z
    .locals 1

    invoke-direct {p0}, Lcom/vivo/speechsdk/module/net/utils/a$f;->b()V

    const/4 v0, 0x1

    return v0
.end method
