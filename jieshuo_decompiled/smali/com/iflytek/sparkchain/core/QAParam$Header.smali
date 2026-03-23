.class public Lcom/iflytek/sparkchain/core/QAParam$Header;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/sparkchain/core/QAParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Header"
.end annotation


# instance fields
.field private app_id:Ljava/lang/String;

.field private bot_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApp_id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/QAParam$Header;->app_id:Ljava/lang/String;

    return-object v0
.end method

.method public getBot_id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/QAParam$Header;->bot_id:Ljava/lang/String;

    return-object v0
.end method

.method public setApp_id(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/QAParam$Header;->app_id:Ljava/lang/String;

    return-void
.end method

.method public setBot_id(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/QAParam$Header;->bot_id:Ljava/lang/String;

    return-void
.end method
