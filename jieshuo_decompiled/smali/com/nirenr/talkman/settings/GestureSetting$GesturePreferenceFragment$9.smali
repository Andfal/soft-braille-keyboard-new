.class Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/dialog/FileDialog$OnAddListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/preference/Preference;

.field final synthetic b:Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;Landroid/preference/Preference;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment$9;->b:Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;

    iput-object p2, p0, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment$9;->a:Landroid/preference/Preference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment$9;->a:Landroid/preference/Preference;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment$9;->a:Landroid/preference/Preference;

    invoke-virtual {p2, p1}, Landroid/preference/Preference;->setDefaultValue(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment$9;->b:Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;

    invoke-static {p2}, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->e(Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;)Ljava/util/HashMap;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment$9;->b:Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;

    invoke-static {p2}, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->e(Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;)Ljava/util/HashMap;

    move-result-object p2

    iget-object v0, p0, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment$9;->a:Landroid/preference/Preference;

    invoke-virtual {v0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment$9;->b:Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;

    invoke-static {p2}, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->d(Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;)Ljava/util/Map;

    move-result-object p2

    iget-object v0, p0, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment$9;->a:Landroid/preference/Preference;

    invoke-virtual {v0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method
