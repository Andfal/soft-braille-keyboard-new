.class public Landroid/app/BaseListActivity;
.super Landroid/app/ListActivity;
.source "SourceFile"


# instance fields
.field private mResources:Lcom/androlua/LuaResources;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getResources()Landroid/content/res/Resources;
    .locals 5

    invoke-static {}, Lcom/androlua/LuaResources;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/app/ListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/app/BaseListActivity;->mResources:Lcom/androlua/LuaResources;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    invoke-super {p0}, Landroid/app/ListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/androlua/LuaResources;->init(Landroid/content/Context;Landroid/content/res/Resources;)V

    new-instance v1, Lcom/androlua/LuaResources;

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/androlua/LuaResources;-><init>(Landroid/content/res/Resources;Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    iput-object v1, p0, Landroid/app/BaseListActivity;->mResources:Lcom/androlua/LuaResources;

    return-object v1
.end method

.method public getSuperResources()Landroid/content/res/Resources;
    .locals 1

    invoke-super {p0}, Landroid/app/ListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    return-void
.end method
