.class Lcom/nirenr/talkman/settings/TimerSetting$TimerPreferenceFragment$7;
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
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Landroid/widget/TextView;

.field final synthetic c:Landroid/widget/TextView;

.field final synthetic d:Landroid/widget/TextView;

.field final synthetic e:Landroid/widget/EditText;

.field final synthetic f:Landroid/widget/EditText;

.field final synthetic g:I

.field final synthetic h:Lcom/nirenr/talkman/settings/TimerSetting$TimerPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/TimerSetting$TimerPreferenceFragment;Landroid/widget/EditText;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/EditText;I)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/TimerSetting$TimerPreferenceFragment$7;->h:Lcom/nirenr/talkman/settings/TimerSetting$TimerPreferenceFragment;

    iput-object p2, p0, Lcom/nirenr/talkman/settings/TimerSetting$TimerPreferenceFragment$7;->a:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/nirenr/talkman/settings/TimerSetting$TimerPreferenceFragment$7;->b:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/nirenr/talkman/settings/TimerSetting$TimerPreferenceFragment$7;->c:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/nirenr/talkman/settings/TimerSetting$TimerPreferenceFragment$7;->d:Landroid/widget/TextView;

    iput-object p6, p0, Lcom/nirenr/talkman/settings/TimerSetting$TimerPreferenceFragment$7;->e:Landroid/widget/EditText;

    iput-object p7, p0, Lcom/nirenr/talkman/settings/TimerSetting$TimerPreferenceFragment$7;->f:Landroid/widget/EditText;

    iput p8, p0, Lcom/nirenr/talkman/settings/TimerSetting$TimerPreferenceFragment$7;->g:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    :try_start_0
    new-instance p1, Lorg/json/JSONArray;

    iget-object p2, p0, Lcom/nirenr/talkman/settings/TimerSetting$TimerPreferenceFragment$7;->h:Lcom/nirenr/talkman/settings/TimerSetting$TimerPreferenceFragment;

    invoke-virtual {p2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const-string v0, "[]"

    const v1, 0x7f07066d

    invoke-static {p2, v1, v0}, Lk2/b0;->h(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2}, Lorg/json/JSONArray;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v0, p0, Lcom/nirenr/talkman/settings/TimerSetting$TimerPreferenceFragment$7;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v0}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    iget-object v0, p0, Lcom/nirenr/talkman/settings/TimerSetting$TimerPreferenceFragment$7;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {p2, v2, v0}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    iget-object v0, p0, Lcom/nirenr/talkman/settings/TimerSetting$TimerPreferenceFragment$7;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {p2, v2, v0}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    new-instance v0, Lorg/json/JSONArray;

    iget-object v2, p0, Lcom/nirenr/talkman/settings/TimerSetting$TimerPreferenceFragment$7;->d:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    const/4 v2, 0x3

    invoke-virtual {p2, v2, v0}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    iget-object v0, p0, Lcom/nirenr/talkman/settings/TimerSetting$TimerPreferenceFragment$7;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {p2, v2, v0}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    iget-object v0, p0, Lcom/nirenr/talkman/settings/TimerSetting$TimerPreferenceFragment$7;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x5

    invoke-virtual {p2, v2, v0}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    iget v0, p0, Lcom/nirenr/talkman/settings/TimerSetting$TimerPreferenceFragment$7;->g:I

    if-ltz v0, :cond_0

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :goto_0
    iget-object p2, p0, Lcom/nirenr/talkman/settings/TimerSetting$TimerPreferenceFragment$7;->h:Lcom/nirenr/talkman/settings/TimerSetting$TimerPreferenceFragment;

    invoke-virtual {p2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v1, p1}, Lk2/b0;->j(Landroid/content/Context;ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/nirenr/talkman/settings/TimerSetting$TimerPreferenceFragment$7;->h:Lcom/nirenr/talkman/settings/TimerSetting$TimerPreferenceFragment;

    invoke-static {p1}, Lcom/nirenr/talkman/settings/TimerSetting$TimerPreferenceFragment;->f(Lcom/nirenr/talkman/settings/TimerSetting$TimerPreferenceFragment;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method
