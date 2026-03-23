.class Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$31;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;->p(Landroid/preference/Preference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:Lorg/json/JSONArray;

.field final synthetic c:Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;[Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$31;->c:Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;

    iput-object p2, p0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$31;->a:[Ljava/lang/String;

    iput-object p3, p0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$31;->b:Lorg/json/JSONArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    new-instance p1, Lcom/nirenr/talkman/dialog/EditDialog;

    iget-object v0, p0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$31;->c:Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$31;->c:Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;

    const v2, 0x7f070256

    invoke-virtual {v1, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$31;->a:[Ljava/lang/String;

    aget-object v2, v2, p2

    new-instance v3, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$31$1;

    invoke-direct {v3, p0, p2}, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$31$1;-><init>(Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$31;I)V

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/nirenr/talkman/dialog/EditDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/nirenr/talkman/dialog/EditDialog$EditDialogCallback;)V

    invoke-virtual {p1}, Lcom/nirenr/talkman/dialog/EditDialog;->g()V

    return-void
.end method
