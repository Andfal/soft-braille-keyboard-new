.class public Lcom/iflytek/sparkchain/core/JniCallback$JniAuthTimer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/sparkchain/core/JniCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "JniAuthTimer"
.end annotation


# instance fields
.field public code:I

.field public expireTime:J

.field public leftTime:J

.field final synthetic this$0:Lcom/iflytek/sparkchain/core/JniCallback;


# direct methods
.method public constructor <init>(Lcom/iflytek/sparkchain/core/JniCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/JniCallback$JniAuthTimer;->this$0:Lcom/iflytek/sparkchain/core/JniCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
