.class Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment;->e(Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment$7;->b:Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment;

    iput-object p2, p0, Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment$7;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2

    iget-object p1, p0, Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment$7;->b:Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment$7;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/nirenr/talkman/settings/BasePreferenceFragment;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1
.end method
