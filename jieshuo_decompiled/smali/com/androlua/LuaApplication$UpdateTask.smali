.class Lcom/androlua/LuaApplication$UpdateTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androlua/LuaApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androlua/LuaApplication;


# direct methods
.method private constructor <init>(Lcom/androlua/LuaApplication;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaApplication$UpdateTask;->this$0:Lcom/androlua/LuaApplication;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/androlua/LuaApplication;Lcom/androlua/q;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/androlua/LuaApplication$UpdateTask;-><init>(Lcom/androlua/LuaApplication;)V

    return-void
.end method

.method private onUpdate()V
    .locals 4

    const-string v0, "aly"

    const-string v1, "lua"

    const-string v2, "assets"

    :try_start_0
    iget-object v3, p0, Lcom/androlua/LuaApplication$UpdateTask;->this$0:Lcom/androlua/LuaApplication;

    iget-object v3, v3, Lcom/androlua/LuaApplication;->localDir:Ljava/lang/String;

    invoke-direct {p0, v2, v1, v3}, Lcom/androlua/LuaApplication$UpdateTask;->unApk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/androlua/LuaApplication$UpdateTask;->this$0:Lcom/androlua/LuaApplication;

    iget-object v3, v3, Lcom/androlua/LuaApplication;->localDir:Ljava/lang/String;

    invoke-direct {p0, v2, v0, v3}, Lcom/androlua/LuaApplication$UpdateTask;->unApk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/androlua/LuaApplication$UpdateTask;->this$0:Lcom/androlua/LuaApplication;

    iget-object v3, v3, Lcom/androlua/LuaApplication;->localDir:Ljava/lang/String;

    invoke-direct {p0, v2, v0, v3}, Lcom/androlua/LuaApplication$UpdateTask;->unApk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "html"

    iget-object v3, p0, Lcom/androlua/LuaApplication$UpdateTask;->this$0:Lcom/androlua/LuaApplication;

    iget-object v3, v3, Lcom/androlua/LuaApplication;->localDir:Ljava/lang/String;

    invoke-direct {p0, v2, v0, v3}, Lcom/androlua/LuaApplication$UpdateTask;->unApk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/androlua/LuaApplication$UpdateTask;->this$0:Lcom/androlua/LuaApplication;

    iget-object v0, v0, Lcom/androlua/LuaApplication;->luaMdDir:Ljava/lang/String;

    invoke-direct {p0, v1, v1, v0}, Lcom/androlua/LuaApplication$UpdateTask;->unApk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/androlua/LuaApplication$UpdateTask;->sendMsg(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private sendMsg(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private unApk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-instance v1, Ljava/util/zip/ZipFile;

    iget-object v2, p0, Lcom/androlua/LuaApplication$UpdateTask;->this$0:Lcom/androlua/LuaApplication;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/zip/ZipEntry;

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v4, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    :try_start_0
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance v3, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    goto :goto_0

    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_5

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    move-result v8

    if-eqz v8, :cond_4

    goto :goto_1

    :cond_4
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "create file "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " fail"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_5
    :goto_1
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v8

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v10

    cmp-long v5, v8, v10

    if-nez v5, :cond_6

    invoke-static {v7}, Lcom/androlua/LuaUtil;->getFileMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v7

    invoke-static {v7}, Lcom/androlua/LuaUtil;->getFileMD5(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    goto/16 :goto_0

    :cond_6
    new-instance v5, Ljava/io/FileOutputStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v3

    const/16 v4, 0x1f40

    new-array v4, v4, [B

    :goto_2
    invoke-virtual {v3, v4}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_7

    const/4 v7, 0x0

    invoke-virtual {v5, v4, v7, v6}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_2

    :cond_7
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V

    return-void
.end method


# virtual methods
.method protected doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lcom/androlua/LuaApplication$UpdateTask;->onUpdate()V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
