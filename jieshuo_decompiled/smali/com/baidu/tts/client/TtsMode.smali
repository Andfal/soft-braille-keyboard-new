.class public final enum Lcom/baidu/tts/client/TtsMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/baidu/tts/client/TtsMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ONLINE:Lcom/baidu/tts/client/TtsMode;

.field private static final synthetic b:[Lcom/baidu/tts/client/TtsMode;


# instance fields
.field private final a:Lb1/m;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/baidu/tts/client/TtsMode;

    sget-object v1, Lb1/m;->c:Lb1/m;

    const-string v2, "ONLINE"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/baidu/tts/client/TtsMode;-><init>(Ljava/lang/String;ILb1/m;)V

    sput-object v0, Lcom/baidu/tts/client/TtsMode;->ONLINE:Lcom/baidu/tts/client/TtsMode;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/baidu/tts/client/TtsMode;

    aput-object v0, v1, v3

    sput-object v1, Lcom/baidu/tts/client/TtsMode;->b:[Lcom/baidu/tts/client/TtsMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILb1/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb1/m;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/baidu/tts/client/TtsMode;->a:Lb1/m;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/tts/client/TtsMode;
    .locals 1

    const-class v0, Lcom/baidu/tts/client/TtsMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/baidu/tts/client/TtsMode;

    return-object p0
.end method

.method public static values()[Lcom/baidu/tts/client/TtsMode;
    .locals 1

    sget-object v0, Lcom/baidu/tts/client/TtsMode;->b:[Lcom/baidu/tts/client/TtsMode;

    invoke-virtual {v0}, [Lcom/baidu/tts/client/TtsMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/tts/client/TtsMode;

    return-object v0
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/tts/client/TtsMode;->a:Lb1/m;

    invoke-virtual {v0}, Lb1/m;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMode()I
    .locals 1

    iget-object v0, p0, Lcom/baidu/tts/client/TtsMode;->a:Lb1/m;

    invoke-virtual {v0}, Lb1/m;->a()I

    move-result v0

    return v0
.end method

.method public getTtsEnum()Lb1/m;
    .locals 1

    iget-object v0, p0, Lcom/baidu/tts/client/TtsMode;->a:Lb1/m;

    return-object v0
.end method
