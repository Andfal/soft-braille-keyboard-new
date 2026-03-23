.class public Lcom/iflytek/sparkchain/core/AiVideo;
.super Lcom/iflytek/sparkchain/core/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/sparkchain/core/AiVideo$Holder;
    }
.end annotation


# static fields
.field public static ENCODING_DEFAULT:Ljava/lang/String; = "h264"

.field public static ENCODING_H264:Ljava/lang/String; = "h264"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/iflytek/sparkchain/core/a;-><init>()V

    return-void
.end method

.method public static get(Ljava/lang/String;)Lcom/iflytek/sparkchain/core/AiVideo$Holder;
    .locals 1

    new-instance v0, Lcom/iflytek/sparkchain/core/AiVideo$Holder;

    invoke-direct {v0, p0}, Lcom/iflytek/sparkchain/core/AiVideo$Holder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1

    const-string p0, "video"

    invoke-static {p0}, Lcom/iflytek/sparkchain/core/AiVideo;->get(Ljava/lang/String;)Lcom/iflytek/sparkchain/core/AiVideo$Holder;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/iflytek/sparkchain/core/AiDataHolder;->data(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/iflytek/sparkchain/core/AiVideo$Holder;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/iflytek/sparkchain/core/AiVideo$Holder;->frameRate(I)Lcom/iflytek/sparkchain/core/AiVideo$Holder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/iflytek/sparkchain/core/AiVideo$Holder;->valid()Lcom/iflytek/sparkchain/core/AiVideo;

    return-void
.end method
