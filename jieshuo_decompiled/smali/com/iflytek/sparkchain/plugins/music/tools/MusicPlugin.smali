.class public Lcom/iflytek/sparkchain/plugins/music/tools/MusicPlugin;
.super Lcom/iflytek/sparkchain/plugins/base/BasePlugin;
.source "SourceFile"


# static fields
.field public static final OperateTool:Ljava/lang/String; = "switchSongs"

.field public static final PlayMusic:Ljava/lang/String; = "musicPlayer"


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/iflytek/sparkchain/plugins/base/BasePlugin;-><init>()V

    iget-object v0, p0, Lcom/iflytek/sparkchain/plugins/base/BasePlugin;->tools:Lcom/iflytek/sparkchain/core/Tools;

    new-instance v1, Lcom/iflytek/sparkchain/plugins/music/tools/b;

    invoke-direct {v1}, Lcom/iflytek/sparkchain/plugins/music/tools/b;-><init>()V

    invoke-virtual {v0, v1}, Lcom/iflytek/sparkchain/core/Tools;->append(Lcom/iflytek/sparkchain/plugins/base/BaseTool;)Lcom/iflytek/sparkchain/core/Tools;

    move-result-object v0

    new-instance v1, Lcom/iflytek/sparkchain/plugins/music/tools/a;

    invoke-direct {v1}, Lcom/iflytek/sparkchain/plugins/music/tools/a;-><init>()V

    invoke-virtual {v0, v1}, Lcom/iflytek/sparkchain/core/Tools;->append(Lcom/iflytek/sparkchain/plugins/base/BaseTool;)Lcom/iflytek/sparkchain/core/Tools;

    return-void
.end method

.method public static isService(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method
