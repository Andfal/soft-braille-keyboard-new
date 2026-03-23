.class public Lcom/reecedunn/espeak/TtsSettingsActivity;
.super Landroid/preference/PreferenceActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/reecedunn/espeak/TtsSettingsActivity$PrefsEspeakFragment;
    }
.end annotation


# static fields
.field private static final mOnPreferenceChanged:Landroid/preference/Preference$OnPreferenceChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/reecedunn/espeak/TtsSettingsActivity$1;

    invoke-direct {v0}, Lcom/reecedunn/espeak/TtsSettingsActivity$1;-><init>()V

    sput-object v0, Lcom/reecedunn/espeak/TtsSettingsActivity;->mOnPreferenceChanged:Landroid/preference/Preference$OnPreferenceChangeListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method static bridge synthetic a(Landroid/content/Context;Landroid/preference/PreferenceGroup;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/reecedunn/espeak/TtsSettingsActivity;->createPreferences(Landroid/content/Context;Landroid/preference/PreferenceGroup;)V

    return-void
.end method

.method private static createImportVoicePreference(Landroid/content/Context;)Landroid/preference/Preference;
    .locals 2

    const v0, 0x7f0702fe

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/reecedunn/espeak/preference/ImportVoicePreference;

    invoke-direct {v1, p0}, Lcom/reecedunn/espeak/preference/ImportVoicePreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v0}, Landroid/preference/DialogPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    sget-object p0, Lcom/reecedunn/espeak/TtsSettingsActivity;->mOnPreferenceChanged:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const p0, 0x7f0702fd

    invoke-virtual {v1, p0}, Lcom/reecedunn/espeak/preference/ImportVoicePreference;->setDescription(I)V

    return-object v1
.end method

.method private static createPreferences(Landroid/content/Context;Landroid/preference/PreferenceGroup;)V
    .locals 4

    new-instance v0, Lcom/reecedunn/espeak/SpeechSynthesis;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/reecedunn/espeak/SpeechSynthesis;-><init>(Landroid/content/Context;Lcom/reecedunn/espeak/SpeechSynthesis$SynthReadyCallback;)V

    new-instance v1, Lcom/reecedunn/espeak/VoiceSettings;

    invoke-static {p0}, Lk2/b0;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/reecedunn/espeak/VoiceSettings;-><init>(Landroid/content/SharedPreferences;Lcom/reecedunn/espeak/SpeechSynthesis;)V

    invoke-static {p0}, Lcom/reecedunn/espeak/TtsSettingsActivity;->createImportVoicePreference(Landroid/content/Context;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    const v2, 0x7f070267

    invoke-static {p0, v1, v2}, Lcom/reecedunn/espeak/TtsSettingsActivity;->createVoiceVariantPreference(Landroid/content/Context;Lcom/reecedunn/espeak/VoiceSettings;I)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    const v2, 0x7f070266

    invoke-static {p0, v1, v2}, Lcom/reecedunn/espeak/TtsSettingsActivity;->createSpeakPunctuationPreference(Landroid/content/Context;Lcom/reecedunn/espeak/VoiceSettings;I)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    iget-object v1, v0, Lcom/reecedunn/espeak/SpeechSynthesis;->Rate:Lcom/reecedunn/espeak/SpeechSynthesis$Parameter;

    const-string v2, "espeak_rate"

    const v3, 0x7f0705b9

    invoke-static {p0, v1, v2, v3}, Lcom/reecedunn/espeak/TtsSettingsActivity;->createSeekBarPreference(Landroid/content/Context;Lcom/reecedunn/espeak/SpeechSynthesis$Parameter;Ljava/lang/String;I)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    iget-object v1, v0, Lcom/reecedunn/espeak/SpeechSynthesis;->Pitch:Lcom/reecedunn/espeak/SpeechSynthesis$Parameter;

    const-string v2, "espeak_pitch"

    const v3, 0x7f0705b8

    invoke-static {p0, v1, v2, v3}, Lcom/reecedunn/espeak/TtsSettingsActivity;->createSeekBarPreference(Landroid/content/Context;Lcom/reecedunn/espeak/SpeechSynthesis$Parameter;Ljava/lang/String;I)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    iget-object v1, v0, Lcom/reecedunn/espeak/SpeechSynthesis;->PitchRange:Lcom/reecedunn/espeak/SpeechSynthesis$Parameter;

    const-string v2, "espeak_pitch_range"

    const v3, 0x7f070265

    invoke-static {p0, v1, v2, v3}, Lcom/reecedunn/espeak/TtsSettingsActivity;->createSeekBarPreference(Landroid/content/Context;Lcom/reecedunn/espeak/SpeechSynthesis$Parameter;Ljava/lang/String;I)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    iget-object v0, v0, Lcom/reecedunn/espeak/SpeechSynthesis;->Volume:Lcom/reecedunn/espeak/SpeechSynthesis$Parameter;

    const-string v1, "espeak_volume"

    const v2, 0x7f070268

    invoke-static {p0, v0, v1, v2}, Lcom/reecedunn/espeak/TtsSettingsActivity;->createSeekBarPreference(Landroid/content/Context;Lcom/reecedunn/espeak/SpeechSynthesis$Parameter;Ljava/lang/String;I)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    new-instance p1, Landroid/preference/Preference;

    invoke-direct {p1, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const p0, 0x7f050003

    invoke-virtual {p1, p0}, Landroid/preference/Preference;->setLayoutResource(I)V

    const p0, 0x7f0706ab

    invoke-virtual {p1, p0}, Landroid/preference/Preference;->setTitle(I)V

    new-instance p0, Landroid/content/Intent;

    const-string v0, "com.android.settings.TTS_SETTINGS"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    return-void
.end method

.method private static createSeekBarPreference(Landroid/content/Context;Lcom/reecedunn/espeak/SpeechSynthesis$Parameter;Ljava/lang/String;I)Landroid/preference/Preference;
    .locals 4

    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Lcom/reecedunn/espeak/SpeechSynthesis$Parameter;->getDefaultValue()I

    move-result v0

    new-instance v1, Lcom/reecedunn/espeak/preference/SeekBarPreference;

    invoke-direct {v1, p0}, Lcom/reecedunn/espeak/preference/SeekBarPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, p3}, Landroid/preference/DialogPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, p2}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    sget-object p3, Lcom/reecedunn/espeak/TtsSettingsActivity;->mOnPreferenceChanged:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v1, p3}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const/4 p3, 0x1

    invoke-virtual {v1, p3}, Landroid/preference/Preference;->setPersistent(Z)V

    sget-object v2, Lcom/reecedunn/espeak/TtsSettingsActivity$2;->$SwitchMap$com$reecedunn$espeak$SpeechSynthesis$UnitType:[I

    invoke-virtual {p1}, Lcom/reecedunn/espeak/SpeechSynthesis$Parameter;->getUnitType()Lcom/reecedunn/espeak/SpeechSynthesis$UnitType;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    if-eq v2, p3, :cond_1

    const/4 p3, 0x2

    if-ne v2, p3, :cond_0

    const p3, 0x7f070299

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Unsupported unit type for the parameter."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const p3, 0x7f070298

    :goto_0
    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Lcom/reecedunn/espeak/preference/SeekBarPreference;->setFormatter(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/reecedunn/espeak/SpeechSynthesis$Parameter;->getMinValue()I

    move-result p3

    invoke-virtual {v1, p3}, Lcom/reecedunn/espeak/preference/SeekBarPreference;->setMin(I)V

    invoke-virtual {p1}, Lcom/reecedunn/espeak/SpeechSynthesis$Parameter;->getMaxValue()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/reecedunn/espeak/preference/SeekBarPreference;->setMax(I)V

    invoke-virtual {v1, v0}, Lcom/reecedunn/espeak/preference/SeekBarPreference;->setDefaultValue(I)V

    invoke-static {p0}, Lk2/b0;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p2, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-virtual {v1, v0}, Lcom/reecedunn/espeak/preference/SeekBarPreference;->setProgress(I)V

    goto :goto_1

    :cond_2
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/reecedunn/espeak/preference/SeekBarPreference;->setProgress(I)V

    :goto_1
    return-object v1
.end method

.method private static createSpeakPunctuationPreference(Landroid/content/Context;Lcom/reecedunn/espeak/VoiceSettings;I)Landroid/preference/Preference;
    .locals 1

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/reecedunn/espeak/preference/SpeakPunctuationPreference;

    invoke-direct {v0, p0}, Lcom/reecedunn/espeak/preference/SpeakPunctuationPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p2}, Landroid/preference/DialogPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    sget-object p0, Lcom/reecedunn/espeak/TtsSettingsActivity;->mOnPreferenceChanged:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setPersistent(Z)V

    invoke-virtual {v0, p1}, Lcom/reecedunn/espeak/preference/SpeakPunctuationPreference;->setVoiceSettings(Lcom/reecedunn/espeak/VoiceSettings;)V

    return-object v0
.end method

.method private static createVoiceVariantPreference(Landroid/content/Context;Lcom/reecedunn/espeak/VoiceSettings;I)Landroid/preference/Preference;
    .locals 1

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/reecedunn/espeak/preference/VoiceVariantPreference;

    invoke-direct {v0, p0}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p2}, Landroid/preference/DialogPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    sget-object p0, Lcom/reecedunn/espeak/TtsSettingsActivity;->mOnPreferenceChanged:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setPersistent(Z)V

    invoke-virtual {p1}, Lcom/reecedunn/espeak/VoiceSettings;->getVoiceVariant()Lcom/reecedunn/espeak/VoiceVariant;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/reecedunn/espeak/preference/VoiceVariantPreference;->setVoiceVariant(Lcom/reecedunn/espeak/VoiceVariant;)V

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lk2/b0;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "espeak_pitch"

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "100"

    if-nez v3, :cond_0

    const-string v3, "default_pitch"

    invoke-interface {p1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_0
    const-string v1, "espeak_rate"

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    new-instance v3, Lcom/reecedunn/espeak/SpeechSynthesis;

    invoke-direct {v3, p0, v2}, Lcom/reecedunn/espeak/SpeechSynthesis;-><init>(Landroid/content/Context;Lcom/reecedunn/espeak/SpeechSynthesis$SynthReadyCallback;)V

    iget-object v5, v3, Lcom/reecedunn/espeak/SpeechSynthesis;->Rate:Lcom/reecedunn/espeak/SpeechSynthesis$Parameter;

    invoke-virtual {v5}, Lcom/reecedunn/espeak/SpeechSynthesis$Parameter;->getDefaultValue()I

    move-result v5

    iget-object v3, v3, Lcom/reecedunn/espeak/SpeechSynthesis;->Rate:Lcom/reecedunn/espeak/SpeechSynthesis$Parameter;

    invoke-virtual {v3}, Lcom/reecedunn/espeak/SpeechSynthesis$Parameter;->getMaxValue()I

    move-result v3

    const-string v6, "default_rate"

    invoke-interface {p1, v6, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    div-int/lit8 v4, v4, 0x64

    mul-int v4, v4, v5

    if-ge v4, v5, :cond_1

    goto :goto_0

    :cond_1
    move v5, v4

    :goto_0
    if-le v5, v3, :cond_2

    goto :goto_1

    :cond_2
    move v3, v5

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_3
    const-string v1, "espeak_variant"

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    const-string v2, "default_gender"

    const-string v3, "0"

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "2"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "female"

    goto :goto_2

    :cond_4
    const-string p1, "male"

    :goto_2
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_5
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    new-instance v0, Lcom/reecedunn/espeak/TtsSettingsActivity$PrefsEspeakFragment;

    invoke-direct {v0}, Lcom/reecedunn/espeak/TtsSettingsActivity$PrefsEspeakFragment;-><init>()V

    const v1, 0x1020002

    invoke-virtual {p1, v1, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commit()I

    return-void
.end method
