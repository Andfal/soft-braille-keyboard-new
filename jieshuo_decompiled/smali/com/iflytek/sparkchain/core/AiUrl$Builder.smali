.class public Lcom/iflytek/sparkchain/core/AiUrl$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/sparkchain/core/AiUrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field port:I

.field ssl:Z

.field url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/sparkchain/core/AiUrl$Builder;->ssl:Z

    iput v0, p0, Lcom/iflytek/sparkchain/core/AiUrl$Builder;->port:I

    return-void
.end method


# virtual methods
.method public build()Lcom/iflytek/sparkchain/core/AiUrl;
    .locals 2

    new-instance v0, Lcom/iflytek/sparkchain/core/AiUrl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/iflytek/sparkchain/core/AiUrl;-><init>(Lcom/iflytek/sparkchain/core/AiUrl$Builder;Lcom/iflytek/sparkchain/core/AiUrl$1;)V

    return-object v0
.end method

.method public port(I)Lcom/iflytek/sparkchain/core/AiUrl$Builder;
    .locals 0

    iput p1, p0, Lcom/iflytek/sparkchain/core/AiUrl$Builder;->port:I

    return-object p0
.end method

.method public ssl(Z)Lcom/iflytek/sparkchain/core/AiUrl$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/iflytek/sparkchain/core/AiUrl$Builder;->ssl:Z

    return-object p0
.end method

.method public url(Ljava/lang/String;)Lcom/iflytek/sparkchain/core/AiUrl$Builder;
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/AiUrl$Builder;->url:Ljava/lang/String;

    return-object p0
.end method
