.class final enum Lcom/baidu/speech/asr/PrivateConstant$VoiceRecognitionClientWorkStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/speech/asr/PrivateConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "VoiceRecognitionClientWorkStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/baidu/speech/asr/PrivateConstant$VoiceRecognitionClientWorkStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/baidu/speech/asr/PrivateConstant$VoiceRecognitionClientWorkStatus;

.field public static final enum EVoiceRecognitionClientWorkStatusCancel:Lcom/baidu/speech/asr/PrivateConstant$VoiceRecognitionClientWorkStatus;

.field public static final enum EVoiceRecognitionClientWorkStatusEnd:Lcom/baidu/speech/asr/PrivateConstant$VoiceRecognitionClientWorkStatus;

.field public static final enum EVoiceRecognitionClientWorkStatusError:Lcom/baidu/speech/asr/PrivateConstant$VoiceRecognitionClientWorkStatus;

.field public static final enum EVoiceRecognitionClientWorkStatusFinish:Lcom/baidu/speech/asr/PrivateConstant$VoiceRecognitionClientWorkStatus;

.field public static final enum EVoiceRecognitionClientWorkStatusFlushData:Lcom/baidu/speech/asr/PrivateConstant$VoiceRecognitionClientWorkStatus;

.field public static final enum EVoiceRecognitionClientWorkStatusLoaded:Lcom/baidu/speech/asr/PrivateConstant$VoiceRecognitionClientWorkStatus;

.field public static final enum EVoiceRecognitionClientWorkStatusMeterLevel:Lcom/baidu/speech/asr/PrivateConstant$VoiceRecognitionClientWorkStatus;

.field public static final enum EVoiceRecognitionClientWorkStatusNewRecordData:Lcom/baidu/speech/asr/PrivateConstant$VoiceRecognitionClientWorkStatus;

.field public static final enum EVoiceRecognitionClientWorkStatusStart:Lcom/baidu/speech/asr/PrivateConstant$VoiceRecognitionClientWorkStatus;

.field public static final enum EVoiceRecognitionClientWorkStatusStartWorkIng:Lcom/baidu/speech/asr/PrivateConstant$VoiceRecognitionClientWorkStatus;

.field public static final enum EVoiceRecognitionClientWorkStatusUnLoaded:Lcom/baidu/speech/asr/PrivateConstant$VoiceRecognitionClientWorkStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/baidu/speech/asr/PrivateConstant$VoiceRecognitionClientWorkStatus;

    const-string v1, "EVoiceRecognitionClientWorkStatusStartWorkIng"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/baidu/speech/asr/PrivateConstant$VoiceRecognitionClientWorkStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/speech/asr/PrivateConstant$VoiceRecognitionClientWorkStatus;->EVoiceRecognitionClientWorkStatusStartWorkIng:Lcom/baidu/speech/asr/PrivateConstant$VoiceRecognitionClientWorkStatus;

    new-instance v1, Lcom/baidu/speech/asr/PrivateConstant$VoiceRecognitionClientWorkStatus;

    const-string v3, "EVoiceRecognitionClientWorkStatusStart"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/baidu/speech/asr/PrivateConstant$VoiceRecognitionClientWorkStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/baidu/speech/asr/PrivateConstant$VoiceRecognitionClientWorkStatus;->EVoiceRecognitionClientWorkStatusStart:Lcom/baidu/speech/asr/PrivateConstant$VoiceRecognitionClientWorkStatus;

    new-instance v3, Lcom/baidu/speech/asr/PrivateConstant$VoiceRecognitionClientWorkStatus;

    const-string v5, "EVoiceRecognitionClientWorkStatusEnd"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/baidu/speech/asr/PrivateConstant$VoiceRecognitionClientWorkStatus;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/baidu/speech/asr/PrivateConstant$VoiceRecognitionClientWorkStatus;->EVoiceRecognitionClientWorkStatusEnd:Lcom/baidu/speech/asr/PrivateConstant$VoiceRecognitionClientWorkStatus;

    new-instance v5, Lcom/baidu/speech/asr/PrivateConstant$VoiceRecognitionClientWorkStatus;

    const-string v7, "EVoiceRecognitionClientWorkStatusNewRecordData"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/baidu/speech/asr/PrivateConstant$VoiceRecognitionClientWorkStatus;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/baidu/speech/asr/PrivateConstant$VoiceRecognitionClientWorkStatus;->EVoiceRecognitionClientWorkStatusNewRecordData:Lcom/baidu/speech/asr/PrivateConstant$VoiceRecognitionClientWorkStatus;

    new-instance v7, Lcom/baidu/speech/asr/PrivateConstant$VoiceRecognitionClientWorkStatus;

    const-string v9, "EVoiceRecognitionClientWorkStatusFlushData"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/baidu/speech/asr/PrivateConstant$VoiceRecognitionClientWorkStatus;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/baidu/speech/asr/PrivateConstant$VoiceRecognitionClientWorkStatus;->EVoiceRecognitionClientWorkStatusFlushData:Lcom/baidu/speech/asr/PrivateConstant$VoiceRecognitionClientWorkStatus;

    new-instance v9, Lcom/baidu/speech/asr/PrivateConstant$VoiceRecognitionClientWorkStatus;

    const-string v11, "EVoiceRecognitionClientWorkStatusFinish"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/baidu/speech/asr/PrivateConstant$VoiceRecognitionClientWorkStatus;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/baidu/speech/asr/PrivateConstant$VoiceRecognitionClientWorkStatus;->EVoiceRecognitionClientWorkStatusFinish:Lcom/baidu/speech/asr/PrivateConstant$VoiceRecognitionClientWorkStatus;

    new-instance v11, Lcom/baidu/speech/asr/PrivateConstant$VoiceRecognitionClientWorkStatus;

    const-string v13, "EVoiceRecognitionClientWorkStatusMeterLevel"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/baidu/speech/asr/PrivateConstant$VoiceRecognitionClientWorkStatus;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/baidu/speech/asr/PrivateConstant$VoiceRecognitionClientWorkStatus;->EVoiceRecognitionClientWorkStatusMeterLevel:Lcom/baidu/speech/asr/PrivateConstant$VoiceRecognitionClientWorkStatus;

    new-instance v13, Lcom/baidu/speech/asr/PrivateConstant$VoiceRecognitionClientWorkStatus;

    const-string v15, "EVoiceRecognitionClientWorkStatusCancel"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/baidu/speech/asr/PrivateConstant$VoiceRecognitionClientWorkStatus;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/baidu/speech/asr/PrivateConstant$VoiceRecognitionClientWorkStatus;->EVoiceRecognitionClientWorkStatusCancel:Lcom/baidu/speech/asr/PrivateConstant$VoiceRecognitionClientWorkStatus;

    new-instance v15, Lcom/baidu/speech/asr/PrivateConstant$VoiceRecognitionClientWorkStatus;

    const-string v14, "EVoiceRecognitionClientWorkStatusError"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/baidu/speech/asr/PrivateConstant$VoiceRecognitionClientWorkStatus;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/baidu/speech/asr/PrivateConstant$VoiceRecognitionClientWorkStatus;->EVoiceRecognitionClientWorkStatusError:Lcom/baidu/speech/asr/PrivateConstant$VoiceRecognitionClientWorkStatus;

    new-instance v14, Lcom/baidu/speech/asr/PrivateConstant$VoiceRecognitionClientWorkStatus;

    const-string v12, "EVoiceRecognitionClientWorkStatusLoaded"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/baidu/speech/asr/PrivateConstant$VoiceRecognitionClientWorkStatus;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/baidu/speech/asr/PrivateConstant$VoiceRecognitionClientWorkStatus;->EVoiceRecognitionClientWorkStatusLoaded:Lcom/baidu/speech/asr/PrivateConstant$VoiceRecognitionClientWorkStatus;

    new-instance v12, Lcom/baidu/speech/asr/PrivateConstant$VoiceRecognitionClientWorkStatus;

    const-string v10, "EVoiceRecognitionClientWorkStatusUnLoaded"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/baidu/speech/asr/PrivateConstant$VoiceRecognitionClientWorkStatus;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/baidu/speech/asr/PrivateConstant$VoiceRecognitionClientWorkStatus;->EVoiceRecognitionClientWorkStatusUnLoaded:Lcom/baidu/speech/asr/PrivateConstant$VoiceRecognitionClientWorkStatus;

    const/16 v10, 0xb

    new-array v10, v10, [Lcom/baidu/speech/asr/PrivateConstant$VoiceRecognitionClientWorkStatus;

    aput-object v0, v10, v2

    aput-object v1, v10, v4

    aput-object v3, v10, v6

    const/4 v0, 0x3

    aput-object v5, v10, v0

    const/4 v0, 0x4

    aput-object v7, v10, v0

    const/4 v0, 0x5

    aput-object v9, v10, v0

    const/4 v0, 0x6

    aput-object v11, v10, v0

    const/4 v0, 0x7

    aput-object v13, v10, v0

    const/16 v0, 0x8

    aput-object v15, v10, v0

    const/16 v0, 0x9

    aput-object v14, v10, v0

    aput-object v12, v10, v8

    sput-object v10, Lcom/baidu/speech/asr/PrivateConstant$VoiceRecognitionClientWorkStatus;->$VALUES:[Lcom/baidu/speech/asr/PrivateConstant$VoiceRecognitionClientWorkStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/speech/asr/PrivateConstant$VoiceRecognitionClientWorkStatus;
    .locals 1

    const-class v0, Lcom/baidu/speech/asr/PrivateConstant$VoiceRecognitionClientWorkStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/baidu/speech/asr/PrivateConstant$VoiceRecognitionClientWorkStatus;

    return-object p0
.end method

.method public static values()[Lcom/baidu/speech/asr/PrivateConstant$VoiceRecognitionClientWorkStatus;
    .locals 1

    sget-object v0, Lcom/baidu/speech/asr/PrivateConstant$VoiceRecognitionClientWorkStatus;->$VALUES:[Lcom/baidu/speech/asr/PrivateConstant$VoiceRecognitionClientWorkStatus;

    invoke-virtual {v0}, [Lcom/baidu/speech/asr/PrivateConstant$VoiceRecognitionClientWorkStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/speech/asr/PrivateConstant$VoiceRecognitionClientWorkStatus;

    return-object v0
.end method
