.class public Lcom/vivo/speechsdk/d/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vivo/speechsdk/tts/api/ISynthesize;
.implements Lcom/vivo/speechsdk/module/api/session/SessionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/speechsdk/d/c$c;
    }
.end annotation


# static fields
.field public static final A:I = 0x132

.field public static final B:I = 0x133

.field public static final C:I = 0x134

.field public static final D:I = 0x135

.field public static final E:I = 0x136

.field public static final F:I = 0x137

.field private static final p:Ljava/lang/String; = "Synthesizer"

.field private static final q:I = 0x1

.field private static final r:I = 0x2

.field private static final s:I = 0x3

.field private static final t:I = 0x64

.field public static final u:I = 0x12c

.field public static final v:I = 0x12d

.field public static final w:I = 0x12e

.field public static final x:I = 0x12f

.field public static final y:I = 0x130

.field public static final z:I = 0x131


# instance fields
.field private volatile a:I

.field private b:Landroid/os/Handler;

.field private c:Lcom/vivo/speechsdk/d/f/b;

.field private volatile d:Lcom/vivo/speechsdk/module/api/tts/ITTSService;

.field private e:I

.field private f:Lcom/vivo/speechsdk/module/api/session/ISessionCollect;

.field private g:Lcom/vivo/speechsdk/d/b;

.field private h:Lcom/vivo/speechsdk/d/b;

.field private i:Lcom/vivo/speechsdk/d/b;

.field private j:Lcom/vivo/speechsdk/tts/api/ISynthesizeProListener;

.field private final k:Lcom/vivo/speechsdk/api/IEngine;

.field private final l:Landroid/os/Looper;

.field private m:Landroid/os/Bundle;

.field private n:I

.field private o:Landroid/os/Handler$Callback;


# direct methods
.method public constructor <init>(Lcom/vivo/speechsdk/d/c$c;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/vivo/speechsdk/d/c;->a:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/vivo/speechsdk/d/c;->n:I

    new-instance v0, Lcom/vivo/speechsdk/d/c$b;

    invoke-direct {v0, p0}, Lcom/vivo/speechsdk/d/c$b;-><init>(Lcom/vivo/speechsdk/d/c;)V

    iput-object v0, p0, Lcom/vivo/speechsdk/d/c;->o:Landroid/os/Handler$Callback;

    new-instance v0, Landroid/os/Handler;

    invoke-static {p1}, Lcom/vivo/speechsdk/d/c$c;->a(Lcom/vivo/speechsdk/d/c$c;)Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/speechsdk/d/c;->o:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/vivo/speechsdk/d/c;->b:Landroid/os/Handler;

    invoke-static {p1}, Lcom/vivo/speechsdk/d/c$c;->a(Lcom/vivo/speechsdk/d/c$c;)Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/speechsdk/d/c;->l:Landroid/os/Looper;

    invoke-static {p1}, Lcom/vivo/speechsdk/d/c$c;->b(Lcom/vivo/speechsdk/d/c$c;)Lcom/vivo/speechsdk/api/IEngine;

    move-result-object p1

    iput-object p1, p0, Lcom/vivo/speechsdk/d/c;->k:Lcom/vivo/speechsdk/api/IEngine;

    new-instance p1, Lcom/vivo/speechsdk/d/f/b;

    invoke-static {}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getInstance()Lcom/vivo/speechsdk/common/module/ModuleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getSpeechContext()Lcom/vivo/speechsdk/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/speechsdk/b/c;->a()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/vivo/speechsdk/d/f/b;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/vivo/speechsdk/d/c;->c:Lcom/vivo/speechsdk/d/f/b;

    return-void
.end method

.method static synthetic a(Lcom/vivo/speechsdk/d/c;)I
    .locals 0

    iget p0, p0, Lcom/vivo/speechsdk/d/c;->a:I

    return p0
.end method

.method static synthetic a(Lcom/vivo/speechsdk/d/c;I)I
    .locals 0

    iput p1, p0, Lcom/vivo/speechsdk/d/c;->a:I

    return p1
.end method

.method private a(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    const-string v0, "key_speaker_res_path_type"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "key_res_path_type"

    invoke-virtual {p2, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v0, "key_tts_speaker_res_path"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    const-string v1, "key_tts_res_path"

    invoke-virtual {p2, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-static {p1, p2}, Lcom/vivo/speechsdk/common/utils/BundleUtils;->merge(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-object p1
.end method

.method private a(Landroid/os/Bundle;ZI)Lcom/vivo/speechsdk/d/b;
    .locals 2

    new-instance v0, Lcom/vivo/speechsdk/d/b$b;

    invoke-direct {v0}, Lcom/vivo/speechsdk/d/b$b;-><init>()V

    iget-object v1, p0, Lcom/vivo/speechsdk/d/c;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/vivo/speechsdk/d/b$b;->a(Landroid/os/Handler;)Lcom/vivo/speechsdk/d/b$b;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/speechsdk/d/c;->d:Lcom/vivo/speechsdk/module/api/tts/ITTSService;

    invoke-virtual {v0, v1}, Lcom/vivo/speechsdk/d/b$b;->a(Lcom/vivo/speechsdk/module/api/tts/ITTSService;)Lcom/vivo/speechsdk/d/b$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/vivo/speechsdk/d/b$b;->a(Landroid/os/Bundle;)Lcom/vivo/speechsdk/d/b$b;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/vivo/speechsdk/d/b$b;->b(I)Lcom/vivo/speechsdk/d/b$b;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/vivo/speechsdk/d/b$b;->a(Z)Lcom/vivo/speechsdk/d/b$b;

    move-result-object p1

    iget p2, p0, Lcom/vivo/speechsdk/d/c;->e:I

    invoke-virtual {p1, p2}, Lcom/vivo/speechsdk/d/b$b;->a(I)Lcom/vivo/speechsdk/d/b$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vivo/speechsdk/d/b$b;->a()Lcom/vivo/speechsdk/d/b;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Lcom/vivo/speechsdk/module/api/session/EngineInfo;
    .locals 4

    invoke-static {}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getInstance()Lcom/vivo/speechsdk/common/module/ModuleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getSpeechContext()Lcom/vivo/speechsdk/b/c;

    move-result-object v0

    new-instance v1, Lcom/vivo/speechsdk/module/api/session/EngineInfo;

    invoke-direct {v1}, Lcom/vivo/speechsdk/module/api/session/EngineInfo;-><init>()V

    iput-object p1, v1, Lcom/vivo/speechsdk/module/api/session/EngineInfo;->bizName:Ljava/lang/String;

    iget p1, p0, Lcom/vivo/speechsdk/d/c;->e:I

    iput p1, v1, Lcom/vivo/speechsdk/module/api/session/EngineInfo;->ent:I

    iput-object p2, v1, Lcom/vivo/speechsdk/module/api/session/EngineInfo;->engine_id:Ljava/lang/String;

    const-string p1, "tts"

    iput-object p1, v1, Lcom/vivo/speechsdk/module/api/session/EngineInfo;->mdName:Ljava/lang/String;

    const-string p1, "key_sdk_version"

    const-string p2, ""

    invoke-virtual {v0, p1, p2}, Lcom/vivo/speechsdk/b/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/vivo/speechsdk/module/api/session/EngineInfo;->mdVersion:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/vivo/speechsdk/module/api/session/EngineInfo;->initStartTime:J

    invoke-static {}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getInstance()Lcom/vivo/speechsdk/common/module/ModuleManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getSpeechContext()Lcom/vivo/speechsdk/b/c;

    move-result-object p1

    const-string v0, "key_package"

    invoke-virtual {p1, v0, p2}, Lcom/vivo/speechsdk/b/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/vivo/speechsdk/module/api/session/EngineInfo;->mPkg:Ljava/lang/String;

    return-object v1
.end method

.method private a(ILjava/lang/String;)Lcom/vivo/speechsdk/module/api/session/SessionInfo;
    .locals 1

    new-instance v0, Lcom/vivo/speechsdk/module/api/session/SessionInfo;

    invoke-direct {v0}, Lcom/vivo/speechsdk/module/api/session/SessionInfo;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/vivo/speechsdk/module/api/session/SessionInfo;->mRequestId:Ljava/lang/String;

    iput-object p2, v0, Lcom/vivo/speechsdk/module/api/session/SessionInfo;->mSpeaker:Ljava/lang/String;

    return-object v0
.end method

.method private a(IIILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/d/c;->f:Lcom/vivo/speechsdk/module/api/session/ISessionCollect;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/vivo/speechsdk/module/api/session/ISessionCollect;->event(IIILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private a(Landroid/os/Bundle;I)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doStart "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vivo/speechsdk/d/c;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mWaitTask = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vivo/speechsdk/d/c;->i:Lcom/vivo/speechsdk/d/b;

    if-nez v1, :cond_0

    const-string v1, "null"

    goto :goto_0

    :cond_0
    const-string v1, "not null"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " requestId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Synthesizer"

    invoke-static {v1, v0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/d/c;->i:Lcom/vivo/speechsdk/d/b;

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/vivo/speechsdk/d/c;->a:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/vivo/speechsdk/d/c;->c:Lcom/vivo/speechsdk/d/f/b;

    iget-object v2, p0, Lcom/vivo/speechsdk/d/c;->j:Lcom/vivo/speechsdk/tts/api/ISynthesizeProListener;

    invoke-virtual {v0, v2}, Lcom/vivo/speechsdk/d/f/b;->a(Lcom/vivo/speechsdk/tts/api/ISynthesizeProListener;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/d/c;->b:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2}, Lcom/vivo/speechsdk/d/c;->b(Landroid/os/Bundle;I)I

    move-result p1

    if-eqz p1, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startInternal error "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " requestId "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/d/c;->c:Lcom/vivo/speechsdk/d/f/b;

    new-instance v1, Lcom/vivo/speechsdk/api/SpeechError;

    invoke-direct {v1, p1}, Lcom/vivo/speechsdk/api/SpeechError;-><init>(I)V

    invoke-virtual {v0, v1, p2}, Lcom/vivo/speechsdk/d/f/b;->onError(Lcom/vivo/speechsdk/api/SpeechError;I)V

    iget-object p1, p0, Lcom/vivo/speechsdk/d/c;->c:Lcom/vivo/speechsdk/d/f/b;

    invoke-virtual {p1, p2}, Lcom/vivo/speechsdk/d/f/b;->onEnd(I)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/vivo/speechsdk/d/c;->i:Lcom/vivo/speechsdk/d/b;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/vivo/speechsdk/d/c;->a:I

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/vivo/speechsdk/d/c;->g:Lcom/vivo/speechsdk/d/b;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/vivo/speechsdk/d/b;->i()V

    :cond_2
    iget-object v0, p0, Lcom/vivo/speechsdk/d/c;->b:Landroid/os/Handler;

    const/16 v1, 0x64

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/vivo/speechsdk/d/c;->i:Lcom/vivo/speechsdk/d/b;

    if-eqz p1, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "start task failed | "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/vivo/speechsdk/d/c;->i:Lcom/vivo/speechsdk/d/b;

    invoke-virtual {p2}, Lcom/vivo/speechsdk/d/b;->b()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    iput-object v3, p0, Lcom/vivo/speechsdk/d/c;->i:Lcom/vivo/speechsdk/d/b;

    iput-object v3, p0, Lcom/vivo/speechsdk/d/c;->j:Lcom/vivo/speechsdk/tts/api/ISynthesizeProListener;

    goto :goto_2

    :cond_5
    const-string p1, "start task failed and task is null "

    invoke-static {v1, p1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private a(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-static {}, Lcom/vivo/speechsdk/common/utils/SessionUtils;->generateReqId()I

    move-result p2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/vivo/speechsdk/d/c;->a(Landroid/os/Bundle;ZI)Lcom/vivo/speechsdk/d/b;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/vivo/speechsdk/d/c;->h:Lcom/vivo/speechsdk/d/b;

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/vivo/speechsdk/d/c;->h:Lcom/vivo/speechsdk/d/b;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method static synthetic a(Lcom/vivo/speechsdk/d/c;IIILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/vivo/speechsdk/d/c;->a(IIILjava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/vivo/speechsdk/d/c;Landroid/os/Bundle;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/vivo/speechsdk/d/c;->a(Landroid/os/Bundle;I)V

    return-void
.end method

.method static synthetic a(Lcom/vivo/speechsdk/d/c;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/vivo/speechsdk/d/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/d/c;->g:Lcom/vivo/speechsdk/d/b;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1, p1}, Lcom/vivo/speechsdk/d/b;->a(ZLjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/vivo/speechsdk/d/c;->h:Lcom/vivo/speechsdk/d/b;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1, p1}, Lcom/vivo/speechsdk/d/b;->a(ZLjava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/vivo/speechsdk/d/c;->i:Lcom/vivo/speechsdk/d/b;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1, p1}, Lcom/vivo/speechsdk/d/b;->a(ZLjava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/vivo/speechsdk/d/c;->i:Lcom/vivo/speechsdk/d/b;

    :cond_2
    return-void
.end method

.method private b(Landroid/os/Bundle;I)I
    .locals 8

    iget-object v0, p0, Lcom/vivo/speechsdk/d/c;->k:Lcom/vivo/speechsdk/api/IEngine;

    invoke-interface {v0}, Lcom/vivo/speechsdk/api/IEngine;->isDestroy()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x7531

    return p1

    :cond_0
    iget-object v0, p0, Lcom/vivo/speechsdk/d/c;->f:Lcom/vivo/speechsdk/module/api/session/ISessionCollect;

    invoke-interface {v0, p0}, Lcom/vivo/speechsdk/module/api/session/ISessionCollect;->setSessionListener(Lcom/vivo/speechsdk/module/api/session/SessionListener;)V

    const-string v0, "key_text"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_next_text"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_speaker"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "text : "

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const/4 v0, 0x2

    const-string v6, " nextText : "

    aput-object v6, v3, v0

    const/4 v0, 0x3

    aput-object v1, v3, v0

    const/4 v6, 0x4

    const-string v7, " TimeSpeak_Start "

    aput-object v7, v3, v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x5

    aput-object v6, v3, v7

    invoke-static {v3}, Lcom/vivo/speechsdk/common/utils/StringUtils;->concat([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "Synthesizer"

    invoke-static {v6, v3}, Lcom/vivo/speechsdk/common/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "key_sample_rate"

    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, p2, v2}, Lcom/vivo/speechsdk/d/c;->a(ILjava/lang/String;)Lcom/vivo/speechsdk/module/api/session/SessionInfo;

    move-result-object p2

    invoke-direct {p0, v5, v3, v5, p2}, Lcom/vivo/speechsdk/d/c;->a(IIILjava/lang/Object;)V

    iput v4, p0, Lcom/vivo/speechsdk/d/c;->a:I

    const-string p2, "key_opus_type"

    invoke-virtual {p1, p2, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/vivo/speechsdk/d/c;->n:I

    iget-object p2, p0, Lcom/vivo/speechsdk/d/c;->h:Lcom/vivo/speechsdk/d/b;

    if-eqz p2, :cond_5

    invoke-virtual {p2, p1}, Lcom/vivo/speechsdk/d/b;->b(Landroid/os/Bundle;)Z

    move-result p2

    const/4 v2, 0x0

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/vivo/speechsdk/d/c;->h:Lcom/vivo/speechsdk/d/b;

    invoke-virtual {p2}, Lcom/vivo/speechsdk/d/b;->b()I

    move-result p2

    if-eq p2, v0, :cond_2

    iget-object p2, p0, Lcom/vivo/speechsdk/d/c;->h:Lcom/vivo/speechsdk/d/b;

    invoke-virtual {p2}, Lcom/vivo/speechsdk/d/b;->b()I

    move-result p2

    if-ne p2, v4, :cond_1

    goto :goto_0

    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mNextChain status is Init | "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/vivo/speechsdk/d/c;->h:Lcom/vivo/speechsdk/d/b;

    invoke-virtual {v0}, Lcom/vivo/speechsdk/d/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v6, p2}, Lcom/vivo/speechsdk/common/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/vivo/speechsdk/d/c;->h:Lcom/vivo/speechsdk/d/b;

    const-string v0, "illegal state"

    invoke-virtual {p2, v4, v0}, Lcom/vivo/speechsdk/d/b;->a(ZLjava/lang/String;)V

    iput-object v2, p0, Lcom/vivo/speechsdk/d/c;->h:Lcom/vivo/speechsdk/d/b;

    invoke-direct {p0, p1, v1}, Lcom/vivo/speechsdk/d/c;->b(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/vivo/speechsdk/d/c;->h:Lcom/vivo/speechsdk/d/b;

    iput-object p2, p0, Lcom/vivo/speechsdk/d/c;->g:Lcom/vivo/speechsdk/d/b;

    iget-object p2, p0, Lcom/vivo/speechsdk/d/c;->i:Lcom/vivo/speechsdk/d/b;

    if-eqz p2, :cond_3

    const-string v0, "create next task"

    invoke-virtual {p2, v5, v0}, Lcom/vivo/speechsdk/d/b;->a(ZLjava/lang/String;)V

    iput-object v2, p0, Lcom/vivo/speechsdk/d/c;->i:Lcom/vivo/speechsdk/d/b;

    :cond_3
    invoke-direct {p0, p1, v1}, Lcom/vivo/speechsdk/d/c;->a(Landroid/os/Bundle;Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "match pre-synthesized text direct play | "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/vivo/speechsdk/d/c;->g:Lcom/vivo/speechsdk/d/b;

    invoke-virtual {v0}, Lcom/vivo/speechsdk/d/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v6, p2}, Lcom/vivo/speechsdk/common/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/vivo/speechsdk/d/c;->g:Lcom/vivo/speechsdk/d/b;

    invoke-virtual {p2, p1}, Lcom/vivo/speechsdk/d/b;->h(Landroid/os/Bundle;)V

    iget-object p2, p0, Lcom/vivo/speechsdk/d/c;->g:Lcom/vivo/speechsdk/d/b;

    invoke-virtual {p2, p1}, Lcom/vivo/speechsdk/d/b;->i(Landroid/os/Bundle;)I

    move-result p1

    return p1

    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mNextChain Text Not Match | "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/vivo/speechsdk/d/c;->h:Lcom/vivo/speechsdk/d/b;

    invoke-virtual {v0}, Lcom/vivo/speechsdk/d/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v6, p2}, Lcom/vivo/speechsdk/common/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/vivo/speechsdk/d/c;->h:Lcom/vivo/speechsdk/d/b;

    const-string v0, "text not match"

    invoke-virtual {p2, v4, v0}, Lcom/vivo/speechsdk/d/b;->a(ZLjava/lang/String;)V

    iput-object v2, p0, Lcom/vivo/speechsdk/d/c;->h:Lcom/vivo/speechsdk/d/b;

    invoke-direct {p0, p1, v1}, Lcom/vivo/speechsdk/d/c;->b(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_5
    const-string p2, "mNextTask is NULL "

    invoke-static {v6, p2}, Lcom/vivo/speechsdk/common/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/vivo/speechsdk/d/c;->g:Lcom/vivo/speechsdk/d/b;

    if-eqz p2, :cond_6

    const-string p2, "stop last task "

    invoke-static {v6, p2}, Lcom/vivo/speechsdk/common/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/vivo/speechsdk/d/c;->g:Lcom/vivo/speechsdk/d/b;

    const-string v0, "next task is null"

    invoke-virtual {p2, v4, v0}, Lcom/vivo/speechsdk/d/b;->a(ZLjava/lang/String;)V

    :cond_6
    invoke-direct {p0, p1, v1}, Lcom/vivo/speechsdk/d/c;->b(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private b(Landroid/os/Bundle;Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/d/c;->i:Lcom/vivo/speechsdk/d/b;

    iput-object v0, p0, Lcom/vivo/speechsdk/d/c;->g:Lcom/vivo/speechsdk/d/b;

    invoke-virtual {v0, p1}, Lcom/vivo/speechsdk/d/b;->i(Landroid/os/Bundle;)I

    move-result v0

    invoke-direct {p0, p1, p2}, Lcom/vivo/speechsdk/d/c;->a(Landroid/os/Bundle;Ljava/lang/String;)V

    return v0
.end method

.method static synthetic b(Lcom/vivo/speechsdk/d/c;)Lcom/vivo/speechsdk/module/api/session/ISessionCollect;
    .locals 0

    iget-object p0, p0, Lcom/vivo/speechsdk/d/c;->f:Lcom/vivo/speechsdk/module/api/session/ISessionCollect;

    return-object p0
.end method

.method private b(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v0, v1}, Lcom/vivo/speechsdk/d/c;->a(IIILjava/lang/Object;)V

    return-void
.end method

.method static synthetic b(Lcom/vivo/speechsdk/d/c;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/vivo/speechsdk/d/c;->b(I)V

    return-void
.end method

.method static synthetic c(Lcom/vivo/speechsdk/d/c;)Lcom/vivo/speechsdk/module/api/tts/ITTSService;
    .locals 0

    iget-object p0, p0, Lcom/vivo/speechsdk/d/c;->d:Lcom/vivo/speechsdk/module/api/tts/ITTSService;

    return-object p0
.end method

.method static synthetic d(Lcom/vivo/speechsdk/d/c;)Lcom/vivo/speechsdk/d/b;
    .locals 0

    iget-object p0, p0, Lcom/vivo/speechsdk/d/c;->h:Lcom/vivo/speechsdk/d/b;

    return-object p0
.end method

.method static synthetic e(Lcom/vivo/speechsdk/d/c;)Lcom/vivo/speechsdk/d/b;
    .locals 0

    iget-object p0, p0, Lcom/vivo/speechsdk/d/c;->g:Lcom/vivo/speechsdk/d/b;

    return-object p0
.end method

.method static synthetic f(Lcom/vivo/speechsdk/d/c;)Lcom/vivo/speechsdk/d/f/b;
    .locals 0

    iget-object p0, p0, Lcom/vivo/speechsdk/d/c;->c:Lcom/vivo/speechsdk/d/f/b;

    return-object p0
.end method

.method static synthetic g(Lcom/vivo/speechsdk/d/c;)I
    .locals 0

    iget p0, p0, Lcom/vivo/speechsdk/d/c;->n:I

    return p0
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)I
    .locals 6

    const-string v0, "key_business_name"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_appid"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_engine_type"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "key_engine_mode"

    const/4 v4, 0x1

    invoke-virtual {p1, v3, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/vivo/speechsdk/d/c;->e:I

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iput-object v3, p0, Lcom/vivo/speechsdk/d/c;->m:Landroid/os/Bundle;

    invoke-static {v3, p1}, Lcom/vivo/speechsdk/common/utils/BundleUtils;->merge(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    invoke-static {}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getInstance()Lcom/vivo/speechsdk/common/module/ModuleManager;

    move-result-object v3

    const-string v5, "Session"

    invoke-virtual {v3, v5}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getFactory(Ljava/lang/String;)Lcom/vivo/speechsdk/b/b;

    move-result-object v3

    check-cast v3, Lcom/vivo/speechsdk/module/api/session/ISessionCollectFactory;

    if-eqz v3, :cond_0

    invoke-interface {v3}, Lcom/vivo/speechsdk/module/api/session/ISessionCollectFactory;->getTtsSessionCollect()Lcom/vivo/speechsdk/module/api/session/ISessionCollect;

    move-result-object v3

    iput-object v3, p0, Lcom/vivo/speechsdk/d/c;->f:Lcom/vivo/speechsdk/module/api/session/ISessionCollect;

    iget-object v5, p0, Lcom/vivo/speechsdk/d/c;->l:Landroid/os/Looper;

    invoke-interface {v3, p1, v5}, Lcom/vivo/speechsdk/module/api/session/ISessionCollect;->init(Landroid/os/Bundle;Landroid/os/Looper;)V

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v0, v1

    :cond_1
    invoke-direct {p0, v0, v2}, Lcom/vivo/speechsdk/d/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/vivo/speechsdk/module/api/session/EngineInfo;

    move-result-object v0

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v2, v0}, Lcom/vivo/speechsdk/d/c;->a(IIILjava/lang/Object;)V

    invoke-static {}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getInstance()Lcom/vivo/speechsdk/common/module/ModuleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getSpeechContext()Lcom/vivo/speechsdk/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/speechsdk/b/c;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/vivo/speechsdk/d/a;->a(Landroid/os/Bundle;Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_2

    return v0

    :cond_2
    iget v0, p0, Lcom/vivo/speechsdk/d/c;->e:I

    if-ne v0, v4, :cond_3

    invoke-static {}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getInstance()Lcom/vivo/speechsdk/common/module/ModuleManager;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/speechsdk/d/c;->l:Landroid/os/Looper;

    const-string v3, "TTSOnline"

    :goto_0
    invoke-virtual {v0, v3, p1, v1}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getService(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Looper;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/speechsdk/module/api/tts/ITTSService;

    :goto_1
    iput-object v0, p0, Lcom/vivo/speechsdk/d/c;->d:Lcom/vivo/speechsdk/module/api/tts/ITTSService;

    goto :goto_2

    :cond_3
    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    invoke-static {}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getInstance()Lcom/vivo/speechsdk/common/module/ModuleManager;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/speechsdk/d/c;->l:Landroid/os/Looper;

    const-string v3, "TTSOffline"

    goto :goto_0

    :cond_4
    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    invoke-static {}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getInstance()Lcom/vivo/speechsdk/common/module/ModuleManager;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/speechsdk/d/c;->l:Landroid/os/Looper;

    const-string v3, "TTSMixer"

    goto :goto_0

    :cond_5
    const/4 v1, 0x6

    if-ne v0, v1, :cond_6

    invoke-static {}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getInstance()Lcom/vivo/speechsdk/common/module/ModuleManager;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/speechsdk/d/c;->l:Landroid/os/Looper;

    const-string v3, "TTSIpc"

    goto :goto_0

    :cond_6
    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    invoke-static {}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getInstance()Lcom/vivo/speechsdk/common/module/ModuleManager;

    move-result-object v0

    const-string v1, "Ym"

    invoke-virtual {v0, v1}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getFactory(Ljava/lang/String;)Lcom/vivo/speechsdk/b/b;

    move-result-object v0

    check-cast v0, Lcom/vivo/speechsdk/module/api/ym/YmFactory;

    if-eqz v0, :cond_8

    invoke-interface {v0, p1}, Lcom/vivo/speechsdk/module/api/ym/YmFactory;->createTTSService(Landroid/os/Bundle;)Lcom/vivo/speechsdk/module/api/tts/ITTSService;

    move-result-object v0

    goto :goto_1

    :cond_7
    const/16 v1, 0x8

    if-ne v0, v1, :cond_8

    invoke-static {}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getInstance()Lcom/vivo/speechsdk/common/module/ModuleManager;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/speechsdk/d/c;->l:Landroid/os/Looper;

    const-string v3, "TTSFile"

    goto :goto_0

    :cond_8
    :goto_2
    iget-object v0, p0, Lcom/vivo/speechsdk/d/c;->d:Lcom/vivo/speechsdk/module/api/tts/ITTSService;

    if-nez v0, :cond_9

    const-string p1, "Synthesizer"

    const-string v0, "tts module not found "

    invoke-static {p1, v0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x2af8

    return p1

    :cond_9
    iget-object v0, p0, Lcom/vivo/speechsdk/d/c;->d:Lcom/vivo/speechsdk/module/api/tts/ITTSService;

    invoke-interface {v0, p1}, Lcom/vivo/speechsdk/module/api/tts/ITTSService;->init(Landroid/os/Bundle;)I

    move-result p1

    if-eqz p1, :cond_a

    const/16 v0, 0x7532

    goto :goto_3

    :cond_a
    const/4 v0, 0x0

    :goto_3
    invoke-static {}, Lcom/vivo/speechsdk/d/d;->a()Lcom/vivo/speechsdk/d/d;

    move-result-object v1

    iget-object v3, p0, Lcom/vivo/speechsdk/d/c;->d:Lcom/vivo/speechsdk/module/api/tts/ITTSService;

    invoke-virtual {v1, v2, v3}, Lcom/vivo/speechsdk/d/d;->a(ILcom/vivo/speechsdk/module/api/tts/ITTSService;)V

    const/16 v1, 0xd

    const/4 v3, 0x0

    invoke-direct {p0, v1, p1, v2, v3}, Lcom/vivo/speechsdk/d/c;->a(IIILjava/lang/Object;)V

    return v0
.end method

.method public a(I)V
    .locals 1

    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/vivo/speechsdk/d/c;->d:Lcom/vivo/speechsdk/module/api/tts/ITTSService;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/vivo/speechsdk/d/c;->d:Lcom/vivo/speechsdk/module/api/tts/ITTSService;

    invoke-interface {p1}, Lcom/vivo/speechsdk/module/api/tts/ITTSService;->connect()V

    :cond_0
    return-void
.end method

.method public declared-synchronized destroy()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "Synthesizer"

    const-string v1, "start destroy "

    invoke-static {v0, v1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/d/c;->b:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/vivo/speechsdk/d/c;->b(I)V

    const-string v0, "user destroy"

    invoke-direct {p0, v0}, Lcom/vivo/speechsdk/d/c;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/d/c;->d:Lcom/vivo/speechsdk/module/api/tts/ITTSService;

    invoke-interface {v0}, Lcom/vivo/speechsdk/module/api/tts/ITTSService;->destroy()V

    iget-object v0, p0, Lcom/vivo/speechsdk/d/c;->f:Lcom/vivo/speechsdk/module/api/session/ISessionCollect;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/vivo/speechsdk/module/api/session/ISessionCollect;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSupportSpeakers()Landroid/os/Bundle;
    .locals 3

    iget-object v0, p0, Lcom/vivo/speechsdk/d/c;->d:Lcom/vivo/speechsdk/module/api/tts/ITTSService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/d/c;->d:Lcom/vivo/speechsdk/module/api/tts/ITTSService;

    invoke-interface {v0}, Lcom/vivo/speechsdk/module/api/tts/ITTSService;->getSupportSpeakers()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "key_support_speakers"

    invoke-virtual {v1, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isSpeaking()Z
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/d/c;->g:Lcom/vivo/speechsdk/d/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/vivo/speechsdk/d/b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onSessionFinished(Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lcom/vivo/speechsdk/d/c;->c:Lcom/vivo/speechsdk/d/f/b;

    iget-object v1, p0, Lcom/vivo/speechsdk/d/c;->g:Lcom/vivo/speechsdk/d/b;

    invoke-virtual {v1}, Lcom/vivo/speechsdk/d/b;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vivo/speechsdk/d/f/b;->onEnd(I)V

    const-string v0, "Synthesizer"

    const-string v1, "onEnd | "

    if-eqz p1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/vivo/speechsdk/d/c;->g:Lcom/vivo/speechsdk/d/b;

    invoke-virtual {p1}, Lcom/vivo/speechsdk/d/b;->a()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vivo/speechsdk/d/c;->g:Lcom/vivo/speechsdk/d/b;

    invoke-virtual {v1}, Lcom/vivo/speechsdk/d/b;->a()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {v0, p1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public pause()V
    .locals 2

    const-string v0, "Synthesizer"

    const-string v1, "user pause"

    invoke-static {v0, v1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/d/c;->g:Lcom/vivo/speechsdk/d/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/vivo/speechsdk/d/b;->e()V

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 2

    const-string v0, "Synthesizer"

    const-string v1, "user resume"

    invoke-static {v0, v1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/d/c;->g:Lcom/vivo/speechsdk/d/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/vivo/speechsdk/d/b;->f()V

    :cond_0
    return-void
.end method

.method public declared-synchronized speak(Landroid/os/Bundle;Lcom/vivo/speechsdk/tts/api/ISynthesizeProListener;)I
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "key_request_id"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "key_request_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/vivo/speechsdk/d/c;->m:Landroid/os/Bundle;

    invoke-direct {p0, v1, p1}, Lcom/vivo/speechsdk/d/c;->a(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    invoke-static {}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getInstance()Lcom/vivo/speechsdk/common/module/ModuleManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getSpeechContext()Lcom/vivo/speechsdk/b/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vivo/speechsdk/b/c;->b()Landroid/content/Context;

    move-result-object p1

    iget v2, p0, Lcom/vivo/speechsdk/d/c;->e:I

    invoke-static {v1, v2, p1}, Lcom/vivo/speechsdk/d/a;->a(Landroid/os/Bundle;ILandroid/content/Context;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    monitor-exit p0

    return p1

    :cond_0
    :try_start_1
    iget-object p1, p0, Lcom/vivo/speechsdk/d/c;->i:Lcom/vivo/speechsdk/d/b;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/vivo/speechsdk/d/b;->i()V

    :cond_1
    const/4 p1, 0x0

    invoke-direct {p0, v1, p1, v0}, Lcom/vivo/speechsdk/d/c;->a(Landroid/os/Bundle;ZI)Lcom/vivo/speechsdk/d/b;

    move-result-object v2

    iput-object v2, p0, Lcom/vivo/speechsdk/d/c;->i:Lcom/vivo/speechsdk/d/b;

    iput-object p2, p0, Lcom/vivo/speechsdk/d/c;->j:Lcom/vivo/speechsdk/tts/api/ISynthesizeProListener;

    invoke-direct {p0, v1, v0}, Lcom/vivo/speechsdk/d/c;->a(Landroid/os/Bundle;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public stop()V
    .locals 2

    const-string v0, "Synthesizer"

    const-string v1, "user stop"

    invoke-static {v0, v1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/speechsdk/d/c;->i:Lcom/vivo/speechsdk/d/b;

    iput-object v0, p0, Lcom/vivo/speechsdk/d/c;->j:Lcom/vivo/speechsdk/tts/api/ISynthesizeProListener;

    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/vivo/speechsdk/d/c;->b(I)V

    invoke-direct {p0, v1}, Lcom/vivo/speechsdk/d/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method public uploadText(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/vivo/speechsdk/common/thread/a;->a()Lcom/vivo/speechsdk/common/thread/a;

    move-result-object v0

    new-instance v1, Lcom/vivo/speechsdk/d/c$a;

    invoke-direct {v1, p0, p1}, Lcom/vivo/speechsdk/d/c$a;-><init>(Lcom/vivo/speechsdk/d/c;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/vivo/speechsdk/common/thread/a;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
