.class Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$19;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Z

.field final synthetic b:Lcom/androlua/LuaApplication;

.field final synthetic c:Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;[ZLcom/androlua/LuaApplication;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$19;->c:Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;

    iput-object p2, p0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$19;->a:[Z

    iput-object p3, p0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$19;->b:Lcom/androlua/LuaApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 11

    iget-object p1, p0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$19;->a:[Z

    array-length p2, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_1

    aget-boolean v2, p1, v1

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_2

    return-void

    :cond_2
    new-instance p1, Landroid/widget/ArrayListAdapter;

    iget-object p2, p0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$19;->c:Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;

    invoke-virtual {p2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/ArrayListAdapter;-><init>(Landroid/content/Context;)V

    new-instance p2, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$19;->c:Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p2, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v1}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    const v2, 0x104000a

    invoke-virtual {p2, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Dialog;->show()V

    const/4 v1, -0x1

    invoke-virtual {p2, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p2

    const/16 v1, 0x8

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    :goto_2
    iget-object v4, p0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$19;->a:[Z

    array-length v5, v4

    if-ge v3, v5, :cond_6

    aget-boolean v4, v4, v3

    if-nez v4, :cond_3

    goto/16 :goto_8

    :cond_3
    aget v4, v2, v0

    add-int/2addr v4, v1

    aput v4, v2, v0

    const-string v4, "backup"

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_8

    :pswitch_0
    iget-object v5, p0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$19;->b:Lcom/androlua/LuaApplication;

    invoke-virtual {v5}, Lcom/androlua/LuaApplication;->getNamesDir()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$19$10;

    invoke-direct {v6, p0, v2, p2, p1}, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$19$10;-><init>(Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$19;[ILandroid/widget/Button;Landroid/widget/ArrayListAdapter;)V

    const-string v7, "name.dat"

    goto :goto_3

    :pswitch_1
    iget-object v5, p0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$19;->b:Lcom/androlua/LuaApplication;

    const v6, 0x7f070278

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/androlua/LuaApplication;->getResourcesDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$19$9;

    invoke-direct {v6, p0, v2, p2, p1}, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$19$9;-><init>(Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$19;[ILandroid/widget/Button;Landroid/widget/ArrayListAdapter;)V

    const-string v7, "dict.dat"

    goto :goto_3

    :pswitch_2
    iget-object v5, p0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$19;->b:Lcom/androlua/LuaApplication;

    invoke-virtual {v5}, Lcom/androlua/LuaApplication;->getHotKeysDir()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$19$8;

    invoke-direct {v6, p0, v2, p2, p1}, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$19$8;-><init>(Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$19;[ILandroid/widget/Button;Landroid/widget/ArrayListAdapter;)V

    const-string v7, "hot_key.dat"

    goto :goto_3

    :pswitch_3
    iget-object v5, p0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$19;->b:Lcom/androlua/LuaApplication;

    invoke-virtual {v5}, Lcom/androlua/LuaApplication;->getCmdDir()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$19$7;

    invoke-direct {v6, p0, v2, p2, p1}, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$19$7;-><init>(Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$19;[ILandroid/widget/Button;Landroid/widget/ArrayListAdapter;)V

    const-string v7, "cmd.dat"

    goto :goto_3

    :pswitch_4
    iget-object v5, p0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$19;->b:Lcom/androlua/LuaApplication;

    invoke-virtual {v5}, Lcom/androlua/LuaApplication;->getGesturesDir()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$19$6;

    invoke-direct {v6, p0, v2, p2, p1}, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$19$6;-><init>(Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$19;[ILandroid/widget/Button;Landroid/widget/ArrayListAdapter;)V

    const-string v7, "gesture.dat"

    goto :goto_3

    :pswitch_5
    iget-object v5, p0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$19;->b:Lcom/androlua/LuaApplication;

    invoke-virtual {v5}, Lcom/androlua/LuaApplication;->getLabelsDir()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$19$5;

    invoke-direct {v6, p0, v2, p2, p1}, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$19$5;-><init>(Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$19;[ILandroid/widget/Button;Landroid/widget/ArrayListAdapter;)V

    const-string v7, "label.dat"

    goto :goto_3

    :pswitch_6
    iget-object v5, p0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$19;->b:Lcom/androlua/LuaApplication;

    invoke-virtual {v5}, Lcom/androlua/LuaApplication;->getTimerDir()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$19$4;

    invoke-direct {v6, p0, v2, p2, p1}, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$19$4;-><init>(Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$19;[ILandroid/widget/Button;Landroid/widget/ArrayListAdapter;)V

    const-string v7, "time.dat"

    :goto_3
    invoke-static {v4, v7, v5, v6}, Lcom/nirenr/talkman/util/a;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nirenr/talkman/util/HttpUtil$HttpCallback;)V

    goto/16 :goto_8

    :pswitch_7
    invoke-static {}, Lk2/c;->c()Ljava/util/ArrayList;

    move-result-object v5

    new-instance v6, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$19$3;

    invoke-direct {v6, p0, v2, p2, p1}, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$19$3;-><init>(Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$19;[ILandroid/widget/Button;Landroid/widget/ArrayListAdapter;)V

    const-string v7, "favorites.json"

    goto :goto_4

    :pswitch_8
    invoke-static {}, Lk2/c;->a()Ljava/util/ArrayList;

    move-result-object v5

    new-instance v6, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$19$2;

    invoke-direct {v6, p0, v2, p2, p1}, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$19$2;-><init>(Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$19;[ILandroid/widget/Button;Landroid/widget/ArrayListAdapter;)V

    const-string v7, "clipboard.json"

    :goto_4
    invoke-static {v4, v7, v5, v6}, Lcom/nirenr/talkman/util/a;->o(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/nirenr/talkman/util/HttpUtil$HttpCallback;)V

    goto :goto_8

    :pswitch_9
    iget-object v5, p0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$19;->c:Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;

    invoke-virtual {v5}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lk2/b0;->f(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v5

    :try_start_0
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    new-instance v7, Lorg/json/JSONArray;

    iget-object v8, p0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$19;->c:Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;

    invoke-virtual {v8}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lk2/b0;->f(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    iget-object v9, p0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$19;->c:Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;

    const v10, 0x7f070530

    invoke-virtual {v9, v10}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "[]"

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    :goto_5
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v8, v9, :cond_5

    invoke-virtual {v7, v8}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    goto :goto_6

    :cond_4
    iget-object v10, p0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$19;->c:Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;

    invoke-virtual {v10}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10, v9}, Lk2/b0;->g(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_5
    const-string v7, "profiles_map"

    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_7
    new-instance v6, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$19$1;

    invoke-direct {v6, p0, v2, p2, p1}, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$19$1;-><init>(Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$19;[ILandroid/widget/Button;Landroid/widget/ArrayListAdapter;)V

    const-string v7, "settings.json"

    invoke-static {v4, v7, v5, v6}, Lcom/nirenr/talkman/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/nirenr/talkman/util/HttpUtil$HttpCallback;)V

    :goto_8
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    :cond_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
