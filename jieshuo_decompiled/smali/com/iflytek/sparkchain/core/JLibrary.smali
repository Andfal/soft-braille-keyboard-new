.class public Lcom/iflytek/sparkchain/core/JLibrary;
.super Lcom/iflytek/sparkchain/core/BaseLibrary;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/sparkchain/core/JLibrary$Holder;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/iflytek/sparkchain/core/BaseLibrary;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/iflytek/sparkchain/core/JLibrary$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/iflytek/sparkchain/core/JLibrary;-><init>()V

    return-void
.end method

.method public static getInst()Lcom/iflytek/sparkchain/core/JLibrary;
    .locals 1

    invoke-static {}, Lcom/iflytek/sparkchain/core/JLibrary$Holder;->access$100()Lcom/iflytek/sparkchain/core/JLibrary;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public registerListener(Lcom/iflytek/sparkchain/core/AiResponseListener;)V
    .locals 1

    invoke-static {}, Lcom/iflytek/sparkchain/core/AiHelper;->getInst()Lcom/iflytek/sparkchain/core/AiHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iflytek/sparkchain/core/AiHelper;->registerListener(Lcom/iflytek/sparkchain/core/AiResponseListener;)V

    return-void
.end method

.method public registerListener(Lcom/iflytek/sparkchain/core/CoreListener;)V
    .locals 1

    invoke-static {}, Lcom/iflytek/sparkchain/core/Auth;->d()Lcom/iflytek/sparkchain/core/Auth;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iflytek/sparkchain/core/Auth;->a(Lcom/iflytek/sparkchain/core/CoreListener;)V

    return-void
.end method

.method public registerListener(Lcom/iflytek/sparkchain/core/CoreListener;Lcom/iflytek/sparkchain/core/AiResponseListener;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/iflytek/sparkchain/core/JLibrary;->registerListener(Lcom/iflytek/sparkchain/core/CoreListener;)V

    invoke-virtual {p0, p2}, Lcom/iflytek/sparkchain/core/JLibrary;->registerListener(Lcom/iflytek/sparkchain/core/AiResponseListener;)V

    return-void
.end method

.method public registerListener(Ljava/lang/String;Lcom/iflytek/sparkchain/core/AiListener;)V
    .locals 1

    invoke-static {}, Lcom/iflytek/sparkchain/core/AiHelper;->getInst()Lcom/iflytek/sparkchain/core/AiHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/iflytek/sparkchain/core/AiHelper;->registerListener(Ljava/lang/String;Lcom/iflytek/sparkchain/core/AiListener;)V

    return-void
.end method
