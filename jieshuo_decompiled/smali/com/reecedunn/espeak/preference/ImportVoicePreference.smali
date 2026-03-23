.class public Lcom/reecedunn/espeak/preference/ImportVoicePreference;
.super Landroid/preference/DialogPreference;
.source "SourceFile"


# instance fields
.field private mDictionaries:Landroid/widget/Spinner;

.field private mRoot:Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/reecedunn/espeak/preference/ImportVoicePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/reecedunn/espeak/preference/ImportVoicePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p1, 0x7f050002

    invoke-virtual {p0, p1}, Landroid/preference/DialogPreference;->setDialogLayoutResource(I)V

    const p1, 0x7f050003

    invoke-virtual {p0, p1}, Landroid/preference/Preference;->setLayoutResource(I)V

    const p1, 0x104000a

    invoke-virtual {p0, p1}, Landroid/preference/DialogPreference;->setPositiveButtonText(I)V

    const p1, 0x7f070095

    invoke-virtual {p0, p1}, Landroid/preference/DialogPreference;->setNegativeButtonText(I)V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/reecedunn/espeak/preference/ImportVoicePreference;->mRoot:Ljava/io/File;

    return-void
.end method

.method static bridge synthetic a(Lcom/reecedunn/espeak/preference/ImportVoicePreference;)Landroid/widget/Spinner;
    .locals 0

    iget-object p0, p0, Lcom/reecedunn/espeak/preference/ImportVoicePreference;->mDictionaries:Landroid/widget/Spinner;

    return-object p0
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/reecedunn/espeak/preference/ImportVoicePreference;->mRoot:Ljava/io/File;

    new-instance v0, Lcom/reecedunn/espeak/preference/ImportVoicePreference$1;

    invoke-direct {v0, p0}, Lcom/reecedunn/espeak/preference/ImportVoicePreference$1;-><init>(Lcom/reecedunn/espeak/preference/ImportVoicePreference;)V

    invoke-virtual {p1, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/reecedunn/espeak/preference/ImportVoicePreference;->mDictionaries:Landroid/widget/Spinner;

    new-instance v1, Lcom/reecedunn/espeak/FileListAdapter;

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-direct {v1, v2, p1}, Lcom/reecedunn/espeak/FileListAdapter;-><init>(Landroid/app/Activity;[Ljava/io/File;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/reecedunn/espeak/preference/ImportVoicePreference$2;

    invoke-direct {v0, p0}, Lcom/reecedunn/espeak/preference/ImportVoicePreference$2;-><init>(Lcom/reecedunn/espeak/preference/ImportVoicePreference;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    invoke-super {p0, p1, p2}, Landroid/preference/DialogPreference;->onClick(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method protected onCreateDialogView()Landroid/view/View;
    .locals 2

    invoke-super {p0}, Landroid/preference/DialogPreference;->onCreateDialogView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f04001c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/reecedunn/espeak/preference/ImportVoicePreference;->mDictionaries:Landroid/widget/Spinner;

    return-object v0
.end method

.method public setDescription(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    return-void
.end method
