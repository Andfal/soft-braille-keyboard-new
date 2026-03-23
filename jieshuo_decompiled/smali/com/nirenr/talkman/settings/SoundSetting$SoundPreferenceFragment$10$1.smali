.class Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$10$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$10;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$10;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$10;I)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$10$1;->b:Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$10;

    iput p2, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$10$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 p1, 0x1

    if-eqz p2, :cond_1

    if-eq p2, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/nirenr/talkman/dialog/EditDialog;

    iget-object v0, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$10$1;->b:Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$10;

    iget-object v0, v0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$10;->e:Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$10$1;->b:Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$10;

    iget-object v1, v1, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$10;->e:Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;

    const v2, 0x7f070251

    invoke-virtual {v1, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$10$1;->b:Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$10;

    iget-object v2, v2, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$10;->a:[Ljava/lang/String;

    iget v3, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$10$1;->a:I

    sub-int/2addr v3, p1

    aget-object p1, v2, v3

    new-instance v2, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$10$1$2;

    invoke-direct {v2, p0}, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$10$1$2;-><init>(Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$10$1;)V

    invoke-direct {p2, v0, v1, p1, v2}, Lcom/nirenr/talkman/dialog/EditDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/nirenr/talkman/dialog/EditDialog$EditDialogCallback;)V

    invoke-virtual {p2}, Lcom/nirenr/talkman/dialog/EditDialog;->g()V

    goto :goto_0

    :cond_1
    new-instance p2, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$10$1;->b:Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$10;

    iget-object v0, v0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$10;->e:Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$10$1;->b:Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$10;

    iget-object v0, v0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$10;->e:Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;

    const v1, 0x7f0701ea

    invoke-virtual {v0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    iget-object v0, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$10$1;->b:Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$10;

    iget-object v0, v0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$10;->a:[Ljava/lang/String;

    iget v1, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$10$1;->a:I

    sub-int/2addr v1, p1

    aget-object p1, v0, v1

    invoke-virtual {p2, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$10$1$1;

    invoke-direct {p2, p0}, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$10$1$1;-><init>(Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$10$1;)V

    const v0, 0x104000a

    invoke-virtual {p1, v0, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f070095

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-static {p1}, Lh2/i;->b(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    :goto_0
    return-void
.end method
