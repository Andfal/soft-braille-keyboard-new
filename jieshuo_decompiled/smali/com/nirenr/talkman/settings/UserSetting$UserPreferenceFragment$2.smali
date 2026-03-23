.class Lcom/nirenr/talkman/settings/UserSetting$UserPreferenceFragment$2;
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

    iput-object p1, p0, Lcom/nirenr/talkman/settings/UserSetting$UserPreferenceFragment$2;->a:Lcom/nirenr/talkman/settings/UserSetting$UserPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2

    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/nirenr/talkman/settings/UserSetting$UserPreferenceFragment$2;->a:Lcom/nirenr/talkman/settings/UserSetting$UserPreferenceFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "\n  \u5411\u4e2d\u56fd\u94f6\u884c\u5361\u76f4\u63a5\u6c47\u6b3e\u4eba\u6c11\u5e01\u53ef\u4ee5\u4eab\u53d7\u4f18\u60e0\uff0c\n  \u4e00\u5e7499\u4eba\u6c11\u5e01\uff0c\u4e24\u5e74180\u4eba\u6c11\u5e01\uff0c\u4e09\u5e74260\u4eba\u6c11\u5e01\uff0c\u624b\u7eed\u8d39\u8bf7\u81ea\u5df1\u652f\u4ed8\n  \u8bf7\u5728\u652f\u4ed8\u540e\u4fdd\u5b58\u652f\u4ed8\u622a\u56fe\u5e76\u9644\u4e0a\u7528\u6237\u540d\u548c\u7528\u6237id\u901a\u8fc7\u90ae\u4ef6\u53d1\u9001\u7ed9\u6211\uff0c\n  \u4e2d\u56fd\u5efa\u8bbe\u94f6\u884c 6227000131040118537\n  \u4e2d\u56fd\u90ae\u653f\u50a8\u84c4\u94f6\u884c 6217991210025862434\n  Last Name(\u59d3)\n  LI\n  First Name(\u540d)\n  WEI LIANG\n"

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/nirenr/talkman/settings/UserSetting$UserPreferenceFragment$2$1;

    invoke-direct {v0, p0}, Lcom/nirenr/talkman/settings/UserSetting$UserPreferenceFragment$2$1;-><init>(Lcom/nirenr/talkman/settings/UserSetting$UserPreferenceFragment$2;)V

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
