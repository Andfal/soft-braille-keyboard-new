.class public Lcom/iflytek/idata/extension/IFlyCollectorExt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "IFlyCollectorExt"

.field private static volatile instance:Lcom/iflytek/idata/extension/IFlyCollectorExt;


# instance fields
.field private c:Ljava/lang/Object;

.field private clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private volatile e:Ljava/lang/String;

.field private volatile f:Z

.field private volatile g:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "IFlyCollectorExt"

    const-string v0, "IFlyCollectorExt: \u8bbe\u7f6e\u53d8\u91cfz"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/iflytek/idata/extension/IFlyCollectorExt;->a(Z)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/iflytek/idata/extension/IFlyCollectorExt;
    .locals 2

    const-string v0, "IFlyCollectorExt"

    const-string v1, "a: \u83b7\u53d6\u5b9e\u4f8b"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/iflytek/idata/extension/IFlyCollectorExt;->instance:Lcom/iflytek/idata/extension/IFlyCollectorExt;

    if-nez v0, :cond_1

    const-class v0, Lcom/iflytek/idata/extension/IFlyCollectorExt;

    monitor-enter v0

    :try_start_0
    sget-object v0, Lcom/iflytek/idata/extension/IFlyCollectorExt;->instance:Lcom/iflytek/idata/extension/IFlyCollectorExt;

    if-nez v0, :cond_0

    new-instance v0, Lcom/iflytek/idata/extension/IFlyCollectorExt;

    invoke-direct {v0, p0}, Lcom/iflytek/idata/extension/IFlyCollectorExt;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/iflytek/idata/extension/IFlyCollectorExt;->instance:Lcom/iflytek/idata/extension/IFlyCollectorExt;

    :cond_0
    const-class p0, Lcom/iflytek/idata/extension/IFlyCollectorExt;

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-class v0, Lcom/iflytek/idata/extension/IFlyCollectorExt;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/iflytek/idata/extension/IFlyCollectorExt;->instance:Lcom/iflytek/idata/extension/IFlyCollectorExt;

    return-object p0
.end method

.method private a(Ljava/io/File;)V
    .locals 2

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_2

    array-length v0, p1

    if-gtz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    aget-object v1, p1, v0

    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/iflytek/idata/extension/IFlyCollectorExt;->b(Ljava/io/File;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private a(Z)V
    .locals 0

    return-void
.end method

.method private static b(Ljava/io/File;)V
    .locals 4

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-static {v3}, Lcom/iflytek/idata/extension/IFlyCollectorExt;->b(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method private g()Ljava/lang/String;
    .locals 3

    const-string v0, "IFlyCollectorExt"

    const-string v1, "g: \u83b7\u53d6\u7b2c\u4e00\u4e2a\u6587\u4ef6\u540d\uff0c\u6216\u5220\u9664\u76ee\u5f55"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/iflytek/idata/extension/IFlyCollectorExt;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/idata/extension/IFlyCollectorExt;->c()V

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private native getClass(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 5

    const-string v0, "-1"

    const-string v1, "IFlyCollectorExt"

    const-string v2, "a: \u83b7\u53d6\u7248\u672c\u53f7"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/iflytek/idata/extension/IFlyCollectorExt;->clazz:Ljava/lang/Class;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/iflytek/idata/extension/IFlyCollectorExt;->c:Ljava/lang/Object;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "getVersion"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/idata/extension/IFlyCollectorExt;->c:Ljava/lang/Object;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    :catchall_0
    :cond_1
    :goto_0
    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    const-string v0, "IFlyCollectorExt"

    const-string v1, "a: \u8bbe\u7f6ee"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/iflytek/idata/extension/IFlyCollectorExt;->e:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method b()Ljava/lang/String;
    .locals 3

    const-string v0, "IFlyCollectorExt"

    const-string v1, "b: \u521b\u5efa\u76ee\u5f55"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/iflytek/idata/extension/IFlyCollectorExt;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "iflytek/idata/cache/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    const-string v0, "IFlyCollectorExt"

    const-string v1, "b: \u8bbe\u7f6eg"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/iflytek/idata/extension/IFlyCollectorExt;->g:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method c()V
    .locals 2

    const-string v0, "IFlyCollectorExt"

    const-string v1, "c: \u5220\u9664\u76ee\u5f55"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/iflytek/idata/extension/IFlyCollectorExt;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/iflytek/idata/extension/IFlyCollectorExt;->a(Ljava/io/File;)V

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 2

    const-string v0, "IFlyCollectorExt"

    const-string v1, "d: \u83b7\u53d6d"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iflytek/idata/extension/IFlyCollectorExt;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 2

    const-string v0, "IFlyCollectorExt"

    const-string v1, "e: \u83b7\u53d6e"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iflytek/idata/extension/IFlyCollectorExt;->g:Ljava/lang/String;

    return-object v0
.end method

.method f()[B
    .locals 4

    const-string v0, "IFlyCollectorExt"

    const-string v1, "f: \u83b7\u53d6byte[]\u6570\u636e"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/idata/extension/IFlyCollectorExt;->clazz:Ljava/lang/Class;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/iflytek/idata/extension/IFlyCollectorExt;->c:Ljava/lang/Object;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "getData"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/idata/extension/IFlyCollectorExt;->c:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, [B

    if-eqz v1, :cond_1

    check-cast v0, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method
