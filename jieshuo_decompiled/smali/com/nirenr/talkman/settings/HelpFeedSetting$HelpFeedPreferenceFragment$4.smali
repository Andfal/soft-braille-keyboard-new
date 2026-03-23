.class Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment$4;->a:Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1

    iget-object p1, p0, Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment$4;->a:Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment;

    const v0, 0x7f0705b5

    invoke-virtual {p1, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment$4;->a:Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment;

    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/nirenr/talkman/p;->c(Landroid/app/Activity;)V

    const/4 p1, 0x1

    return p1
.end method
