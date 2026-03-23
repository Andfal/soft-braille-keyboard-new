.class Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->n()V
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

    iput-object p1, p0, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment$6;->a:Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment$6;->a:Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;

    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iget-object p2, p0, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment$6;->a:Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;

    invoke-static {p2}, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->f(Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;)Ljava/lang/String;

    move-result-object p2

    const v0, 0x7f0702c9

    invoke-static {p1, v0, p2}, Lk2/b0;->j(Landroid/content/Context;ILjava/lang/Object;)V

    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment$6;->a:Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;

    invoke-static {p2}, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->f(Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->loadGesturePackage(Ljava/lang/String;)Z

    const p2, 0x7f07037a

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->asyncSpeak(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/nirenr/talkman/settings/ActionSetting;->setsReCreate()V

    return-void
.end method
