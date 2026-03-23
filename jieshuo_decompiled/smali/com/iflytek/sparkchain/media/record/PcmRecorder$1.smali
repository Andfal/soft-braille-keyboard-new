.class Lcom/iflytek/sparkchain/media/record/PcmRecorder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/iflytek/sparkchain/media/record/PcmRecorder$startFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/sparkchain/media/record/PcmRecorder;->init(IISII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field isInit:Z

.field final synthetic this$0:Lcom/iflytek/sparkchain/media/record/PcmRecorder;


# direct methods
.method constructor <init>(Lcom/iflytek/sparkchain/media/record/PcmRecorder;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder$1;->this$0:Lcom/iflytek/sparkchain/media/record/PcmRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder$1;->isInit:Z

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    iget-boolean v0, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder$1;->isInit:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder$1;->this$0:Lcom/iflytek/sparkchain/media/record/PcmRecorder;

    invoke-virtual {v0}, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->startRecording()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder$1;->isInit:Z

    :cond_0
    return-void
.end method
