.class Lcom/reecedunn/espeak/preference/ImportVoicePreference$2;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/reecedunn/espeak/preference/ImportVoicePreference;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/reecedunn/espeak/preference/ImportVoicePreference;


# direct methods
.method constructor <init>(Lcom/reecedunn/espeak/preference/ImportVoicePreference;)V
    .locals 0

    iput-object p1, p0, Lcom/reecedunn/espeak/preference/ImportVoicePreference$2;->this$0:Lcom/reecedunn/espeak/preference/ImportVoicePreference;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/io/File;
    .locals 3

    iget-object p1, p0, Lcom/reecedunn/espeak/preference/ImportVoicePreference$2;->this$0:Lcom/reecedunn/espeak/preference/ImportVoicePreference;

    invoke-static {p1}, Lcom/reecedunn/espeak/preference/ImportVoicePreference;->a(Lcom/reecedunn/espeak/preference/ImportVoicePreference;)Landroid/widget/Spinner;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    if-eqz p1, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/reecedunn/espeak/preference/ImportVoicePreference$2;->this$0:Lcom/reecedunn/espeak/preference/ImportVoicePreference;

    invoke-virtual {v1}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/reecedunn/espeak/CheckVoiceData;->getDataPath(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p1}, Lcom/reecedunn/espeak/FileUtils;->readBinary(Ljava/io/File;)[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/reecedunn/espeak/FileUtils;->write(Ljava/io/File;[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/reecedunn/espeak/preference/ImportVoicePreference$2;->doInBackground([Ljava/lang/Object;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/io/File;)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.reecedunn.espeak.LANGUAGES_UPDATED"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/reecedunn/espeak/preference/ImportVoicePreference$2;->this$0:Lcom/reecedunn/espeak/preference/ImportVoicePreference;

    invoke-virtual {v0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/reecedunn/espeak/preference/ImportVoicePreference$2;->onPostExecute(Ljava/io/File;)V

    return-void
.end method
