.class public Lcom/iflytek/sparkchain/core/QAParam$Payload;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/sparkchain/core/QAParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Payload"
.end annotation


# instance fields
.field private message:Lcom/iflytek/sparkchain/core/QAParam$Message;
    .annotation runtime Lu1/c;
        value = "message"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMessage()Lcom/iflytek/sparkchain/core/QAParam$Message;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/QAParam$Payload;->message:Lcom/iflytek/sparkchain/core/QAParam$Message;

    return-object v0
.end method

.method public setMessage(Lcom/iflytek/sparkchain/core/QAParam$Message;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/QAParam$Payload;->message:Lcom/iflytek/sparkchain/core/QAParam$Message;

    return-void
.end method
