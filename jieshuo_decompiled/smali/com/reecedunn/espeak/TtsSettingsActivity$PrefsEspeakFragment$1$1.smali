.class Lcom/reecedunn/espeak/TtsSettingsActivity$PrefsEspeakFragment$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/reecedunn/espeak/TtsSettingsActivity$PrefsEspeakFragment$1;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/reecedunn/espeak/TtsSettingsActivity$PrefsEspeakFragment$1;

.field final synthetic val$d:Ljava/io/File;

.field final synthetic val$ls:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/reecedunn/espeak/TtsSettingsActivity$PrefsEspeakFragment$1;Ljava/io/File;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/reecedunn/espeak/TtsSettingsActivity$PrefsEspeakFragment$1$1;->this$1:Lcom/reecedunn/espeak/TtsSettingsActivity$PrefsEspeakFragment$1;

    iput-object p2, p0, Lcom/reecedunn/espeak/TtsSettingsActivity$PrefsEspeakFragment$1$1;->val$d:Ljava/io/File;

    iput-object p3, p0, Lcom/reecedunn/espeak/TtsSettingsActivity$PrefsEspeakFragment$1$1;->val$ls:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object p1, p0, Lcom/reecedunn/espeak/TtsSettingsActivity$PrefsEspeakFragment$1$1;->this$1:Lcom/reecedunn/espeak/TtsSettingsActivity$PrefsEspeakFragment$1;

    iget-object p1, p1, Lcom/reecedunn/espeak/TtsSettingsActivity$PrefsEspeakFragment$1;->this$0:Lcom/reecedunn/espeak/TtsSettingsActivity$PrefsEspeakFragment;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/reecedunn/espeak/TtsSettingsActivity$PrefsEspeakFragment$1$1;->this$1:Lcom/reecedunn/espeak/TtsSettingsActivity$PrefsEspeakFragment$1;

    iget-object v1, v1, Lcom/reecedunn/espeak/TtsSettingsActivity$PrefsEspeakFragment$1;->this$0:Lcom/reecedunn/espeak/TtsSettingsActivity$PrefsEspeakFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/androlua/LuaEditActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/reecedunn/espeak/TtsSettingsActivity$PrefsEspeakFragment$1$1;->val$d:Ljava/io/File;

    iget-object v3, p0, Lcom/reecedunn/espeak/TtsSettingsActivity$PrefsEspeakFragment$1$1;->val$ls:[Ljava/lang/String;

    aget-object p2, v3, p2

    invoke-direct {v1, v2, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
