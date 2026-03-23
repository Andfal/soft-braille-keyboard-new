.class public Lcom/vivo/speechsdk/module/session/d/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public A:Lcom/vivo/speechsdk/b/h/d;

.field public B:Lcom/vivo/speechsdk/b/h/d;

.field public C:Z

.field public D:Z

.field public E:I

.field public F:I

.field public a:Landroid/os/Bundle;

.field public b:Lcom/vivo/speechsdk/module/api/session/EngineInfo;

.field public c:Lcom/vivo/speechsdk/module/api/session/HotwordInfo;

.field public d:J

.field public e:J

.field public f:J

.field public g:J

.field public h:J

.field public i:J

.field public j:J

.field public k:J

.field public l:J

.field public m:J

.field public n:J

.field public o:J

.field public p:J

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:I

.field public v:Ljava/lang/String;

.field public w:Ljava/lang/String;

.field public x:Ljava/lang/String;

.field public y:Lcom/vivo/speechsdk/b/h/d;

.field public z:Lcom/vivo/speechsdk/b/h/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/vivo/speechsdk/module/session/d/a;->a:Landroid/os/Bundle;

    new-instance v0, Lcom/vivo/speechsdk/module/api/session/EngineInfo;

    invoke-direct {v0}, Lcom/vivo/speechsdk/module/api/session/EngineInfo;-><init>()V

    iput-object v0, p0, Lcom/vivo/speechsdk/module/session/d/a;->b:Lcom/vivo/speechsdk/module/api/session/EngineInfo;

    new-instance v0, Lcom/vivo/speechsdk/module/api/session/HotwordInfo;

    invoke-direct {v0}, Lcom/vivo/speechsdk/module/api/session/HotwordInfo;-><init>()V

    iput-object v0, p0, Lcom/vivo/speechsdk/module/session/d/a;->c:Lcom/vivo/speechsdk/module/api/session/HotwordInfo;

    const/4 v0, 0x0

    iput v0, p0, Lcom/vivo/speechsdk/module/session/d/a;->E:I

    iput v0, p0, Lcom/vivo/speechsdk/module/session/d/a;->F:I

    return-void
.end method
