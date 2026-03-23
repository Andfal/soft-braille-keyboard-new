.class public final enum Lb1/h;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lb1/h;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum c:Lb1/h;

.field public static final enum d:Lb1/h;

.field private static final synthetic e:[Lb1/h;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lb1/h;

    const-string v1, "chinese"

    const-string v2, "ZH"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1, v2}, Lb1/h;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lb1/h;->c:Lb1/h;

    new-instance v1, Lb1/h;

    const-string v2, "english"

    const-string v4, "EN"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2, v4}, Lb1/h;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lb1/h;->d:Lb1/h;

    const/4 v2, 0x2

    new-array v2, v2, [Lb1/h;

    aput-object v0, v2, v3

    aput-object v1, v2, v5

    sput-object v2, Lb1/h;->e:[Lb1/h;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lb1/h;->a:Ljava/lang/String;

    iput-object p4, p0, Lb1/h;->b:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lb1/h;
    .locals 1

    const-class v0, Lb1/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lb1/h;

    return-object p0
.end method

.method public static values()[Lb1/h;
    .locals 1

    sget-object v0, Lb1/h;->e:[Lb1/h;

    invoke-virtual {v0}, [Lb1/h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb1/h;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lb1/h;->b:Ljava/lang/String;

    return-object v0
.end method
