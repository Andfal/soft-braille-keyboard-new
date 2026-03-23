.class public Lcom/vivo/speechsdk/module/net/utils/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/speechsdk/module/net/utils/a$b;,
        Lcom/vivo/speechsdk/module/net/utils/a$d;,
        Lcom/vivo/speechsdk/module/net/utils/a$f;,
        Lcom/vivo/speechsdk/module/net/utils/a$e;,
        Lcom/vivo/speechsdk/module/net/utils/a$a;,
        Lcom/vivo/speechsdk/module/net/utils/a$c;
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/String; = "DH"

.field private static final e:Ljava/lang/String; = "4.0.0"

.field private static final f:Ljava/lang/String; = "oem/etc/domains/"

.field private static final g:Ljava/lang/String; = "data/bbkcore/domains/"

.field private static final h:Ljava/lang/String; = "sp_vivo_damons_domain_cache"

.field private static final i:Ljava/lang/String; = "sp_key_crc_"

.field private static final j:Ljava/lang/String; = "metadatas"

.field private static final k:Ljava/lang/String; = "key"

.field private static final l:Ljava/lang/String; = "value"

.field private static final m:Ljava/lang/String; = ""

.field private static final n:Ljava/lang/String; = "com.vivo.domainsync.action.DOMAINS_UPDATE"

.field private static o:Z = false

.field private static p:Lcom/vivo/speechsdk/module/net/utils/a;


# instance fields
.field private a:Lcom/vivo/speechsdk/module/net/utils/a$b;

.field private b:Landroid/content/Context;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/vivo/speechsdk/module/net/utils/a$c;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/vivo/speechsdk/module/net/utils/a;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/vivo/speechsdk/module/net/utils/a;->b:Landroid/content/Context;

    return-object p0
.end method

.method private a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/vivo/speechsdk/module/net/utils/a$c;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vivo/speechsdk/module/net/utils/a$c;

    invoke-interface {v1}, Lcom/vivo/speechsdk/module/net/utils/a$c;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1, p1}, Lcom/vivo/speechsdk/module/net/utils/a$c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, ""

    return-object p1

    :cond_2
    return-object v0
.end method

.method static synthetic a(Lcom/vivo/speechsdk/module/net/utils/a;[B)Ljava/util/Map;
    .locals 0

    invoke-direct {p0, p1}, Lcom/vivo/speechsdk/module/net/utils/a;->a([B)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private a([B)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "metadatas"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "key"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "value"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private declared-synchronized a()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "DH"

    const-string v1, "domain repos clear"

    invoke-static {v0, v1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/utils/a;->c:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/vivo/speechsdk/module/net/utils/a;Ljava/io/File;)[B
    .locals 0

    invoke-direct {p0, p1}, Lcom/vivo/speechsdk/module/net/utils/a;->a(Ljava/io/File;)[B

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/io/File;)[B
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/16 p1, 0x400

    :try_start_1
    new-array v2, p1, [B

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    :try_start_2
    invoke-virtual {v1, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result p1

    const/4 v4, -0x1

    if-eq p1, v4, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4, p1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    :try_start_4
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_2
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object v3, v0

    goto :goto_3

    :catch_3
    move-exception p1

    move-object v3, v0

    goto :goto_1

    :catchall_2
    move-exception p1

    move-object v3, v0

    goto :goto_4

    :catch_4
    move-exception p1

    move-object v1, v0

    move-object v3, v1

    :goto_1
    :try_start_5
    const-string v2, "DH"

    const-string v4, "read or parse error"

    invoke-static {v2, v4, p1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v1, :cond_1

    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_2

    :catch_5
    nop

    :cond_1
    :goto_2
    if-eqz v3, :cond_2

    :try_start_7
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    :catch_6
    :cond_2
    return-object v0

    :goto_3
    move-object v0, v1

    :goto_4
    if-eqz v0, :cond_3

    :try_start_8
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_5

    :catch_7
    nop

    :cond_3
    :goto_5
    if-eqz v3, :cond_4

    :try_start_9
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    :catch_8
    :cond_4
    throw p1
.end method

.method public static b()Lcom/vivo/speechsdk/module/net/utils/a;
    .locals 2

    sget-object v0, Lcom/vivo/speechsdk/module/net/utils/a;->p:Lcom/vivo/speechsdk/module/net/utils/a;

    if-nez v0, :cond_1

    const-class v0, Lcom/vivo/speechsdk/module/net/utils/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/vivo/speechsdk/module/net/utils/a;->p:Lcom/vivo/speechsdk/module/net/utils/a;

    if-nez v1, :cond_0

    new-instance v1, Lcom/vivo/speechsdk/module/net/utils/a;

    invoke-direct {v1}, Lcom/vivo/speechsdk/module/net/utils/a;-><init>()V

    sput-object v1, Lcom/vivo/speechsdk/module/net/utils/a;->p:Lcom/vivo/speechsdk/module/net/utils/a;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/vivo/speechsdk/module/net/utils/a;->p:Lcom/vivo/speechsdk/module/net/utils/a;

    return-object v0
.end method

.method static synthetic b(Lcom/vivo/speechsdk/module/net/utils/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/vivo/speechsdk/module/net/utils/a;->a()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/vivo/speechsdk/module/net/utils/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/utils/a;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string p1, "DH"

    const-string p3, "ctx is null when getDomain"

    invoke-static {p1, p3}, Lcom/vivo/speechsdk/common/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p2

    :cond_0
    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "DH"

    const-string p3, "key is empty"

    invoke-static {p1, p3}, Lcom/vivo/speechsdk/common/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p2

    :cond_1
    if-nez p3, :cond_2

    :try_start_2
    iget-object p3, p0, Lcom/vivo/speechsdk/module/net/utils/a;->b:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    :cond_2
    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/utils/a;->c:Ljava/util/Map;

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vivo/speechsdk/module/net/utils/a;->c:Ljava/util/Map;

    :cond_3
    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/utils/a;->c:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Create Repo List By packageName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",key:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DH"

    invoke-static {v1, v0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-boolean v1, Lcom/vivo/speechsdk/module/net/utils/a;->o:Z

    if-eqz v1, :cond_4

    new-instance v1, Lcom/vivo/speechsdk/module/net/utils/a$f;

    invoke-direct {v1, p0, p3}, Lcom/vivo/speechsdk/module/net/utils/a$f;-><init>(Lcom/vivo/speechsdk/module/net/utils/a;Ljava/lang/String;)V

    :goto_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    new-instance v1, Lcom/vivo/speechsdk/module/net/utils/a$e;

    invoke-direct {v1, p0, p3}, Lcom/vivo/speechsdk/module/net/utils/a$e;-><init>(Lcom/vivo/speechsdk/module/net/utils/a;Ljava/lang/String;)V

    goto :goto_0

    :goto_1
    new-instance v1, Lcom/vivo/speechsdk/module/net/utils/a$d;

    invoke-direct {v1, p0, p3}, Lcom/vivo/speechsdk/module/net/utils/a$d;-><init>(Lcom/vivo/speechsdk/module/net/utils/a;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/vivo/speechsdk/module/net/utils/a;->c:Ljava/util/Map;

    invoke-interface {v1, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    invoke-direct {p0, p1, v0}, Lcom/vivo/speechsdk/module/net/utils/a;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_7

    const-string p3, ""

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p3, :cond_6

    goto :goto_2

    :cond_6
    move-object p2, p1

    :cond_7
    :goto_2
    monitor-exit p0

    return-object p2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/vivo/speechsdk/module/net/utils/a;->a(Landroid/content/Context;ZZ)V

    return-void
.end method

.method public a(Landroid/content/Context;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/vivo/speechsdk/module/net/utils/a;->a(Landroid/content/Context;ZZ)V

    return-void
.end method

.method public a(Landroid/content/Context;ZZ)V
    .locals 2

    sput-boolean p3, Lcom/vivo/speechsdk/module/net/utils/a;->o:Z

    const-string p3, "DH"

    if-nez p1, :cond_0

    const-string p1, "ctx is null when init"

    invoke-static {p3, p1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    if-lt v0, v1, :cond_1

    invoke-static {p1}, Lcom/iflytek/msc/a;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    :cond_1
    iput-object p1, p0, Lcom/vivo/speechsdk/module/net/utils/a;->b:Landroid/content/Context;

    if-eqz p2, :cond_3

    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/utils/a;->a:Lcom/vivo/speechsdk/module/net/utils/a$b;

    if-nez p1, :cond_2

    new-instance p1, Lcom/vivo/speechsdk/module/net/utils/a$b;

    invoke-direct {p1, p0}, Lcom/vivo/speechsdk/module/net/utils/a$b;-><init>(Lcom/vivo/speechsdk/module/net/utils/a;)V

    iput-object p1, p0, Lcom/vivo/speechsdk/module/net/utils/a;->a:Lcom/vivo/speechsdk/module/net/utils/a$b;

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object p2, p0, Lcom/vivo/speechsdk/module/net/utils/a;->b:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unregisterReceiver fatal! "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string p2, "com.vivo.domainsync.action.DOMAINS_UPDATE"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/vivo/speechsdk/module/net/utils/a;->b:Landroid/content/Context;

    iget-object p3, p0, Lcom/vivo/speechsdk/module/net/utils/a;->a:Lcom/vivo/speechsdk/module/net/utils/a$b;

    invoke-virtual {p2, p3, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_3
    return-void
.end method
