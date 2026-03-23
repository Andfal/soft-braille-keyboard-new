.class public final enum Lcom/iflytek/sparkchain/core/AudioType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iflytek/sparkchain/core/AudioType;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final enum AAC:Lcom/iflytek/sparkchain/core/AudioType;

.field public static final enum MP3:Lcom/iflytek/sparkchain/core/AudioType;

.field public static final enum PCM:Lcom/iflytek/sparkchain/core/AudioType;

.field public static final enum WAV:Lcom/iflytek/sparkchain/core/AudioType;

.field private static final synthetic b:[Lcom/iflytek/sparkchain/core/AudioType;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/iflytek/sparkchain/core/AudioType;

    const-string v1, "mp3"

    const-string v2, "MP3"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/iflytek/sparkchain/core/AudioType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iflytek/sparkchain/core/AudioType;->MP3:Lcom/iflytek/sparkchain/core/AudioType;

    new-instance v1, Lcom/iflytek/sparkchain/core/AudioType;

    const-string v2, "wav"

    const-string v4, "WAV"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcom/iflytek/sparkchain/core/AudioType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/iflytek/sparkchain/core/AudioType;->WAV:Lcom/iflytek/sparkchain/core/AudioType;

    new-instance v2, Lcom/iflytek/sparkchain/core/AudioType;

    const-string v4, "aac"

    const-string v6, "AAC"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lcom/iflytek/sparkchain/core/AudioType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/iflytek/sparkchain/core/AudioType;->AAC:Lcom/iflytek/sparkchain/core/AudioType;

    new-instance v4, Lcom/iflytek/sparkchain/core/AudioType;

    const-string v6, "pcm"

    const-string v8, "PCM"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lcom/iflytek/sparkchain/core/AudioType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/iflytek/sparkchain/core/AudioType;->PCM:Lcom/iflytek/sparkchain/core/AudioType;

    const/4 v6, 0x4

    new-array v6, v6, [Lcom/iflytek/sparkchain/core/AudioType;

    aput-object v0, v6, v3

    aput-object v1, v6, v5

    aput-object v2, v6, v7

    aput-object v4, v6, v9

    sput-object v6, Lcom/iflytek/sparkchain/core/AudioType;->b:[Lcom/iflytek/sparkchain/core/AudioType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/iflytek/sparkchain/core/AudioType;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/sparkchain/core/AudioType;
    .locals 1

    const-class v0, Lcom/iflytek/sparkchain/core/AudioType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iflytek/sparkchain/core/AudioType;

    return-object p0
.end method

.method public static values()[Lcom/iflytek/sparkchain/core/AudioType;
    .locals 1

    sget-object v0, Lcom/iflytek/sparkchain/core/AudioType;->b:[Lcom/iflytek/sparkchain/core/AudioType;

    invoke-virtual {v0}, [Lcom/iflytek/sparkchain/core/AudioType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/sparkchain/core/AudioType;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/AudioType;->a:Ljava/lang/String;

    return-object v0
.end method
