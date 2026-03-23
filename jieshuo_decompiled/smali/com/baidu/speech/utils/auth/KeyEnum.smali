.class final enum Lcom/baidu/speech/utils/auth/KeyEnum;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/baidu/speech/utils/auth/KeyEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/baidu/speech/utils/auth/KeyEnum;

.field public static final enum APPNAME:Lcom/baidu/speech/utils/auth/KeyEnum;

.field public static final enum CUID:Lcom/baidu/speech/utils/auth/KeyEnum;

.field public static final enum GETLICENSE_ERRNO:Lcom/baidu/speech/utils/auth/KeyEnum;

.field public static final enum ID:Lcom/baidu/speech/utils/auth/KeyEnum;

.field public static final enum SERIAL_NUMBER:Lcom/baidu/speech/utils/auth/KeyEnum;

.field public static final enum SIGN:Lcom/baidu/speech/utils/auth/KeyEnum;

.field public static final enum STA:Lcom/baidu/speech/utils/auth/KeyEnum;

.field public static final enum VERSION:Lcom/baidu/speech/utils/auth/KeyEnum;


# instance fields
.field private final mAlias:Ljava/lang/String;

.field private final mFullName:Ljava/lang/String;

.field private final mShortName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    new-instance v6, Lcom/baidu/speech/utils/auth/KeyEnum;

    const-string v1, "CUID"

    const/4 v2, 0x0

    const-string v3, "cuid"

    const-string v4, "deviceId"

    const-string v5, "wise_cuid"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/baidu/speech/utils/auth/KeyEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lcom/baidu/speech/utils/auth/KeyEnum;->CUID:Lcom/baidu/speech/utils/auth/KeyEnum;

    new-instance v0, Lcom/baidu/speech/utils/auth/KeyEnum;

    const-string v8, "SIGN"

    const/4 v9, 0x1

    const-string v10, "sign"

    const-string v11, ""

    const-string v12, "appidmd5"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/baidu/speech/utils/auth/KeyEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/baidu/speech/utils/auth/KeyEnum;->SIGN:Lcom/baidu/speech/utils/auth/KeyEnum;

    new-instance v1, Lcom/baidu/speech/utils/auth/KeyEnum;

    const-string v14, "ID"

    const/4 v15, 0x2

    const-string v16, "id"

    const-string v17, "id"

    const/16 v18, 0x0

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lcom/baidu/speech/utils/auth/KeyEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/baidu/speech/utils/auth/KeyEnum;->ID:Lcom/baidu/speech/utils/auth/KeyEnum;

    new-instance v2, Lcom/baidu/speech/utils/auth/KeyEnum;

    const-string v8, "APPNAME"

    const/4 v9, 0x3

    const-string v10, "app"

    const-string v11, ""

    const-string v12, "app_package_name"

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lcom/baidu/speech/utils/auth/KeyEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/baidu/speech/utils/auth/KeyEnum;->APPNAME:Lcom/baidu/speech/utils/auth/KeyEnum;

    new-instance v3, Lcom/baidu/speech/utils/auth/KeyEnum;

    const-string v14, "STA"

    const/4 v15, 0x4

    const-string v16, "sta"

    const-string v17, ""

    const-string v18, ""

    move-object v13, v3

    invoke-direct/range {v13 .. v18}, Lcom/baidu/speech/utils/auth/KeyEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/baidu/speech/utils/auth/KeyEnum;->STA:Lcom/baidu/speech/utils/auth/KeyEnum;

    new-instance v4, Lcom/baidu/speech/utils/auth/KeyEnum;

    const-string v8, "GETLICENSE_ERRNO"

    const/4 v9, 0x5

    const-string v10, "errno"

    const-string v11, ""

    const-string v12, ""

    move-object v7, v4

    invoke-direct/range {v7 .. v12}, Lcom/baidu/speech/utils/auth/KeyEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lcom/baidu/speech/utils/auth/KeyEnum;->GETLICENSE_ERRNO:Lcom/baidu/speech/utils/auth/KeyEnum;

    new-instance v5, Lcom/baidu/speech/utils/auth/KeyEnum;

    const-string v14, "VERSION"

    const/4 v15, 0x6

    const-string v16, "ver"

    const-string v17, "version"

    const-string v18, "sdkversion"

    move-object v13, v5

    invoke-direct/range {v13 .. v18}, Lcom/baidu/speech/utils/auth/KeyEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v5, Lcom/baidu/speech/utils/auth/KeyEnum;->VERSION:Lcom/baidu/speech/utils/auth/KeyEnum;

    new-instance v13, Lcom/baidu/speech/utils/auth/KeyEnum;

    const-string v8, "SERIAL_NUMBER"

    const/4 v9, 0x7

    const-string v10, "sn"

    const-string v11, "serialNumber"

    const-string v12, ""

    move-object v7, v13

    invoke-direct/range {v7 .. v12}, Lcom/baidu/speech/utils/auth/KeyEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v13, Lcom/baidu/speech/utils/auth/KeyEnum;->SERIAL_NUMBER:Lcom/baidu/speech/utils/auth/KeyEnum;

    const/16 v7, 0x8

    new-array v7, v7, [Lcom/baidu/speech/utils/auth/KeyEnum;

    const/4 v8, 0x0

    aput-object v6, v7, v8

    const/4 v6, 0x1

    aput-object v0, v7, v6

    const/4 v0, 0x2

    aput-object v1, v7, v0

    const/4 v0, 0x3

    aput-object v2, v7, v0

    const/4 v0, 0x4

    aput-object v3, v7, v0

    const/4 v0, 0x5

    aput-object v4, v7, v0

    const/4 v0, 0x6

    aput-object v5, v7, v0

    const/4 v0, 0x7

    aput-object v13, v7, v0

    sput-object v7, Lcom/baidu/speech/utils/auth/KeyEnum;->$VALUES:[Lcom/baidu/speech/utils/auth/KeyEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/baidu/speech/utils/auth/KeyEnum;->mShortName:Ljava/lang/String;

    iput-object p4, p0, Lcom/baidu/speech/utils/auth/KeyEnum;->mFullName:Ljava/lang/String;

    iput-object p5, p0, Lcom/baidu/speech/utils/auth/KeyEnum;->mAlias:Ljava/lang/String;

    return-void
.end method

.method public static getUniqueName(Lcom/baidu/speech/utils/auth/KeyEnum;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/speech/utils/auth/KeyEnum;
    .locals 1

    const-class v0, Lcom/baidu/speech/utils/auth/KeyEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/baidu/speech/utils/auth/KeyEnum;

    return-object p0
.end method

.method public static values()[Lcom/baidu/speech/utils/auth/KeyEnum;
    .locals 1

    sget-object v0, Lcom/baidu/speech/utils/auth/KeyEnum;->$VALUES:[Lcom/baidu/speech/utils/auth/KeyEnum;

    invoke-virtual {v0}, [Lcom/baidu/speech/utils/auth/KeyEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/speech/utils/auth/KeyEnum;

    return-object v0
.end method


# virtual methods
.method public getAlias()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/speech/utils/auth/KeyEnum;->mAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/speech/utils/auth/KeyEnum;->mFullName:Ljava/lang/String;

    return-object v0
.end method

.method public getShortName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/speech/utils/auth/KeyEnum;->mShortName:Ljava/lang/String;

    return-object v0
.end method
