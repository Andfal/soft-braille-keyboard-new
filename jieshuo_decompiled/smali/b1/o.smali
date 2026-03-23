.class public abstract enum Lb1/o;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lb1/o;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lb1/o;

.field public static final enum c:Lb1/o;

.field public static final enum d:Lb1/o;

.field public static final enum e:Lb1/o;

.field public static final enum f:Lb1/o;

.field private static final synthetic g:[Lb1/o;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lb1/o$a;

    const-string v1, "https://tsn.baidu.com/text2audio"

    const-string v2, "TTS_SERVER"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lb1/o$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lb1/o;->b:Lb1/o;

    new-instance v1, Lb1/o$b;

    const-string v2, "https://tts.baidu.com/bos/story.php?"

    const-string v4, "MODEL_SERVER"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lb1/o$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lb1/o;->c:Lb1/o;

    new-instance v2, Lb1/o$c;

    const-string v4, "https://upl.baidu.com/offline/confirm"

    const-string v6, "STATISTICS_SERVER"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lb1/o$c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lb1/o;->d:Lb1/o;

    new-instance v4, Lb1/o$d;

    const-string v6, "https://upl.baidu.com/ttsdlstats"

    const-string v8, "STATISTICS_MODELLOAD_SERVER"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lb1/o$d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lb1/o;->e:Lb1/o;

    new-instance v6, Lb1/o$e;

    const-string v8, "https://upl.baidu.com/auth/"

    const-string v10, "GETLICENSE_SERVER"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v8}, Lb1/o$e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lb1/o;->f:Lb1/o;

    const/4 v8, 0x5

    new-array v8, v8, [Lb1/o;

    aput-object v0, v8, v3

    aput-object v1, v8, v5

    aput-object v2, v8, v7

    aput-object v4, v8, v9

    aput-object v6, v8, v11

    sput-object v8, Lb1/o;->g:[Lb1/o;

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

    iput-object p3, p0, Lb1/o;->a:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Lb1/o$a;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lb1/o;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p0

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

.method public static valueOf(Ljava/lang/String;)Lb1/o;
    .locals 1

    const-class v0, Lb1/o;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lb1/o;

    return-object p0
.end method

.method public static values()[Lb1/o;
    .locals 1

    sget-object v0, Lb1/o;->g:[Lb1/o;

    invoke-virtual {v0}, [Lb1/o;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb1/o;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lb1/o;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lb1/o;->a:Ljava/lang/String;

    return-void
.end method

.method public abstract c(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract d(Ljava/lang/String;)Ljava/lang/String;
.end method
