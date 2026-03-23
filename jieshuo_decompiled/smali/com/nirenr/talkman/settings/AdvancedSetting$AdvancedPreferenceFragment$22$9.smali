.class Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$22$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/util/HttpUtil$HttpCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$22;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[I

.field final synthetic b:Landroid/widget/Button;

.field final synthetic c:Landroid/widget/ArrayListAdapter;

.field final synthetic d:Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$22;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$22;[ILandroid/widget/Button;Landroid/widget/ArrayListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$22$9;->d:Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$22;

    iput-object p2, p0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$22$9;->a:[I

    iput-object p3, p0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$22$9;->b:Landroid/widget/Button;

    iput-object p4, p0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$22$9;->c:Landroid/widget/ArrayListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(Lcom/nirenr/talkman/util/HttpUtil$c;)V
    .locals 3

    iget-object v0, p0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$22$9;->a:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    add-int/lit8 v2, v2, -0x1

    aput v2, v0, v1

    iget-object v0, p0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$22$9;->d:Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$22;

    iget-object v0, v0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$22;->c:Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$22$9;->a:[I

    aget v0, v0, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$22$9;->b:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget v0, p1, Lcom/nirenr/talkman/util/HttpUtil$c;->a:I

    const/16 v1, 0xc8

    const v2, 0x7f07041f

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$22$9;->d:Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$22;

    iget-object v0, v0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$22;->c:Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;

    iget-object p1, p1, Lcom/nirenr/talkman/util/HttpUtil$c;->b:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;->d(Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$22$9;->c:Landroid/widget/ArrayListAdapter;

    iget-object v0, p0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$22$9;->d:Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$22;

    iget-object v0, v0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$22;->c:Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;

    invoke-virtual {v0, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ArrayListAdapter;->add(Ljava/lang/Object;)V

    return-void

    :cond_2
    :try_start_0
    iget-object p1, p1, Lcom/nirenr/talkman/util/HttpUtil$c;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$22$9;->d:Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$22;

    iget-object v0, v0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$22;->b:Lcom/androlua/LuaApplication;

    invoke-virtual {v0}, Lcom/androlua/LuaApplication;->getHotKeysDir()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/androlua/LuaUtil;->unZipBase64(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object p1, p0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$22$9;->c:Landroid/widget/ArrayListAdapter;

    iget-object v0, p0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$22$9;->d:Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$22;

    iget-object v0, v0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$22;->c:Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;

    const v1, 0x7f07041e

    invoke-virtual {v0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ArrayListAdapter;->add(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v0, p0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$22$9;->d:Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$22;

    iget-object v0, v0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$22;->c:Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;->d(Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$22$9;->c:Landroid/widget/ArrayListAdapter;

    iget-object v0, p0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$22$9;->d:Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$22;

    iget-object v0, v0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$22;->c:Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;

    invoke-virtual {v0, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ArrayListAdapter;->add(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
