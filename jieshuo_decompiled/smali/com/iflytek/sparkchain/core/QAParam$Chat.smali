.class public Lcom/iflytek/sparkchain/core/QAParam$Chat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/sparkchain/core/QAParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Chat"
.end annotation


# instance fields
.field private chat_id:Ljava/lang/String;
    .annotation runtime Lu1/c;
        value = "chat_id"
    .end annotation
.end field

.field private max_tokens:I
    .annotation runtime Lu1/c;
        value = "max_tokens"
    .end annotation
.end field

.field private temperature:D
    .annotation runtime Lu1/c;
        value = "temperature"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChat_id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/QAParam$Chat;->chat_id:Ljava/lang/String;

    return-object v0
.end method

.method public getMax_tokens()I
    .locals 1

    iget v0, p0, Lcom/iflytek/sparkchain/core/QAParam$Chat;->max_tokens:I

    return v0
.end method

.method public getTemperature()D
    .locals 2

    iget-wide v0, p0, Lcom/iflytek/sparkchain/core/QAParam$Chat;->temperature:D

    return-wide v0
.end method

.method public setChat_id(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/QAParam$Chat;->chat_id:Ljava/lang/String;

    return-void
.end method

.method public setMax_tokens(I)V
    .locals 0

    iput p1, p0, Lcom/iflytek/sparkchain/core/QAParam$Chat;->max_tokens:I

    return-void
.end method

.method public setTemperature(D)V
    .locals 0

    iput-wide p1, p0, Lcom/iflytek/sparkchain/core/QAParam$Chat;->temperature:D

    return-void
.end method
