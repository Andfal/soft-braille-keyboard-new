.class public Lcom/iflytek/sparkchain/core/QAParam$Parameter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/sparkchain/core/QAParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Parameter"
.end annotation


# instance fields
.field private chat:Lcom/iflytek/sparkchain/core/QAParam$Chat;
    .annotation runtime Lu1/c;
        value = "chat"
    .end annotation
.end field

.field private prompt:Ljava/lang/String;
    .annotation runtime Lu1/c;
        value = "prompt"
    .end annotation
.end field

.field private repo:Lcom/iflytek/sparkchain/core/QAParam$Repo;
    .annotation runtime Lu1/c;
        value = "repo"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChat()Lcom/iflytek/sparkchain/core/QAParam$Chat;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/QAParam$Parameter;->chat:Lcom/iflytek/sparkchain/core/QAParam$Chat;

    return-object v0
.end method

.method public getPrompt()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/QAParam$Parameter;->prompt:Ljava/lang/String;

    return-object v0
.end method

.method public getRepo()Lcom/iflytek/sparkchain/core/QAParam$Repo;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/QAParam$Parameter;->repo:Lcom/iflytek/sparkchain/core/QAParam$Repo;

    return-object v0
.end method

.method public setChat(Lcom/iflytek/sparkchain/core/QAParam$Chat;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/QAParam$Parameter;->chat:Lcom/iflytek/sparkchain/core/QAParam$Chat;

    return-void
.end method

.method public setPrompt(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/QAParam$Parameter;->prompt:Ljava/lang/String;

    return-void
.end method

.method public setRepo(Lcom/iflytek/sparkchain/core/QAParam$Repo;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/QAParam$Parameter;->repo:Lcom/iflytek/sparkchain/core/QAParam$Repo;

    return-void
.end method
