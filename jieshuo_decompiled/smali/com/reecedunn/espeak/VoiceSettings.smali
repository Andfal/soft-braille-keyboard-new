.class public Lcom/reecedunn/espeak/VoiceSettings;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final PREF_DEFAULT_GENDER:Ljava/lang/String; = "default_gender"

.field public static final PREF_DEFAULT_PITCH:Ljava/lang/String; = "default_pitch"

.field public static final PREF_DEFAULT_RATE:Ljava/lang/String; = "default_rate"

.field public static final PREF_PITCH:Ljava/lang/String; = "espeak_pitch"

.field public static final PREF_PITCH_RANGE:Ljava/lang/String; = "espeak_pitch_range"

.field public static final PREF_PUNCTUATION_CHARACTERS:Ljava/lang/String; = "espeak_punctuation_characters"

.field public static final PREF_PUNCTUATION_LEVEL:Ljava/lang/String; = "espeak_punctuation_level"

.field public static final PREF_RATE:Ljava/lang/String; = "espeak_rate"

.field public static final PREF_VARIANT:Ljava/lang/String; = "espeak_variant"

.field public static final PREF_VOLUME:Ljava/lang/String; = "espeak_volume"

.field public static final PRESET_PITCH:Ljava/lang/String; = "pitch"

.field public static final PRESET_PITCH_RANGE:Ljava/lang/String; = "pitch-range"

.field public static final PRESET_PUNCTUATION_CHARACTERS:Ljava/lang/String; = "punctuation-characters"

.field public static final PRESET_PUNCTUATION_LEVEL:Ljava/lang/String; = "punctuation-level"

.field public static final PRESET_RATE:Ljava/lang/String; = "rate"

.field public static final PRESET_VARIANT:Ljava/lang/String; = "variant"

.field public static final PRESET_VOLUME:Ljava/lang/String; = "volume"

.field public static final PUNCTUATION_ALL:Ljava/lang/String; = "all"

.field public static final PUNCTUATION_NONE:Ljava/lang/String; = "none"

.field public static final PUNCTUATION_SOME:Ljava/lang/String; = "some"


# instance fields
.field private final mEngine:Lcom/reecedunn/espeak/SpeechSynthesis;

.field private final mPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;Lcom/reecedunn/espeak/SpeechSynthesis;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/reecedunn/espeak/VoiceSettings;->mPreferences:Landroid/content/SharedPreferences;

    iput-object p2, p0, Lcom/reecedunn/espeak/VoiceSettings;->mEngine:Lcom/reecedunn/espeak/SpeechSynthesis;

    return-void
.end method

.method private getPreferenceValue(Ljava/lang/String;I)I
    .locals 2

    iget-object v0, p0, Lcom/reecedunn/espeak/VoiceSettings;->mPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return p2

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    return p1
.end method


# virtual methods
.method public getPitch()I
    .locals 4

    iget-object v0, p0, Lcom/reecedunn/espeak/VoiceSettings;->mEngine:Lcom/reecedunn/espeak/SpeechSynthesis;

    iget-object v0, v0, Lcom/reecedunn/espeak/SpeechSynthesis;->Pitch:Lcom/reecedunn/espeak/SpeechSynthesis$Parameter;

    invoke-virtual {v0}, Lcom/reecedunn/espeak/SpeechSynthesis$Parameter;->getMinValue()I

    move-result v0

    iget-object v1, p0, Lcom/reecedunn/espeak/VoiceSettings;->mEngine:Lcom/reecedunn/espeak/SpeechSynthesis;

    iget-object v1, v1, Lcom/reecedunn/espeak/SpeechSynthesis;->Pitch:Lcom/reecedunn/espeak/SpeechSynthesis$Parameter;

    invoke-virtual {v1}, Lcom/reecedunn/espeak/SpeechSynthesis$Parameter;->getMaxValue()I

    move-result v1

    const-string v2, "espeak_pitch"

    const/high16 v3, -0x80000000

    invoke-direct {p0, v2, v3}, Lcom/reecedunn/espeak/VoiceSettings;->getPreferenceValue(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_0

    const-string v2, "default_pitch"

    const/16 v3, 0x64

    invoke-direct {p0, v2, v3}, Lcom/reecedunn/espeak/VoiceSettings;->getPreferenceValue(Ljava/lang/String;I)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    :cond_0
    if-le v2, v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    if-ge v1, v0, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    return v0
.end method

.method public getPitchRange()I
    .locals 4

    iget-object v0, p0, Lcom/reecedunn/espeak/VoiceSettings;->mEngine:Lcom/reecedunn/espeak/SpeechSynthesis;

    iget-object v0, v0, Lcom/reecedunn/espeak/SpeechSynthesis;->PitchRange:Lcom/reecedunn/espeak/SpeechSynthesis$Parameter;

    invoke-virtual {v0}, Lcom/reecedunn/espeak/SpeechSynthesis$Parameter;->getMinValue()I

    move-result v0

    iget-object v1, p0, Lcom/reecedunn/espeak/VoiceSettings;->mEngine:Lcom/reecedunn/espeak/SpeechSynthesis;

    iget-object v1, v1, Lcom/reecedunn/espeak/SpeechSynthesis;->PitchRange:Lcom/reecedunn/espeak/SpeechSynthesis$Parameter;

    invoke-virtual {v1}, Lcom/reecedunn/espeak/SpeechSynthesis$Parameter;->getMaxValue()I

    move-result v1

    iget-object v2, p0, Lcom/reecedunn/espeak/VoiceSettings;->mEngine:Lcom/reecedunn/espeak/SpeechSynthesis;

    iget-object v2, v2, Lcom/reecedunn/espeak/SpeechSynthesis;->PitchRange:Lcom/reecedunn/espeak/SpeechSynthesis$Parameter;

    invoke-virtual {v2}, Lcom/reecedunn/espeak/SpeechSynthesis$Parameter;->getDefaultValue()I

    move-result v2

    const-string v3, "espeak_pitch_range"

    invoke-direct {p0, v3, v2}, Lcom/reecedunn/espeak/VoiceSettings;->getPreferenceValue(Ljava/lang/String;I)I

    move-result v2

    if-le v2, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-ge v1, v0, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    return v0
.end method

.method public getPunctuationCharacters()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/reecedunn/espeak/VoiceSettings;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "espeak_punctuation_characters"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPunctuationLevel()I
    .locals 4

    iget-object v0, p0, Lcom/reecedunn/espeak/VoiceSettings;->mEngine:Lcom/reecedunn/espeak/SpeechSynthesis;

    iget-object v0, v0, Lcom/reecedunn/espeak/SpeechSynthesis;->Punctuation:Lcom/reecedunn/espeak/SpeechSynthesis$Parameter;

    invoke-virtual {v0}, Lcom/reecedunn/espeak/SpeechSynthesis$Parameter;->getMinValue()I

    move-result v0

    iget-object v1, p0, Lcom/reecedunn/espeak/VoiceSettings;->mEngine:Lcom/reecedunn/espeak/SpeechSynthesis;

    iget-object v1, v1, Lcom/reecedunn/espeak/SpeechSynthesis;->Punctuation:Lcom/reecedunn/espeak/SpeechSynthesis$Parameter;

    invoke-virtual {v1}, Lcom/reecedunn/espeak/SpeechSynthesis$Parameter;->getMaxValue()I

    move-result v1

    iget-object v2, p0, Lcom/reecedunn/espeak/VoiceSettings;->mEngine:Lcom/reecedunn/espeak/SpeechSynthesis;

    iget-object v2, v2, Lcom/reecedunn/espeak/SpeechSynthesis;->Punctuation:Lcom/reecedunn/espeak/SpeechSynthesis$Parameter;

    invoke-virtual {v2}, Lcom/reecedunn/espeak/SpeechSynthesis$Parameter;->getDefaultValue()I

    move-result v2

    const-string v3, "espeak_punctuation_level"

    invoke-direct {p0, v3, v2}, Lcom/reecedunn/espeak/VoiceSettings;->getPreferenceValue(Ljava/lang/String;I)I

    move-result v2

    if-le v2, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-ge v1, v0, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    return v0
.end method

.method public getRate()I
    .locals 4

    iget-object v0, p0, Lcom/reecedunn/espeak/VoiceSettings;->mEngine:Lcom/reecedunn/espeak/SpeechSynthesis;

    iget-object v0, v0, Lcom/reecedunn/espeak/SpeechSynthesis;->Rate:Lcom/reecedunn/espeak/SpeechSynthesis$Parameter;

    invoke-virtual {v0}, Lcom/reecedunn/espeak/SpeechSynthesis$Parameter;->getMinValue()I

    move-result v0

    iget-object v1, p0, Lcom/reecedunn/espeak/VoiceSettings;->mEngine:Lcom/reecedunn/espeak/SpeechSynthesis;

    iget-object v1, v1, Lcom/reecedunn/espeak/SpeechSynthesis;->Rate:Lcom/reecedunn/espeak/SpeechSynthesis$Parameter;

    invoke-virtual {v1}, Lcom/reecedunn/espeak/SpeechSynthesis$Parameter;->getMaxValue()I

    move-result v1

    const-string v2, "espeak_rate"

    const/high16 v3, -0x80000000

    invoke-direct {p0, v2, v3}, Lcom/reecedunn/espeak/VoiceSettings;->getPreferenceValue(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_0

    const-string v2, "default_rate"

    const/16 v3, 0x64

    invoke-direct {p0, v2, v3}, Lcom/reecedunn/espeak/VoiceSettings;->getPreferenceValue(Ljava/lang/String;I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/reecedunn/espeak/VoiceSettings;->mEngine:Lcom/reecedunn/espeak/SpeechSynthesis;

    iget-object v3, v3, Lcom/reecedunn/espeak/SpeechSynthesis;->Rate:Lcom/reecedunn/espeak/SpeechSynthesis$Parameter;

    invoke-virtual {v3}, Lcom/reecedunn/espeak/SpeechSynthesis$Parameter;->getDefaultValue()I

    move-result v3

    int-to-float v3, v3

    mul-float v2, v2, v3

    float-to-int v2, v2

    :cond_0
    if-le v2, v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    if-ge v1, v0, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    return v0
.end method

.method public getVoiceVariant()Lcom/reecedunn/espeak/VoiceVariant;
    .locals 3

    iget-object v0, p0, Lcom/reecedunn/espeak/VoiceSettings;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "espeak_variant"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "default_gender"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/reecedunn/espeak/VoiceSettings;->getPreferenceValue(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string v0, "female"

    :goto_0
    invoke-static {v0}, Lcom/reecedunn/espeak/VoiceVariant;->parseVoiceVariant(Ljava/lang/String;)Lcom/reecedunn/espeak/VoiceVariant;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "male"

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/reecedunn/espeak/VoiceVariant;->parseVoiceVariant(Ljava/lang/String;)Lcom/reecedunn/espeak/VoiceVariant;

    move-result-object v0

    return-object v0
.end method

.method public getVolume()I
    .locals 4

    iget-object v0, p0, Lcom/reecedunn/espeak/VoiceSettings;->mEngine:Lcom/reecedunn/espeak/SpeechSynthesis;

    iget-object v0, v0, Lcom/reecedunn/espeak/SpeechSynthesis;->Volume:Lcom/reecedunn/espeak/SpeechSynthesis$Parameter;

    invoke-virtual {v0}, Lcom/reecedunn/espeak/SpeechSynthesis$Parameter;->getMinValue()I

    move-result v0

    iget-object v1, p0, Lcom/reecedunn/espeak/VoiceSettings;->mEngine:Lcom/reecedunn/espeak/SpeechSynthesis;

    iget-object v1, v1, Lcom/reecedunn/espeak/SpeechSynthesis;->Volume:Lcom/reecedunn/espeak/SpeechSynthesis$Parameter;

    invoke-virtual {v1}, Lcom/reecedunn/espeak/SpeechSynthesis$Parameter;->getMaxValue()I

    move-result v1

    iget-object v2, p0, Lcom/reecedunn/espeak/VoiceSettings;->mEngine:Lcom/reecedunn/espeak/SpeechSynthesis;

    iget-object v2, v2, Lcom/reecedunn/espeak/SpeechSynthesis;->Volume:Lcom/reecedunn/espeak/SpeechSynthesis$Parameter;

    invoke-virtual {v2}, Lcom/reecedunn/espeak/SpeechSynthesis$Parameter;->getDefaultValue()I

    move-result v2

    const-string v3, "espeak_volume"

    invoke-direct {p0, v3, v2}, Lcom/reecedunn/espeak/VoiceSettings;->getPreferenceValue(Ljava/lang/String;I)I

    move-result v2

    if-le v2, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-ge v1, v0, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    return v0
.end method

.method public toJSON()Lorg/json/JSONObject;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/reecedunn/espeak/VoiceSettings;->getVoiceVariant()Lcom/reecedunn/espeak/VoiceVariant;

    move-result-object v1

    invoke-virtual {v1}, Lcom/reecedunn/espeak/VoiceVariant;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "variant"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "rate"

    invoke-virtual {p0}, Lcom/reecedunn/espeak/VoiceSettings;->getRate()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "pitch"

    invoke-virtual {p0}, Lcom/reecedunn/espeak/VoiceSettings;->getPitch()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "pitch-range"

    invoke-virtual {p0}, Lcom/reecedunn/espeak/VoiceSettings;->getPitchRange()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "volume"

    invoke-virtual {p0}, Lcom/reecedunn/espeak/VoiceSettings;->getVolume()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "punctuation-characters"

    invoke-virtual {p0}, Lcom/reecedunn/espeak/VoiceSettings;->getPunctuationCharacters()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/reecedunn/espeak/VoiceSettings;->getPunctuationLevel()I

    move-result v1

    const-string v2, "punctuation-level"

    if-eqz v1, :cond_2

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "some"

    goto :goto_0

    :cond_1
    const-string v1, "all"

    goto :goto_0

    :cond_2
    const-string v1, "none"

    :goto_0
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_1
    return-object v0
.end method
