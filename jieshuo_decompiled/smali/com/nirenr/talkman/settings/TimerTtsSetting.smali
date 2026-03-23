.class public Lcom/nirenr/talkman/settings/TimerTtsSetting;
.super Landroid/app/BaseActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nirenr/talkman/settings/TimerTtsSetting$TimerTtsPreferenceFragment;
    }
.end annotation


# static fields
.field private static a:Lcom/nirenr/talkman/settings/TimerTtsSetting;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/BaseActivity;-><init>()V

    return-void
.end method

.method public static recreat()V
    .locals 1

    sget-object v0, Lcom/nirenr/talkman/settings/TimerTtsSetting;->a:Lcom/nirenr/talkman/settings/TimerTtsSetting;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->recreate()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f070680

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    sput-object p0, Lcom/nirenr/talkman/settings/TimerTtsSetting;->a:Lcom/nirenr/talkman/settings/TimerTtsSetting;

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    new-instance v0, Lcom/nirenr/talkman/settings/TimerTtsSetting$TimerTtsPreferenceFragment;

    invoke-direct {v0}, Lcom/nirenr/talkman/settings/TimerTtsSetting$TimerTtsPreferenceFragment;-><init>()V

    const v1, 0x1020002

    invoke-virtual {p1, v1, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commit()I

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/nirenr/talkman/settings/TimerTtsSetting;->a:Lcom/nirenr/talkman/settings/TimerTtsSetting;

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/BaseActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/BaseActivity;->onResume()V

    return-void
.end method
