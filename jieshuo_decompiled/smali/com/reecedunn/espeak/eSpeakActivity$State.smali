.class final enum Lcom/reecedunn/espeak/eSpeakActivity$State;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/reecedunn/espeak/eSpeakActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/reecedunn/espeak/eSpeakActivity$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/reecedunn/espeak/eSpeakActivity$State;

.field public static final enum DOWNLOAD_FAILED:Lcom/reecedunn/espeak/eSpeakActivity$State;

.field public static final enum ERROR:Lcom/reecedunn/espeak/eSpeakActivity$State;

.field public static final enum LOADING:Lcom/reecedunn/espeak/eSpeakActivity$State;

.field public static final enum SUCCESS:Lcom/reecedunn/espeak/eSpeakActivity$State;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/reecedunn/espeak/eSpeakActivity$State;

    const-string v1, "LOADING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/reecedunn/espeak/eSpeakActivity$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/reecedunn/espeak/eSpeakActivity$State;->LOADING:Lcom/reecedunn/espeak/eSpeakActivity$State;

    new-instance v1, Lcom/reecedunn/espeak/eSpeakActivity$State;

    const-string v3, "DOWNLOAD_FAILED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/reecedunn/espeak/eSpeakActivity$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/reecedunn/espeak/eSpeakActivity$State;->DOWNLOAD_FAILED:Lcom/reecedunn/espeak/eSpeakActivity$State;

    new-instance v3, Lcom/reecedunn/espeak/eSpeakActivity$State;

    const-string v5, "ERROR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/reecedunn/espeak/eSpeakActivity$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/reecedunn/espeak/eSpeakActivity$State;->ERROR:Lcom/reecedunn/espeak/eSpeakActivity$State;

    new-instance v5, Lcom/reecedunn/espeak/eSpeakActivity$State;

    const-string v7, "SUCCESS"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/reecedunn/espeak/eSpeakActivity$State;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/reecedunn/espeak/eSpeakActivity$State;->SUCCESS:Lcom/reecedunn/espeak/eSpeakActivity$State;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/reecedunn/espeak/eSpeakActivity$State;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/reecedunn/espeak/eSpeakActivity$State;->$VALUES:[Lcom/reecedunn/espeak/eSpeakActivity$State;

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

.method public static valueOf(Ljava/lang/String;)Lcom/reecedunn/espeak/eSpeakActivity$State;
    .locals 1

    const-class v0, Lcom/reecedunn/espeak/eSpeakActivity$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/reecedunn/espeak/eSpeakActivity$State;

    return-object p0
.end method

.method public static values()[Lcom/reecedunn/espeak/eSpeakActivity$State;
    .locals 1

    sget-object v0, Lcom/reecedunn/espeak/eSpeakActivity$State;->$VALUES:[Lcom/reecedunn/espeak/eSpeakActivity$State;

    invoke-virtual {v0}, [Lcom/reecedunn/espeak/eSpeakActivity$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/reecedunn/espeak/eSpeakActivity$State;

    return-object v0
.end method
