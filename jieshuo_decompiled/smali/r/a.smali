.class public final enum Lr/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lr/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lr/a;

.field public static final enum b:Lr/a;

.field public static final enum c:Lr/a;

.field public static final enum d:Lr/a;

.field public static final enum e:Lr/a;

.field public static final enum f:Lr/a;

.field public static final enum g:Lr/a;

.field public static final enum h:Lr/a;

.field public static final enum i:Lr/a;

.field public static final enum j:Lr/a;

.field private static final synthetic k:[Lr/a;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lr/a;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lr/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lr/a;->a:Lr/a;

    new-instance v1, Lr/a;

    const-string v3, "NONE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lr/a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lr/a;->b:Lr/a;

    new-instance v3, Lr/a;

    const-string v5, "VARIES"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lr/a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lr/a;->c:Lr/a;

    new-instance v5, Lr/a;

    const-string v7, "TYPE_REF"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lr/a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lr/a;->d:Lr/a;

    new-instance v7, Lr/a;

    const-string v9, "STRING_REF"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lr/a;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lr/a;->e:Lr/a;

    new-instance v9, Lr/a;

    const-string v11, "METHOD_REF"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lr/a;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lr/a;->f:Lr/a;

    new-instance v11, Lr/a;

    const-string v13, "FIELD_REF"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lr/a;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lr/a;->g:Lr/a;

    new-instance v13, Lr/a;

    const-string v15, "INLINE_METHOD"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lr/a;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lr/a;->h:Lr/a;

    new-instance v15, Lr/a;

    const-string v14, "VTABLE_OFFSET"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lr/a;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lr/a;->i:Lr/a;

    new-instance v14, Lr/a;

    const-string v12, "FIELD_OFFSET"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lr/a;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lr/a;->j:Lr/a;

    const/16 v12, 0xa

    new-array v12, v12, [Lr/a;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    const/4 v0, 0x4

    aput-object v7, v12, v0

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    const/4 v0, 0x7

    aput-object v13, v12, v0

    const/16 v0, 0x8

    aput-object v15, v12, v0

    aput-object v14, v12, v10

    sput-object v12, Lr/a;->k:[Lr/a;

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

.method public static valueOf(Ljava/lang/String;)Lr/a;
    .locals 1

    const-class v0, Lr/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lr/a;

    return-object p0
.end method

.method public static values()[Lr/a;
    .locals 1

    sget-object v0, Lr/a;->k:[Lr/a;

    invoke-virtual {v0}, [Lr/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lr/a;

    return-object v0
.end method
