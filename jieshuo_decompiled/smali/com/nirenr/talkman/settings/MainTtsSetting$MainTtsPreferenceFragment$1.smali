.class Lcom/nirenr/talkman/settings/MainTtsSetting$MainTtsPreferenceFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/MainTtsSetting$MainTtsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/nirenr/talkman/settings/MainTtsSetting$MainTtsPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/MainTtsSetting$MainTtsPreferenceFragment;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/MainTtsSetting$MainTtsPreferenceFragment$1;->b:Lcom/nirenr/talkman/settings/MainTtsSetting$MainTtsPreferenceFragment;

    iput-object p2, p0, Lcom/nirenr/talkman/settings/MainTtsSetting$MainTtsPreferenceFragment$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 7

    iget-object p1, p0, Lcom/nirenr/talkman/settings/MainTtsSetting$MainTtsPreferenceFragment$1;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "iflytek"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_1
    const-string v0, "baidu"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_2
    const-string v0, "unisound"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_3
    const-string v0, "echovoice"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_4
    const-string v0, "system"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    :goto_0
    const-string p1, "com.android.settings.TTS_SETTINGS"

    packed-switch v3, :pswitch_data_0

    :try_start_0
    sget-object v0, Lcom/nirenr/talkman/settings/VoiceSetting$VoicePreferenceFragment;->g:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/nirenr/talkman/settings/MainTtsSetting$MainTtsPreferenceFragment$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ServiceInfo;

    iget-object v3, p0, Lcom/nirenr/talkman/settings/MainTtsSetting$MainTtsPreferenceFragment$1;->b:Lcom/nirenr/talkman/settings/MainTtsSetting$MainTtsPreferenceFragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    iget-object v5, p0, Lcom/nirenr/talkman/settings/MainTtsSetting$MainTtsPreferenceFragment$1;->a:Ljava/lang/String;

    iget-object v6, p0, Lcom/nirenr/talkman/settings/MainTtsSetting$MainTtsPreferenceFragment$1;->b:Lcom/nirenr/talkman/settings/MainTtsSetting$MainTtsPreferenceFragment;

    invoke-virtual {v6}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/nirenr/talkman/settings/VoiceSetting$VoicePreferenceFragment;->settingsActivityFromServiceInfo(Landroid/content/pm/ServiceInfo;Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :try_start_1
    iget-object v0, p0, Lcom/nirenr/talkman/settings/MainTtsSetting$MainTtsPreferenceFragment$1;->b:Lcom/nirenr/talkman/settings/MainTtsSetting$MainTtsPreferenceFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.speech.tts.engine.CONFIGURE_ENGINE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/nirenr/talkman/settings/MainTtsSetting$MainTtsPreferenceFragment$1;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return v2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :try_start_2
    iget-object v0, p0, Lcom/nirenr/talkman/settings/MainTtsSetting$MainTtsPreferenceFragment$1;->b:Lcom/nirenr/talkman/settings/MainTtsSetting$MainTtsPreferenceFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v3, p0, Lcom/nirenr/talkman/settings/MainTtsSetting$MainTtsPreferenceFragment$1;->b:Lcom/nirenr/talkman/settings/MainTtsSetting$MainTtsPreferenceFragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/nirenr/talkman/settings/MainTtsSetting$MainTtsPreferenceFragment$1;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v0, p0, Lcom/nirenr/talkman/settings/MainTtsSetting$MainTtsPreferenceFragment$1;->b:Lcom/nirenr/talkman/settings/MainTtsSetting$MainTtsPreferenceFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v3, p0, Lcom/nirenr/talkman/settings/MainTtsSetting$MainTtsPreferenceFragment$1;->b:Lcom/nirenr/talkman/settings/MainTtsSetting$MainTtsPreferenceFragment;

    const v4, 0x7f070409

    invoke-virtual {v3, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/nirenr/talkman/settings/MainTtsSetting$MainTtsPreferenceFragment$1;->b:Lcom/nirenr/talkman/settings/MainTtsSetting$MainTtsPreferenceFragment;

    new-instance v1, Landroid/content/Intent;

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    goto :goto_2

    :pswitch_0
    iget-object p1, p0, Lcom/nirenr/talkman/settings/MainTtsSetting$MainTtsPreferenceFragment$1;->b:Lcom/nirenr/talkman/settings/MainTtsSetting$MainTtsPreferenceFragment;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/nirenr/talkman/settings/MainTtsSetting$MainTtsPreferenceFragment$1;->b:Lcom/nirenr/talkman/settings/MainTtsSetting$MainTtsPreferenceFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v3, Lcom/nirenr/talkman/settings/FlyTekSettings;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_1
    invoke-virtual {p1, v0}, Lcom/nirenr/talkman/settings/BasePreferenceFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    :pswitch_1
    iget-object p1, p0, Lcom/nirenr/talkman/settings/MainTtsSetting$MainTtsPreferenceFragment$1;->b:Lcom/nirenr/talkman/settings/MainTtsSetting$MainTtsPreferenceFragment;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/nirenr/talkman/settings/MainTtsSetting$MainTtsPreferenceFragment$1;->b:Lcom/nirenr/talkman/settings/MainTtsSetting$MainTtsPreferenceFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v3, Lcom/reecedunn/espeak/eSpeakActivity;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_1

    :pswitch_2
    iget-object p1, p0, Lcom/nirenr/talkman/settings/MainTtsSetting$MainTtsPreferenceFragment$1;->b:Lcom/nirenr/talkman/settings/MainTtsSetting$MainTtsPreferenceFragment;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/nirenr/talkman/settings/MainTtsSetting$MainTtsPreferenceFragment$1;->b:Lcom/nirenr/talkman/settings/MainTtsSetting$MainTtsPreferenceFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v3, Lcom/nirenr/talkman/settings/EchoVoiceSettings;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/nirenr/talkman/settings/MainTtsSetting$MainTtsPreferenceFragment$1;->b:Lcom/nirenr/talkman/settings/MainTtsSetting$MainTtsPreferenceFragment;

    new-instance v1, Landroid/content/Intent;

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    :goto_2
    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/settings/BasePreferenceFragment;->startActivity(Landroid/content/Intent;)V

    :goto_3
    :pswitch_4
    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x34e38dd1 -> :sswitch_4
        -0x1346f9d3 -> :sswitch_3
        -0x117365e1 -> :sswitch_2
        0x592ae1b -> :sswitch_1
        0x66a74870 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method
