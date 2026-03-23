.class public Lcom/vivo/speechsdk/common/utils/FileUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static TAG:Ljava/lang/String; = "FileUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changeFolderPermission(Ljava/io/File;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/String;

    invoke-static {v1, v2}, Lai/onnxruntime/h;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "rwxrwxrwx"

    :try_start_1
    new-array v3, v0, [Ljava/nio/file/LinkOption;

    invoke-static {v1, v3}, Lcom/vivo/speechsdk/common/utils/g;->a(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/util/Set;

    move-result-object v3

    invoke-static {v3}, Lcom/vivo/speechsdk/common/utils/h;->a(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v1, Lcom/vivo/speechsdk/common/utils/FileUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\uff1arwxrwxrwx"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vivo/speechsdk/common/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_1
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-static {}, Lcom/vivo/speechsdk/common/utils/i;->a()Ljava/nio/file/attribute/PosixFilePermission;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/vivo/speechsdk/common/utils/j;->a()Ljava/nio/file/attribute/PosixFilePermission;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/vivo/speechsdk/common/utils/k;->a()Ljava/nio/file/attribute/PosixFilePermission;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/vivo/speechsdk/common/utils/l;->a()Ljava/nio/file/attribute/PosixFilePermission;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/vivo/speechsdk/common/utils/m;->a()Ljava/nio/file/attribute/PosixFilePermission;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/vivo/speechsdk/common/utils/b;->a()Ljava/nio/file/attribute/PosixFilePermission;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/vivo/speechsdk/common/utils/c;->a()Ljava/nio/file/attribute/PosixFilePermission;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/vivo/speechsdk/common/utils/a;->a()Ljava/nio/file/attribute/PosixFilePermission;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/vivo/speechsdk/common/utils/e;->a()Ljava/nio/file/attribute/PosixFilePermission;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {v1, v2}, Lcom/vivo/speechsdk/common/utils/f;->a(Ljava/nio/file/Path;Ljava/util/Set;)Ljava/nio/file/Path;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    sget-object v1, Lcom/vivo/speechsdk/common/utils/FileUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Change folder "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " permission failed."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_2
    :goto_0
    sget-object p0, Lcom/vivo/speechsdk/common/utils/FileUtils;->TAG:Ljava/lang/String;

    const-string v1, "file is null or not exists"

    invoke-static {p0, v1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static changeFolderPermissionFromString(Ljava/io/File;Ljava/lang/String;)V
    .locals 2

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/vivo/speechsdk/common/utils/d;->a(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lai/onnxruntime/h;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/vivo/speechsdk/common/utils/f;->a(Ljava/nio/file/Path;Ljava/util/Set;)Ljava/nio/file/Path;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p1, Lcom/vivo/speechsdk/common/utils/FileUtils;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Change folder "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " permission failed."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    :goto_1
    sget-object p0, Lcom/vivo/speechsdk/common/utils/FileUtils;->TAG:Ljava/lang/String;

    const-string p1, "file is null or not exists"

    invoke-static {p0, p1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static readAssets(Landroid/content/Context;Ljava/lang/String;)[B
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const/4 v1, 0x3

    invoke-virtual {p0, p1, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result p1

    new-array v0, p1, [B

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v0, p0

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v2, v0

    move-object v0, p0

    move-object p0, v2

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    move-object p0, v0

    :goto_0
    :try_start_2
    sget-object v1, Lcom/vivo/speechsdk/common/utils/FileUtils;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v2, v0

    move-object v0, p0

    move-object p0, v2

    :goto_1
    invoke-static {p0}, Lcom/vivo/speechsdk/common/utils/IoUtil;->closeQuietly(Ljava/io/Closeable;)V

    return-object v0

    :goto_2
    invoke-static {v0}, Lcom/vivo/speechsdk/common/utils/IoUtil;->closeQuietly(Ljava/io/Closeable;)V

    throw p1
.end method

.method public static readFile(Ljava/io/File;[BIJ)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "r"

    invoke-direct {v2, p0, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v2, p3, p4}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v2, p1, v0, p2}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, -0x1

    invoke-static {v2}, Lcom/vivo/speechsdk/common/utils/IoUtil;->closeQuietly(Ljava/io/Closeable;)V

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    return p0

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto :goto_1

    :catch_0
    move-exception p0

    move-object v1, v2

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    :goto_0
    :try_start_2
    sget-object p1, Lcom/vivo/speechsdk/common/utils/FileUtils;->TAG:Ljava/lang/String;

    const-string p2, "readFile"

    invoke-static {p1, p2, p0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v1}, Lcom/vivo/speechsdk/common/utils/IoUtil;->closeQuietly(Ljava/io/Closeable;)V

    return v0

    :goto_1
    invoke-static {v1}, Lcom/vivo/speechsdk/common/utils/IoUtil;->closeQuietly(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static readFile(Ljava/io/File;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance p0, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1}, Lcom/vivo/speechsdk/common/utils/IoUtil;->closeQuietly(Ljava/io/Closeable;)V

    return-object p0

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_1

    :catch_0
    move-object v0, v1

    goto :goto_2

    :catchall_1
    move-exception p0

    :goto_1
    invoke-static {v0}, Lcom/vivo/speechsdk/common/utils/IoUtil;->closeQuietly(Ljava/io/Closeable;)V

    throw p0

    :catch_1
    :goto_2
    invoke-static {v0}, Lcom/vivo/speechsdk/common/utils/IoUtil;->closeQuietly(Ljava/io/Closeable;)V

    const-string p0, ""

    return-object p0
.end method

.method public static setFolderPermission(Ljava/io/File;)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/speechsdk/common/utils/FileUtils;->setFolderPermission(Ljava/io/File;)V

    invoke-static {p0}, Lcom/vivo/speechsdk/common/utils/FileUtils;->changeFolderPermission(Ljava/io/File;)Z

    :cond_0
    return-void
.end method
