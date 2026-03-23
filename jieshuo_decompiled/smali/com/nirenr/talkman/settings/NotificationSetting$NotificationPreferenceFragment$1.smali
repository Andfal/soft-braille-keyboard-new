.class Lcom/nirenr/talkman/settings/NotificationSetting$NotificationPreferenceFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/NotificationSetting$NotificationPreferenceFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/settings/NotificationSetting$NotificationPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/NotificationSetting$NotificationPreferenceFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/NotificationSetting$NotificationPreferenceFragment$1;->a:Lcom/nirenr/talkman/settings/NotificationSetting$NotificationPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1

    invoke-static {}, Lcom/nirenr/talkman/settings/NotificationSetting;->setsReCreate()V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x16

    if-lt p1, v0, :cond_0

    iget-object p1, p0, Lcom/nirenr/talkman/settings/NotificationSetting$NotificationPreferenceFragment$1;->a:Lcom/nirenr/talkman/settings/NotificationSetting$NotificationPreferenceFragment;

    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/nirenr/talkman/NotificationListener;->e(Landroid/content/Context;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
