.class Lcom/nirenr/talkman/settings/LanguageSetting$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/LanguageSetting;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
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

    iput-object p1, p0, Lcom/nirenr/talkman/settings/LanguageSetting$6;->a:Lcom/nirenr/talkman/settings/LanguageSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/nirenr/talkman/settings/LanguageSetting$6;->a:Lcom/nirenr/talkman/settings/LanguageSetting;

    invoke-static {p1}, Lcom/nirenr/talkman/settings/LanguageSetting;->c(Lcom/nirenr/talkman/settings/LanguageSetting;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    iget-object p1, p0, Lcom/nirenr/talkman/settings/LanguageSetting$6;->a:Lcom/nirenr/talkman/settings/LanguageSetting;

    invoke-static {p1}, Lcom/nirenr/talkman/settings/LanguageSetting;->c(Lcom/nirenr/talkman/settings/LanguageSetting;)Ljava/util/Map;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/androlua/LuaResources;->save(Landroid/content/Context;Ljava/util/Map;)V

    iget-object p1, p0, Lcom/nirenr/talkman/settings/LanguageSetting$6;->a:Lcom/nirenr/talkman/settings/LanguageSetting;

    invoke-static {p1}, Lcom/androlua/LuaResources;->isEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/androlua/LuaResources;->clear()V

    iget-object p1, p0, Lcom/nirenr/talkman/settings/LanguageSetting$6;->a:Lcom/nirenr/talkman/settings/LanguageSetting;

    invoke-virtual {p1}, Landroid/app/BaseActivity;->getSuperResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/androlua/LuaResources;->init(Landroid/content/Context;Landroid/content/res/Resources;)V

    :cond_0
    iget-object p1, p0, Lcom/nirenr/talkman/settings/LanguageSetting$6;->a:Lcom/nirenr/talkman/settings/LanguageSetting;

    invoke-virtual {p1}, Landroid/app/Activity;->recreate()V

    return-void
.end method
