.class public Lcom/reecedunn/espeak/FileUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static chmod(Ljava/io/File;)V
    .locals 3

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/system/bin/chmod 755 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static read(Ljava/io/File;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-int p0, v1

    invoke-static {v0, p0}, Lcom/reecedunn/espeak/FileUtils;->readByteArray(Ljava/io/InputStream;I)Ljava/io/ByteArrayOutputStream;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static read(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v0

    invoke-static {p0, v0}, Lcom/reecedunn/espeak/FileUtils;->readByteArray(Ljava/io/InputStream;I)Ljava/io/ByteArrayOutputStream;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static read(Ljava/io/InputStream;I)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/reecedunn/espeak/FileUtils;->readByteArray(Ljava/io/InputStream;I)Ljava/io/ByteArrayOutputStream;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static readBinary(Ljava/io/File;)[B
    .locals 3

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-int p0, v1

    invoke-static {v0, p0}, Lcom/reecedunn/espeak/FileUtils;->readByteArray(Ljava/io/InputStream;I)Ljava/io/ByteArrayOutputStream;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static readBinary(Ljava/io/InputStream;)[B
    .locals 1

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v0

    invoke-static {p0, v0}, Lcom/reecedunn/espeak/FileUtils;->readByteArray(Ljava/io/InputStream;I)Ljava/io/ByteArrayOutputStream;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static readBinary(Ljava/io/InputStream;I)[B
    .locals 0

    invoke-static {p0, p1}, Lcom/reecedunn/espeak/FileUtils;->readByteArray(Ljava/io/InputStream;I)Ljava/io/ByteArrayOutputStream;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method private static readByteArray(Ljava/io/InputStream;I)Ljava/io/ByteArrayOutputStream;
    .locals 2

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    int-to-byte p1, p1

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static rmdir(Ljava/io/File;)V
    .locals 4

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v2}, Lcom/reecedunn/espeak/FileUtils;->rmdir(Ljava/io/File;)V

    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public static write(Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p0, p1}, Lcom/reecedunn/espeak/FileUtils;->write(Ljava/io/File;[B)V

    return-void
.end method

.method public static write(Ljava/io/File;[B)V
    .locals 2

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    :try_start_0
    array-length p0, p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p0}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    throw p0
.end method
