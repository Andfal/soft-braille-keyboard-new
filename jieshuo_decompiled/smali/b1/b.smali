.class public abstract enum Lb1/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lb1/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lb1/b;

.field public static final enum c:Lb1/b;

.field public static final enum d:Lb1/b;

.field public static final enum e:Lb1/b;

.field public static final enum f:Lb1/b;

.field private static final synthetic g:[Lb1/b;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lb1/b$a;

    const-string v1, "0"

    const-string v2, "BV"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lb1/b$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lb1/b;->b:Lb1/b;

    new-instance v1, Lb1/b$b;

    const-string v2, "1"

    const-string v4, "AMR"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lb1/b$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lb1/b;->c:Lb1/b;

    new-instance v2, Lb1/b$c;

    const-string v4, "2"

    const-string v6, "OPUS"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lb1/b$c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lb1/b;->d:Lb1/b;

    new-instance v4, Lb1/b$d;

    const-string v6, "3"

    const-string v8, "MP3"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lb1/b$d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lb1/b;->e:Lb1/b;

    new-instance v6, Lb1/b$e;

    const-string v8, "4"

    const-string v10, "PCM"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v8}, Lb1/b$e;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lb1/b;->f:Lb1/b;

    const/4 v8, 0x5

    new-array v8, v8, [Lb1/b;

    aput-object v0, v8, v3

    aput-object v1, v8, v5

    aput-object v2, v8, v7

    aput-object v4, v8, v9

    aput-object v6, v8, v11

    sput-object v8, Lb1/b;->g:[Lb1/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lb1/b;->a:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Lb1/b$a;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lb1/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lb1/b;
    .locals 5

    invoke-static {}, Lb1/b;->values()[Lb1/b;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lb1/b;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lb1/b;
    .locals 1

    const-class v0, Lb1/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lb1/b;

    return-object p0
.end method

.method public static values()[Lb1/b;
    .locals 1

    sget-object v0, Lb1/b;->g:[Lb1/b;

    invoke-virtual {v0}, [Lb1/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb1/b;

    return-object v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lb1/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public abstract c()[Lb1/c;
.end method
