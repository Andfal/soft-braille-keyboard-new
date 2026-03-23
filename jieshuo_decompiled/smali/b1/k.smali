.class public final enum Lb1/k;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lb1/k;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum c:Lb1/k;

.field public static final enum d:Lb1/k;

.field public static final enum e:Lb1/k;

.field public static final enum f:Lb1/k;

.field private static final synthetic g:[Lb1/k;


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lb1/k;

    const/16 v1, 0x1f40

    const-string v2, "8k"

    const-string v3, "HZ8K"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lb1/k;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lb1/k;->c:Lb1/k;

    new-instance v1, Lb1/k;

    const/16 v2, 0x3e80

    const-string v3, "16k"

    const-string v5, "HZ16K"

    const/4 v6, 0x1

    invoke-direct {v1, v5, v6, v2, v3}, Lb1/k;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lb1/k;->d:Lb1/k;

    new-instance v2, Lb1/k;

    const/16 v3, 0x5dc0

    const-string v5, "24k"

    const-string v7, "HZ24K"

    const/4 v8, 0x2

    invoke-direct {v2, v7, v8, v3, v5}, Lb1/k;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lb1/k;->e:Lb1/k;

    new-instance v3, Lb1/k;

    const v5, 0xbb80

    const-string v7, "48k"

    const-string v9, "HZ48K"

    const/4 v10, 0x3

    invoke-direct {v3, v9, v10, v5, v7}, Lb1/k;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lb1/k;->f:Lb1/k;

    const/4 v5, 0x4

    new-array v5, v5, [Lb1/k;

    aput-object v0, v5, v4

    aput-object v1, v5, v6

    aput-object v2, v5, v8

    aput-object v3, v5, v10

    sput-object v5, Lb1/k;->g:[Lb1/k;

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

    iput p3, p0, Lb1/k;->a:I

    iput-object p4, p0, Lb1/k;->b:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lb1/k;
    .locals 1

    const-class v0, Lb1/k;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lb1/k;

    return-object p0
.end method

.method public static values()[Lb1/k;
    .locals 1

    sget-object v0, Lb1/k;->g:[Lb1/k;

    invoke-virtual {v0}, [Lb1/k;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb1/k;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lb1/k;->a:I

    return v0
.end method
