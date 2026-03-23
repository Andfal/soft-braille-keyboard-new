.class public Lcom/iflytek/sparkchain/core/JniCallback$JniOutput;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/sparkchain/core/JniCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "JniOutput"
.end annotation


# instance fields
.field public code:I

.field public data:[B

.field final synthetic this$0:Lcom/iflytek/sparkchain/core/JniCallback;


# direct methods
.method public constructor <init>(Lcom/iflytek/sparkchain/core/JniCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/JniCallback$JniOutput;->this$0:Lcom/iflytek/sparkchain/core/JniCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public formatData()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iflytek/sparkchain/core/AiResponse;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/JniCallback$JniOutput;->data:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/iflytek/sparkchain/core/JniCallback;->access$000([BZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
