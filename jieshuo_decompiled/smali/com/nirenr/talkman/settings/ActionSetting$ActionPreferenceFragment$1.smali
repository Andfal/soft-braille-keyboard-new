.class Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment$1;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/util/ArrayList<",
        "[",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/androlua/LuaApplication;

.field final synthetic b:Ljava/util/Set;

.field final synthetic c:Ljava/util/HashSet;

.field final synthetic d:Ljava/util/Set;

.field final synthetic e:Ljava/util/HashSet;

.field final synthetic f:Landroid/preference/ListPreference;

.field final synthetic g:Landroid/preference/MultiSelectListPreference;

.field final synthetic h:Landroid/content/SharedPreferences;

.field final synthetic i:Landroid/preference/ListPreference;

.field final synthetic j:Landroid/preference/MultiSelectListPreference;

.field final synthetic k:Landroid/preference/MultiSelectListPreference;

.field final synthetic l:Landroid/preference/MultiSelectListPreference;

.field final synthetic m:Landroid/app/ProgressDialog;

.field final synthetic n:Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment;Lcom/androlua/LuaApplication;Ljava/util/Set;Ljava/util/HashSet;Ljava/util/Set;Ljava/util/HashSet;Landroid/preference/ListPreference;Landroid/preference/MultiSelectListPreference;Landroid/content/SharedPreferences;Landroid/preference/ListPreference;Landroid/preference/MultiSelectListPreference;Landroid/preference/MultiSelectListPreference;Landroid/preference/MultiSelectListPreference;Landroid/app/ProgressDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment$1;->n:Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment;

    iput-object p2, p0, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment$1;->a:Lcom/androlua/LuaApplication;

    iput-object p3, p0, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment$1;->b:Ljava/util/Set;

    iput-object p4, p0, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment$1;->c:Ljava/util/HashSet;

    iput-object p5, p0, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment$1;->d:Ljava/util/Set;

    iput-object p6, p0, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment$1;->e:Ljava/util/HashSet;

    iput-object p7, p0, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment$1;->f:Landroid/preference/ListPreference;

    iput-object p8, p0, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment$1;->g:Landroid/preference/MultiSelectListPreference;

    iput-object p9, p0, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment$1;->h:Landroid/content/SharedPreferences;

    iput-object p10, p0, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment$1;->i:Landroid/preference/ListPreference;

    iput-object p11, p0, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment$1;->j:Landroid/preference/MultiSelectListPreference;

    iput-object p12, p0, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment$1;->k:Landroid/preference/MultiSelectListPreference;

    iput-object p13, p0, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment$1;->l:Landroid/preference/MultiSelectListPreference;

    iput-object p14, p0, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment$1;->m:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected a([Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androlua/LuaApplication;->getAllApp()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment$1;->a:Lcom/androlua/LuaApplication;

    invoke-virtual {v1}, Lcom/androlua/LuaApplication;->getGesturesDir()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment$1;->n:Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment;

    const v5, 0x7f0708ae

    invoke-virtual {v4, v5}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v6, 0x0

    const-string v7, "config"

    if-eqz v4, :cond_2

    :try_start_1
    new-instance v8, Lk2/p;

    invoke-direct {v8}, Lk2/p;-><init>()V

    invoke-static {v4, v8}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    array-length v8, v4

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v8, :cond_2

    aget-object v10, v4, v9

    new-instance v11, Ljava/io/File;

    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v1, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v11, v12, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment$1;->b:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    goto :goto_2

    :cond_3
    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v9, v10, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_4

    goto :goto_2

    :cond_4
    iget-object v9, p0, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment$1;->c:Ljava/util/HashSet;

    invoke-virtual {v9, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment$1;->a:Lcom/androlua/LuaApplication;

    invoke-virtual {v1}, Lcom/androlua/LuaApplication;->getHotKeysDir()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment$1;->n:Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment;

    invoke-virtual {v4, v5}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8

    new-instance v5, Lk2/p;

    invoke-direct {v5}, Lk2/p;-><init>()V

    invoke-static {v4, v5}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    array-length v5, v4

    :goto_3
    if-ge v6, v5, :cond_8

    aget-object v8, v4, v6

    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v9, v10, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_8
    iget-object v4, p0, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment$1;->d:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    goto :goto_5

    :cond_9
    new-instance v6, Ljava/io/File;

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v6, v8, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_a

    goto :goto_5

    :cond_a
    iget-object v6, p0, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment$1;->e:Ljava/util/HashSet;

    invoke-virtual {v6, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_b
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_6
    return-object p1
.end method

.method protected b(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment$1;->n:Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->isDetached()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    :try_start_0
    iget-object v0, p0, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment$1;->f:Landroid/preference/ListPreference;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment$1;->f:Landroid/preference/ListPreference;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment$1;->g:Landroid/preference/MultiSelectListPreference;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/preference/MultiSelectListPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment$1;->g:Landroid/preference/MultiSelectListPreference;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/preference/MultiSelectListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment$1;->h:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment$1;->n:Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment;

    const v2, 0x7f070033

    invoke-virtual {v1, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment$1;->c:Ljava/util/HashSet;

    invoke-static {v0, v1, v2}, Lk2/b0;->l(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment$1;->i:Landroid/preference/ListPreference;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment$1;->i:Landroid/preference/ListPreference;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment$1;->j:Landroid/preference/MultiSelectListPreference;

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/preference/MultiSelectListPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment$1;->j:Landroid/preference/MultiSelectListPreference;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/preference/MultiSelectListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment$1;->h:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment$1;->n:Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment;

    const v1, 0x7f070036

    invoke-virtual {v0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment$1;->e:Ljava/util/HashSet;

    invoke-static {p1, v0, v1}, Lk2/b0;->l(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Object;)Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-static {}, Lcom/androlua/LuaApplication;->getAppList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment$1;->h:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment$1;->n:Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment;

    const v2, 0x7f07029d

    invoke-virtual {v1, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    new-instance p1, Lk2/p;

    invoke-direct {p1}, Lk2/p;-><init>()V

    invoke-static {v0, p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    iget-object p1, p0, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment$1;->k:Landroid/preference/MultiSelectListPreference;

    invoke-virtual {p1, v0}, Landroid/preference/MultiSelectListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment$1;->k:Landroid/preference/MultiSelectListPreference;

    invoke-virtual {p1, v0}, Landroid/preference/MultiSelectListPreference;->setEntries([Ljava/lang/CharSequence;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-static {}, Lcom/androlua/LuaApplication;->getAppList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment$1;->h:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment$1;->n:Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment;

    const v2, 0x7f07003c

    invoke-virtual {v1, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    new-instance p1, Lk2/p;

    invoke-direct {p1}, Lk2/p;-><init>()V

    invoke-static {v0, p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    iget-object p1, p0, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment$1;->l:Landroid/preference/MultiSelectListPreference;

    invoke-virtual {p1, v0}, Landroid/preference/MultiSelectListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment$1;->l:Landroid/preference/MultiSelectListPreference;

    invoke-virtual {p1, v0}, Landroid/preference/MultiSelectListPreference;->setEntries([Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment$1;->m:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment$1;->a([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment$1;->b(Ljava/util/ArrayList;)V

    return-void
.end method
