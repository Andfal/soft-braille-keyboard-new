.class Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment$6$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment$6;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment$6;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment$6;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment$6$1;->a:Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->clearStatInfo()V

    iget-object p1, p0, Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment$6$1;->a:Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment$6;

    iget-object p1, p1, Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment$6;->a:Landroid/preference/Preference;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
