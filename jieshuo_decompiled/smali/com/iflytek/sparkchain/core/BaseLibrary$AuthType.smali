.class public final enum Lcom/iflytek/sparkchain/core/BaseLibrary$AuthType;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/iflytek/sparkchain/core/Const;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/sparkchain/core/BaseLibrary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AuthType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iflytek/sparkchain/core/BaseLibrary$AuthType;",
        ">;",
        "Lcom/iflytek/sparkchain/core/Const;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iflytek/sparkchain/core/BaseLibrary$AuthType;

.field public static final enum APP:Lcom/iflytek/sparkchain/core/BaseLibrary$AuthType;

.field public static final enum DEVICE:Lcom/iflytek/sparkchain/core/BaseLibrary$AuthType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/iflytek/sparkchain/core/BaseLibrary$AuthType;

    const-string v1, "DEVICE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/iflytek/sparkchain/core/BaseLibrary$AuthType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/iflytek/sparkchain/core/BaseLibrary$AuthType;->DEVICE:Lcom/iflytek/sparkchain/core/BaseLibrary$AuthType;

    new-instance v1, Lcom/iflytek/sparkchain/core/BaseLibrary$AuthType;

    const-string v3, "APP"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/iflytek/sparkchain/core/BaseLibrary$AuthType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/iflytek/sparkchain/core/BaseLibrary$AuthType;->APP:Lcom/iflytek/sparkchain/core/BaseLibrary$AuthType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/iflytek/sparkchain/core/BaseLibrary$AuthType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/iflytek/sparkchain/core/BaseLibrary$AuthType;->$VALUES:[Lcom/iflytek/sparkchain/core/BaseLibrary$AuthType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/iflytek/sparkchain/core/BaseLibrary$AuthType;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/iflytek/sparkchain/core/BaseLibrary$AuthType;
    .locals 1

    if-nez p0, :cond_0

    sget-object p0, Lcom/iflytek/sparkchain/core/BaseLibrary$AuthType;->DEVICE:Lcom/iflytek/sparkchain/core/BaseLibrary$AuthType;

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/iflytek/sparkchain/core/BaseLibrary$AuthType;->APP:Lcom/iflytek/sparkchain/core/BaseLibrary$AuthType;

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "type not supported"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/sparkchain/core/BaseLibrary$AuthType;
    .locals 1

    const-class v0, Lcom/iflytek/sparkchain/core/BaseLibrary$AuthType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iflytek/sparkchain/core/BaseLibrary$AuthType;

    return-object p0
.end method

.method public static values()[Lcom/iflytek/sparkchain/core/BaseLibrary$AuthType;
    .locals 1

    sget-object v0, Lcom/iflytek/sparkchain/core/BaseLibrary$AuthType;->$VALUES:[Lcom/iflytek/sparkchain/core/BaseLibrary$AuthType;

    invoke-virtual {v0}, [Lcom/iflytek/sparkchain/core/BaseLibrary$AuthType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/sparkchain/core/BaseLibrary$AuthType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/iflytek/sparkchain/core/BaseLibrary$AuthType;->value:I

    return v0
.end method
