.class public Lcom/vivo/speechsdk/module/api/session/HotwordInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public engineName:Ljava/lang/String;

.field public mError:I

.field public mMessage:Ljava/lang/String;

.field public mOutstripLimitedNum:Ljava/lang/String;

.field public mStrMaxLength:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/vivo/speechsdk/module/api/session/HotwordInfo;->mOutstripLimitedNum:Ljava/lang/String;

    iput-object v0, p0, Lcom/vivo/speechsdk/module/api/session/HotwordInfo;->mStrMaxLength:Ljava/lang/String;

    iput-object v0, p0, Lcom/vivo/speechsdk/module/api/session/HotwordInfo;->engineName:Ljava/lang/String;

    return-void
.end method
