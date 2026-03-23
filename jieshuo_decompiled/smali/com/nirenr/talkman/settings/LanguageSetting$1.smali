.class Lcom/nirenr/talkman/settings/LanguageSetting$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/LanguageSetting;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/settings/LanguageSetting;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/LanguageSetting;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/LanguageSetting$1;->a:Lcom/nirenr/talkman/settings/LanguageSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    iget-object p1, p0, Lcom/nirenr/talkman/settings/LanguageSetting$1;->a:Lcom/nirenr/talkman/settings/LanguageSetting;

    invoke-static {p1, p2}, Lcom/androlua/LuaResources;->setEnabled(Landroid/content/Context;Z)V

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/nirenr/talkman/settings/LanguageSetting$1;->a:Lcom/nirenr/talkman/settings/LanguageSetting;

    invoke-static {p1}, Lcom/nirenr/talkman/settings/LanguageSetting;->c(Lcom/nirenr/talkman/settings/LanguageSetting;)Ljava/util/Map;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/androlua/LuaResources;->save(Landroid/content/Context;Ljava/util/Map;)V

    invoke-static {}, Lcom/androlua/LuaResources;->clear()V

    iget-object p1, p0, Lcom/nirenr/talkman/settings/LanguageSetting$1;->a:Lcom/nirenr/talkman/settings/LanguageSetting;

    invoke-virtual {p1}, Landroid/app/BaseActivity;->getSuperResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/androlua/LuaResources;->init(Landroid/content/Context;Landroid/content/res/Resources;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/androlua/LuaResources;->clear()V

    :goto_0
    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/androlua/LuaApplication;->updateAllActivity()V

    return-void
.end method
