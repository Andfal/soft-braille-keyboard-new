.class Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$27$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/dialog/EditDialog$EditDialogCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$27;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$27;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$27;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$27$1;->a:Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$27;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$27$1;->a:Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$27;

    iget-object v0, v0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$27;->a:Lorg/json/JSONArray;

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    iget-object p1, p0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$27$1;->a:Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$27;

    iget-object p1, p1, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$27;->c:Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;

    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lk2/b0;->f(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iget-object v0, p0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$27$1;->a:Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$27;

    iget-object v0, v0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$27;->c:Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;

    const v1, 0x7f070530

    invoke-virtual {v0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$27$1;->a:Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$27;

    iget-object v1, v1, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$27;->a:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lk2/b0;->l(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$27$1;->a:Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$27;

    iget-object v0, p1, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$27;->c:Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;

    iget-object p1, p1, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$27;->b:Landroid/preference/Preference;

    invoke-virtual {v0, p1}, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;->onPreferenceClick(Landroid/preference/Preference;)Z

    return-void
.end method
