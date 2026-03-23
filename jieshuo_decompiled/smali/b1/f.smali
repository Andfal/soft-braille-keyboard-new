.class public final enum Lb1/f;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lb1/f;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum c:Lb1/f;

.field public static final enum d:Lb1/f;

.field public static final enum e:Lb1/f;

.field private static final synthetic f:[Lb1/f;


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lb1/f;

    const-string v1, "online engine"

    const-string v2, "ONLINE"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v3, v1}, Lb1/f;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lb1/f;->c:Lb1/f;

    new-instance v1, Lb1/f;

    const-string v2, "offline engine"

    const-string v4, "OFFLINE"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v5, v2}, Lb1/f;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lb1/f;->d:Lb1/f;

    new-instance v2, Lb1/f;

    const-string v4, "online and offline mix engine"

    const-string v6, "MIX"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v7, v4}, Lb1/f;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lb1/f;->e:Lb1/f;

    const/4 v4, 0x3

    new-array v4, v4, [Lb1/f;

    aput-object v0, v4, v3

    aput-object v1, v4, v5

    aput-object v2, v4, v7

    sput-object v4, Lb1/f;->f:[Lb1/f;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lb1/f;->a:I

    iput-object p4, p0, Lb1/f;->b:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lb1/f;
    .locals 1

    const-class v0, Lb1/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lb1/f;

    return-object p0
.end method

.method public static values()[Lb1/f;
    .locals 1

    sget-object v0, Lb1/f;->f:[Lb1/f;

    invoke-virtual {v0}, [Lb1/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb1/f;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lb1/f;->a:I

    return v0
.end method
