.class public final enum Lcom/iflytek/sparkchain/core/AeeEvent;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/iflytek/sparkchain/core/Const;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iflytek/sparkchain/core/AeeEvent;",
        ">;",
        "Lcom/iflytek/sparkchain/core/Const;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final enum AEE_EVENT_END:Lcom/iflytek/sparkchain/core/AeeEvent;

.field public static final enum AEE_EVENT_PROGRESS:Lcom/iflytek/sparkchain/core/AeeEvent;

.field public static final enum AEE_EVENT_START:Lcom/iflytek/sparkchain/core/AeeEvent;

.field public static final enum AEE_EVENT_TIMEOUT:Lcom/iflytek/sparkchain/core/AeeEvent;

.field public static final enum AEE_EVENT_UNKNOWN:Lcom/iflytek/sparkchain/core/AeeEvent;

.field private static final synthetic b:[Lcom/iflytek/sparkchain/core/AeeEvent;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/iflytek/sparkchain/core/AeeEvent;

    const-string v1, "AEE_EVENT_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/iflytek/sparkchain/core/AeeEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/iflytek/sparkchain/core/AeeEvent;->AEE_EVENT_UNKNOWN:Lcom/iflytek/sparkchain/core/AeeEvent;

    new-instance v1, Lcom/iflytek/sparkchain/core/AeeEvent;

    const-string v3, "AEE_EVENT_START"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/iflytek/sparkchain/core/AeeEvent;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/iflytek/sparkchain/core/AeeEvent;->AEE_EVENT_START:Lcom/iflytek/sparkchain/core/AeeEvent;

    new-instance v3, Lcom/iflytek/sparkchain/core/AeeEvent;

    const-string v5, "AEE_EVENT_END"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/iflytek/sparkchain/core/AeeEvent;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/iflytek/sparkchain/core/AeeEvent;->AEE_EVENT_END:Lcom/iflytek/sparkchain/core/AeeEvent;

    new-instance v5, Lcom/iflytek/sparkchain/core/AeeEvent;

    const-string v7, "AEE_EVENT_TIMEOUT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/iflytek/sparkchain/core/AeeEvent;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/iflytek/sparkchain/core/AeeEvent;->AEE_EVENT_TIMEOUT:Lcom/iflytek/sparkchain/core/AeeEvent;

    new-instance v7, Lcom/iflytek/sparkchain/core/AeeEvent;

    const-string v9, "AEE_EVENT_PROGRESS"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/iflytek/sparkchain/core/AeeEvent;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/iflytek/sparkchain/core/AeeEvent;->AEE_EVENT_PROGRESS:Lcom/iflytek/sparkchain/core/AeeEvent;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/iflytek/sparkchain/core/AeeEvent;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/iflytek/sparkchain/core/AeeEvent;->b:[Lcom/iflytek/sparkchain/core/AeeEvent;

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

    iput p3, p0, Lcom/iflytek/sparkchain/core/AeeEvent;->a:I

    return-void
.end method

.method public static valueOf(I)Lcom/iflytek/sparkchain/core/AeeEvent;
    .locals 1

    if-nez p0, :cond_0

    sget-object p0, Lcom/iflytek/sparkchain/core/AeeEvent;->AEE_EVENT_UNKNOWN:Lcom/iflytek/sparkchain/core/AeeEvent;

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/iflytek/sparkchain/core/AeeEvent;->AEE_EVENT_START:Lcom/iflytek/sparkchain/core/AeeEvent;

    return-object p0

    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/iflytek/sparkchain/core/AeeEvent;->AEE_EVENT_END:Lcom/iflytek/sparkchain/core/AeeEvent;

    return-object p0

    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/iflytek/sparkchain/core/AeeEvent;->AEE_EVENT_TIMEOUT:Lcom/iflytek/sparkchain/core/AeeEvent;

    return-object p0

    :cond_3
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    sget-object p0, Lcom/iflytek/sparkchain/core/AeeEvent;->AEE_EVENT_PROGRESS:Lcom/iflytek/sparkchain/core/AeeEvent;

    return-object p0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/sparkchain/core/AeeEvent;
    .locals 1

    const-class v0, Lcom/iflytek/sparkchain/core/AeeEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iflytek/sparkchain/core/AeeEvent;

    return-object p0
.end method

.method public static values()[Lcom/iflytek/sparkchain/core/AeeEvent;
    .locals 1

    sget-object v0, Lcom/iflytek/sparkchain/core/AeeEvent;->b:[Lcom/iflytek/sparkchain/core/AeeEvent;

    invoke-virtual {v0}, [Lcom/iflytek/sparkchain/core/AeeEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/sparkchain/core/AeeEvent;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/iflytek/sparkchain/core/AeeEvent;->a:I

    return v0
.end method
