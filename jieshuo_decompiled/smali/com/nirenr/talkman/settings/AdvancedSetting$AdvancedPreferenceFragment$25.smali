.class Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$25;
.super Lcom/androlua/util/AsyncTaskX;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/androlua/util/AsyncTaskX<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field final synthetic b:Landroid/app/ProgressDialog;

.field final synthetic c:Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;Landroid/app/ProgressDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$25;->c:Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;

    iput-object p2, p0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$25;->b:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Lcom/androlua/util/AsyncTaskX;-><init>()V

    return-void
.end method

.method static bridge synthetic f(Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$25;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$25;->a:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$25;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 13

    const-string p1, "\u5907\u4efd"

    :try_start_0
    new-instance v0, Ljava/io/ObjectOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v2

    const-string v3, "\u8bbe\u7f6e.dat"

    invoke-virtual {v2, p1, v3}, Lcom/androlua/LuaApplication;->getLuaExtPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-object v1, p0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$25;->c:Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lk2/b0;->f(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$25;->c:Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;

    const v3, 0x7f07089d

    invoke-virtual {v2, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$25;->c:Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;

    const v4, 0x7f0708ab

    invoke-virtual {v2, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$25;->c:Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;

    const v5, 0x7f070898

    invoke-virtual {v2, v5}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$25;->c:Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;

    const v6, 0x7f0708a1

    invoke-virtual {v2, v6}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$25;->c:Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;

    const v7, 0x7f0708a4

    invoke-virtual {v2, v7}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V

    new-instance v0, Ljava/io/ObjectOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v2

    const-string v8, "\u526a\u5207\u677f.dat"

    invoke-virtual {v2, p1, v8}, Lcom/androlua/LuaApplication;->getLuaExtPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-static {}, Lk2/c;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V

    new-instance v0, Ljava/io/ObjectOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v2

    const-string v8, "\u6536\u85cf\u5939.dat"

    invoke-virtual {v2, p1, v8}, Lcom/androlua/LuaApplication;->getLuaExtPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-static {}, Lk2/c;->c()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v0, Lorg/json/JSONArray;

    iget-object v1, p0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$25;->c:Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lk2/b0;->f(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$25;->c:Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;

    const v8, 0x7f070530

    invoke-virtual {v2, v8}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v8, "[]"

    invoke-interface {v1, v2, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_1

    :cond_0
    new-instance v8, Ljava/io/ObjectOutputStream;

    new-instance v9, Ljava/io/FileOutputStream;

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ".dat"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, p1, v11}, Lcom/androlua/LuaApplication;->getLuaExtPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v8, v9}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-object v9, p0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$25;->c:Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;

    invoke-virtual {v9}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9, v2}, Lk2/b0;->g(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    iget-object v9, p0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$25;->c:Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;

    invoke-virtual {v9, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v9, p0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$25;->c:Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;

    invoke-virtual {v9, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v9, p0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$25;->c:Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;

    invoke-virtual {v9, v5}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v9, p0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$25;->c:Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;

    invoke-virtual {v9, v6}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v9, p0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$25;->c:Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;

    invoke-virtual {v9, v7}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v8, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v8}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :cond_1
    new-instance p1, Ljava/io/File;

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/androlua/LuaApplication;->getLuaExtDir()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    const-string v1, "backups"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$25;->a:Ljava/lang/String;

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/androlua/LuaApplication;->getLuaExtDir()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$25;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$25;->c:Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;

    invoke-virtual {v1}, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/androlua/LuaUtil;->zip(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$25;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/androlua/util/AsyncTaskX;->onPostExecute(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$25;->b:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$25;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$25;->c:Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;

    invoke-virtual {v1}, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$25;->c:Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f070202

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$25;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$25;->c:Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;

    invoke-virtual {v2}, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$25$1;

    invoke-direct {v0, p0}, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$25$1;-><init>(Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$25;)V

    const v1, 0x7f070936

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f070095

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$25;->c:Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;

    const v0, 0x7f0703d1

    invoke-virtual {p1, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;->d(Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
