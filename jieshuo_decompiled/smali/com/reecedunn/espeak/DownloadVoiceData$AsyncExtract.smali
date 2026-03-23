.class Lcom/reecedunn/espeak/DownloadVoiceData$AsyncExtract;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/reecedunn/espeak/DownloadVoiceData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AsyncExtract"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Lcom/reecedunn/espeak/DownloadVoiceData$ExtractProgress;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mOutput:Ljava/io/File;

.field private final mProgress:Landroid/widget/ProgressBar;

.field private final mRawResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/io/File;Landroid/widget/ProgressBar;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/reecedunn/espeak/DownloadVoiceData$AsyncExtract;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/reecedunn/espeak/DownloadVoiceData$AsyncExtract;->mRawResId:I

    iput-object p3, p0, Lcom/reecedunn/espeak/DownloadVoiceData$AsyncExtract;->mOutput:Ljava/io/File;

    iput-object p4, p0, Lcom/reecedunn/espeak/DownloadVoiceData$AsyncExtract;->mProgress:Landroid/widget/ProgressBar;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 10

    iget-object p1, p0, Lcom/reecedunn/espeak/DownloadVoiceData$AsyncExtract;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/reecedunn/espeak/CheckVoiceData;->getDataPath(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Lcom/reecedunn/espeak/FileUtils;->rmdir(Ljava/io/File;)V

    iget-object p1, p0, Lcom/reecedunn/espeak/DownloadVoiceData$AsyncExtract;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget v0, p0, Lcom/reecedunn/espeak/DownloadVoiceData$AsyncExtract;->mRawResId:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1

    new-instance v0, Ljava/util/zip/ZipInputStream;

    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->close()V

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    iget-object p1, p0, Lcom/reecedunn/espeak/DownloadVoiceData$AsyncExtract;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget v0, p0, Lcom/reecedunn/espeak/DownloadVoiceData$AsyncExtract;->mRawResId:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1

    new-instance v0, Ljava/util/zip/ZipInputStream;

    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v3}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_2
    new-instance v3, Lcom/reecedunn/espeak/DownloadVoiceData$ExtractProgress;

    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result p1

    invoke-direct {v3, p1}, Lcom/reecedunn/espeak/DownloadVoiceData$ExtractProgress;-><init>(I)V

    const/4 p1, 0x1

    new-array v4, p1, [Lcom/reecedunn/espeak/DownloadVoiceData$ExtractProgress;

    aput-object v3, v4, v1

    invoke-virtual {p0, v4}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    iput v2, v3, Lcom/reecedunn/espeak/DownloadVoiceData$ExtractProgress;->total:I

    new-array v2, p1, [Lcom/reecedunn/espeak/DownloadVoiceData$ExtractProgress;

    aput-object v3, v2, v1

    invoke-virtual {p0, v2}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    iput p1, v3, Lcom/reecedunn/espeak/DownloadVoiceData$ExtractProgress;->state:I

    const v2, 0xfa000

    new-array v2, v2, [B

    const/4 v4, 0x0

    :goto_1
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v5

    const/4 v6, -0x1

    if-nez v5, :cond_3

    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v5

    if-eqz v5, :cond_3

    add-int/2addr v4, p1

    iput v4, v3, Lcom/reecedunn/espeak/DownloadVoiceData$ExtractProgress;->progress:I

    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lcom/reecedunn/espeak/DownloadVoiceData$AsyncExtract;->mOutput:Ljava/io/File;

    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v7, v3, Lcom/reecedunn/espeak/DownloadVoiceData$ExtractProgress;->file:Ljava/io/File;

    new-array v7, p1, [Lcom/reecedunn/espeak/DownloadVoiceData$ExtractProgress;

    aput-object v3, v7, v1

    invoke-virtual {p0, v7}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, v3, Lcom/reecedunn/espeak/DownloadVoiceData$ExtractProgress;->file:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    iget-object v5, v3, Lcom/reecedunn/espeak/DownloadVoiceData$ExtractProgress;->file:Ljava/io/File;

    :goto_2
    invoke-static {v5}, Lcom/reecedunn/espeak/FileUtils;->chmod(Ljava/io/File;)V

    goto :goto_1

    :cond_1
    iget-object v5, v3, Lcom/reecedunn/espeak/DownloadVoiceData$ExtractProgress;->file:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    new-instance v5, Ljava/io/FileOutputStream;

    iget-object v7, v3, Lcom/reecedunn/espeak/DownloadVoiceData$ExtractProgress;->file:Ljava/io/File;

    invoke-direct {v5, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_3
    :try_start_3
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v7

    if-eq v7, v6, :cond_2

    invoke-virtual {v5, v2, v1, v7}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :cond_2
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    iget-object v5, v3, Lcom/reecedunn/espeak/DownloadVoiceData$ExtractProgress;->file:Ljava/io/File;

    goto :goto_2

    :catchall_0
    move-exception p1

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    throw p1

    :cond_3
    iget-object p1, p0, Lcom/reecedunn/espeak/DownloadVoiceData$AsyncExtract;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f060011

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Lcom/reecedunn/espeak/FileUtils;->read(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/reecedunn/espeak/DownloadVoiceData$AsyncExtract;->mOutput:Ljava/io/File;

    const-string v4, "espeak-ng-data/version"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2, p1}, Lcom/reecedunn/espeak/FileUtils;->write(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_4
    return-object p1

    :catchall_1
    move-exception p1

    goto :goto_6

    :catch_3
    move-exception p1

    :try_start_6
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_5

    :catch_4
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :goto_6
    :try_start_8
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_7

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_7
    throw p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/reecedunn/espeak/DownloadVoiceData$AsyncExtract;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected varargs onProgressUpdate([Lcom/reecedunn/espeak/DownloadVoiceData$ExtractProgress;)V
    .locals 1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    iget v0, p1, Lcom/reecedunn/espeak/DownloadVoiceData$ExtractProgress;->state:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/reecedunn/espeak/DownloadVoiceData$AsyncExtract;->mProgress:Landroid/widget/ProgressBar;

    iget p1, p1, Lcom/reecedunn/espeak/DownloadVoiceData$ExtractProgress;->total:I

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/reecedunn/espeak/DownloadVoiceData$AsyncExtract;->mProgress:Landroid/widget/ProgressBar;

    iget p1, p1, Lcom/reecedunn/espeak/DownloadVoiceData$ExtractProgress;->progress:I

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    :goto_0
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Lcom/reecedunn/espeak/DownloadVoiceData$ExtractProgress;

    invoke-virtual {p0, p1}, Lcom/reecedunn/espeak/DownloadVoiceData$AsyncExtract;->onProgressUpdate([Lcom/reecedunn/espeak/DownloadVoiceData$ExtractProgress;)V

    return-void
.end method
