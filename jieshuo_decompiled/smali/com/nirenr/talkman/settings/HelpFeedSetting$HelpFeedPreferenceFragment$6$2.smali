.class Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment$6$2;
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

    iput-object p1, p0, Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment$6$2;->a:Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getEventCount()I

    move-result p2

    const-string v0, "\n"

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-lez p2, :cond_0

    iget-object p2, p0, Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment$6$2;->a:Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment$6;

    iget-object p2, p2, Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment$6;->b:Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment;

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getEventCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getEventTime()J

    move-result-wide v5

    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getEventCount()I

    move-result v7

    int-to-long v7, v7

    div-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v1

    const v5, 0x7f070269

    invoke-virtual {p2, v5, v4}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getTouchExpCount()I

    move-result p2

    if-lez p2, :cond_1

    iget-object p2, p0, Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment$6$2;->a:Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment$6;

    iget-object p2, p2, Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment$6;->b:Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment;

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getTouchExpCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getTouchExpTime()J

    move-result-wide v5

    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getTouchExpCount()I

    move-result v7

    int-to-long v7, v7

    div-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v1

    const v5, 0x7f070692

    invoke-virtual {p2, v5, v4}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getHoverCount()I

    move-result p2

    if-lez p2, :cond_2

    iget-object p2, p0, Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment$6$2;->a:Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment$6;

    iget-object p2, p2, Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment$6;->b:Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment;

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getHoverCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getHoverTime()J

    move-result-wide v5

    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getHoverCount()I

    move-result v7

    int-to-long v7, v7

    div-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v1

    const v5, 0x7f0702f9

    invoke-virtual {p2, v5, v4}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getGestureCount()I

    move-result p2

    if-lez p2, :cond_3

    iget-object p2, p0, Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment$6$2;->a:Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment$6;

    iget-object p2, p2, Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment$6;->b:Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment;

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getGestureCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getGestureTime()J

    move-result-wide v5

    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getGestureCount()I

    move-result v7

    int-to-long v7, v7

    div-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v1

    const v5, 0x7f0702cd

    invoke-virtual {p2, v5, v4}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-static {}, Lcom/nirenr/talkman/n;->E()I

    move-result p2

    if-lez p2, :cond_4

    iget-object p2, p0, Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment$6$2;->a:Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment$6;

    iget-object p2, p2, Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment$6;->b:Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {}, Lcom/nirenr/talkman/n;->E()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {}, Lcom/nirenr/talkman/n;->F()J

    move-result-wide v4

    invoke-static {}, Lcom/nirenr/talkman/n;->E()I

    move-result v2

    int-to-long v6, v2

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v3, v1

    const v1, 0x7f0705aa

    invoke-virtual {p2, v1, v3}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-object p2, p0, Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment$6$2;->a:Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment$6;

    iget-object p2, p2, Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment$6;->a:Landroid/preference/Preference;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
