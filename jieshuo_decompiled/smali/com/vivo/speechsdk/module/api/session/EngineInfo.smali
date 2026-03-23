.class public Lcom/vivo/speechsdk/module/api/session/EngineInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public bizName:Ljava/lang/String;

.field public engine_id:Ljava/lang/String;

.field public ent:I

.field public errorCode:I

.field public initEndTime:J

.field public initStartTime:J

.field public mPkg:Ljava/lang/String;

.field public mdName:Ljava/lang/String;

.field public mdVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/vivo/speechsdk/module/api/session/EngineInfo;->bizName:Ljava/lang/String;

    iput-object v0, p0, Lcom/vivo/speechsdk/module/api/session/EngineInfo;->engine_id:Ljava/lang/String;

    iput-object v0, p0, Lcom/vivo/speechsdk/module/api/session/EngineInfo;->mdName:Ljava/lang/String;

    iput-object v0, p0, Lcom/vivo/speechsdk/module/api/session/EngineInfo;->mdVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/vivo/speechsdk/module/api/session/EngineInfo;->mPkg:Ljava/lang/String;

    return-void
.end method
