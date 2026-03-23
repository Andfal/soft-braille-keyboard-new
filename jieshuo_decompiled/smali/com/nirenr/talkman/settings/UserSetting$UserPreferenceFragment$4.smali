.class Lcom/nirenr/talkman/settings/UserSetting$UserPreferenceFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/UserSetting$UserPreferenceFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/settings/UserSetting$UserPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/UserSetting$UserPreferenceFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/UserSetting$UserPreferenceFragment$4;->a:Lcom/nirenr/talkman/settings/UserSetting$UserPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3

    iget-object p1, p0, Lcom/nirenr/talkman/settings/UserSetting$UserPreferenceFragment$4;->a:Lcom/nirenr/talkman/settings/UserSetting$UserPreferenceFragment;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/nirenr/talkman/settings/UserSetting$UserPreferenceFragment$4;->a:Lcom/nirenr/talkman/settings/UserSetting$UserPreferenceFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/nirenr/talkman/settings/LoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Lcom/nirenr/talkman/settings/BasePreferenceFragment;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1
.end method
