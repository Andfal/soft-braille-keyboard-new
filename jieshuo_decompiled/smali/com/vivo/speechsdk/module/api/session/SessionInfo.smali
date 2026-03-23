.class public Lcom/vivo/speechsdk/module/api/session/SessionInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mRequestId:Ljava/lang/String;

.field public mRequestMode:I

.field public mSaveAudioFormat:Ljava/lang/String;

.field public mSpeaker:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/vivo/speechsdk/module/api/session/SessionInfo;->mRequestId:Ljava/lang/String;

    iput-object v0, p0, Lcom/vivo/speechsdk/module/api/session/SessionInfo;->mSpeaker:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/vivo/speechsdk/module/api/session/SessionInfo;->mRequestMode:I

    iput-object v0, p0, Lcom/vivo/speechsdk/module/api/session/SessionInfo;->mSaveAudioFormat:Ljava/lang/String;

    return-void
.end method
