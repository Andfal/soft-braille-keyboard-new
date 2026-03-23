.class public final Lcom/vivo/speechsdk/module/api/asr/ASRConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ACTION_PREPARE:I = 0x3e8

.field public static final DEF_ASR_TIME_OUT:I = 0x1388

.field public static final DEF_NLU_TIME_OUT:I = 0x1388

.field public static final ERROR_FROM_CLOUD:I = 0x2

.field public static final ERROR_FROM_ENGINE:I = 0x3

.field public static final ERROR_FROM_YM:I = 0x1

.field public static final EVENT_CONNECTED:I = 0x271a

.field public static final EVENT_END:I = 0x2714

.field public static final EVENT_ENGINE_ERROR:I = 0x2711

.field public static final EVENT_ENGINE_INIT_TIMEOUT:I = 0x271c

.field public static final EVENT_ENGINE_SWITCH:I = 0x271d

.field public static final EVENT_ENGINE_TYPE:I = 0x2719

.field public static final EVENT_NET_CLOSE:I = 0x2713

.field public static final EVENT_NET_INFO:I = 0x271e

.field public static final EVENT_NET_LOW_QUALITY:I = 0x2718

.field public static final EVENT_SID:I = 0x2712

.field public static final EVENT_START_SEND:I = 0x271b

.field public static final EVENT_YM:I = 0x2717

.field public static final EVENT_YM_SPEECH_END:I = 0x2716

.field public static final EVENT_YM_SPEECH_START:I = 0x2715

.field public static final KEY_ARG1:Ljava/lang/String; = "key_arg1"

.field public static final KEY_ARG2:Ljava/lang/String; = "key_arg2"

.field public static final KEY_ASR_RESULT:Ljava/lang/String; = "key_asr_result"

.field public static final KEY_BUNDLE:Ljava/lang/String; = "key_bundle"

.field public static final KEY_CLOSE_CODE:Ljava/lang/String; = "key_close_code"

.field public static final KEY_ENGINE_TYPE:Ljava/lang/String; = "key_engine_type"

.field public static final KEY_ERROR_CODE:Ljava/lang/String; = "key_error_code"

.field public static final KEY_ERROR_FROM:Ljava/lang/String; = "key_error_from"

.field public static final KEY_ERROR_MSG:Ljava/lang/String; = "key_error_msg"

.field public static final KEY_EVENT_TYPE:Ljava/lang/String; = "key_event_type"

.field public static final KEY_NET_QUALITY:Ljava/lang/String; = "key_net_quality"

.field public static final KEY_NET_REUSE:Ljava/lang/String; = "key_net_reuse"

.field public static final KEY_SID:Ljava/lang/String; = "key_sid"

.field public static final KEY_SINFO_END_REASON:Ljava/lang/String; = "key_end_reason"

.field public static final KEY_SINFO_FIRST_TEXT_DUR:Ljava/lang/String; = "key_fir_txt_dur"

.field public static final KEY_SWITCH_OPPORTUNITY:Ljava/lang/String; = "key_switch_opportunity"

.field public static final KEY_UNSENT_SIZE:Ljava/lang/String; = "key_unsent_size"

.field public static final OPPORTUNITY_MID:I = 0xa

.field public static final OPPORTUNITY_START:I = 0x9

.field public static final OPPORTUNITY_STOP:I = 0xb


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static eventName(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "engine type"

    return-object p0

    :pswitch_1
    const-string p0, "low quality"

    return-object p0

    :pswitch_2
    const-string p0, "ym event"

    return-object p0

    :pswitch_3
    const-string p0, "ym speech end"

    return-object p0

    :pswitch_4
    const-string p0, "ym speech start"

    return-object p0

    :pswitch_5
    const-string p0, "end"

    return-object p0

    :pswitch_6
    const-string p0, "net close"

    return-object p0

    :pswitch_7
    const-string p0, "sid"

    return-object p0

    :pswitch_8
    const-string p0, "engine error"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
