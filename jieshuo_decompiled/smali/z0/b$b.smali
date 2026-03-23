.class public final enum Lz0/b$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz0/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lz0/b$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum c:Lz0/b$b;

.field public static final enum d:Lz0/b$b;

.field public static final enum e:Lz0/b$b;

.field public static final enum f:Lz0/b$b;

.field public static final enum g:Lz0/b$b;

.field private static final synthetic h:[Lz0/b$b;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lz0/b$b;

    const-string v1, "id"

    const-string v2, "integer primary key"

    const-string v3, "ID"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lz0/b$b;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lz0/b$b;->c:Lz0/b$b;

    new-instance v1, Lz0/b$b;

    const-string v2, "length"

    const-string v3, "bigint"

    const-string v5, "LENGTH"

    const/4 v6, 0x1

    invoke-direct {v1, v5, v6, v2, v3}, Lz0/b$b;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lz0/b$b;->d:Lz0/b$b;

    new-instance v2, Lz0/b$b;

    const-string v3, "md5"

    const-string v5, "varchar(32)"

    const-string v7, "MD5"

    const/4 v8, 0x2

    invoke-direct {v2, v7, v8, v3, v5}, Lz0/b$b;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lz0/b$b;->e:Lz0/b$b;

    new-instance v3, Lz0/b$b;

    const-string v5, "name"

    const-string v7, "varchar(256) not null default unnamed"

    const-string v9, "NAME"

    const/4 v10, 0x3

    invoke-direct {v3, v9, v10, v5, v7}, Lz0/b$b;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lz0/b$b;->f:Lz0/b$b;

    new-instance v5, Lz0/b$b;

    const-string v7, "absPath"

    const-string v9, "varchar"

    const-string v11, "ABS_PATH"

    const/4 v12, 0x4

    invoke-direct {v5, v11, v12, v7, v9}, Lz0/b$b;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v5, Lz0/b$b;->g:Lz0/b$b;

    const/4 v7, 0x5

    new-array v7, v7, [Lz0/b$b;

    aput-object v0, v7, v4

    aput-object v1, v7, v6

    aput-object v2, v7, v8

    aput-object v3, v7, v10

    aput-object v5, v7, v12

    sput-object v7, Lz0/b$b;->h:[Lz0/b$b;

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

    iput-object p3, p0, Lz0/b$b;->a:Ljava/lang/String;

    iput-object p4, p0, Lz0/b$b;->b:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lz0/b$b;
    .locals 1

    const-class v0, Lz0/b$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lz0/b$b;

    return-object p0
.end method

.method public static values()[Lz0/b$b;
    .locals 1

    sget-object v0, Lz0/b$b;->h:[Lz0/b$b;

    invoke-virtual {v0}, [Lz0/b$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lz0/b$b;

    return-object v0
.end method
