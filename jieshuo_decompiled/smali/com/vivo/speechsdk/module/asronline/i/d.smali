.class public Lcom/vivo/speechsdk/module/asronline/i/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vivo/speechsdk/module/api/net/IHostSelector;


# static fields
.field public static final a:Ljava/lang/String; = "api-ai.vivo.com.cn"

.field public static final b:Ljava/lang/String; = "api-ai.vivo.com.cn"

.field public static final c:Ljava/lang/String; = "wss://api-ai.vivo.com.cn/asr/v2"

.field public static final d:Ljava/lang/String; = "wss://api-ai.vivo.com.cn/asr/v2"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public backupHost()Ljava/lang/String;
    .locals 1

    const-string v0, "api-ai.vivo.com.cn"

    return-object v0
.end method

.method public backupUrl()Ljava/lang/String;
    .locals 1

    const-string v0, "wss://api-ai.vivo.com.cn/asr/v2"

    return-object v0
.end method

.method public defaultHost()Ljava/lang/String;
    .locals 1

    const-string v0, "api-ai.vivo.com.cn"

    return-object v0
.end method

.method public defaultUrl()Ljava/lang/String;
    .locals 1

    const-string v0, "wss://api-ai.vivo.com.cn/asr/v2"

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

    const-string v1, "api-ai.vivo.com.cn"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
