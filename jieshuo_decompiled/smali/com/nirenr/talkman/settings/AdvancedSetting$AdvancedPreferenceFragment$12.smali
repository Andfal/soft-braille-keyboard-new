.class Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/util/HttpUtil$HttpCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$12;->a:Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(Lcom/nirenr/talkman/util/HttpUtil$c;)V
    .locals 4

    iget v0, p1, Lcom/nirenr/talkman/util/HttpUtil$c;->a:I

    const/16 v1, 0xc8

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$12;->a:Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;

    iget-object p1, p1, Lcom/nirenr/talkman/util/HttpUtil$c;->b:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;->d(Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    iget-object p1, p1, Lcom/nirenr/talkman/util/HttpUtil$c;->b:Ljava/lang/String;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v0

    invoke-static {v0, p1}, Lh2/e;->f(Landroid/content/Context;Ljava/util/ArrayList;)Z

    iget-object p1, p0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$12;->a:Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v0

    const v1, 0x7f070202

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;->d(Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v0, p0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$12;->a:Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;->d(Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
