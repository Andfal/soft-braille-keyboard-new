.class Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment$2;->a:Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    iget-object p1, p0, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment$2;->a:Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;

    invoke-static {p1}, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->e(Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;)Ljava/util/HashMap;

    move-result-object p1

    const-string v0, "enabled"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment$2;->a:Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->g(Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;Z)V

    iget-object p1, p0, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment$2;->a:Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;

    invoke-static {p1}, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->i(Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;)V

    iget-object p1, p0, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment$2;->a:Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->g(Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;Z)V

    return p2
.end method
