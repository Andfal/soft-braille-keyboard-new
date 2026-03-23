.class Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/util/HttpUtil$HttpCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/androlua/LuaApplication;

.field final synthetic b:Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;Lcom/androlua/LuaApplication;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$17;->b:Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;

    iput-object p2, p0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$17;->a:Lcom/androlua/LuaApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(Lcom/nirenr/talkman/util/HttpUtil$c;)V
    .locals 2

    iget v0, p1, Lcom/nirenr/talkman/util/HttpUtil$c;->a:I

    const/16 v1, 0xc8

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$17;->b:Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;

    iget-object p1, p1, Lcom/nirenr/talkman/util/HttpUtil$c;->b:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;->d(Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    iget-object p1, p1, Lcom/nirenr/talkman/util/HttpUtil$c;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$17;->a:Lcom/androlua/LuaApplication;

    invoke-virtual {v0}, Lcom/androlua/LuaApplication;->getHotKeysDir()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/androlua/LuaUtil;->unZipBase64(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object p1, p0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$17;->b:Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v0

    const v1, 0x7f070202

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;->d(Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v0, p0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$17;->b:Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;->d(Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
