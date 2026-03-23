.class Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$9$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/dialog/EditDialog$EditDialogCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$9;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$9;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$9;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$9$1;->b:Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$9;

    iput-object p2, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$9$1;->a:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$9$1;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$9$1;->b:Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$9;

    iget-object v2, v2, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$9;->d:Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;

    invoke-static {v2}, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;->d(Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/androlua/LuaUtil;->copyFile(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$9$1;->b:Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$9;

    iget-object v0, v0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$9;->b:Landroid/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$9$1;->b:Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$9;

    iget-object v0, v0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$9;->d:Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;

    invoke-static {v0}, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;->c(Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$9$1;->b:Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$9;

    iget-object v1, v1, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$9;->b:Landroid/preference/Preference;

    invoke-virtual {v1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$9$1;->b:Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$9;

    iget-object p1, p1, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$9;->d:Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;->g(Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;Z)V

    return-void
.end method
