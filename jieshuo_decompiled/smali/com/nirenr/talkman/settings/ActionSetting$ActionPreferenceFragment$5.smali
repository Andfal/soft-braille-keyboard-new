.class Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/dialog/FileDialog$OnAddListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/preference/Preference;

.field final synthetic b:Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment;Landroid/preference/Preference;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment$5;->b:Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment;

    iput-object p2, p0, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment$5;->a:Landroid/preference/Preference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment$5;->a:Landroid/preference/Preference;

    invoke-virtual {p2, p1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment$5;->b:Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment;

    invoke-virtual {p2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-static {p2}, Lk2/b0;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p2

    iget-object v0, p0, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment$5;->a:Landroid/preference/Preference;

    invoke-virtual {v0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p1}, Lk2/b0;->l(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method
