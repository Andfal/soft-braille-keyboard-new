.class Lcom/nirenr/talkman/settings/TimerSetting$TimerPreferenceFragment$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/TimerSetting$TimerPreferenceFragment;->g(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/nirenr/talkman/settings/TimerSetting$TimerPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/TimerSetting$TimerPreferenceFragment;I)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/TimerSetting$TimerPreferenceFragment$6;->b:Lcom/nirenr/talkman/settings/TimerSetting$TimerPreferenceFragment;

    iput p2, p0, Lcom/nirenr/talkman/settings/TimerSetting$TimerPreferenceFragment$6;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    :try_start_0
    new-instance p1, Lorg/json/JSONArray;

    iget-object p2, p0, Lcom/nirenr/talkman/settings/TimerSetting$TimerPreferenceFragment$6;->b:Lcom/nirenr/talkman/settings/TimerSetting$TimerPreferenceFragment;

    invoke-virtual {p2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const-string v0, "[]"

    const v1, 0x7f07066d

    invoke-static {p2, v1, v0}, Lk2/b0;->h(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcom/nirenr/talkman/settings/TimerSetting$TimerPreferenceFragment$6;->a:I

    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->remove(I)Ljava/lang/Object;

    iget-object p2, p0, Lcom/nirenr/talkman/settings/TimerSetting$TimerPreferenceFragment$6;->b:Lcom/nirenr/talkman/settings/TimerSetting$TimerPreferenceFragment;

    invoke-virtual {p2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v1, p1}, Lk2/b0;->j(Landroid/content/Context;ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/nirenr/talkman/settings/TimerSetting$TimerPreferenceFragment$6;->b:Lcom/nirenr/talkman/settings/TimerSetting$TimerPreferenceFragment;

    invoke-static {p1}, Lcom/nirenr/talkman/settings/TimerSetting$TimerPreferenceFragment;->f(Lcom/nirenr/talkman/settings/TimerSetting$TimerPreferenceFragment;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
