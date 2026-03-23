.class public Lcom/vivo/speechsdk/module/session/d/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/vivo/speechsdk/module/api/session/SessionInfo;

.field public b:Lcom/vivo/speechsdk/module/api/session/EngineInfo;

.field public c:J

.field public d:J

.field public e:J

.field public f:J

.field public g:J

.field public h:J

.field public i:J

.field public j:J

.field public k:J

.field public l:J

.field public m:I

.field public n:I

.field public o:I

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field public r:Lcom/vivo/speechsdk/module/api/tts/AudioInfo;

.field public s:Lcom/vivo/speechsdk/b/h/d;

.field public t:I

.field public u:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/vivo/speechsdk/module/api/session/SessionInfo;

    invoke-direct {v0}, Lcom/vivo/speechsdk/module/api/session/SessionInfo;-><init>()V

    iput-object v0, p0, Lcom/vivo/speechsdk/module/session/d/b;->a:Lcom/vivo/speechsdk/module/api/session/SessionInfo;

    new-instance v0, Lcom/vivo/speechsdk/module/api/session/EngineInfo;

    invoke-direct {v0}, Lcom/vivo/speechsdk/module/api/session/EngineInfo;-><init>()V

    iput-object v0, p0, Lcom/vivo/speechsdk/module/session/d/b;->b:Lcom/vivo/speechsdk/module/api/session/EngineInfo;

    return-void
.end method
