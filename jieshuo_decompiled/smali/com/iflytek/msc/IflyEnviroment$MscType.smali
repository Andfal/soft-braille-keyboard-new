.class public final enum Lcom/iflytek/msc/IflyEnviroment$MscType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/msc/IflyEnviroment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MscType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iflytek/msc/IflyEnviroment$MscType;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lcom/iflytek/msc/IflyEnviroment$MscType;

.field public static final enum sms:Lcom/iflytek/msc/IflyEnviroment$MscType;

.field public static final enum unknown:Lcom/iflytek/msc/IflyEnviroment$MscType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/iflytek/msc/IflyEnviroment$MscType;

    const-string v1, "unknown"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/iflytek/msc/IflyEnviroment$MscType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/msc/IflyEnviroment$MscType;->unknown:Lcom/iflytek/msc/IflyEnviroment$MscType;

    new-instance v1, Lcom/iflytek/msc/IflyEnviroment$MscType;

    const-string v3, "sms"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/iflytek/msc/IflyEnviroment$MscType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/iflytek/msc/IflyEnviroment$MscType;->sms:Lcom/iflytek/msc/IflyEnviroment$MscType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/iflytek/msc/IflyEnviroment$MscType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/iflytek/msc/IflyEnviroment$MscType;->$VALUES:[Lcom/iflytek/msc/IflyEnviroment$MscType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/msc/IflyEnviroment$MscType;
    .locals 1

    const-class v0, Lcom/iflytek/msc/IflyEnviroment$MscType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iflytek/msc/IflyEnviroment$MscType;

    return-object p0
.end method

.method public static values()[Lcom/iflytek/msc/IflyEnviroment$MscType;
    .locals 1

    sget-object v0, Lcom/iflytek/msc/IflyEnviroment$MscType;->$VALUES:[Lcom/iflytek/msc/IflyEnviroment$MscType;

    invoke-virtual {v0}, [Lcom/iflytek/msc/IflyEnviroment$MscType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/msc/IflyEnviroment$MscType;

    return-object v0
.end method
