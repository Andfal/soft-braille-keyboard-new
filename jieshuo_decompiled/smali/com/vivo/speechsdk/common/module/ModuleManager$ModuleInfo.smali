.class Lcom/vivo/speechsdk/common/module/ModuleManager$ModuleInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/speechsdk/common/module/ModuleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ModuleInfo"
.end annotation


# instance fields
.field public mIsLoad:Z

.field public mLazyLoad:Z

.field public mModule:Lcom/vivo/speechsdk/common/module/IModule;

.field public mSingleTon:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/speechsdk/common/module/ModuleManager$ModuleInfo;->mLazyLoad:Z

    iput-boolean v0, p0, Lcom/vivo/speechsdk/common/module/ModuleManager$ModuleInfo;->mSingleTon:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/speechsdk/common/module/ModuleManager$ModuleInfo;->mIsLoad:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/speechsdk/common/module/ModuleManager$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/vivo/speechsdk/common/module/ModuleManager$ModuleInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public load(Lcom/vivo/speechsdk/b/c;)I
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/common/module/ModuleManager$ModuleInfo;->mModule:Lcom/vivo/speechsdk/common/module/IModule;

    invoke-interface {v0, p1}, Lcom/vivo/speechsdk/common/module/IModule;->init(Lcom/vivo/speechsdk/b/c;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/vivo/speechsdk/common/module/ModuleManager$ModuleInfo;->mIsLoad:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "module init failed | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ModuleManager"

    invoke-static {v1, v0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return p1
.end method
