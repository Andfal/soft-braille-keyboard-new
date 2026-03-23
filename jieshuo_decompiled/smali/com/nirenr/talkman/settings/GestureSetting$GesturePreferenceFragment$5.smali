.class Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment$5;
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
.field final synthetic a:Ljava/util/Set;

.field final synthetic b:Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;Ljava/util/Set;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment$5;->b:Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;

    iput-object p2, p0, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment$5;->a:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment$5;->a:Ljava/util/Set;

    iget-object p2, p0, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment$5;->b:Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;

    invoke-static {p2}, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->f(Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment$5;->b:Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;

    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const p2, 0x7f070033

    iget-object v0, p0, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment$5;->a:Ljava/util/Set;

    invoke-static {p1, p2, v0}, Lk2/b0;->j(Landroid/content/Context;ILjava/lang/Object;)V

    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment$5;->a:Ljava/util/Set;

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->loadGesturePackage(Ljava/util/Set;)V

    const p2, 0x7f07037a

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->asyncSpeak(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/nirenr/talkman/settings/ActionSetting;->setsReCreate()V

    return-void
.end method
