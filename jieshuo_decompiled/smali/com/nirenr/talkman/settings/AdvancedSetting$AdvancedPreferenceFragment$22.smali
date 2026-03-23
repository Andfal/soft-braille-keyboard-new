.class Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$22;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Z

.field final synthetic b:Lcom/androlua/LuaApplication;

.field final synthetic c:Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;[ZLcom/androlua/LuaApplication;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$22;->c:Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;

    iput-object p2, p0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$22;->a:[Z

    iput-object p3, p0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$22;->b:Lcom/androlua/LuaApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    iget-object p1, p0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$22;->a:[Z

    array-length p2, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_1

    aget-boolean v2, p1, v1

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_2

    return-void

    :cond_2
    new-instance p1, Landroid/widget/ArrayListAdapter;

    iget-object p2, p0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$22;->c:Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;

    invoke-virtual {p2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/ArrayListAdapter;-><init>(Landroid/content/Context;)V

    new-instance p2, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$22;->c:Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p2, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v1}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    new-instance v2, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$22$1;

    invoke-direct {v2, p0}, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$22$1;-><init>(Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$22;)V

    invoke-virtual {p2, v2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    const v2, 0x104000a

    invoke-virtual {p2, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Dialog;->show()V

    const/4 v1, -0x1

    invoke-virtual {p2, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p2

    const/16 v1, 0x8

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    :goto_2
    iget-object v4, p0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$22;->a:[Z

    array-length v5, v4

    if-ge v3, v5, :cond_4

    aget-boolean v4, v4, v3

    if-nez v4, :cond_3

    goto :goto_4

    :cond_3
    aget v4, v2, v0

    add-int/2addr v4, v1

    aput v4, v2, v0

    const-string v4, "backup"

    packed-switch v3, :pswitch_data_0

    goto :goto_4

    :pswitch_0
    new-instance v5, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$22$11;

    invoke-direct {v5, p0, v2, p2, p1}, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$22$11;-><init>(Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$22;[ILandroid/widget/Button;Landroid/widget/ArrayListAdapter;)V

    const-string v6, "name.dat"

    goto :goto_3

    :pswitch_1
    new-instance v5, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$22$10;

    invoke-direct {v5, p0, v2, p2, p1}, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$22$10;-><init>(Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$22;[ILandroid/widget/Button;Landroid/widget/ArrayListAdapter;)V

    const-string v6, "dict.dat"

    goto :goto_3

    :pswitch_2
    new-instance v5, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$22$9;

    invoke-direct {v5, p0, v2, p2, p1}, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$22$9;-><init>(Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$22;[ILandroid/widget/Button;Landroid/widget/ArrayListAdapter;)V

    const-string v6, "hot_key.dat"

    goto :goto_3

    :pswitch_3
    new-instance v5, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$22$8;

    invoke-direct {v5, p0, v2, p2, p1}, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$22$8;-><init>(Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$22;[ILandroid/widget/Button;Landroid/widget/ArrayListAdapter;)V

    const-string v6, "cmd.dat"

    goto :goto_3

    :pswitch_4
    new-instance v5, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$22$7;

    invoke-direct {v5, p0, v2, p2, p1}, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$22$7;-><init>(Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$22;[ILandroid/widget/Button;Landroid/widget/ArrayListAdapter;)V

    const-string v6, "gesture.dat"

    goto :goto_3

    :pswitch_5
    new-instance v5, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$22$6;

    invoke-direct {v5, p0, v2, p2, p1}, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$22$6;-><init>(Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$22;[ILandroid/widget/Button;Landroid/widget/ArrayListAdapter;)V

    const-string v6, "label.dat"

    goto :goto_3

    :pswitch_6
    new-instance v5, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$22$5;

    invoke-direct {v5, p0, v2, p2, p1}, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$22$5;-><init>(Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$22;[ILandroid/widget/Button;Landroid/widget/ArrayListAdapter;)V

    const-string v6, "time.dat"

    goto :goto_3

    :pswitch_7
    new-instance v5, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$22$4;

    invoke-direct {v5, p0, v2, p2, p1}, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$22$4;-><init>(Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$22;[ILandroid/widget/Button;Landroid/widget/ArrayListAdapter;)V

    const-string v6, "favorites.json"

    goto :goto_3

    :pswitch_8
    new-instance v5, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$22$3;

    invoke-direct {v5, p0, v2, p2, p1}, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$22$3;-><init>(Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$22;[ILandroid/widget/Button;Landroid/widget/ArrayListAdapter;)V

    const-string v6, "clipboard.json"

    goto :goto_3

    :pswitch_9
    new-instance v5, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$22$2;

    invoke-direct {v5, p0, v2, p2, p1}, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$22$2;-><init>(Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$22;[ILandroid/widget/Button;Landroid/widget/ArrayListAdapter;)V

    const-string v6, "settings.json"

    :goto_3
    invoke-static {v4, v6, v5}, Lcom/nirenr/talkman/util/a;->h(Ljava/lang/String;Ljava/lang/String;Lcom/nirenr/talkman/util/HttpUtil$HttpCallback;)V

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
