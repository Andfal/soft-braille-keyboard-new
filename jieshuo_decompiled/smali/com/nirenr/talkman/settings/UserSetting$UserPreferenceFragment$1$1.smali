.class Lcom/nirenr/talkman/settings/UserSetting$UserPreferenceFragment$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/UserSetting$UserPreferenceFragment$1;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/settings/UserSetting$UserPreferenceFragment$1;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/UserSetting$UserPreferenceFragment$1;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/UserSetting$UserPreferenceFragment$1$1;->a:Lcom/nirenr/talkman/settings/UserSetting$UserPreferenceFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lcom/nirenr/talkman/settings/UserSetting$UserPreferenceFragment$1$1;->a:Lcom/nirenr/talkman/settings/UserSetting$UserPreferenceFragment$1;

    iget-object p1, p1, Lcom/nirenr/talkman/settings/UserSetting$UserPreferenceFragment$1;->a:Lcom/nirenr/talkman/settings/UserSetting$UserPreferenceFragment;

    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "https://remit.alipay.com"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/settings/BasePreferenceFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
