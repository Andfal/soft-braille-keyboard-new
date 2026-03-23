.class Lcom/iflytek/sparkchain/core/SparkChain$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/iflytek/sparkchain/core/AuthListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/sparkchain/core/SparkChain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthStateChange(Lcom/iflytek/sparkchain/core/ErrType;I)V
    .locals 0

    invoke-static {p2}, Lcom/iflytek/sparkchain/core/SparkChain;->access$002(I)I

    return-void
.end method
