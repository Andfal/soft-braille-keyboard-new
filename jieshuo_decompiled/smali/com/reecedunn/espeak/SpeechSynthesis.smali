.class public Lcom/reecedunn/espeak/SpeechSynthesis;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/reecedunn/espeak/SpeechSynthesis$SynthReadyCallback;,
        Lcom/reecedunn/espeak/SpeechSynthesis$Parameter;,
        Lcom/reecedunn/espeak/SpeechSynthesis$UnitType;
    }
.end annotation


# static fields
.field public static final AGE_ANY:I = 0x0

.field public static final AGE_OLD:I = 0x3c

.field public static final AGE_YOUNG:I = 0xc

.field public static final CHANNEL_COUNT_MONO:I = 0x1

.field public static final FORMAT_PCM_S16:I = 0x2

.field public static final GENDER_FEMALE:I = 0x2

.field public static final GENDER_MALE:I = 0x1

.field public static final GENDER_UNSPECIFIED:I = 0x0

.field public static final PUNCT_ALL:I = 0x1

.field public static final PUNCT_NONE:I = 0x0

.field public static final PUNCT_SOME:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SpeechSynthesis"

.field private static final mJavaToIanaCountryCode:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mJavaToIanaLanguageCode:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mLocaleFixes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end field

.field private static mVoiceCount:I


# instance fields
.field public final Pitch:Lcom/reecedunn/espeak/SpeechSynthesis$Parameter;

.field public final PitchRange:Lcom/reecedunn/espeak/SpeechSynthesis$Parameter;

.field public final Punctuation:Lcom/reecedunn/espeak/SpeechSynthesis$Parameter;

.field public final Rate:Lcom/reecedunn/espeak/SpeechSynthesis$Parameter;

.field public final Volume:Lcom/reecedunn/espeak/SpeechSynthesis$Parameter;

.field private final mCallback:Lcom/reecedunn/espeak/SpeechSynthesis$SynthReadyCallback;

.field private final mContext:Landroid/content/Context;

.field private final mDatapath:Ljava/lang/String;

.field private mInitialized:Z

.field private mSampleRate:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const-string v0, "ttsespeak"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    invoke-static {}, Lcom/reecedunn/espeak/SpeechSynthesis;->nativeClassInit()Z

    const/4 v0, 0x0

    sput v0, Lcom/reecedunn/espeak/SpeechSynthesis;->mVoiceCount:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/reecedunn/espeak/SpeechSynthesis;->mJavaToIanaLanguageCode:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/reecedunn/espeak/SpeechSynthesis;->mJavaToIanaCountryCode:Ljava/util/Map;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/reecedunn/espeak/SpeechSynthesis;->mLocaleFixes:Ljava/util/HashMap;

    const-string v3, "afr"

    const-string v4, "af"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "amh"

    const-string v4, "am"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "ara"

    const-string v4, "ar"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "arg"

    const-string v4, "an"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "asm"

    const-string v4, "as"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "aze"

    const-string v4, "az"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "bul"

    const-string v4, "bg"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "ben"

    const-string v4, "bn"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "bos"

    const-string v4, "bs"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "cat"

    const-string v4, "ca"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "ces"

    const-string v4, "cs"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "cym"

    const-string v4, "cy"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "dan"

    const-string v4, "da"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "deu"

    const-string v4, "de"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "ell"

    const-string v4, "el"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "eng"

    const-string v4, "en"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "epo"

    const-string v5, "eo"

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "spa"

    const-string v5, "es"

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "est"

    const-string v6, "et"

    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "eus"

    const-string v6, "eu"

    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "fas"

    const-string v6, "fa"

    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "fin"

    const-string v6, "fi"

    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "fra"

    const-string v6, "fr"

    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "gle"

    const-string v6, "ga"

    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "gla"

    const-string v6, "gd"

    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "grn"

    const-string v6, "gn"

    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "guj"

    const-string v6, "gu"

    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "hin"

    const-string v6, "hi"

    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "hrv"

    const-string v6, "hr"

    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "hun"

    const-string v6, "hu"

    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "hye"

    const-string v6, "hy"

    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "ina"

    const-string v7, "ia"

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "ind"

    const-string v7, "in"

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "isl"

    const-string v7, "is"

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "ita"

    const-string v7, "it"

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "jpn"

    const-string v7, "ja"

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "kat"

    const-string v7, "ka"

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "kal"

    const-string v7, "kl"

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "kan"

    const-string v7, "kn"

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "kir"

    const-string v7, "ky"

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "kor"

    const-string v7, "ko"

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "kur"

    const-string v7, "ku"

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "lat"

    const-string v7, "la"

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "lit"

    const-string v7, "lt"

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "lav"

    const-string v7, "lv"

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "mkd"

    const-string v7, "mk"

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "mal"

    const-string v7, "ml"

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "mar"

    const-string v7, "mr"

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "mlt"

    const-string v7, "mt"

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "mri"

    const-string v7, "mi"

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "msa"

    const-string v7, "ms"

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "mya"

    const-string v7, "my"

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "nep"

    const-string v7, "ne"

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "nld"

    const-string v7, "nl"

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "nob"

    const-string v7, "nb"

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "nor"

    const-string v7, "no"

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "ori"

    const-string v7, "or"

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "orm"

    const-string v7, "om"

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "pan"

    const-string v7, "pa"

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "pol"

    const-string v7, "pl"

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "por"

    const-string v7, "pt"

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "ron"

    const-string v7, "ro"

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "rus"

    const-string v7, "ru"

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "sin"

    const-string v7, "si"

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "slk"

    const-string v7, "sk"

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "slv"

    const-string v7, "sl"

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "snd"

    const-string v7, "sd"

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "sqi"

    const-string v7, "sq"

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "srp"

    const-string v7, "sr"

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "swe"

    const-string v7, "sv"

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "swa"

    const-string v7, "sw"

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "tam"

    const-string v7, "ta"

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "tel"

    const-string v7, "te"

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "tat"

    const-string v7, "tt"

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "tsn"

    const-string v7, "tn"

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "tur"

    const-string v7, "tr"

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "urd"

    const-string v7, "ur"

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "vie"

    const-string v7, "vi"

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "zho"

    const-string v7, "zh"

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ARM"

    const-string v3, "AM"

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "BEL"

    const-string v8, "BE"

    invoke-interface {v1, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "BRA"

    const-string v8, "BR"

    invoke-interface {v1, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "CHE"

    const-string v8, "CH"

    invoke-interface {v1, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "FRA"

    const-string v8, "FR"

    invoke-interface {v1, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "GBR"

    const-string v8, "GB"

    invoke-interface {v1, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "HKG"

    const-string v8, "HK"

    invoke-interface {v1, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "JAM"

    const-string v9, "JM"

    invoke-interface {v1, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "MEX"

    const-string v10, "MX"

    invoke-interface {v1, v0, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "PRT"

    const-string v11, "PT"

    invoke-interface {v1, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "USA"

    const-string v11, "US"

    invoke-interface {v1, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "VNM"

    const-string v11, "VN"

    invoke-interface {v1, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    const-string v1, "cmn"

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, v4, v9}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "en-029"

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, v5, v10}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "es-419"

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/Locale;

    const-string v1, "arevmda"

    invoke-direct {v0, v6, v3, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "hy-arevmda"

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, v7, v8}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "yue"

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/reecedunn/espeak/SpeechSynthesis$SynthReadyCallback;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/reecedunn/espeak/SpeechSynthesis;->mInitialized:Z

    iput v0, p0, Lcom/reecedunn/espeak/SpeechSynthesis;->mSampleRate:I

    new-instance v7, Lcom/reecedunn/espeak/SpeechSynthesis$Parameter;

    const/4 v2, 0x1

    const/16 v3, 0x50

    const/16 v4, 0x1c2

    sget-object v5, Lcom/reecedunn/espeak/SpeechSynthesis$UnitType;->WordsPerMinute:Lcom/reecedunn/espeak/SpeechSynthesis$UnitType;

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/reecedunn/espeak/SpeechSynthesis$Parameter;-><init>(Lcom/reecedunn/espeak/SpeechSynthesis;IIILcom/reecedunn/espeak/SpeechSynthesis$UnitType;Lcom/reecedunn/espeak/a;)V

    iput-object v7, p0, Lcom/reecedunn/espeak/SpeechSynthesis;->Rate:Lcom/reecedunn/espeak/SpeechSynthesis$Parameter;

    new-instance v7, Lcom/reecedunn/espeak/SpeechSynthesis$Parameter;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/16 v4, 0xc8

    sget-object v8, Lcom/reecedunn/espeak/SpeechSynthesis$UnitType;->Percentage:Lcom/reecedunn/espeak/SpeechSynthesis$UnitType;

    move-object v0, v7

    move-object v5, v8

    invoke-direct/range {v0 .. v6}, Lcom/reecedunn/espeak/SpeechSynthesis$Parameter;-><init>(Lcom/reecedunn/espeak/SpeechSynthesis;IIILcom/reecedunn/espeak/SpeechSynthesis$UnitType;Lcom/reecedunn/espeak/a;)V

    iput-object v7, p0, Lcom/reecedunn/espeak/SpeechSynthesis;->Volume:Lcom/reecedunn/espeak/SpeechSynthesis$Parameter;

    new-instance v7, Lcom/reecedunn/espeak/SpeechSynthesis$Parameter;

    const/4 v2, 0x3

    const/16 v4, 0x64

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/reecedunn/espeak/SpeechSynthesis$Parameter;-><init>(Lcom/reecedunn/espeak/SpeechSynthesis;IIILcom/reecedunn/espeak/SpeechSynthesis$UnitType;Lcom/reecedunn/espeak/a;)V

    iput-object v7, p0, Lcom/reecedunn/espeak/SpeechSynthesis;->Pitch:Lcom/reecedunn/espeak/SpeechSynthesis$Parameter;

    new-instance v7, Lcom/reecedunn/espeak/SpeechSynthesis$Parameter;

    const/4 v2, 0x4

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/reecedunn/espeak/SpeechSynthesis$Parameter;-><init>(Lcom/reecedunn/espeak/SpeechSynthesis;IIILcom/reecedunn/espeak/SpeechSynthesis$UnitType;Lcom/reecedunn/espeak/a;)V

    iput-object v7, p0, Lcom/reecedunn/espeak/SpeechSynthesis;->PitchRange:Lcom/reecedunn/espeak/SpeechSynthesis$Parameter;

    new-instance v7, Lcom/reecedunn/espeak/SpeechSynthesis$Parameter;

    const/4 v2, 0x5

    const/4 v4, 0x2

    sget-object v5, Lcom/reecedunn/espeak/SpeechSynthesis$UnitType;->Punctuation:Lcom/reecedunn/espeak/SpeechSynthesis$UnitType;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/reecedunn/espeak/SpeechSynthesis$Parameter;-><init>(Lcom/reecedunn/espeak/SpeechSynthesis;IIILcom/reecedunn/espeak/SpeechSynthesis$UnitType;Lcom/reecedunn/espeak/a;)V

    iput-object v7, p0, Lcom/reecedunn/espeak/SpeechSynthesis;->Punctuation:Lcom/reecedunn/espeak/SpeechSynthesis$Parameter;

    invoke-static {p1}, Lcom/reecedunn/espeak/CheckVoiceData;->getDataPath(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    sget-object v1, Lcom/reecedunn/espeak/SpeechSynthesis;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " voice data"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "Missing voice data"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    iput-object p1, p0, Lcom/reecedunn/espeak/SpeechSynthesis;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/reecedunn/espeak/SpeechSynthesis;->mCallback:Lcom/reecedunn/espeak/SpeechSynthesis$SynthReadyCallback;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/reecedunn/espeak/SpeechSynthesis;->mDatapath:Ljava/lang/String;

    invoke-direct {p0}, Lcom/reecedunn/espeak/SpeechSynthesis;->attemptInit()V

    return-void
.end method

.method static bridge synthetic a(Lcom/reecedunn/espeak/SpeechSynthesis;II)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/reecedunn/espeak/SpeechSynthesis;->nativeGetParameter(II)I

    move-result p0

    return p0
.end method

.method private attemptInit()V
    .locals 3

    iget-boolean v0, p0, Lcom/reecedunn/espeak/SpeechSynthesis;->mInitialized:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/reecedunn/espeak/SpeechSynthesis;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/reecedunn/espeak/CheckVoiceData;->hasBaseResources(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/reecedunn/espeak/SpeechSynthesis;->TAG:Ljava/lang/String;

    const-string v1, "Missing base resources"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/reecedunn/espeak/SpeechSynthesis;->mDatapath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/reecedunn/espeak/SpeechSynthesis;->nativeCreate(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/reecedunn/espeak/SpeechSynthesis;->mSampleRate:I

    if-nez v0, :cond_2

    sget-object v0, Lcom/reecedunn/espeak/SpeechSynthesis;->TAG:Ljava/lang/String;

    const-string v1, "Failed to initialize speech synthesis library"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    sget-object v0, Lcom/reecedunn/espeak/SpeechSynthesis;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Initialized synthesis library with sample rate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/reecedunn/espeak/SpeechSynthesis;->getSampleRate()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/reecedunn/espeak/SpeechSynthesis;->mInitialized:Z

    return-void
.end method

.method static bridge synthetic b(Lcom/reecedunn/espeak/SpeechSynthesis;II)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/reecedunn/espeak/SpeechSynthesis;->nativeSetParameter(II)Z

    move-result p0

    return p0
.end method

.method public static getIanaCountryCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/reecedunn/espeak/SpeechSynthesis;->mJavaToIanaCountryCode:Ljava/util/Map;

    invoke-static {p0, v0}, Lcom/reecedunn/espeak/SpeechSynthesis;->getIanaLocaleCode(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getIanaLanguageCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/reecedunn/espeak/SpeechSynthesis;->mJavaToIanaLanguageCode:Ljava/util/Map;

    invoke-static {p0, v0}, Lcom/reecedunn/espeak/SpeechSynthesis;->getIanaLocaleCode(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getIanaLocaleCode(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    return-object p0
.end method

.method private getLocaleFromLanguageName(Ljava/lang/String;)Ljava/util/Locale;
    .locals 5

    sget-object v0, Lcom/reecedunn/espeak/SpeechSynthesis;->mLocaleFixes:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Locale;

    return-object p1

    :cond_0
    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/4 v4, 0x3

    if-eq v0, v4, :cond_2

    const/4 v3, 0x4

    if-eq v0, v3, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    new-instance v0, Ljava/util/Locale;

    aget-object v1, p1, v1

    aget-object v2, p1, v2

    aget-object p1, p1, v4

    invoke-direct {v0, v1, v2, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_2
    new-instance v0, Ljava/util/Locale;

    aget-object v1, p1, v1

    aget-object v2, p1, v2

    aget-object p1, p1, v3

    invoke-direct {v0, v1, v2, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_3
    new-instance v0, Ljava/util/Locale;

    aget-object v1, p1, v1

    aget-object p1, p1, v2

    invoke-direct {v0, v1, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_4
    new-instance v0, Ljava/util/Locale;

    aget-object p1, p1, v1

    invoke-direct {v0, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getSampleText(Landroid/content/Context;Ljava/util/Locale;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/reecedunn/espeak/SpeechSynthesis;->getIanaLanguageCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/reecedunn/espeak/SpeechSynthesis;->getIanaCountryCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/util/Locale;

    invoke-virtual {p1}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, v2, v3, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    new-instance p1, Landroid/content/res/Resources;

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-direct {p1, p0, v0, v1}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Object;

    iget-object v0, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v0}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p0, v1

    const v0, 0x7f070598

    invoke-virtual {p1, v0, p0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/reecedunn/espeak/SpeechSynthesis;->nativeGetVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVoiceCount()I
    .locals 1

    sget v0, Lcom/reecedunn/espeak/SpeechSynthesis;->mVoiceCount:I

    return v0
.end method

.method private static final native nativeClassInit()Z
.end method

.method private final native nativeCreate(Ljava/lang/String;)I
.end method

.method private final native nativeGetAvailableVoices()[Ljava/lang/String;
.end method

.method private final native nativeGetParameter(II)I
.end method

.method private static final native nativeGetVersion()Ljava/lang/String;
.end method

.method private final native nativeSetParameter(II)Z
.end method

.method private final native nativeSetPunctuationCharacters(Ljava/lang/String;)Z
.end method

.method private final native nativeSetVoiceByName(Ljava/lang/String;)Z
.end method

.method private final native nativeSetVoiceByProperties(Ljava/lang/String;II)Z
.end method

.method private final native nativeStop()Z
.end method

.method private nativeSynthCallback([B)V
    .locals 1

    iget-object v0, p0, Lcom/reecedunn/espeak/SpeechSynthesis;->mCallback:Lcom/reecedunn/espeak/SpeechSynthesis$SynthReadyCallback;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    invoke-interface {v0}, Lcom/reecedunn/espeak/SpeechSynthesis$SynthReadyCallback;->onSynthDataComplete()V

    goto :goto_0

    :cond_1
    invoke-interface {v0, p1}, Lcom/reecedunn/espeak/SpeechSynthesis$SynthReadyCallback;->onSynthDataReady([B)V

    :goto_0
    return-void
.end method

.method private final native nativeSynthesize(Ljava/lang/String;Z)Z
.end method


# virtual methods
.method public getAudioFormat()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getAvailableVoices()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/reecedunn/espeak/Voice;",
            ">;"
        }
    .end annotation

    const-string v0, " => "

    const-string v1, "getAvailableResources: skipping "

    const-string v2, ""

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    invoke-direct {p0}, Lcom/reecedunn/espeak/SpeechSynthesis;->nativeGetAvailableVoices()[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    div-int/lit8 v5, v5, 0x4

    sput v5, Lcom/reecedunn/espeak/SpeechSynthesis;->mVoiceCount:I

    const/4 v5, 0x0

    :goto_0
    array-length v6, v4

    if-ge v5, v6, :cond_5

    aget-object v6, v4, v5

    add-int/lit8 v7, v5, 0x1

    aget-object v9, v4, v7

    add-int/lit8 v7, v5, 0x2

    aget-object v7, v4, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    add-int/lit8 v7, v5, 0x3

    aget-object v7, v4, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    :try_start_0
    const-string v7, "asia/fa-en-us"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-direct {p0, v6}, Lcom/reecedunn/espeak/SpeechSynthesis;->getLocaleFromLanguageName(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v12

    if-eqz v12, :cond_3

    invoke-virtual {v12}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v8, "\' not supported."

    if-nez v7, :cond_2

    :try_start_1
    invoke-virtual {v12}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v12}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_1

    :cond_0
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Country \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_1
    :goto_1
    new-instance v13, Lcom/reecedunn/espeak/Voice;

    move-object v7, v13

    move-object v8, v6

    invoke-direct/range {v7 .. v12}, Lcom/reecedunn/espeak/Voice;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/util/Locale;)V

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_2
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Language \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_3
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Locale not supported."

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_4
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Voice \'"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\' is a duplicate voice."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v7

    sget-object v8, Lcom/reecedunn/espeak/SpeechSynthesis;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_2

    :catch_1
    move-exception v7

    sget-object v8, Lcom/reecedunn/espeak/SpeechSynthesis;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    add-int/lit8 v5, v5, 0x4

    goto/16 :goto_0

    :cond_5
    new-instance v0, Lcom/reecedunn/espeak/Voice;

    const-string v7, "cmn"

    const-string v8, "sit/cmn"

    const/4 v9, 0x1

    const/4 v10, 0x0

    sget-object v11, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    move-object v6, v0

    invoke-direct/range {v6 .. v11}, Lcom/reecedunn/espeak/Voice;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/util/Locale;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v3
.end method

.method public getChannelCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getSampleRate()I
    .locals 1

    iget v0, p0, Lcom/reecedunn/espeak/SpeechSynthesis;->mSampleRate:I

    return v0
.end method

.method public setPunctuationCharacters(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/reecedunn/espeak/SpeechSynthesis;->nativeSetPunctuationCharacters(Ljava/lang/String;)Z

    return-void
.end method

.method public setVoice(Lcom/reecedunn/espeak/Voice;Lcom/reecedunn/espeak/VoiceVariant;)V
    .locals 1

    iget-object v0, p2, Lcom/reecedunn/espeak/VoiceVariant;->variant:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object p1, p1, Lcom/reecedunn/espeak/Voice;->name:Ljava/lang/String;

    iget v0, p2, Lcom/reecedunn/espeak/VoiceVariant;->gender:I

    iget p2, p2, Lcom/reecedunn/espeak/VoiceVariant;->age:I

    invoke-direct {p0, p1, v0, p2}, Lcom/reecedunn/espeak/SpeechSynthesis;->nativeSetVoiceByProperties(Ljava/lang/String;II)Z

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/reecedunn/espeak/Voice;->identifier:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "+"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Lcom/reecedunn/espeak/VoiceVariant;->variant:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/reecedunn/espeak/SpeechSynthesis;->nativeSetVoiceByName(Ljava/lang/String;)Z

    :goto_0
    return-void
.end method

.method public stop()V
    .locals 0

    invoke-direct {p0}, Lcom/reecedunn/espeak/SpeechSynthesis;->nativeStop()Z

    return-void
.end method

.method public synthesize(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/reecedunn/espeak/SpeechSynthesis;->nativeSynthesize(Ljava/lang/String;Z)Z

    return-void
.end method
