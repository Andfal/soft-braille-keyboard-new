.class public Lcom/iflytek/msc/MscSynthesizer$Param;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/msc/MscSynthesizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Param"
.end annotation


# instance fields
.field public appId:Ljava/lang/String;

.field public channelId:Ljava/lang/String;

.field public code:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "5ef02a7c"

    iput-object v0, p0, Lcom/iflytek/msc/MscSynthesizer$Param;->appId:Ljava/lang/String;

    const-string v0, "77010006"

    iput-object v0, p0, Lcom/iflytek/msc/MscSynthesizer$Param;->channelId:Ljava/lang/String;

    return-void
.end method
