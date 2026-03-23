.class public final enum Lcom/iflytek/sparkchain/core/AiEvent;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/iflytek/sparkchain/core/Const;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iflytek/sparkchain/core/AiEvent;",
        ">;",
        "Lcom/iflytek/sparkchain/core/Const;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iflytek/sparkchain/core/AiEvent;

.field public static final enum EVENT_END:Lcom/iflytek/sparkchain/core/AiEvent;

.field public static final enum EVENT_PROGRESS:Lcom/iflytek/sparkchain/core/AiEvent;

.field public static final enum EVENT_START:Lcom/iflytek/sparkchain/core/AiEvent;

.field public static final enum EVENT_TIMEOUT:Lcom/iflytek/sparkchain/core/AiEvent;

.field public static final enum EVENT_UNKNOWN:Lcom/iflytek/sparkchain/core/AiEvent;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/iflytek/sparkchain/core/AiEvent;

    const-string v1, "EVENT_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/iflytek/sparkchain/core/AiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/iflytek/sparkchain/core/AiEvent;->EVENT_UNKNOWN:Lcom/iflytek/sparkchain/core/AiEvent;

    new-instance v1, Lcom/iflytek/sparkchain/core/AiEvent;

    const-string v3, "EVENT_START"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/iflytek/sparkchain/core/AiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/iflytek/sparkchain/core/AiEvent;->EVENT_START:Lcom/iflytek/sparkchain/core/AiEvent;

    new-instance v3, Lcom/iflytek/sparkchain/core/AiEvent;

    const-string v5, "EVENT_END"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/iflytek/sparkchain/core/AiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/iflytek/sparkchain/core/AiEvent;->EVENT_END:Lcom/iflytek/sparkchain/core/AiEvent;

    new-instance v5, Lcom/iflytek/sparkchain/core/AiEvent;

    const-string v7, "EVENT_TIMEOUT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/iflytek/sparkchain/core/AiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/iflytek/sparkchain/core/AiEvent;->EVENT_TIMEOUT:Lcom/iflytek/sparkchain/core/AiEvent;

    new-instance v7, Lcom/iflytek/sparkchain/core/AiEvent;

    const-string v9, "EVENT_PROGRESS"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/iflytek/sparkchain/core/AiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/iflytek/sparkchain/core/AiEvent;->EVENT_PROGRESS:Lcom/iflytek/sparkchain/core/AiEvent;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/iflytek/sparkchain/core/AiEvent;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/iflytek/sparkchain/core/AiEvent;->$VALUES:[Lcom/iflytek/sparkchain/core/AiEvent;

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

    iput p3, p0, Lcom/iflytek/sparkchain/core/AiEvent;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/iflytek/sparkchain/core/AiEvent;
    .locals 1

    if-nez p0, :cond_0

    sget-object p0, Lcom/iflytek/sparkchain/core/AiEvent;->EVENT_UNKNOWN:Lcom/iflytek/sparkchain/core/AiEvent;

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/iflytek/sparkchain/core/AiEvent;->EVENT_START:Lcom/iflytek/sparkchain/core/AiEvent;

    return-object p0

    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/iflytek/sparkchain/core/AiEvent;->EVENT_END:Lcom/iflytek/sparkchain/core/AiEvent;

    return-object p0

    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/iflytek/sparkchain/core/AiEvent;->EVENT_TIMEOUT:Lcom/iflytek/sparkchain/core/AiEvent;

    return-object p0

    :cond_3
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    sget-object p0, Lcom/iflytek/sparkchain/core/AiEvent;->EVENT_PROGRESS:Lcom/iflytek/sparkchain/core/AiEvent;

    return-object p0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/sparkchain/core/AiEvent;
    .locals 1

    const-class v0, Lcom/iflytek/sparkchain/core/AiEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iflytek/sparkchain/core/AiEvent;

    return-object p0
.end method

.method public static values()[Lcom/iflytek/sparkchain/core/AiEvent;
    .locals 1

    sget-object v0, Lcom/iflytek/sparkchain/core/AiEvent;->$VALUES:[Lcom/iflytek/sparkchain/core/AiEvent;

    invoke-virtual {v0}, [Lcom/iflytek/sparkchain/core/AiEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/sparkchain/core/AiEvent;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/iflytek/sparkchain/core/AiEvent;->value:I

    return v0
.end method
