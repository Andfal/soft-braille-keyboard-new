.class abstract enum Lcom/baidu/speech/utils/auth/UrlEnum;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/baidu/speech/utils/auth/UrlEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/baidu/speech/utils/auth/UrlEnum;

.field public static final enum GETLICENSE_SERVER:Lcom/baidu/speech/utils/auth/UrlEnum;


# instance fields
.field private final mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/baidu/speech/utils/auth/UrlEnum$1;

    const-string v1, "https://audiotest.baidu.com/auth/"

    const-string v2, "GETLICENSE_SERVER"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/baidu/speech/utils/auth/UrlEnum$1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/baidu/speech/utils/auth/UrlEnum;->GETLICENSE_SERVER:Lcom/baidu/speech/utils/auth/UrlEnum;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/baidu/speech/utils/auth/UrlEnum;

    aput-object v0, v1, v3

    sput-object v1, Lcom/baidu/speech/utils/auth/UrlEnum;->$VALUES:[Lcom/baidu/speech/utils/auth/UrlEnum;

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

    iput-object p3, p0, Lcom/baidu/speech/utils/auth/UrlEnum;->mUrl:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/baidu/speech/utils/auth/UrlEnum$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/speech/utils/auth/UrlEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static getIp(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/speech/utils/auth/UrlEnum;
    .locals 1

    const-class v0, Lcom/baidu/speech/utils/auth/UrlEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/baidu/speech/utils/auth/UrlEnum;

    return-object p0
.end method

.method public static values()[Lcom/baidu/speech/utils/auth/UrlEnum;
    .locals 1

    sget-object v0, Lcom/baidu/speech/utils/auth/UrlEnum;->$VALUES:[Lcom/baidu/speech/utils/auth/UrlEnum;

    invoke-virtual {v0}, [Lcom/baidu/speech/utils/auth/UrlEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/speech/utils/auth/UrlEnum;

    return-object v0
.end method


# virtual methods
.method public abstract getIpUrl()Ljava/lang/String;
.end method

.method public abstract getIpUrlByProtocol(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/speech/utils/auth/UrlEnum;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getUrlByProtocol(Ljava/lang/String;)Ljava/lang/String;
.end method
