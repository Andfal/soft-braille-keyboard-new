.class public Lcom/vivo/speechsdk/module/session/e/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final c:Ljava/lang/String; = "TTSDebugMode"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vivo/speechsdk/module/session/e/b;->a:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/vivo/speechsdk/module/session/e/b;->b:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    invoke-static {}, Lcom/vivo/speechsdk/module/session/b;->b()Lcom/vivo/speechsdk/module/session/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/speechsdk/module/session/b;->a()Lcom/vivo/speechsdk/module/session/d/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/vivo/speechsdk/module/session/d/b;->s:Lcom/vivo/speechsdk/b/h/d;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/vivo/speechsdk/b/h/d;->a(Z)V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/vivo/speechsdk/module/session/d/b;->s:Lcom/vivo/speechsdk/b/h/d;

    :cond_0
    return-void
.end method

.method public a(IIILjava/lang/Object;)V
    .locals 9

    invoke-static {}, Lcom/vivo/speechsdk/module/session/b;->b()Lcom/vivo/speechsdk/module/session/b;

    move-result-object p3

    invoke-virtual {p3}, Lcom/vivo/speechsdk/module/session/b;->a()Lcom/vivo/speechsdk/module/session/d/b;

    move-result-object p3

    if-eqz p3, :cond_7

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-ne p1, v0, :cond_5

    check-cast p4, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;

    if-eqz p4, :cond_7

    iget p1, p4, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mTotalTextLength:I

    if-eqz p1, :cond_7

    iget-object p1, p3, Lcom/vivo/speechsdk/module/session/d/b;->s:Lcom/vivo/speechsdk/b/h/d;

    const/4 v2, 0x2

    if-nez p1, :cond_3

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    const-string v3, "opus"

    goto :goto_0

    :cond_0
    const-string v3, "pcm"

    :goto_0
    iget-object v4, p0, Lcom/vivo/speechsdk/module/session/e/b;->a:Ljava/lang/String;

    new-array v5, v2, [Ljava/lang/String;

    const-string v6, "tts"

    aput-object v6, v5, v1

    iget v6, p4, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mIsPreSynthesized:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "pre_"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_1
    aput-object v3, v5, v7

    invoke-static {v4, v5}, Lcom/vivo/speechsdk/common/utils/PathUtil;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/vivo/speechsdk/b/h/c;->g(Ljava/lang/String;)V

    new-instance v4, Lcom/vivo/speechsdk/b/h/g;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p3, Lcom/vivo/speechsdk/module/session/d/b;->q:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne p2, p1, :cond_2

    const-string p1, ".opus"

    goto :goto_1

    :cond_2
    const-string p1, ".pcm"

    :goto_1
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, p1, v1}, Lcom/vivo/speechsdk/b/h/g;-><init>(Ljava/lang/String;Z)V

    iput-object v4, p3, Lcom/vivo/speechsdk/module/session/d/b;->s:Lcom/vivo/speechsdk/b/h/d;

    :cond_3
    iget-object p1, p3, Lcom/vivo/speechsdk/module/session/d/b;->s:Lcom/vivo/speechsdk/b/h/d;

    iget-object p2, p4, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mFrame:[B

    iget v3, p4, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mFrameLength:I

    invoke-interface {p1, p2, v1, v3}, Lcom/vivo/speechsdk/b/h/d;->a([BII)V

    iget p1, p4, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mStatus:I

    if-eq p1, v2, :cond_4

    if-ne p1, v0, :cond_7

    :cond_4
    iget-object p1, p3, Lcom/vivo/speechsdk/module/session/d/b;->s:Lcom/vivo/speechsdk/b/h/d;

    invoke-interface {p1, v1}, Lcom/vivo/speechsdk/b/h/d;->a(Z)V

    goto :goto_2

    :cond_5
    const/16 p2, 0xa

    if-eq p1, p2, :cond_6

    const/16 p2, 0x10

    if-eq p1, p2, :cond_6

    const/16 p2, 0xb

    if-ne p1, p2, :cond_7

    :cond_6
    iget-object p1, p3, Lcom/vivo/speechsdk/module/session/d/b;->s:Lcom/vivo/speechsdk/b/h/d;

    if-eqz p1, :cond_7

    invoke-interface {p1, v1}, Lcom/vivo/speechsdk/b/h/d;->a(Z)V

    const/4 p1, 0x0

    iput-object p1, p3, Lcom/vivo/speechsdk/module/session/d/b;->s:Lcom/vivo/speechsdk/b/h/d;

    :cond_7
    :goto_2
    return-void
.end method
