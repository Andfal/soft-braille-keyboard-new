.class public Lcom/baidu/tts/client/SpeechSynthesizer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AUDIO_BITRATE_AMR_12K65:Ljava/lang/String;

.field public static final AUDIO_BITRATE_AMR_14K25:Ljava/lang/String;

.field public static final AUDIO_BITRATE_AMR_15K85:Ljava/lang/String;

.field public static final AUDIO_BITRATE_AMR_18K25:Ljava/lang/String;

.field public static final AUDIO_BITRATE_AMR_19K85:Ljava/lang/String;

.field public static final AUDIO_BITRATE_AMR_23K05:Ljava/lang/String;

.field public static final AUDIO_BITRATE_AMR_23K85:Ljava/lang/String;

.field public static final AUDIO_BITRATE_AMR_6K6:Ljava/lang/String;

.field public static final AUDIO_BITRATE_AMR_8K85:Ljava/lang/String;

.field public static final AUDIO_BITRATE_BV_16K:Ljava/lang/String;

.field public static final AUDIO_BITRATE_OPUS_16K:Ljava/lang/String;

.field public static final AUDIO_BITRATE_OPUS_18K:Ljava/lang/String;

.field public static final AUDIO_BITRATE_OPUS_20K:Ljava/lang/String;

.field public static final AUDIO_BITRATE_OPUS_24K:Ljava/lang/String;

.field public static final AUDIO_BITRATE_OPUS_32K:Ljava/lang/String;

.field public static final AUDIO_BITRATE_OPUS_8K:Ljava/lang/String;

.field public static final AUDIO_BITRATE_PCM:Ljava/lang/String;

.field public static final AUDIO_ENCODE_AMR:Ljava/lang/String;

.field public static final AUDIO_ENCODE_BV:Ljava/lang/String;

.field public static final AUDIO_ENCODE_MP3:Ljava/lang/String;

.field public static final AUDIO_ENCODE_OPUS:Ljava/lang/String;

.field public static final AUDIO_ENCODE_PCM:Ljava/lang/String;

.field public static final AUDIO_SAMPLERATE_16K:I

.field public static final AUDIO_SAMPLERATE_24K:I

.field public static final AUDIO_SAMPLERATE_48K:I

.field public static final AUDIO_SAMPLERATE_8K:I

.field public static final ERROR_APP_ID_IS_INVALID:I

.field public static final ERROR_LIST_IS_TOO_LONG:I

.field public static final ERROR_QUEUE_IS_FULL:I

.field public static final ERROR_TEXT_ENCODE_IS_WRONG:I

.field public static final ERROR_TEXT_IS_EMPTY:I

.field public static final ERROR_TEXT_IS_TOO_LONG:I

.field public static final LANGUAGE_EN:Ljava/lang/String;

.field public static final LANGUAGE_ZH:Ljava/lang/String;

.field public static final MAX_LIST_SIZE:I = 0x64

.field public static final MAX_QUEUE_SIZE:I = 0x3a98

.field public static final MIX_MODE_DEFAULT:Ljava/lang/String;

.field public static final MIX_MODE_HIGH_SPEED_NETWORK:Ljava/lang/String;

.field public static final MIX_MODE_HIGH_SPEED_SYNTHESIZE:Ljava/lang/String;

.field public static final MIX_MODE_HIGH_SPEED_SYNTHESIZE_WIFI:Ljava/lang/String;

.field public static final PARAM_AUDIO_CTRL:Ljava/lang/String;

.field public static final PARAM_AUDIO_ENCODE:Ljava/lang/String;

.field public static final PARAM_AUDIO_RATE:Ljava/lang/String;

.field public static final PARAM_AUTH_SN:Ljava/lang/String;

.field public static final PARAM_BILINGUAL_MODE:Ljava/lang/String;

.field public static final PARAM_CUSTOM_SYNTH:Ljava/lang/String;

.field public static final PARAM_KEY:Ljava/lang/String;

.field public static final PARAM_LANGUAGE:Ljava/lang/String;

.field public static final PARAM_MIX_MODE:Ljava/lang/String;

.field public static final PARAM_MIX_MODE_TIMEOUT:Ljava/lang/String;

.field public static final PARAM_MIX_TIMEOUT_FOUR_SECOND:Ljava/lang/String;

.field public static final PARAM_MIX_TIMEOUT_THREE_SECOND:Ljava/lang/String;

.field public static final PARAM_MIX_TIMEOUT_TWO_SECOND:Ljava/lang/String;

.field public static final PARAM_OPEN_XML:Ljava/lang/String;

.field public static final PARAM_PITCH:Ljava/lang/String;

.field public static final PARAM_PRODUCT_ID:Ljava/lang/String;

.field public static final PARAM_PROXY_HOST:Ljava/lang/String;

.field public static final PARAM_PROXY_PORT:Ljava/lang/String;

.field public static final PARAM_REQUEST_ENABLE_DNS:Ljava/lang/String;

.field public static final PARAM_REQUEST_PROTOCOL:Ljava/lang/String;

.field public static final PARAM_SPEAKER:Ljava/lang/String;

.field public static final PARAM_SPEC:Ljava/lang/String;

.field public static final PARAM_SPEED:Ljava/lang/String;

.field public static final PARAM_TEXT_CTRL:Ljava/lang/String;

.field public static final PARAM_TTS_LICENCE_FILE:Ljava/lang/String;

.field public static final PARAM_TTS_SPEECH_MODEL_FILE:Ljava/lang/String;

.field public static final PARAM_TTS_TEXT_MODEL_FILE:Ljava/lang/String;

.field public static final PARAM_URL:Ljava/lang/String;

.field public static final PARAM_VOCODER_OPTIM_LEVEL:Ljava/lang/String;

.field public static final PARAM_VOLUME:Ljava/lang/String;

.field public static final REQUEST_DNS_OFF:Ljava/lang/String; = "0"

.field public static final REQUEST_DNS_ON:Ljava/lang/String; = "1"

.field public static final REQUEST_PROTOCOL_HTTP:Ljava/lang/String; = "http"

.field public static final REQUEST_PROTOCOL_HTTPS:Ljava/lang/String; = "https"

.field public static final TEXT_ENCODE_BIG5:Ljava/lang/String;

.field public static final TEXT_ENCODE_GBK:Ljava/lang/String;

.field public static final TEXT_ENCODE_UTF8:Ljava/lang/String;

.field public static final VersionName:Ljava/lang/String; = "2.6.2.2"

.field public static final VersionName_CODE:Ljava/lang/String; = "2.6.2.2.2"

.field private static volatile a:Lcom/baidu/tts/client/SpeechSynthesizer;


# instance fields
.field private b:Li0/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lb1/n;->Y:Lb1/n;

    invoke-virtual {v0}, Lb1/n;->b()I

    move-result v0

    sput v0, Lcom/baidu/tts/client/SpeechSynthesizer;->ERROR_QUEUE_IS_FULL:I

    sget-object v0, Lb1/n;->Z:Lb1/n;

    invoke-virtual {v0}, Lb1/n;->b()I

    move-result v0

    sput v0, Lcom/baidu/tts/client/SpeechSynthesizer;->ERROR_LIST_IS_TOO_LONG:I

    sget-object v0, Lb1/n;->T:Lb1/n;

    invoke-virtual {v0}, Lb1/n;->b()I

    move-result v0

    sput v0, Lcom/baidu/tts/client/SpeechSynthesizer;->ERROR_TEXT_IS_EMPTY:I

    sget-object v0, Lb1/n;->U:Lb1/n;

    invoke-virtual {v0}, Lb1/n;->b()I

    move-result v0

    sput v0, Lcom/baidu/tts/client/SpeechSynthesizer;->ERROR_TEXT_IS_TOO_LONG:I

    sget-object v0, Lb1/n;->V:Lb1/n;

    invoke-virtual {v0}, Lb1/n;->b()I

    move-result v0

    sput v0, Lcom/baidu/tts/client/SpeechSynthesizer;->ERROR_TEXT_ENCODE_IS_WRONG:I

    sget-object v0, Lb1/n;->c0:Lb1/n;

    invoke-virtual {v0}, Lb1/n;->b()I

    move-result v0

    sput v0, Lcom/baidu/tts/client/SpeechSynthesizer;->ERROR_APP_ID_IS_INVALID:I

    sget-object v0, Lb1/g;->t0:Lb1/g;

    invoke-static {v0}, Lb1/g;->b(Lb1/g;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->PARAM_REQUEST_PROTOCOL:Ljava/lang/String;

    sget-object v0, Lb1/g;->u0:Lb1/g;

    invoke-static {v0}, Lb1/g;->b(Lb1/g;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->PARAM_REQUEST_ENABLE_DNS:Ljava/lang/String;

    sget-object v0, Lb1/g;->r0:Lb1/g;

    invoke-static {v0}, Lb1/g;->b(Lb1/g;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->PARAM_PROXY_HOST:Ljava/lang/String;

    sget-object v0, Lb1/g;->s0:Lb1/g;

    invoke-static {v0}, Lb1/g;->b(Lb1/g;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->PARAM_PROXY_PORT:Ljava/lang/String;

    sget-object v0, Lb1/g;->h:Lb1/g;

    invoke-static {v0}, Lb1/g;->b(Lb1/g;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->PARAM_URL:Ljava/lang/String;

    sget-object v0, Lb1/g;->E0:Lb1/g;

    invoke-static {v0}, Lb1/g;->b(Lb1/g;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->PARAM_AUDIO_CTRL:Ljava/lang/String;

    sget-object v0, Lb1/g;->F0:Lb1/g;

    invoke-static {v0}, Lb1/g;->b(Lb1/g;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->PARAM_TEXT_CTRL:Ljava/lang/String;

    sget-object v0, Lb1/g;->H:Lb1/g;

    invoke-static {v0}, Lb1/g;->b(Lb1/g;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->PARAM_SPEED:Ljava/lang/String;

    sget-object v0, Lb1/g;->J:Lb1/g;

    invoke-static {v0}, Lb1/g;->b(Lb1/g;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->PARAM_PITCH:Ljava/lang/String;

    sget-object v0, Lb1/g;->I:Lb1/g;

    invoke-static {v0}, Lb1/g;->b(Lb1/g;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->PARAM_VOLUME:Ljava/lang/String;

    sget-object v0, Lb1/g;->p0:Lb1/g;

    invoke-static {v0}, Lb1/g;->b(Lb1/g;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->PARAM_SPEC:Ljava/lang/String;

    sget-object v0, Lb1/g;->T:Lb1/g;

    invoke-static {v0}, Lb1/g;->b(Lb1/g;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->PARAM_TTS_TEXT_MODEL_FILE:Ljava/lang/String;

    sget-object v0, Lb1/g;->U:Lb1/g;

    invoke-static {v0}, Lb1/g;->b(Lb1/g;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->PARAM_TTS_SPEECH_MODEL_FILE:Ljava/lang/String;

    sget-object v0, Lb1/g;->V:Lb1/g;

    invoke-static {v0}, Lb1/g;->b(Lb1/g;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->PARAM_TTS_LICENCE_FILE:Ljava/lang/String;

    sget-object v0, Lb1/g;->Y:Lb1/g;

    invoke-static {v0}, Lb1/g;->b(Lb1/g;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->PARAM_VOCODER_OPTIM_LEVEL:Ljava/lang/String;

    sget-object v0, Lb1/g;->W:Lb1/g;

    invoke-static {v0}, Lb1/g;->b(Lb1/g;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->PARAM_CUSTOM_SYNTH:Ljava/lang/String;

    sget-object v0, Lb1/g;->X:Lb1/g;

    invoke-static {v0}, Lb1/g;->b(Lb1/g;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->PARAM_OPEN_XML:Ljava/lang/String;

    sget-object v0, Lb1/g;->A0:Lb1/g;

    invoke-static {v0}, Lb1/g;->b(Lb1/g;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->PARAM_BILINGUAL_MODE:Ljava/lang/String;

    sget-object v0, Lb1/g;->S:Lb1/g;

    invoke-static {v0}, Lb1/g;->b(Lb1/g;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->PARAM_PRODUCT_ID:Ljava/lang/String;

    sget-object v0, Lb1/g;->q0:Lb1/g;

    invoke-static {v0}, Lb1/g;->b(Lb1/g;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->PARAM_KEY:Ljava/lang/String;

    sget-object v0, Lb1/g;->E:Lb1/g;

    invoke-static {v0}, Lb1/g;->b(Lb1/g;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->PARAM_AUTH_SN:Ljava/lang/String;

    sget-object v0, Lb1/g;->K:Lb1/g;

    invoke-static {v0}, Lb1/g;->b(Lb1/g;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->PARAM_LANGUAGE:Ljava/lang/String;

    sget-object v0, Lb1/g;->N:Lb1/g;

    invoke-static {v0}, Lb1/g;->b(Lb1/g;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->PARAM_AUDIO_ENCODE:Ljava/lang/String;

    sget-object v0, Lb1/g;->O:Lb1/g;

    invoke-static {v0}, Lb1/g;->b(Lb1/g;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->PARAM_AUDIO_RATE:Ljava/lang/String;

    sget-object v0, Lb1/g;->P:Lb1/g;

    invoke-static {v0}, Lb1/g;->b(Lb1/g;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->PARAM_SPEAKER:Ljava/lang/String;

    sget-object v0, Lb1/g;->A:Lb1/g;

    invoke-static {v0}, Lb1/g;->b(Lb1/g;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->PARAM_MIX_MODE:Ljava/lang/String;

    sget-object v0, Lb1/j;->a:Lb1/j;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->MIX_MODE_DEFAULT:Ljava/lang/String;

    sget-object v0, Lb1/j;->b:Lb1/j;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->MIX_MODE_HIGH_SPEED_NETWORK:Ljava/lang/String;

    sget-object v0, Lb1/g;->B0:Lb1/g;

    invoke-static {v0}, Lb1/g;->b(Lb1/g;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->PARAM_MIX_MODE_TIMEOUT:Ljava/lang/String;

    sget-object v0, Lb1/l;->d:Lb1/l;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->PARAM_MIX_TIMEOUT_TWO_SECOND:Ljava/lang/String;

    sget-object v0, Lb1/l;->e:Lb1/l;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->PARAM_MIX_TIMEOUT_THREE_SECOND:Ljava/lang/String;

    sget-object v0, Lb1/l;->f:Lb1/l;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->PARAM_MIX_TIMEOUT_FOUR_SECOND:Ljava/lang/String;

    sget-object v0, Lb1/j;->c:Lb1/j;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->MIX_MODE_HIGH_SPEED_SYNTHESIZE:Ljava/lang/String;

    sget-object v0, Lb1/j;->d:Lb1/j;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->MIX_MODE_HIGH_SPEED_SYNTHESIZE_WIFI:Ljava/lang/String;

    sget-object v0, Lb1/h;->c:Lb1/h;

    invoke-virtual {v0}, Lb1/h;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->LANGUAGE_ZH:Ljava/lang/String;

    sget-object v0, Lb1/h;->d:Lb1/h;

    invoke-virtual {v0}, Lb1/h;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->LANGUAGE_EN:Ljava/lang/String;

    sget-object v0, Lb1/d;->c:Lb1/d;

    invoke-virtual {v0}, Lb1/d;->c()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->TEXT_ENCODE_GBK:Ljava/lang/String;

    sget-object v0, Lb1/d;->d:Lb1/d;

    invoke-virtual {v0}, Lb1/d;->c()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->TEXT_ENCODE_BIG5:Ljava/lang/String;

    sget-object v0, Lb1/d;->e:Lb1/d;

    invoke-virtual {v0}, Lb1/d;->c()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->TEXT_ENCODE_UTF8:Ljava/lang/String;

    sget-object v0, Lb1/b;->b:Lb1/b;

    invoke-virtual {v0}, Lb1/b;->b()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->AUDIO_ENCODE_BV:Ljava/lang/String;

    sget-object v0, Lb1/b;->c:Lb1/b;

    invoke-virtual {v0}, Lb1/b;->b()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->AUDIO_ENCODE_AMR:Ljava/lang/String;

    sget-object v0, Lb1/b;->d:Lb1/b;

    invoke-virtual {v0}, Lb1/b;->b()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->AUDIO_ENCODE_OPUS:Ljava/lang/String;

    sget-object v0, Lb1/b;->e:Lb1/b;

    invoke-virtual {v0}, Lb1/b;->b()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->AUDIO_ENCODE_MP3:Ljava/lang/String;

    sget-object v0, Lb1/b;->f:Lb1/b;

    invoke-virtual {v0}, Lb1/b;->b()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->AUDIO_ENCODE_PCM:Ljava/lang/String;

    sget-object v0, Lb1/k;->c:Lb1/k;

    invoke-virtual {v0}, Lb1/k;->a()I

    move-result v0

    sput v0, Lcom/baidu/tts/client/SpeechSynthesizer;->AUDIO_SAMPLERATE_8K:I

    sget-object v0, Lb1/k;->d:Lb1/k;

    invoke-virtual {v0}, Lb1/k;->a()I

    move-result v0

    sput v0, Lcom/baidu/tts/client/SpeechSynthesizer;->AUDIO_SAMPLERATE_16K:I

    sget-object v0, Lb1/k;->e:Lb1/k;

    invoke-virtual {v0}, Lb1/k;->a()I

    move-result v0

    sput v0, Lcom/baidu/tts/client/SpeechSynthesizer;->AUDIO_SAMPLERATE_24K:I

    sget-object v0, Lb1/k;->f:Lb1/k;

    invoke-virtual {v0}, Lb1/k;->a()I

    move-result v0

    sput v0, Lcom/baidu/tts/client/SpeechSynthesizer;->AUDIO_SAMPLERATE_48K:I

    sget-object v0, Lb1/c;->d:Lb1/c;

    invoke-virtual {v0}, Lb1/c;->b()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->AUDIO_BITRATE_BV_16K:Ljava/lang/String;

    sget-object v0, Lb1/c;->e:Lb1/c;

    invoke-virtual {v0}, Lb1/c;->b()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->AUDIO_BITRATE_AMR_6K6:Ljava/lang/String;

    sget-object v0, Lb1/c;->f:Lb1/c;

    invoke-virtual {v0}, Lb1/c;->b()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->AUDIO_BITRATE_AMR_8K85:Ljava/lang/String;

    sget-object v0, Lb1/c;->g:Lb1/c;

    invoke-virtual {v0}, Lb1/c;->b()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->AUDIO_BITRATE_AMR_12K65:Ljava/lang/String;

    sget-object v0, Lb1/c;->h:Lb1/c;

    invoke-virtual {v0}, Lb1/c;->b()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->AUDIO_BITRATE_AMR_14K25:Ljava/lang/String;

    sget-object v0, Lb1/c;->i:Lb1/c;

    invoke-virtual {v0}, Lb1/c;->b()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->AUDIO_BITRATE_AMR_15K85:Ljava/lang/String;

    sget-object v0, Lb1/c;->j:Lb1/c;

    invoke-virtual {v0}, Lb1/c;->b()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->AUDIO_BITRATE_AMR_18K25:Ljava/lang/String;

    sget-object v0, Lb1/c;->k:Lb1/c;

    invoke-virtual {v0}, Lb1/c;->b()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->AUDIO_BITRATE_AMR_19K85:Ljava/lang/String;

    sget-object v0, Lb1/c;->l:Lb1/c;

    invoke-virtual {v0}, Lb1/c;->b()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->AUDIO_BITRATE_AMR_23K05:Ljava/lang/String;

    sget-object v0, Lb1/c;->m:Lb1/c;

    invoke-virtual {v0}, Lb1/c;->b()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->AUDIO_BITRATE_AMR_23K85:Ljava/lang/String;

    sget-object v0, Lb1/c;->n:Lb1/c;

    invoke-virtual {v0}, Lb1/c;->b()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->AUDIO_BITRATE_OPUS_8K:Ljava/lang/String;

    sget-object v0, Lb1/c;->o:Lb1/c;

    invoke-virtual {v0}, Lb1/c;->b()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->AUDIO_BITRATE_OPUS_16K:Ljava/lang/String;

    sget-object v0, Lb1/c;->p:Lb1/c;

    invoke-virtual {v0}, Lb1/c;->b()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->AUDIO_BITRATE_OPUS_18K:Ljava/lang/String;

    sget-object v0, Lb1/c;->q:Lb1/c;

    invoke-virtual {v0}, Lb1/c;->b()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->AUDIO_BITRATE_OPUS_20K:Ljava/lang/String;

    sget-object v0, Lb1/c;->r:Lb1/c;

    invoke-virtual {v0}, Lb1/c;->b()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->AUDIO_BITRATE_OPUS_24K:Ljava/lang/String;

    sget-object v0, Lb1/c;->s:Lb1/c;

    invoke-virtual {v0}, Lb1/c;->b()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->AUDIO_BITRATE_OPUS_32K:Ljava/lang/String;

    sget-object v0, Lb1/c;->y:Lb1/c;

    invoke-virtual {v0}, Lb1/c;->b()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->AUDIO_BITRATE_PCM:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->a:Lcom/baidu/tts/client/SpeechSynthesizer;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Li0/a;

    invoke-direct {v0}, Li0/a;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/client/SpeechSynthesizer;->b:Li0/a;

    return-void
.end method

.method public static getInstance()Lcom/baidu/tts/client/SpeechSynthesizer;
    .locals 2

    const-string v0, "SpeechSynthesizer=="

    const-string v1, "SpeechSynthesizer getInstance versionName:2.6.2.2"

    invoke-static {v0, v1}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->a:Lcom/baidu/tts/client/SpeechSynthesizer;

    if-nez v0, :cond_1

    const-class v0, Lcom/baidu/tts/client/SpeechSynthesizer;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/baidu/tts/client/SpeechSynthesizer;->a:Lcom/baidu/tts/client/SpeechSynthesizer;

    if-nez v1, :cond_0

    new-instance v1, Lcom/baidu/tts/client/SpeechSynthesizer;

    invoke-direct {v1}, Lcom/baidu/tts/client/SpeechSynthesizer;-><init>()V

    sput-object v1, Lcom/baidu/tts/client/SpeechSynthesizer;->a:Lcom/baidu/tts/client/SpeechSynthesizer;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->a:Lcom/baidu/tts/client/SpeechSynthesizer;

    return-object v0
.end method


# virtual methods
.method public auth(Lcom/baidu/tts/client/TtsMode;)Ln0/a;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "auth  ttsMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/baidu/tts/client/TtsMode;->getMode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpeechSynthesizer=="

    invoke-static {v1, v0}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/tts/client/SpeechSynthesizer;->b:Li0/a;

    invoke-virtual {v0, p1}, Li0/a;->x(Lcom/baidu/tts/client/TtsMode;)Ln0/a;

    move-result-object p1

    return-object p1
.end method

.method public batchSpeak(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/tts/client/SpeechSynthesizeBag;",
            ">;)I"
        }
    .end annotation

    invoke-static {p1}, Lq1/b;->e(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lb1/n;->d0:Lb1/n;

    invoke-virtual {p1}, Lb1/n;->b()I

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lcom/baidu/tts/client/SpeechSynthesizer;->b:Li0/a;

    invoke-virtual {v0, p1}, Li0/a;->h(Ljava/util/List;)I

    move-result p1

    return p1
.end method

.method public freeCustomResource()I
    .locals 2

    const-string v0, "SpeechSynthesizer=="

    const-string v1, "freeCustomResource: "

    invoke-static {v0, v1}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/tts/client/SpeechSynthesizer;->b:Li0/a;

    invoke-virtual {v0}, Li0/a;->C()I

    move-result v0

    return v0
.end method

.method public declared-synchronized initTts(Lcom/baidu/tts/client/TtsMode;)I
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "SpeechSynthesizer=="

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VersionName: 2.6.2.2 VersionName_CODE: 2.6.2.2.2 initTts ttsMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/tts/client/SpeechSynthesizer;->b:Li0/a;

    invoke-virtual {v0, p1}, Li0/a;->n(Lcom/baidu/tts/client/TtsMode;)Ll0/f;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ll0/f;->b()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public libVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/tts/client/SpeechSynthesizer;->b:Li0/a;

    invoke-virtual {v0}, Li0/a;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public loadCustomResource(Ljava/lang/String;)I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadCustomResource: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpeechSynthesizer=="

    invoke-static {v1, v0}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/tts/client/SpeechSynthesizer;->b:Li0/a;

    invoke-virtual {v0, p1}, Li0/a;->d(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public loadEnglishModel(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/baidu/tts/client/SpeechSynthesizer;->b:Li0/a;

    invoke-virtual {v0, p1, p2}, Li0/a;->z(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public loadModel(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadModel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpeechSynthesizer=="

    invoke-static {v1, v0}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/tts/client/SpeechSynthesizer;->b:Li0/a;

    invoke-virtual {v0, p1, p2}, Li0/a;->s(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public declared-synchronized pause()I
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "SpeechSynthesizer=="

    const-string v1, "pause"

    invoke-static {v0, v1}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/tts/client/SpeechSynthesizer;->b:Li0/a;

    invoke-virtual {v0}, Li0/a;->q()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized release()I
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "SpeechSynthesizer=="

    const-string v1, "release"

    invoke-static {v0, v1}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/tts/client/SpeechSynthesizer;->b:Li0/a;

    invoke-virtual {v0}, Li0/a;->B()I

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/tts/client/SpeechSynthesizer;->a:Lcom/baidu/tts/client/SpeechSynthesizer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized resume()I
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "SpeechSynthesizer=="

    const-string v1, "resume"

    invoke-static {v0, v1}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/tts/client/SpeechSynthesizer;->b:Li0/a;

    invoke-virtual {v0}, Li0/a;->y()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setApiKey(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    sget-object v0, Lb1/g;->m0:Lb1/g;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/baidu/tts/client/SpeechSynthesizer;->setParam(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lb1/g;->n0:Lb1/g;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/baidu/tts/client/SpeechSynthesizer;->setParam(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method public setAppId(Ljava/lang/String;)I
    .locals 1

    invoke-static {p1}, Lq1/k;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lb1/g;->D:Lb1/g;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/baidu/tts/client/SpeechSynthesizer;->setParam(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    :cond_0
    sget p1, Lcom/baidu/tts/client/SpeechSynthesizer;->ERROR_APP_ID_IS_INVALID:I

    return p1
.end method

.method public setAudioAttributes(II)I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAudioAttributes usage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " contentType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpeechSynthesizer=="

    invoke-static {v1, v0}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/tts/client/SpeechSynthesizer;->b:Li0/a;

    invoke-virtual {v0, p1, p2}, Li0/a;->c(II)I

    move-result p1

    return p1
.end method

.method public setAudioSampleRate(I)I
    .locals 2

    const-string v0, "SpeechSynthesizer=="

    const-string v1, "setAudioSampleRate "

    invoke-static {v0, v1}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/tts/client/SpeechSynthesizer;->b:Li0/a;

    invoke-virtual {v0, p1}, Li0/a;->r(I)I

    move-result p1

    return p1
.end method

.method public setAudioStreamType(I)I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAudioStreamType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpeechSynthesizer=="

    invoke-static {v1, v0}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/tts/client/SpeechSynthesizer;->b:Li0/a;

    invoke-virtual {v0, p1}, Li0/a;->b(I)I

    move-result p1

    return p1
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 2

    const-string v0, "SpeechSynthesizer=="

    const-string v1, "setContext"

    invoke-static {v0, v1}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/tts/client/SpeechSynthesizer;->b:Li0/a;

    invoke-virtual {v0, p1}, Li0/a;->o(Landroid/content/Context;)V

    return-void
.end method

.method public setEnableAECPlay(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setEnableAECPlay "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpeechSynthesizer=="

    invoke-static {v1, v0}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lt0/d;->c(Z)V

    return-void
.end method

.method public setParam(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setParam key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpeechSynthesizer=="

    invoke-static {v1, v0}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/tts/client/SpeechSynthesizer;->b:Li0/a;

    invoke-virtual {v0, p1, p2}, Li0/a;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public setSpeechSynthesizerListener(Lcom/baidu/tts/client/SpeechSynthesizerListener;)V
    .locals 2

    const-string v0, "SpeechSynthesizer=="

    const-string v1, "setSpeechSynthesizerListener"

    invoke-static {v0, v1}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/tts/client/SpeechSynthesizer;->b:Li0/a;

    invoke-virtual {v0, p1}, Li0/a;->p(Lcom/baidu/tts/client/SpeechSynthesizerListener;)V

    return-void
.end method

.method public setStereoVolume(FF)I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setStereoVolume: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpeechSynthesizer=="

    invoke-static {v1, v0}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/tts/client/SpeechSynthesizer;->b:Li0/a;

    invoke-virtual {v0, p1, p2}, Li0/a;->a(FF)I

    move-result p1

    return p1
.end method

.method public speak(Lcom/baidu/tts/client/SpeechSynthesizeBag;)I
    .locals 1

    :try_start_0
    invoke-virtual {p1}, Lcom/baidu/tts/client/SpeechSynthesizeBag;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/baidu/tts/client/SpeechSynthesizeBag;->getUtteranceId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/baidu/tts/client/SpeechSynthesizer;->speak(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    sget-object p1, Lb1/n;->d0:Lb1/n;

    invoke-virtual {p1}, Lb1/n;->b()I

    move-result p1

    return p1
.end method

.method public speak(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/baidu/tts/client/SpeechSynthesizer;->speak(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public speak(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/baidu/tts/client/SpeechSynthesizer;->speak(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result p1

    return p1
.end method

.method public speak(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "speak  text: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpeechSynthesizer=="

    invoke-static {v1, v0}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/tts/client/SpeechSynthesizer;->b:Li0/a;

    invoke-virtual {v0, p1, p2, p3}, Li0/a;->f(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result p1

    return p1
.end method

.method public declared-synchronized stop()I
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "SpeechSynthesizer=="

    const-string v1, "stop"

    invoke-static {v0, v1}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/tts/client/SpeechSynthesizer;->b:Li0/a;

    invoke-virtual {v0}, Li0/a;->A()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public synthesize(Lcom/baidu/tts/client/SpeechSynthesizeBag;)I
    .locals 1

    :try_start_0
    invoke-virtual {p1}, Lcom/baidu/tts/client/SpeechSynthesizeBag;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/baidu/tts/client/SpeechSynthesizeBag;->getUtteranceId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/baidu/tts/client/SpeechSynthesizer;->synthesize(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    sget-object p1, Lb1/n;->d0:Lb1/n;

    invoke-virtual {p1}, Lb1/n;->b()I

    move-result p1

    return p1
.end method

.method public synthesize(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/baidu/tts/client/SpeechSynthesizer;->synthesize(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public synthesize(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/baidu/tts/client/SpeechSynthesizer;->synthesize(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result p1

    return p1
.end method

.method public synthesize(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "synthesize  text: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpeechSynthesizer=="

    invoke-static {v1, v0}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/tts/client/SpeechSynthesizer;->b:Li0/a;

    invoke-virtual {v0, p1, p2, p3}, Li0/a;->t(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result p1

    return p1
.end method
