.class Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/util/HttpUtil$HttpCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/preference/PreferenceScreen;

.field final synthetic c:Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment;Ljava/lang/String;Landroid/preference/PreferenceScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment$5;->c:Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment;

    iput-object p2, p0, Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment$5;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment$5;->b:Landroid/preference/PreferenceScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(Lcom/nirenr/talkman/util/HttpUtil$c;)V
    .locals 8

    iget v0, p1, Lcom/nirenr/talkman/util/HttpUtil$c;->a:I

    const/16 v1, 0xc8

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object p1, p1, Lcom/nirenr/talkman/util/HttpUtil$c;->b:Ljava/lang/String;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment$5;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v4

    iget-object v5, p0, Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment$5;->b:Landroid/preference/PreferenceScreen;

    iget-object v6, p0, Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment$5;->c:Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment;

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v7, v4}, Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment;->d(Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :try_start_1
    new-instance p1, Lorg/json/JSONObject;

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment$5;->c:Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v4, "group.json"

    invoke-static {v1, v4}, Lcom/androlua/LuaUtil;->readAsset(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment$5;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v4

    iget-object v5, p0, Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment$5;->b:Landroid/preference/PreferenceScreen;

    iget-object v6, p0, Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment$5;->c:Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment;

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v7, v4}, Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment;->d(Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :try_start_2
    iget-object p1, p0, Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment$5;->c:Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment;

    invoke-static {p1}, Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment;->c(Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment$5;->b:Landroid/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment$5;->c:Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment;

    const-string v1, "\u89e3\u8bf4\u8bfb\u5c4f\u5b98\u65b9\u4ea4\u6d411\u7fa4(\u5df2\u6ee1)"

    const-string v2, "mqqopensdkapi://bizAgent/qm/qr?url=http%3A%2F%2Fqm.qq.com%2Fcgi-bin%2Fqm%2Fqr%3Ffrom%3Dapp%26p%3Dandroid%26k%3DbAurChiTtEO8kXjKC_c_M-oz3_bN1NV9"

    invoke-static {v0, v1, v2}, Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment;->d(Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    iget-object p1, p0, Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment$5;->b:Landroid/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment$5;->c:Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment;

    const-string v1, "\u89e3\u8bf4\u8bfb\u5c4f\u5b98\u65b9\u4ea4\u6d412\u7fa4(\u5df2\u6ee1)"

    const-string v2, "mqqopensdkapi://bizAgent/qm/qr?url=http%3A%2F%2Fqm.qq.com%2Fcgi-bin%2Fqm%2Fqr%3Ffrom%3Dapp%26p%3Dandroid%26k%3DCdkgssktUmqmRhXWKYpfhm3PjeeIr4dg"

    invoke-static {v0, v1, v2}, Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment;->d(Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    iget-object p1, p0, Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment$5;->b:Landroid/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment$5;->c:Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment;

    const-string v1, "\u89e3\u8bf4\u8bfb\u5c4f\u5b98\u65b9\u4ea4\u6d413\u7fa4"

    const-string v2, "mqqopensdkapi://bizAgent/qm/qr?url=http%3A%2F%2Fqm.qq.com%2Fcgi-bin%2Fqm%2Fqr%3Ffrom%3Dapp%26p%3Dandroid%26k%3DylY3W2Iib1ImwjFFfL0NI81opH1tZ4Xb"

    invoke-static {v0, v1, v2}, Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment;->d(Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    iget-object p1, p0, Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment$5;->b:Landroid/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment$5;->c:Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment;

    const-string v1, "\u89e3\u8bf4\u8d34\u5427"

    const-string v2, "https://tieba.baidu.com/mo/q/m?word=%E8%A7%A3%E8%AF%B4%E8%AF%BB%E5%B1%8F&tn6=bdISP&tn4=bdKSW&tn7=bdPSB&sub4=%E8%BF%9B%E5%90%A7"

    invoke-static {v0, v1, v2}, Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment;->d(Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    :goto_2
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_3

    :cond_3
    iget-object p1, p0, Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment$5;->b:Landroid/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment$5;->c:Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment;

    const-string v1, "International: qq group"

    const-string v2, "https://jq.qq.com/?_wv=1027&k=531iDix"

    invoke-static {v0, v1, v2}, Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment;->d(Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    iget-object p1, p0, Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment$5;->b:Landroid/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment$5;->c:Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment;

    const-string v1, "English: WhatsApp"

    const-string v2, "https://chat.whatsapp.com/EvRxAjotVad7eBoSKhRV7Z"

    invoke-static {v0, v1, v2}, Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment;->d(Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    iget-object p1, p0, Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment$5;->b:Landroid/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment$5;->c:Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment;

    const-string v1, "English: Telegram"

    const-string v2, "https://t.me/jieshuochat"

    invoke-static {v0, v1, v2}, Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment;->d(Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    iget-object p1, p0, Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment$5;->b:Landroid/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment$5;->c:Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment;

    const-string v1, "Portugu\u00eas: WhatsApp"

    const-string v2, "https://chat.whatsapp.com/Hl4yHswsfMy89wk7UyZ2cQ"

    invoke-static {v0, v1, v2}, Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment;->d(Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    iget-object p1, p0, Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment$5;->b:Landroid/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment$5;->c:Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment;

    const-string v1, "Portugu\u00eas: Telegram"

    const-string v2, "https://t.me/joinchat/FgvRUhXOyZzdZvZjfqcR9g"

    invoke-static {v0, v1, v2}, Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment;->d(Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    iget-object p1, p0, Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment$5;->b:Landroid/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment$5;->c:Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment;

    const-string v1, "espa\u00f1ol: WhatsApp"

    const-string v2, "https://chat.whatsapp.com/F0hPK0rLz6oC5OSgjucIKP"

    invoke-static {v0, v1, v2}, Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment;->d(Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    iget-object p1, p0, Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment$5;->b:Landroid/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment$5;->c:Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment;

    const-string v1, "espa\u00f1ol: Telegram"

    const-string v2, "https://t.me/jieshuochat_es"

    invoke-static {v0, v1, v2}, Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment;->d(Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    iget-object p1, p0, Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment$5;->b:Landroid/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment$5;->c:Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment;

    const-string v1, "Polski: Telegram"

    const-string v2, "http://t.me/commentary_pl"

    invoke-static {v0, v1, v2}, Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment;->d(Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    iget-object p1, p0, Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment$5;->b:Landroid/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment$5;->c:Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment;

    const-string v1, "Persian: Telegram"

    const-string v2, "http://t.me/persian_csr"

    invoke-static {v0, v1, v2}, Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment;->d(Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    iget-object p1, p0, Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment$5;->b:Landroid/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment$5;->c:Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment;

    const-string v1, "Deutsch: Telegram"

    const-string v2, "http://t.me/commentarydeutsch"

    invoke-static {v0, v1, v2}, Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment;->d(Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    iget-object p1, p0, Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment$5;->b:Landroid/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment$5;->c:Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment;

    const-string v1, "arabs: WhatsApp"

    const-string v2, "https://chat.whatsapp.com/Cp97c6t6YOkLElY1VlJOXd"

    invoke-static {v0, v1, v2}, Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment;->d(Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    iget-object p1, p0, Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment$5;->b:Landroid/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment$5;->c:Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment;

    const-string v1, "arabs: Telegram"

    const-string v2, "https://t.me/joinchat/L9bm4VIC5uWRWdUygFnG_w"

    invoke-static {v0, v1, v2}, Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment;->d(Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    iget-object p1, p0, Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment$5;->b:Landroid/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment$5;->c:Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment;

    const-string v1, "Tamil: Telegram"

    const-string v2, "https://t.me/jieshuotamil"

    invoke-static {v0, v1, v2}, Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment;->d(Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_2

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    return-void
.end method
