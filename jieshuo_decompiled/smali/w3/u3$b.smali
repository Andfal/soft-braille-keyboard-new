.class final enum Lw3/u3$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw3/u3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lw3/u3$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lw3/u3$b;

.field public static final enum b:Lw3/u3$b;

.field public static final enum c:Lw3/u3$b;

.field public static final enum d:Lw3/u3$b;

.field public static final enum e:Lw3/u3$b;

.field public static final enum f:Lw3/u3$b;

.field public static final enum g:Lw3/u3$b;

.field public static final enum h:Lw3/u3$b;

.field public static final enum i:Lw3/u3$b;

.field private static final synthetic j:[Lw3/u3$b;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lw3/u3$b;

    const-string v1, "Error"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lw3/u3$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lw3/u3$b;->a:Lw3/u3$b;

    new-instance v1, Lw3/u3$b;

    const-string v3, "EvalError"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lw3/u3$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lw3/u3$b;->b:Lw3/u3$b;

    new-instance v3, Lw3/u3$b;

    const-string v5, "RangeError"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lw3/u3$b;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lw3/u3$b;->c:Lw3/u3$b;

    new-instance v5, Lw3/u3$b;

    const-string v7, "ReferenceError"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lw3/u3$b;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lw3/u3$b;->d:Lw3/u3$b;

    new-instance v7, Lw3/u3$b;

    const-string v9, "SyntaxError"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lw3/u3$b;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lw3/u3$b;->e:Lw3/u3$b;

    new-instance v9, Lw3/u3$b;

    const-string v11, "TypeError"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lw3/u3$b;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lw3/u3$b;->f:Lw3/u3$b;

    new-instance v11, Lw3/u3$b;

    const-string v13, "URIError"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lw3/u3$b;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lw3/u3$b;->g:Lw3/u3$b;

    new-instance v13, Lw3/u3$b;

    const-string v15, "InternalError"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lw3/u3$b;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lw3/u3$b;->h:Lw3/u3$b;

    new-instance v15, Lw3/u3$b;

    const-string v14, "JavaException"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lw3/u3$b;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lw3/u3$b;->i:Lw3/u3$b;

    const/16 v14, 0x9

    new-array v14, v14, [Lw3/u3$b;

    aput-object v0, v14, v2

    aput-object v1, v14, v4

    aput-object v3, v14, v6

    aput-object v5, v14, v8

    aput-object v7, v14, v10

    const/4 v0, 0x5

    aput-object v9, v14, v0

    const/4 v0, 0x6

    aput-object v11, v14, v0

    const/4 v0, 0x7

    aput-object v13, v14, v0

    aput-object v15, v14, v12

    sput-object v14, Lw3/u3$b;->j:[Lw3/u3$b;

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

.method public static valueOf(Ljava/lang/String;)Lw3/u3$b;
    .locals 1

    const-class v0, Lw3/u3$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lw3/u3$b;

    return-object p0
.end method

.method public static values()[Lw3/u3$b;
    .locals 1

    sget-object v0, Lw3/u3$b;->j:[Lw3/u3$b;

    invoke-virtual {v0}, [Lw3/u3$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lw3/u3$b;

    return-object v0
.end method
