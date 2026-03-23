.class Lcom/nirenr/talkman/settings/UserSetting$UserPreferenceFragment$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/UserSetting$UserPreferenceFragment;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/SharedPreferences;

.field final synthetic b:Lcom/nirenr/talkman/settings/UserSetting$UserPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/UserSetting$UserPreferenceFragment;Landroid/content/SharedPreferences;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/UserSetting$UserPreferenceFragment$10;->b:Lcom/nirenr/talkman/settings/UserSetting$UserPreferenceFragment;

    iput-object p2, p0, Lcom/nirenr/talkman/settings/UserSetting$UserPreferenceFragment$10;->a:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    iget-object p1, p0, Lcom/nirenr/talkman/settings/UserSetting$UserPreferenceFragment$10;->b:Lcom/nirenr/talkman/settings/UserSetting$UserPreferenceFragment;

    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const-string p2, "clipboard"

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ClipboardManager;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/nirenr/talkman/settings/UserSetting$UserPreferenceFragment$10;->a:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/nirenr/talkman/settings/UserSetting$UserPreferenceFragment$10;->b:Lcom/nirenr/talkman/settings/UserSetting$UserPreferenceFragment;

    const v1, 0x7f070898

    invoke-virtual {v0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    sget-object p2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object p2, v1, v3

    sget-object p2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const/4 v4, 0x2

    aput-object p2, v1, v4

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v5, 0x3

    aput-object p2, v1, v5

    const-string p2, "%s#%s %s#%d"

    invoke-static {v0, p2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/nirenr/talkman/settings/UserSetting$UserPreferenceFragment$10;->b:Lcom/nirenr/talkman/settings/UserSetting$UserPreferenceFragment;

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/nirenr/talkman/settings/UserSetting$UserPreferenceFragment$10;->a:Landroid/content/SharedPreferences;

    const v5, 0x7f0708a1

    invoke-virtual {v0, v5}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/nirenr/talkman/settings/UserSetting$UserPreferenceFragment$10;->b:Lcom/nirenr/talkman/settings/UserSetting$UserPreferenceFragment;

    const v7, 0x7f070475

    invoke-virtual {v6, v7}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    aput-object p2, v1, v3

    const p2, 0x7f0708ad

    invoke-virtual {v0, p2, v1}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "label"

    invoke-static {v0, p2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/nirenr/talkman/settings/UserSetting$UserPreferenceFragment$10;->b:Lcom/nirenr/talkman/settings/UserSetting$UserPreferenceFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f070374

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x104000a

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method
