.class public final enum Lcom/iflytek/sparkchain/core/AgentType;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/iflytek/sparkchain/core/Const;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iflytek/sparkchain/core/AgentType;",
        ">;",
        "Lcom/iflytek/sparkchain/core/Const;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iflytek/sparkchain/core/AgentType;

.field public static final enum PLUGIN_AGENT:Lcom/iflytek/sparkchain/core/AgentType;

.field public static final enum UNKNOWN_TYPE:Lcom/iflytek/sparkchain/core/AgentType;

.field public static final enum ZERO_SHOT_REACT:Lcom/iflytek/sparkchain/core/AgentType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/iflytek/sparkchain/core/AgentType;

    const/4 v1, -0x1

    const-string v2, "UNKNOWN_TYPE"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/iflytek/sparkchain/core/AgentType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/iflytek/sparkchain/core/AgentType;->UNKNOWN_TYPE:Lcom/iflytek/sparkchain/core/AgentType;

    new-instance v1, Lcom/iflytek/sparkchain/core/AgentType;

    const-string v2, "PLUGIN_AGENT"

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4, v3}, Lcom/iflytek/sparkchain/core/AgentType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/iflytek/sparkchain/core/AgentType;->PLUGIN_AGENT:Lcom/iflytek/sparkchain/core/AgentType;

    new-instance v2, Lcom/iflytek/sparkchain/core/AgentType;

    const-string v5, "ZERO_SHOT_REACT"

    const/4 v6, 0x2

    invoke-direct {v2, v5, v6, v4}, Lcom/iflytek/sparkchain/core/AgentType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/iflytek/sparkchain/core/AgentType;->ZERO_SHOT_REACT:Lcom/iflytek/sparkchain/core/AgentType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/iflytek/sparkchain/core/AgentType;

    aput-object v0, v5, v3

    aput-object v1, v5, v4

    aput-object v2, v5, v6

    sput-object v5, Lcom/iflytek/sparkchain/core/AgentType;->$VALUES:[Lcom/iflytek/sparkchain/core/AgentType;

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

    iput p3, p0, Lcom/iflytek/sparkchain/core/AgentType;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/iflytek/sparkchain/core/AgentType;
    .locals 1

    if-nez p0, :cond_0

    sget-object p0, Lcom/iflytek/sparkchain/core/AgentType;->PLUGIN_AGENT:Lcom/iflytek/sparkchain/core/AgentType;

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/iflytek/sparkchain/core/AgentType;->ZERO_SHOT_REACT:Lcom/iflytek/sparkchain/core/AgentType;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/sparkchain/core/AgentType;
    .locals 1

    const-class v0, Lcom/iflytek/sparkchain/core/AgentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iflytek/sparkchain/core/AgentType;

    return-object p0
.end method

.method public static values()[Lcom/iflytek/sparkchain/core/AgentType;
    .locals 1

    sget-object v0, Lcom/iflytek/sparkchain/core/AgentType;->$VALUES:[Lcom/iflytek/sparkchain/core/AgentType;

    invoke-virtual {v0}, [Lcom/iflytek/sparkchain/core/AgentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/sparkchain/core/AgentType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/iflytek/sparkchain/core/AgentType;->value:I

    return v0
.end method
