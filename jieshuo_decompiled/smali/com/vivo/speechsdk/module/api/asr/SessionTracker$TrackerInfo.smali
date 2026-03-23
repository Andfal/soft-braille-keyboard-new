.class Lcom/vivo/speechsdk/module/api/asr/SessionTracker$TrackerInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/speechsdk/module/api/asr/SessionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TrackerInfo"
.end annotation


# instance fields
.field final synthetic a:Lcom/vivo/speechsdk/module/api/asr/SessionTracker;

.field public volatile mDur:I

.field public volatile mErrorCode:I

.field public volatile mReuse:I

.field public volatile mStartConnectTime:J

.field public volatile mStep:I

.field public volatile mSubmitted:Z


# direct methods
.method private constructor <init>(Lcom/vivo/speechsdk/module/api/asr/SessionTracker;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/module/api/asr/SessionTracker$TrackerInfo;->a:Lcom/vivo/speechsdk/module/api/asr/SessionTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/vivo/speechsdk/module/api/asr/SessionTracker$TrackerInfo;->mStep:I

    iput-boolean p1, p0, Lcom/vivo/speechsdk/module/api/asr/SessionTracker$TrackerInfo;->mSubmitted:Z

    iput p1, p0, Lcom/vivo/speechsdk/module/api/asr/SessionTracker$TrackerInfo;->mErrorCode:I

    iput p1, p0, Lcom/vivo/speechsdk/module/api/asr/SessionTracker$TrackerInfo;->mReuse:I

    iput p1, p0, Lcom/vivo/speechsdk/module/api/asr/SessionTracker$TrackerInfo;->mDur:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/speechsdk/module/api/asr/SessionTracker;Lcom/vivo/speechsdk/module/api/asr/SessionTracker$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/vivo/speechsdk/module/api/asr/SessionTracker$TrackerInfo;-><init>(Lcom/vivo/speechsdk/module/api/asr/SessionTracker;)V

    return-void
.end method
