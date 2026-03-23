.class Lcom/reecedunn/espeak/DownloadVoiceData$1;
.super Lcom/reecedunn/espeak/DownloadVoiceData$AsyncExtract;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/reecedunn/espeak/DownloadVoiceData;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/reecedunn/espeak/DownloadVoiceData;


# direct methods
.method constructor <init>(Lcom/reecedunn/espeak/DownloadVoiceData;Landroid/content/Context;ILjava/io/File;Landroid/widget/ProgressBar;)V
    .locals 0

    iput-object p1, p0, Lcom/reecedunn/espeak/DownloadVoiceData$1;->this$0:Lcom/reecedunn/espeak/DownloadVoiceData;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/reecedunn/espeak/DownloadVoiceData$AsyncExtract;-><init>(Landroid/content/Context;ILjava/io/File;Landroid/widget/ProgressBar;)V

    return-void
.end method


# virtual methods
.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.reecedunn.espeak.LANGUAGES_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/reecedunn/espeak/DownloadVoiceData$1;->this$0:Lcom/reecedunn/espeak/DownloadVoiceData;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :goto_0
    iget-object v0, p0, Lcom/reecedunn/espeak/DownloadVoiceData$1;->this$0:Lcom/reecedunn/espeak/DownloadVoiceData;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setResult(I)V

    iget-object p1, p0, Lcom/reecedunn/espeak/DownloadVoiceData$1;->this$0:Lcom/reecedunn/espeak/DownloadVoiceData;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/reecedunn/espeak/DownloadVoiceData$1;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
