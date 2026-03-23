.class Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment$1;->a:Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3

    iget-object p1, p0, Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment$1;->a:Lcom/nirenr/talkman/settings/HelpFeedSetting$HelpFeedPreferenceFragment;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "mailto:946049229@qq.com"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "946049229@qq.com"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.extra.EMAIL"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/nirenr/talkman/settings/BasePreferenceFragment;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x0

    return p1
.end method
