.class public final enum Lb1/d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lb1/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum c:Lb1/d;

.field public static final enum d:Lb1/d;

.field public static final enum e:Lb1/d;

.field public static final enum f:Lb1/d;

.field public static final enum g:Lb1/d;

.field private static final synthetic h:[Lb1/d;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lb1/d;

    const-string v1, "gb18030"

    const-string v2, "0"

    const-string v3, "GB18030"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lb1/d;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lb1/d;->c:Lb1/d;

    new-instance v1, Lb1/d;

    const-string v2, "big5"

    const-string v3, "1"

    const-string v5, "BIG5"

    const/4 v6, 0x1

    invoke-direct {v1, v5, v6, v2, v3}, Lb1/d;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lb1/d;->d:Lb1/d;

    new-instance v2, Lb1/d;

    const-string v3, "utf-8"

    const-string v5, "2"

    const-string v7, "UTF8"

    const/4 v8, 0x2

    invoke-direct {v2, v7, v8, v3, v5}, Lb1/d;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lb1/d;->e:Lb1/d;

    new-instance v3, Lb1/d;

    const-string v5, "gbk"

    const-string v7, "4"

    const-string v9, "GBK"

    const/4 v10, 0x3

    invoke-direct {v3, v9, v10, v5, v7}, Lb1/d;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lb1/d;->f:Lb1/d;

    new-instance v5, Lb1/d;

    const-string v7, "unicode"

    const-string v9, "5"

    const-string v11, "UNICODE"

    const/4 v12, 0x4

    invoke-direct {v5, v11, v12, v7, v9}, Lb1/d;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v5, Lb1/d;->g:Lb1/d;

    const/4 v7, 0x5

    new-array v7, v7, [Lb1/d;

    aput-object v0, v7, v4

    aput-object v1, v7, v6

    aput-object v2, v7, v8

    aput-object v3, v7, v10

    aput-object v5, v7, v12

    sput-object v7, Lb1/d;->h:[Lb1/d;

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

    iput-object p3, p0, Lb1/d;->a:Ljava/lang/String;

    iput-object p4, p0, Lb1/d;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lb1/d;
    .locals 5

    invoke-static {}, Lb1/d;->values()[Lb1/d;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lb1/d;->c()Ljava/lang/String;

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

.method public static valueOf(Ljava/lang/String;)Lb1/d;
    .locals 1

    const-class v0, Lb1/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lb1/d;

    return-object p0
.end method

.method public static values()[Lb1/d;
    .locals 1

    sget-object v0, Lb1/d;->h:[Lb1/d;

    invoke-virtual {v0}, [Lb1/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb1/d;

    return-object v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lb1/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lb1/d;->b:Ljava/lang/String;

    return-object v0
.end method
