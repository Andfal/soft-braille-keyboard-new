.class public Lcom/reecedunn/espeak/preference/SpeakPunctuationPreference;
.super Landroid/preference/DialogPreference;
.source "SourceFile"


# instance fields
.field private mAll:Landroid/widget/RadioButton;

.field private mCustom:Landroid/widget/RadioButton;

.field private mNone:Landroid/widget/RadioButton;

.field private mPunctuationCharacters:Landroid/widget/EditText;

.field private mSettings:Lcom/reecedunn/espeak/VoiceSettings;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/reecedunn/espeak/preference/SpeakPunctuationPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/reecedunn/espeak/preference/SpeakPunctuationPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p1, 0x7f050008

    invoke-virtual {p0, p1}, Landroid/preference/DialogPreference;->setDialogLayoutResource(I)V

    const p1, 0x7f050003

    invoke-virtual {p0, p1}, Landroid/preference/Preference;->setLayoutResource(I)V

    const p1, 0x104000a

    invoke-virtual {p0, p1}, Landroid/preference/DialogPreference;->setPositiveButtonText(I)V

    const p1, 0x7f070095

    invoke-virtual {p0, p1}, Landroid/preference/DialogPreference;->setNegativeButtonText(I)V

    return-void
.end method

.method private onDataChanged(ILjava/lang/String;)V
    .locals 3

    const v0, 0x7f07053a

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    goto :goto_2

    :cond_0
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f070539

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f070536

    invoke-virtual {p1, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_1

    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    :goto_1
    invoke-virtual {p0, p1}, Landroid/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    :goto_2
    return-void
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/reecedunn/espeak/preference/SpeakPunctuationPreference;->mSettings:Lcom/reecedunn/espeak/VoiceSettings;

    invoke-virtual {p1}, Lcom/reecedunn/espeak/VoiceSettings;->getPunctuationLevel()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/reecedunn/espeak/preference/SpeakPunctuationPreference;->mCustom:Landroid/widget/RadioButton;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/reecedunn/espeak/preference/SpeakPunctuationPreference;->mAll:Landroid/widget/RadioButton;

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/reecedunn/espeak/preference/SpeakPunctuationPreference;->mNone:Landroid/widget/RadioButton;

    :goto_0
    invoke-virtual {p1}, Landroid/widget/RadioButton;->toggle()V

    :goto_1
    iget-object p1, p0, Lcom/reecedunn/espeak/preference/SpeakPunctuationPreference;->mPunctuationCharacters:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/reecedunn/espeak/preference/SpeakPunctuationPreference;->mSettings:Lcom/reecedunn/espeak/VoiceSettings;

    invoke-virtual {v0}, Lcom/reecedunn/espeak/VoiceSettings;->getPunctuationCharacters()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    goto :goto_3

    :cond_0
    iget-object v0, p0, Lcom/reecedunn/espeak/preference/SpeakPunctuationPreference;->mPunctuationCharacters:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/reecedunn/espeak/preference/SpeakPunctuationPreference;->mNone:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/reecedunn/espeak/preference/SpeakPunctuationPreference;->mAll:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_2

    :cond_4
    const/4 v1, 0x2

    goto :goto_2

    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/reecedunn/espeak/preference/SpeakPunctuationPreference;->mAll:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    :goto_2
    invoke-direct {p0, v1, v0}, Lcom/reecedunn/espeak/preference/SpeakPunctuationPreference;->onDataChanged(ILjava/lang/String;)V

    invoke-virtual {p0}, Landroid/preference/Preference;->shouldCommit()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Landroid/preference/Preference;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    if-eqz v2, :cond_6

    const-string v3, "espeak_punctuation_characters"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "espeak_punctuation_level"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_6
    :goto_3
    invoke-super {p0, p1, p2}, Landroid/preference/DialogPreference;->onClick(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method protected onCreateDialogView()Landroid/view/View;
    .locals 2

    invoke-super {p0}, Landroid/preference/DialogPreference;->onCreateDialogView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f040001

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/reecedunn/espeak/preference/SpeakPunctuationPreference;->mAll:Landroid/widget/RadioButton;

    const v1, 0x7f04001b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/reecedunn/espeak/preference/SpeakPunctuationPreference;->mCustom:Landroid/widget/RadioButton;

    const v1, 0x7f040027

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/reecedunn/espeak/preference/SpeakPunctuationPreference;->mNone:Landroid/widget/RadioButton;

    const v1, 0x7f04002b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/reecedunn/espeak/preference/SpeakPunctuationPreference;->mPunctuationCharacters:Landroid/widget/EditText;

    return-object v0
.end method

.method public setVoiceSettings(Lcom/reecedunn/espeak/VoiceSettings;)V
    .locals 1

    iput-object p1, p0, Lcom/reecedunn/espeak/preference/SpeakPunctuationPreference;->mSettings:Lcom/reecedunn/espeak/VoiceSettings;

    invoke-virtual {p1}, Lcom/reecedunn/espeak/VoiceSettings;->getPunctuationLevel()I

    move-result p1

    iget-object v0, p0, Lcom/reecedunn/espeak/preference/SpeakPunctuationPreference;->mSettings:Lcom/reecedunn/espeak/VoiceSettings;

    invoke-virtual {v0}, Lcom/reecedunn/espeak/VoiceSettings;->getPunctuationCharacters()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/reecedunn/espeak/preference/SpeakPunctuationPreference;->onDataChanged(ILjava/lang/String;)V

    return-void
.end method
