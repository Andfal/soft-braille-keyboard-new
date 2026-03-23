.class public Lcom/iflytek/sparkchain/core/QAParam$Message;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/sparkchain/core/QAParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Message"
.end annotation


# instance fields
.field private text:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iflytek/sparkchain/core/QAParam$Text;",
            ">;"
        }
    .end annotation

    .annotation runtime Lu1/c;
        value = "text"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getText()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iflytek/sparkchain/core/QAParam$Text;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/QAParam$Message;->text:Ljava/util/List;

    return-object v0
.end method

.method public setText(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iflytek/sparkchain/core/QAParam$Text;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/QAParam$Message;->text:Ljava/util/List;

    return-void
.end method
