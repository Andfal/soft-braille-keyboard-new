.class final enum Lc/g$u;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "u"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lc/g$u;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lc/g$u;

.field public static final enum b:Lc/g$u;

.field public static final enum c:Lc/g$u;

.field public static final enum d:Lc/g$u;

.field public static final enum e:Lc/g$u;

.field public static final enum f:Lc/g$u;

.field public static final enum g:Lc/g$u;

.field public static final enum h:Lc/g$u;

.field public static final enum i:Lc/g$u;

.field public static final enum j:Lc/g$u;

.field public static final enum k:Lc/g$u;

.field public static final enum l:Lc/g$u;

.field public static final enum m:Lc/g$u;

.field public static final enum n:Lc/g$u;

.field public static final enum o:Lc/g$u;

.field public static final enum p:Lc/g$u;

.field public static final enum q:Lc/g$u;

.field private static final synthetic r:[Lc/g$u;


# direct methods
.method static constructor <clinit>()V
    .locals 20

    new-instance v0, Lc/g$u;

    const-string v1, "EQ"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lc/g$u;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/g$u;->a:Lc/g$u;

    new-instance v1, Lc/g$u;

    const-string v3, "NE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lc/g$u;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lc/g$u;->b:Lc/g$u;

    new-instance v3, Lc/g$u;

    const-string v5, "GT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lc/g$u;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lc/g$u;->c:Lc/g$u;

    new-instance v5, Lc/g$u;

    const-string v7, "GE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lc/g$u;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lc/g$u;->d:Lc/g$u;

    new-instance v7, Lc/g$u;

    const-string v9, "LT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lc/g$u;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lc/g$u;->e:Lc/g$u;

    new-instance v9, Lc/g$u;

    const-string v11, "LE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lc/g$u;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lc/g$u;->f:Lc/g$u;

    new-instance v11, Lc/g$u;

    const-string v13, "LIKE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lc/g$u;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lc/g$u;->g:Lc/g$u;

    new-instance v13, Lc/g$u;

    const-string v15, "NOT_LIKE"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lc/g$u;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lc/g$u;->h:Lc/g$u;

    new-instance v15, Lc/g$u;

    const-string v14, "RLIKE"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lc/g$u;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lc/g$u;->i:Lc/g$u;

    new-instance v14, Lc/g$u;

    const-string v12, "NOT_RLIKE"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lc/g$u;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lc/g$u;->j:Lc/g$u;

    new-instance v12, Lc/g$u;

    const-string v10, "IN"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lc/g$u;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lc/g$u;->k:Lc/g$u;

    new-instance v10, Lc/g$u;

    const-string v8, "NOT_IN"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lc/g$u;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lc/g$u;->l:Lc/g$u;

    new-instance v8, Lc/g$u;

    const-string v6, "BETWEEN"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lc/g$u;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lc/g$u;->m:Lc/g$u;

    new-instance v6, Lc/g$u;

    const-string v4, "NOT_BETWEEN"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lc/g$u;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lc/g$u;->n:Lc/g$u;

    new-instance v4, Lc/g$u;

    const-string v2, "And"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lc/g$u;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lc/g$u;->o:Lc/g$u;

    new-instance v2, Lc/g$u;

    const-string v6, "Or"

    move-object/from16 v18, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Lc/g$u;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lc/g$u;->p:Lc/g$u;

    new-instance v6, Lc/g$u;

    const-string v4, "REG_MATCH"

    move-object/from16 v19, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2}, Lc/g$u;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lc/g$u;->q:Lc/g$u;

    const/16 v4, 0x11

    new-array v4, v4, [Lc/g$u;

    const/16 v16, 0x0

    aput-object v0, v4, v16

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v15, v4, v0

    const/16 v0, 0x9

    aput-object v14, v4, v0

    const/16 v0, 0xa

    aput-object v12, v4, v0

    const/16 v0, 0xb

    aput-object v10, v4, v0

    const/16 v0, 0xc

    aput-object v8, v4, v0

    const/16 v0, 0xd

    aput-object v17, v4, v0

    const/16 v0, 0xe

    aput-object v18, v4, v0

    const/16 v0, 0xf

    aput-object v19, v4, v0

    aput-object v6, v4, v2

    sput-object v4, Lc/g$u;->r:[Lc/g$u;

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

.method public static valueOf(Ljava/lang/String;)Lc/g$u;
    .locals 1

    const-class v0, Lc/g$u;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lc/g$u;

    return-object p0
.end method

.method public static values()[Lc/g$u;
    .locals 1

    sget-object v0, Lc/g$u;->r:[Lc/g$u;

    invoke-virtual {v0}, [Lc/g$u;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lc/g$u;

    return-object v0
.end method
