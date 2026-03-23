.class Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment$3;->b:Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;

    iput-object p2, p0, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment$3;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4

    iget-object p1, p0, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment$3;->b:Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->h(Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;Z)V

    iget-object p1, p0, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment$3;->b:Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;

    invoke-static {p1}, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->c(Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment$3;->b:Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->g(Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;Z)V

    iget-object p1, p0, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment$3;->b:Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;

    invoke-static {p1}, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->i(Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;)V

    iget-object p1, p0, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment$3;->b:Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;

    invoke-static {p1, v0}, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->g(Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;Z)V

    :cond_0
    iget-object p1, p0, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment$3;->b:Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment$3;->b:Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/nirenr/talkman/settings/GestureSetting;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment$3;->b:Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;

    invoke-static {v2}, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->f(Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "RES_ID"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment$3;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_double_fling"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GESTURE_ID"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/nirenr/talkman/settings/BasePreferenceFragment;->startActivity(Landroid/content/Intent;)V

    return v0
.end method
