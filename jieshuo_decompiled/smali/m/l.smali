.class public final Lm/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm/l$b;,
        Lm/l$a;,
        Lm/l$c;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lm/q<",
            "*>;",
            "Lm/l$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lm/l;->a:Ljava/util/Map;

    return-void
.end method

.method private f(Ljava/io/File;Ljava/io/File;Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;
    .locals 8

    const-class v0, Ljava/lang/String;

    :try_start_0
    const-string v1, "dalvik.system.DexClassLoader"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x4

    new-array v3, v2, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v5, 0x1

    aput-object v0, v3, v5

    const/4 v6, 0x2

    aput-object v0, v3, v6

    const-class v0, Ljava/lang/ClassLoader;

    const/4 v7, 0x3

    aput-object v0, v3, v7

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v4

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v5

    const/4 p1, 0x0

    aput-object p1, v1, v6

    aput-object p3, v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ClassLoader;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :catch_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :catch_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :catch_3
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_4
    move-exception p1

    new-instance p2, Ljava/lang/UnsupportedOperationException;

    const-string p3, "load() requires a Dalvik VM"

    invoke-direct {p2, p3, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private g()Ljava/lang/String;
    .locals 8

    iget-object v0, p0, Lm/l;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v2, v0, [I

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lm/q;

    invoke-direct {p0, v5}, Lm/l;->h(Lm/q;)Lm/l$c;

    move-result-object v5

    invoke-static {v5}, Lm/l$c;->c(Lm/l$c;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-static {v5}, Lm/l$c;->d(Lm/l$c;)Lm/q;

    move-result-object v7

    if-eqz v7, :cond_0

    add-int/lit8 v7, v4, 0x1

    invoke-static {v5}, Lm/l$c;->d(Lm/l$c;)Lm/q;

    move-result-object v5

    invoke-virtual {v5}, Lm/q;->hashCode()I

    move-result v5

    mul-int/lit8 v5, v5, 0x1f

    invoke-interface {v6}, Ljava/util/Set;->hashCode()I

    move-result v6

    add-int/2addr v5, v6

    aput v5, v2, v4

    move v4, v7

    goto :goto_0

    :cond_1
    invoke-static {v2}, Ljava/util/Arrays;->sort([I)V

    const/4 v1, 0x1

    :goto_1
    if-ge v3, v0, :cond_2

    aget v4, v2, v3

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Generated_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ".jar"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private h(Lm/q;)Lm/l$c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm/q<",
            "*>;)",
            "Lm/l$c;"
        }
    .end annotation

    iget-object v0, p0, Lm/l;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm/l$c;

    if-nez v0, :cond_0

    new-instance v0, Lm/l$c;

    invoke-direct {v0, p1}, Lm/l$c;-><init>(Lm/q;)V

    iget-object v1, p0, Lm/l;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a(Lm/p;I)Lm/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm/p<",
            "**>;I)",
            "Lm/b;"
        }
    .end annotation

    iget-object v0, p1, Lm/p;->a:Lm/q;

    invoke-direct {p0, v0}, Lm/l;->h(Lm/q;)Lm/l$c;

    move-result-object v0

    invoke-static {v0}, Lm/l$c;->c(Lm/l$c;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    and-int/lit8 v1, p2, -0x40

    if-nez v1, :cond_2

    and-int/lit8 v1, p2, 0x20

    if-eqz v1, :cond_0

    and-int/lit8 p2, p2, -0x21

    const/high16 v1, 0x20000

    or-int/2addr p2, v1

    :cond_0
    invoke-virtual {p1}, Lm/p;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    const/high16 v1, 0x10000

    or-int/2addr p2, v1

    :cond_1
    new-instance v1, Lm/l$b;

    invoke-direct {v1, p1, p2}, Lm/l$b;-><init>(Lm/p;I)V

    invoke-static {v0}, Lm/l$c;->c(Lm/l$c;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lm/l$b;->a(Lm/l$b;)Lm/b;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected flag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "already declared: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public b(Lm/m;ILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm/m<",
            "**>;I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    iget-object v0, p1, Lm/m;->a:Lm/q;

    invoke-direct {p0, v0}, Lm/l;->h(Lm/q;)Lm/l$c;

    move-result-object v0

    invoke-static {v0}, Lm/l$c;->b(Lm/l$c;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    and-int/lit16 v1, p2, -0xe0

    if-nez v1, :cond_2

    and-int/lit8 v1, p2, 0x8

    if-nez v1, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "staticValue is non-null, but field is not static"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    new-instance v1, Lm/l$a;

    invoke-direct {v1, p1, p2, p3}, Lm/l$a;-><init>(Lm/m;ILjava/lang/Object;)V

    invoke-static {v0}, Lm/l$c;->b(Lm/l$c;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected flag: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "already declared: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public varargs c(Lm/q;Ljava/lang/String;ILm/q;[Lm/q;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm/q<",
            "*>;",
            "Ljava/lang/String;",
            "I",
            "Lm/q<",
            "*>;[",
            "Lm/q<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lm/l;->h(Lm/q;)Lm/l$c;

    move-result-object v0

    and-int/lit16 v1, p3, -0x412

    if-nez v1, :cond_1

    invoke-static {v0}, Lm/l$c;->a(Lm/l$c;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x1

    invoke-static {v0, p1}, Lm/l$c;->e(Lm/l$c;Z)V

    invoke-static {v0, p3}, Lm/l$c;->f(Lm/l$c;I)V

    invoke-static {v0, p4}, Lm/l$c;->i(Lm/l$c;Lm/q;)V

    invoke-static {v0, p2}, Lm/l$c;->h(Lm/l$c;Ljava/lang/String;)V

    new-instance p1, Lm/r;

    invoke-direct {p1, p5}, Lm/r;-><init>([Lm/q;)V

    invoke-static {v0, p1}, Lm/l$c;->g(Lm/l$c;Lm/r;)V

    return-void

    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "already declared: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unexpected flag: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d()[B
    .locals 3

    new-instance v0, Ln/b;

    invoke-direct {v0}, Ln/b;-><init>()V

    const/16 v1, 0xd

    iput v1, v0, Ln/b;->a:I

    new-instance v1, Lq/m;

    invoke-direct {v1, v0}, Lq/m;-><init>(Ln/b;)V

    iget-object v0, p0, Lm/l;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lm/l$c;

    invoke-virtual {v2}, Lm/l$c;->j()Lq/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lq/m;->a(Lq/h;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, v0, v2}, Lq/m;->w(Ljava/io/Writer;Z)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public e(Ljava/lang/ClassLoader;Ljava/io/File;)Ljava/lang/ClassLoader;
    .locals 6

    if-nez p2, :cond_2

    const-string p2, "dexmaker.dexcache"

    invoke-static {p2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object p2, v0

    goto :goto_0

    :cond_0
    new-instance p2, Lm/a;

    invoke-direct {p2}, Lm/a;-><init>()V

    invoke-virtual {p2}, Lm/a;->c()Ljava/io/File;

    move-result-object p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "dexcache == null (and no default could be found; consider setting the \'dexmaker.dexcache\' system property)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lm/l;->g()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, v0, p2, p1}, Lm/l;->f(Ljava/io/File;Ljava/io/File;Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-virtual {p0}, Lm/l;->d()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    new-instance v2, Ljava/util/jar/JarOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/util/jar/JarOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-instance v3, Ljava/util/jar/JarEntry;

    const-string v4, "classes.dex"

    invoke-direct {v3, v4}, Ljava/util/jar/JarEntry;-><init>(Ljava/lang/String;)V

    array-length v4, v1

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/util/zip/ZipEntry;->setSize(J)V

    invoke-virtual {v2, v3}, Ljava/util/jar/JarOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    invoke-virtual {v2, v1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    invoke-direct {p0, v0, p2, p1}, Lm/l;->f(Ljava/io/File;Ljava/io/File;Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object p1

    return-object p1
.end method
