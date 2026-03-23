.class public final enum Lb1/e;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lb1/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lb1/e;

.field public static final enum b:Lb1/e;

.field public static final enum c:Lb1/e;

.field public static final enum d:Lb1/e;

.field public static final enum e:Lb1/e;

.field public static final enum f:Lb1/e;

.field public static final enum g:Lb1/e;

.field private static final synthetic h:[Lb1/e;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    new-instance v0, Lb1/e;

    const-string v1, "SYN_START"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lb1/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb1/e;->a:Lb1/e;

    new-instance v1, Lb1/e;

    const-string v3, "SYN_FINISH"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lb1/e;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lb1/e;->b:Lb1/e;

    new-instance v3, Lb1/e;

    const-string v5, "SYN_DATA"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lb1/e;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lb1/e;->c:Lb1/e;

    new-instance v5, Lb1/e;

    const-string v7, "SYN_STOP"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lb1/e;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lb1/e;->d:Lb1/e;

    new-instance v7, Lb1/e;

    const-string v9, "SYN_PAUSE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lb1/e;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lb1/e;->e:Lb1/e;

    new-instance v9, Lb1/e;

    const-string v11, "SYN_RESUME"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lb1/e;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lb1/e;->f:Lb1/e;

    new-instance v11, Lb1/e;

    const-string v13, "SYN_ERROR"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lb1/e;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lb1/e;->g:Lb1/e;

    const/4 v13, 0x7

    new-array v13, v13, [Lb1/e;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lb1/e;->h:[Lb1/e;

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

.method public static valueOf(Ljava/lang/String;)Lb1/e;
    .locals 1

    const-class v0, Lb1/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lb1/e;

    return-object p0
.end method

.method public static values()[Lb1/e;
    .locals 1

    sget-object v0, Lb1/e;->h:[Lb1/e;

    invoke-virtual {v0}, [Lb1/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb1/e;

    return-object v0
.end method
