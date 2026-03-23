.class Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;->k(Landroid/preference/Preference;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/preference/Preference;

.field final synthetic b:Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;Landroid/preference/Preference;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$7;->b:Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;

    iput-object p2, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$7;->a:Landroid/preference/Preference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$7;->b:Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;

    invoke-static {p1}, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;->c(Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;)Ljava/util/Map;

    move-result-object p1

    iget-object p2, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$7;->a:Landroid/preference/Preference;

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p2

    const-string v0, "value_none"

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$7;->b:Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;->g(Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;Z)V

    iget-object p1, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$7;->a:Landroid/preference/Preference;

    const p2, 0x7f0708b0

    invoke-virtual {p1, p2}, Landroid/preference/Preference;->setSummary(I)V

    return-void
.end method
