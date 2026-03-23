.class Lcom/reecedunn/espeak/TtsSettingsActivity$PrefsEspeakFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/reecedunn/espeak/TtsSettingsActivity$PrefsEspeakFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/reecedunn/espeak/TtsSettingsActivity$PrefsEspeakFragment;


# direct methods
.method constructor <init>(Lcom/reecedunn/espeak/TtsSettingsActivity$PrefsEspeakFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/reecedunn/espeak/TtsSettingsActivity$PrefsEspeakFragment$1;->this$0:Lcom/reecedunn/espeak/TtsSettingsActivity$PrefsEspeakFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4

    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/reecedunn/espeak/TtsSettingsActivity$PrefsEspeakFragment$1;->this$0:Lcom/reecedunn/espeak/TtsSettingsActivity$PrefsEspeakFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/reecedunn/espeak/CheckVoiceData;->getDataPath(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    const-string v1, "voices/!v/"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    new-instance v2, Lk2/p;

    invoke-direct {v2}, Lk2/p;-><init>()V

    invoke-static {v0, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/reecedunn/espeak/TtsSettingsActivity$PrefsEspeakFragment$1;->this$0:Lcom/reecedunn/espeak/TtsSettingsActivity$PrefsEspeakFragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/reecedunn/espeak/TtsSettingsActivity$PrefsEspeakFragment$1$1;

    invoke-direct {v3, p0, p1, v0}, Lcom/reecedunn/espeak/TtsSettingsActivity$PrefsEspeakFragment$1$1;-><init>(Lcom/reecedunn/espeak/TtsSettingsActivity$PrefsEspeakFragment$1;Ljava/io/File;[Ljava/lang/String;)V

    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f070095

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return v1
.end method
