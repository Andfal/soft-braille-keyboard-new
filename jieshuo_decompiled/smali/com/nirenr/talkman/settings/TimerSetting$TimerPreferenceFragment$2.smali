.class Lcom/nirenr/talkman/settings/TimerSetting$TimerPreferenceFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/TimerSetting$TimerPreferenceFragment;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/json/JSONArray;

.field final synthetic b:Lcom/nirenr/talkman/settings/TimerSetting$TimerPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/TimerSetting$TimerPreferenceFragment;Lorg/json/JSONArray;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/TimerSetting$TimerPreferenceFragment$2;->b:Lcom/nirenr/talkman/settings/TimerSetting$TimerPreferenceFragment;

    iput-object p2, p0, Lcom/nirenr/talkman/settings/TimerSetting$TimerPreferenceFragment$2;->a:Lorg/json/JSONArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9

    :try_start_0
    iget-object p1, p0, Lcom/nirenr/talkman/settings/TimerSetting$TimerPreferenceFragment$2;->a:Lorg/json/JSONArray;

    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    if-ge v2, v3, :cond_0

    :try_start_1
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/settings/TimerSetting$TimerPreferenceFragment$2;->b:Lcom/nirenr/talkman/settings/TimerSetting$TimerPreferenceFragment;

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v8

    move-object v1, v0

    move v2, p2

    invoke-static/range {v1 .. v8}, Lcom/nirenr/talkman/settings/TimerSetting$TimerPreferenceFragment;->c(Lcom/nirenr/talkman/settings/TimerSetting$TimerPreferenceFragment;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method
