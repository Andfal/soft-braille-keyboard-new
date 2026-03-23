.class public Lcom/vivo/speechsdk/asr/api/ASREngine$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/speechsdk/asr/api/ASREngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mBundle:Landroid/os/Bundle;

.field private mEngine:Lcom/vivo/speechsdk/api/ISpeechEngine;

.field private mWorkLooper:Landroid/os/Looper;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/vivo/speechsdk/asr/api/IRecognizer;
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/asr/api/ASREngine$Builder;->mBundle:Landroid/os/Bundle;

    const-string v1, "key_engine_mode"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    new-instance v0, Lcom/vivo/speechsdk/a/a;

    invoke-direct {v0, p0}, Lcom/vivo/speechsdk/a/a;-><init>(Lcom/vivo/speechsdk/asr/api/ASREngine$Builder;)V

    return-object v0

    :cond_1
    new-instance v0, Lcom/vivo/speechsdk/a/d;

    invoke-direct {v0, p0}, Lcom/vivo/speechsdk/a/d;-><init>(Lcom/vivo/speechsdk/asr/api/ASREngine$Builder;)V

    return-object v0
.end method

.method public getBundle()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/asr/api/ASREngine$Builder;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public getEngine()Lcom/vivo/speechsdk/api/ISpeechEngine;
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/asr/api/ASREngine$Builder;->mEngine:Lcom/vivo/speechsdk/api/ISpeechEngine;

    return-object v0
.end method

.method public setBundle(Landroid/os/Bundle;)Lcom/vivo/speechsdk/asr/api/ASREngine$Builder;
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/asr/api/ASREngine$Builder;->mBundle:Landroid/os/Bundle;

    return-object p0
.end method

.method public setEngine(Lcom/vivo/speechsdk/api/ISpeechEngine;)Lcom/vivo/speechsdk/asr/api/ASREngine$Builder;
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/asr/api/ASREngine$Builder;->mEngine:Lcom/vivo/speechsdk/api/ISpeechEngine;

    return-object p0
.end method

.method public setLooper(Landroid/os/Looper;)Lcom/vivo/speechsdk/asr/api/ASREngine$Builder;
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/asr/api/ASREngine$Builder;->mWorkLooper:Landroid/os/Looper;

    return-object p0
.end method

.method public workLooper()Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/asr/api/ASREngine$Builder;->mWorkLooper:Landroid/os/Looper;

    return-object v0
.end method
