.class Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$9;
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
.field final synthetic a:Ljava/io/File;

.field final synthetic b:Landroid/preference/Preference;

.field final synthetic c:[Ljava/lang/String;

.field final synthetic d:Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;Ljava/io/File;Landroid/preference/Preference;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$9;->d:Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;

    iput-object p2, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$9;->a:Ljava/io/File;

    iput-object p3, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$9;->b:Landroid/preference/Preference;

    iput-object p4, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$9;->c:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    if-nez p2, :cond_1

    iget-object p1, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$9;->a:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$9;->d:Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;

    iget-object v0, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$9;->b:Landroid/preference/Preference;

    invoke-static {p2, v0, p1}, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;->h(Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;Landroid/preference/Preference;Ljava/io/File;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$9;->d:Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;

    iget-object p2, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$9;->b:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$9;->a:Ljava/io/File;

    invoke-static {p1, p2, v0}, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;->h(Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;Landroid/preference/Preference;Ljava/io/File;)V

    :goto_0
    return-void

    :cond_1
    add-int/lit8 p2, p2, -0x1

    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$9;->a:Ljava/io/File;

    iget-object v1, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$9;->c:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p2, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$9;->d:Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;

    iget-object v0, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$9;->b:Landroid/preference/Preference;

    invoke-static {p2, v0, p1}, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;->h(Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;Landroid/preference/Preference;Ljava/io/File;)V

    goto/16 :goto_1

    :cond_2
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$9;->d:Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;

    invoke-static {v1}, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;->d(Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$9;->a:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$9;->d:Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;

    invoke-static {v1}, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;->d(Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance p2, Lcom/nirenr/talkman/dialog/EditDialog;

    iget-object v0, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$9;->d:Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$9;->d:Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;

    const v2, 0x7f070304

    invoke-virtual {v1, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$9$1;

    invoke-direct {v3, p0, p1}, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$9$1;-><init>(Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$9;Ljava/io/File;)V

    invoke-direct {p2, v0, v1, v2, v3}, Lcom/nirenr/talkman/dialog/EditDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/nirenr/talkman/dialog/EditDialog$EditDialogCallback;)V

    invoke-virtual {p2}, Lcom/nirenr/talkman/dialog/EditDialog;->g()V

    return-void

    :cond_3
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$9;->d:Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;

    invoke-static {v2}, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;->d(Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/androlua/LuaUtil;->copyFile(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object p1, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$9;->d:Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$9;->d:Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;

    invoke-static {v1}, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;->d(Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$9;->c:[Ljava/lang/String;

    aget-object v2, v2, p2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;->i(Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$9;->b:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$9;->c:[Ljava/lang/String;

    aget-object v0, v0, p2

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$9;->d:Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;

    invoke-static {p1}, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;->c(Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$9;->b:Landroid/preference/Preference;

    invoke-virtual {v0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$9;->c:[Ljava/lang/String;

    aget-object p2, v1, p2

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$9;->d:Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;->g(Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;Z)V

    :goto_1
    return-void
.end method
