.class Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$33$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$33$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$33$1;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$33$1;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$33$1$1;->a:Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$33$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p1, p0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$33$1$1;->a:Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$33$1;

    iget-object p1, p1, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$33$1;->a:Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$33;

    iget-object p1, p1, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$33;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->reCreate()V

    :cond_0
    return-void
.end method
