.class public final enum Ly2/e0;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ly2/e0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ly2/e0;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Ly2/e0;

.field public static final enum c:Ly2/e0;

.field public static final enum d:Ly2/e0;

.field public static final enum e:Ly2/e0;

.field public static final enum f:Ly2/e0;

.field private static final synthetic g:[Ly2/e0;

.field public static final h:Ly2/e0$a;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x5

    new-array v0, v0, [Ly2/e0;

    new-instance v1, Ly2/e0;

    const-string v2, "TLS_1_3"

    const-string v3, "TLSv1.3"

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4, v3}, Ly2/e0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Ly2/e0;->b:Ly2/e0;

    aput-object v1, v0, v4

    new-instance v1, Ly2/e0;

    const-string v2, "TLS_1_2"

    const-string v3, "TLSv1.2"

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4, v3}, Ly2/e0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Ly2/e0;->c:Ly2/e0;

    aput-object v1, v0, v4

    new-instance v1, Ly2/e0;

    const-string v2, "TLS_1_1"

    const-string v3, "TLSv1.1"

    const/4 v4, 0x2

    invoke-direct {v1, v2, v4, v3}, Ly2/e0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Ly2/e0;->d:Ly2/e0;

    aput-object v1, v0, v4

    new-instance v1, Ly2/e0;

    const-string v2, "TLS_1_0"

    const-string v3, "TLSv1"

    const/4 v4, 0x3

    invoke-direct {v1, v2, v4, v3}, Ly2/e0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Ly2/e0;->e:Ly2/e0;

    aput-object v1, v0, v4

    new-instance v1, Ly2/e0;

    const-string v2, "SSL_3_0"

    const-string v3, "SSLv3"

    const/4 v4, 0x4

    invoke-direct {v1, v2, v4, v3}, Ly2/e0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Ly2/e0;->f:Ly2/e0;

    aput-object v1, v0, v4

    sput-object v0, Ly2/e0;->g:[Ly2/e0;

    new-instance v0, Ly2/e0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ly2/e0$a;-><init>(Lt2/d;)V

    sput-object v0, Ly2/e0;->h:Ly2/e0$a;

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

    iput-object p3, p0, Ly2/e0;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ly2/e0;
    .locals 1

    const-class v0, Ly2/e0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ly2/e0;

    return-object p0
.end method

.method public static values()[Ly2/e0;
    .locals 1

    sget-object v0, Ly2/e0;->g:[Ly2/e0;

    invoke-virtual {v0}, [Ly2/e0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ly2/e0;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ly2/e0;->a:Ljava/lang/String;

    return-object v0
.end method
