.class public Lw0/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/baidu/tts/client/model/OnDownloadListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lw0/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(Lcom/baidu/tts/client/model/OnDownloadListener;)V
    .locals 0

    iput-object p1, p0, Lw0/b;->b:Lcom/baidu/tts/client/model/OnDownloadListener;

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lw0/b;->a:Ljava/lang/String;

    return-void
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lw0/b;->a:Ljava/lang/String;

    invoke-static {v0}, Lq1/k;->b(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public e()Lcom/baidu/tts/client/model/OnDownloadListener;
    .locals 1

    iget-object v0, p0, Lw0/b;->b:Lcom/baidu/tts/client/model/OnDownloadListener;

    return-object v0
.end method
