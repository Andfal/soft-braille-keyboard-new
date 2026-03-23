.class Lcom/nirenr/talkman/settings/UserSetting$UserPreferenceFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/UserSetting$UserPreferenceFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/settings/UserSetting$UserPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/UserSetting$UserPreferenceFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/UserSetting$UserPreferenceFragment$1;->a:Lcom/nirenr/talkman/settings/UserSetting$UserPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2

    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/nirenr/talkman/settings/UserSetting$UserPreferenceFragment$1;->a:Lcom/nirenr/talkman/settings/UserSetting$UserPreferenceFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "\n\u2022 \u5728\u54ea\u6c47\uff1f\n  Where can I send money?\n  Alipay \u5408\u4f5c\u7684\u5883\u5916\u6c47\u6b3e\u5e73\u53f0 \n  https://remit.alipay.com\n\u2022 \u6c47\u6b3e\u5e73\u53f0\u9700\u8981\u4ec0\u4e48\u6536\u6b3e\u4fe1\u606f\uff1f\n  What information should I fill in at the money transfer platform?\n  Alipay ID (\u8d26\u53f7)\n  18231183652\n  Last Name(\u59d3)\n  LI\n  First Name(\u540d)\n  WEI LIANG\n"

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/nirenr/talkman/settings/UserSetting$UserPreferenceFragment$1$1;

    invoke-direct {v0, p0}, Lcom/nirenr/talkman/settings/UserSetting$UserPreferenceFragment$1$1;-><init>(Lcom/nirenr/talkman/settings/UserSetting$UserPreferenceFragment$1;)V

    const v1, 0x104000a

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f070095

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    const/4 p1, 0x1

    return p1
.end method
