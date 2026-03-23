.class public Lcom/vivo/speechsdk/module/ttsonline/net/OverSeaHostSelector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vivo/speechsdk/module/api/net/IHostSelector;


# static fields
.field private static mDomain:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getInstance()Lcom/vivo/speechsdk/common/module/ModuleManager;

    move-result-object v0

    const-string v1, "Net"

    invoke-virtual {v0, v1}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getFactory(Ljava/lang/String;)Lcom/vivo/speechsdk/b/b;

    move-result-object v0

    check-cast v0, Lcom/vivo/speechsdk/module/api/net/INetFactory;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/vivo/speechsdk/module/api/net/INetFactory;->getDomain(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vivo/speechsdk/module/ttsonline/net/OverSeaHostSelector;->mDomain:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public backupHost()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/vivo/speechsdk/module/ttsonline/net/OverSeaHostSelector;->mDomain:Ljava/lang/String;

    return-object v0
.end method

.method public backupUrl()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wss://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/vivo/speechsdk/module/ttsonline/net/OverSeaHostSelector;->mDomain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/tts"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public defaultHost()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/vivo/speechsdk/module/ttsonline/net/OverSeaHostSelector;->mDomain:Ljava/lang/String;

    return-object v0
.end method

.method public defaultUrl()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wss://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/vivo/speechsdk/module/ttsonline/net/OverSeaHostSelector;->mDomain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/tts"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hosts()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/vivo/speechsdk/module/ttsonline/net/OverSeaHostSelector;->mDomain:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
