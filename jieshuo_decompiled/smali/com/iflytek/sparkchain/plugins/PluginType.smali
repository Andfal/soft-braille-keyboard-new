.class public final enum Lcom/iflytek/sparkchain/plugins/PluginType;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/iflytek/sparkchain/core/Const;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iflytek/sparkchain/plugins/PluginType;",
        ">;",
        "Lcom/iflytek/sparkchain/core/Const;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iflytek/sparkchain/plugins/PluginType;

.field public static final enum CUSTOM:Lcom/iflytek/sparkchain/plugins/PluginType;

.field public static final enum PRESET:Lcom/iflytek/sparkchain/plugins/PluginType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/iflytek/sparkchain/plugins/PluginType;

    const-string v1, "PRESET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/iflytek/sparkchain/plugins/PluginType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/iflytek/sparkchain/plugins/PluginType;->PRESET:Lcom/iflytek/sparkchain/plugins/PluginType;

    new-instance v1, Lcom/iflytek/sparkchain/plugins/PluginType;

    const-string v3, "CUSTOM"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/iflytek/sparkchain/plugins/PluginType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/iflytek/sparkchain/plugins/PluginType;->CUSTOM:Lcom/iflytek/sparkchain/plugins/PluginType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/iflytek/sparkchain/plugins/PluginType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/iflytek/sparkchain/plugins/PluginType;->$VALUES:[Lcom/iflytek/sparkchain/plugins/PluginType;

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

    iput p3, p0, Lcom/iflytek/sparkchain/plugins/PluginType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/sparkchain/plugins/PluginType;
    .locals 1

    const-class v0, Lcom/iflytek/sparkchain/plugins/PluginType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iflytek/sparkchain/plugins/PluginType;

    return-object p0
.end method

.method public static values()[Lcom/iflytek/sparkchain/plugins/PluginType;
    .locals 1

    sget-object v0, Lcom/iflytek/sparkchain/plugins/PluginType;->$VALUES:[Lcom/iflytek/sparkchain/plugins/PluginType;

    invoke-virtual {v0}, [Lcom/iflytek/sparkchain/plugins/PluginType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/sparkchain/plugins/PluginType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/iflytek/sparkchain/plugins/PluginType;->value:I

    return v0
.end method
