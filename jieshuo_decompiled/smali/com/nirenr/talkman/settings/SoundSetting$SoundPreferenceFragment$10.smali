.class Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;->k(Landroid/preference/Preference;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:Ljava/io/File;

.field final synthetic c:Landroid/app/AlertDialog;

.field final synthetic d:Landroid/preference/Preference;

.field final synthetic e:Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;[Ljava/lang/String;Ljava/io/File;Landroid/app/AlertDialog;Landroid/preference/Preference;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$10;->e:Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;

    iput-object p2, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$10;->a:[Ljava/lang/String;

    iput-object p3, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$10;->b:Ljava/io/File;

    iput-object p4, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$10;->c:Landroid/app/AlertDialog;

    iput-object p5, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$10;->d:Landroid/preference/Preference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    const/4 p1, 0x1

    if-nez p3, :cond_0

    return p1

    :cond_0
    new-instance p2, Landroid/app/AlertDialog$Builder;

    iget-object p4, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$10;->e:Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;

    invoke-virtual {p4}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p4

    invoke-direct {p2, p4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 p4, 0x3

    new-array p4, p4, [Ljava/lang/String;

    iget-object p5, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$10;->e:Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;

    const v0, 0x7f0701ea

    invoke-virtual {p5, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p5

    const/4 v0, 0x0

    aput-object p5, p4, v0

    iget-object p5, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$10;->e:Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;

    const v0, 0x7f07055d

    invoke-virtual {p5, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p5

    aput-object p5, p4, p1

    iget-object p5, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$10;->e:Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;

    const v0, 0x7f070095

    invoke-virtual {p5, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p5

    const/4 v0, 0x2

    aput-object p5, p4, v0

    new-instance p5, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$10$1;

    invoke-direct {p5, p0, p3}, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$10$1;-><init>(Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$10;I)V

    invoke-virtual {p2, p4, p5}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p2

    invoke-static {p2}, Lh2/i;->b(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    return p1
.end method
