.class Lcom/nirenr/talkman/settings/FeedBackSetting$FeedPreferenceFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/FeedBackSetting$FeedPreferenceFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/settings/FeedBackSetting$FeedPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/FeedBackSetting$FeedPreferenceFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/FeedBackSetting$FeedPreferenceFragment$1;->a:Lcom/nirenr/talkman/settings/FeedBackSetting$FeedPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4

    iget-object p1, p0, Lcom/nirenr/talkman/settings/FeedBackSetting$FeedPreferenceFragment$1;->a:Lcom/nirenr/talkman/settings/FeedBackSetting$FeedPreferenceFragment;

    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lcom/nirenr/talkman/settings/FeedBackSetting$FeedPreferenceFragment$1;->a:Lcom/nirenr/talkman/settings/FeedBackSetting$FeedPreferenceFragment;

    const v1, 0x7f0708ae

    invoke-virtual {v0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f070605

    invoke-static {p1, v1, v0}, Lk2/b0;->h(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/nirenr/talkman/settings/FeedBackSetting$FeedPreferenceFragment$1;->a:Lcom/nirenr/talkman/settings/FeedBackSetting$FeedPreferenceFragment;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/nirenr/talkman/settings/FeedBackSetting$FeedPreferenceFragment$1;->a:Lcom/nirenr/talkman/settings/FeedBackSetting$FeedPreferenceFragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/nirenr/talkman/settings/SoundSetting;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "RES_ID"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/nirenr/talkman/settings/BasePreferenceFragment;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1
.end method
