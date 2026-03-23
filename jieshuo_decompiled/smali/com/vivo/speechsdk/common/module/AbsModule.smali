.class public abstract Lcom/vivo/speechsdk/common/module/AbsModule;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vivo/speechsdk/common/module/IModule;


# instance fields
.field protected mSpeechContext:Lcom/vivo/speechsdk/b/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getVersion()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public init(Lcom/vivo/speechsdk/b/c;)I
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/common/module/AbsModule;->mSpeechContext:Lcom/vivo/speechsdk/b/c;

    const/4 p1, 0x0

    return p1
.end method

.method public release()V
    .locals 0

    return-void
.end method
