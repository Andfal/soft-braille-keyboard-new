.class public Lcom/reecedunn/espeak/DownloadVoiceData$ExtractProgress;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/reecedunn/espeak/DownloadVoiceData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExtractProgress"
.end annotation


# instance fields
.field public file:Ljava/io/File;

.field public progress:I

.field public state:I

.field public total:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/reecedunn/espeak/DownloadVoiceData$ExtractProgress;->progress:I

    iput v0, p0, Lcom/reecedunn/espeak/DownloadVoiceData$ExtractProgress;->state:I

    iput p1, p0, Lcom/reecedunn/espeak/DownloadVoiceData$ExtractProgress;->total:I

    return-void
.end method
