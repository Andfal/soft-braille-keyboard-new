.class Lcom/nirenr/talkman/settings/BasePreferenceFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/BasePreferenceFragment;->b(Landroid/preference/PreferenceScreen;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/settings/BasePreferenceFragment;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/BasePreferenceFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/BasePreferenceFragment$1;->a:Lcom/nirenr/talkman/settings/BasePreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Landroid/preference/ListPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nirenr/talkman/settings/BasePreferenceFragment$1;->a:Lcom/nirenr/talkman/settings/BasePreferenceFragment;

    move-object v1, p1

    check-cast v1, Landroid/preference/ListPreference;

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nirenr/talkman/settings/BasePreferenceFragment;->setSummary(Landroid/preference/ListPreference;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Landroid/preference/MultiSelectListPreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nirenr/talkman/settings/BasePreferenceFragment$1;->a:Lcom/nirenr/talkman/settings/BasePreferenceFragment;

    move-object v1, p1

    check-cast v1, Landroid/preference/MultiSelectListPreference;

    move-object v2, p2

    check-cast v2, Ljava/util/Set;

    invoke-virtual {v0, v1, v2}, Lcom/nirenr/talkman/settings/BasePreferenceFragment;->setSummary(Landroid/preference/MultiSelectListPreference;Ljava/util/Set;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/nirenr/talkman/settings/BasePreferenceFragment$1;->a:Lcom/nirenr/talkman/settings/BasePreferenceFragment;

    invoke-virtual {v0, p1, p2}, Lcom/nirenr/talkman/settings/BasePreferenceFragment;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
