.class public final enum Lcom/iflytek/msc/IflyEnviroment$ApnAccessorType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/msc/IflyEnviroment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ApnAccessorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iflytek/msc/IflyEnviroment$ApnAccessorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lcom/iflytek/msc/IflyEnviroment$ApnAccessorType;

.field public static final enum CMNET:Lcom/iflytek/msc/IflyEnviroment$ApnAccessorType;

.field public static final enum CMWAP:Lcom/iflytek/msc/IflyEnviroment$ApnAccessorType;

.field public static final enum CTNET:Lcom/iflytek/msc/IflyEnviroment$ApnAccessorType;

.field public static final enum CTWAP:Lcom/iflytek/msc/IflyEnviroment$ApnAccessorType;

.field public static final enum UNINET:Lcom/iflytek/msc/IflyEnviroment$ApnAccessorType;

.field public static final enum UNIWAP:Lcom/iflytek/msc/IflyEnviroment$ApnAccessorType;

.field public static final enum UNKNOWN:Lcom/iflytek/msc/IflyEnviroment$ApnAccessorType;

.field public static final enum WIFI:Lcom/iflytek/msc/IflyEnviroment$ApnAccessorType;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/iflytek/msc/IflyEnviroment$ApnAccessorType;

    const-string v1, "WIFI"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/iflytek/msc/IflyEnviroment$ApnAccessorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/msc/IflyEnviroment$ApnAccessorType;->WIFI:Lcom/iflytek/msc/IflyEnviroment$ApnAccessorType;

    new-instance v1, Lcom/iflytek/msc/IflyEnviroment$ApnAccessorType;

    const-string v3, "CMWAP"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/iflytek/msc/IflyEnviroment$ApnAccessorType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/iflytek/msc/IflyEnviroment$ApnAccessorType;->CMWAP:Lcom/iflytek/msc/IflyEnviroment$ApnAccessorType;

    new-instance v3, Lcom/iflytek/msc/IflyEnviroment$ApnAccessorType;

    const-string v5, "CTWAP"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/iflytek/msc/IflyEnviroment$ApnAccessorType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/iflytek/msc/IflyEnviroment$ApnAccessorType;->CTWAP:Lcom/iflytek/msc/IflyEnviroment$ApnAccessorType;

    new-instance v5, Lcom/iflytek/msc/IflyEnviroment$ApnAccessorType;

    const-string v7, "UNIWAP"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/iflytek/msc/IflyEnviroment$ApnAccessorType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/iflytek/msc/IflyEnviroment$ApnAccessorType;->UNIWAP:Lcom/iflytek/msc/IflyEnviroment$ApnAccessorType;

    new-instance v7, Lcom/iflytek/msc/IflyEnviroment$ApnAccessorType;

    const-string v9, "CMNET"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/iflytek/msc/IflyEnviroment$ApnAccessorType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/iflytek/msc/IflyEnviroment$ApnAccessorType;->CMNET:Lcom/iflytek/msc/IflyEnviroment$ApnAccessorType;

    new-instance v9, Lcom/iflytek/msc/IflyEnviroment$ApnAccessorType;

    const-string v11, "UNINET"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/iflytek/msc/IflyEnviroment$ApnAccessorType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/iflytek/msc/IflyEnviroment$ApnAccessorType;->UNINET:Lcom/iflytek/msc/IflyEnviroment$ApnAccessorType;

    new-instance v11, Lcom/iflytek/msc/IflyEnviroment$ApnAccessorType;

    const-string v13, "CTNET"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/iflytek/msc/IflyEnviroment$ApnAccessorType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/iflytek/msc/IflyEnviroment$ApnAccessorType;->CTNET:Lcom/iflytek/msc/IflyEnviroment$ApnAccessorType;

    new-instance v13, Lcom/iflytek/msc/IflyEnviroment$ApnAccessorType;

    const-string v15, "UNKNOWN"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/iflytek/msc/IflyEnviroment$ApnAccessorType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/iflytek/msc/IflyEnviroment$ApnAccessorType;->UNKNOWN:Lcom/iflytek/msc/IflyEnviroment$ApnAccessorType;

    const/16 v15, 0x8

    new-array v15, v15, [Lcom/iflytek/msc/IflyEnviroment$ApnAccessorType;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    sput-object v15, Lcom/iflytek/msc/IflyEnviroment$ApnAccessorType;->$VALUES:[Lcom/iflytek/msc/IflyEnviroment$ApnAccessorType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/msc/IflyEnviroment$ApnAccessorType;
    .locals 1

    const-class v0, Lcom/iflytek/msc/IflyEnviroment$ApnAccessorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iflytek/msc/IflyEnviroment$ApnAccessorType;

    return-object p0
.end method

.method public static values()[Lcom/iflytek/msc/IflyEnviroment$ApnAccessorType;
    .locals 1

    sget-object v0, Lcom/iflytek/msc/IflyEnviroment$ApnAccessorType;->$VALUES:[Lcom/iflytek/msc/IflyEnviroment$ApnAccessorType;

    invoke-virtual {v0}, [Lcom/iflytek/msc/IflyEnviroment$ApnAccessorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/msc/IflyEnviroment$ApnAccessorType;

    return-object v0
.end method
