.class public Lcom/nirenr/talkman/settings/GestureActivity;
.super Lcom/androlua/LuaActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/androlua/LuaActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getAllCommandList()[Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f010008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLuaDir()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/androlua/LuaActivity;->getLocalDir()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLuaPath()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/androlua/LuaActivity;->initMain()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/androlua/LuaActivity;->getLocalDir()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/main.lua"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onDestroy()V
    .locals 0

    invoke-virtual {p0}, Lcom/nirenr/talkman/settings/GestureActivity;->update()V

    invoke-super {p0}, Lcom/androlua/LuaActivity;->onDestroy()V

    return-void
.end method

.method public update()V
    .locals 5

    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lk2/b0;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const v2, 0x7f0702c9

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0708ae

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f070033

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->loadGesturePackage(Ljava/lang/String;)Z

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->loadGesturePackage(Ljava/util/Set;)V

    const v1, 0x7f0703dd

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->asyncSpeak(Ljava/lang/String;)V

    return-void
.end method
