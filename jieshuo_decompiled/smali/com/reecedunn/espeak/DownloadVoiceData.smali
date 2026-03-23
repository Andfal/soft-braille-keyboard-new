.class public Lcom/reecedunn/espeak/DownloadVoiceData;
.super Landroid/app/Activity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/reecedunn/espeak/DownloadVoiceData$AsyncExtract;,
        Lcom/reecedunn/espeak/DownloadVoiceData$ExtractProgress;
    }
.end annotation


# static fields
.field public static final BROADCAST_LANGUAGES_UPDATED:Ljava/lang/String; = "com.reecedunn.espeak.LANGUAGES_UPDATED"

.field private static final PROGRESS_EXTRACTING:I = 0x1

.field private static final PROGRESS_STARTING:I


# instance fields
.field private mAsyncExtract:Lcom/reecedunn/espeak/DownloadVoiceData$AsyncExtract;

.field private mProgress:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/high16 p1, 0x7f050000

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    const p1, 0x7f04002a

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/reecedunn/espeak/DownloadVoiceData;->mProgress:Landroid/widget/ProgressBar;

    invoke-static {p0}, Lcom/reecedunn/espeak/CheckVoiceData;->getDataPath(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    new-instance p1, Lcom/reecedunn/espeak/DownloadVoiceData$1;

    const v3, 0x7f060010

    iget-object v5, p0, Lcom/reecedunn/espeak/DownloadVoiceData;->mProgress:Landroid/widget/ProgressBar;

    move-object v0, p1

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/reecedunn/espeak/DownloadVoiceData$1;-><init>(Lcom/reecedunn/espeak/DownloadVoiceData;Landroid/content/Context;ILjava/io/File;Landroid/widget/ProgressBar;)V

    iput-object p1, p0, Lcom/reecedunn/espeak/DownloadVoiceData;->mAsyncExtract:Lcom/reecedunn/espeak/DownloadVoiceData$AsyncExtract;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    const p1, 0x7f040022

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/reecedunn/espeak/DownloadVoiceData;->mAsyncExtract:Lcom/reecedunn/espeak/DownloadVoiceData$AsyncExtract;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    return-void
.end method
