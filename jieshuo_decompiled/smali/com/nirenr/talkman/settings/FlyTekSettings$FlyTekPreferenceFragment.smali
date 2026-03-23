.class public Lcom/nirenr/talkman/settings/FlyTekSettings$FlyTekPreferenceFragment;
.super Lcom/nirenr/talkman/settings/BasePreferenceFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nirenr/talkman/settings/FlyTekSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FlyTekPreferenceFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/nirenr/talkman/settings/BasePreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/nirenr/talkman/settings/BasePreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-lt p1, v0, :cond_1

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object p1

    invoke-static {p1}, Lcom/androlua/w;->a(Landroid/preference/PreferenceManager;)V

    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lk2/b0;->f(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const v0, 0x7f07052f

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    :cond_2
    const p1, 0x7f0a000a

    invoke-virtual {p0, p1}, Lcom/nirenr/talkman/settings/BasePreferenceFragment;->addPreferencesFromResource(I)V

    const p1, 0x7f070292

    invoke-virtual {p0, p1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const p1, 0x7f07028e

    invoke-virtual {p0, p1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const p1, 0x7f07028f

    invoke-virtual {p0, p1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/nirenr/talkman/settings/BasePreferenceFragment;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    invoke-virtual {p1}, Landroid/preference/Preference;->getTitleRes()I

    move-result v0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lk2/b0;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p2}, Lk2/b0;->l(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Object;)Z

    invoke-static {}, Lj2/d;->y()Lj2/d;

    move-result-object p1

    const/4 v1, 0x1

    if-nez p1, :cond_0

    return v1

    :cond_0
    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p1}, Lj2/d;->C(Z)V

    goto :goto_0

    :sswitch_1
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lj2/d;->P(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lj2/d;->J(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_3
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lj2/d;->G(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_4
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lj2/d;->F(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_5
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p1}, Lj2/d;->D(Z)V

    :goto_0
    return v1

    :sswitch_data_0
    .sparse-switch
        0x7f070290 -> :sswitch_5
        0x7f0706a8 -> :sswitch_4
        0x7f0706b0 -> :sswitch_3
        0x7f0706b5 -> :sswitch_2
        0x7f0706c3 -> :sswitch_1
        0x7f0707d7 -> :sswitch_0
    .end sparse-switch
.end method
