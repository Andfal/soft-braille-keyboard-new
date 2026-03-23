.class public final enum Ld2/b$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld2/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ld2/b$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Ld2/b$a;

.field public static final enum b:Ld2/b$a;

.field public static final enum c:Ld2/b$a;

.field public static final enum d:Ld2/b$a;

.field public static final enum e:Ld2/b$a;

.field public static final enum f:Ld2/b$a;

.field public static final enum g:Ld2/b$a;

.field public static final enum h:Ld2/b$a;

.field public static final enum i:Ld2/b$a;

.field public static final enum j:Ld2/b$a;

.field public static final enum k:Ld2/b$a;

.field public static final enum l:Ld2/b$a;

.field public static final enum m:Ld2/b$a;

.field public static final enum n:Ld2/b$a;

.field public static final enum o:Ld2/b$a;

.field private static final synthetic p:[Ld2/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    new-instance v0, Ld2/b$a;

    const-string v1, "FOREGROUND"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ld2/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ld2/b$a;->a:Ld2/b$a;

    new-instance v1, Ld2/b$a;

    const-string v3, "BACKGROUND"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ld2/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ld2/b$a;->b:Ld2/b$a;

    new-instance v3, Ld2/b$a;

    const-string v5, "SELECTION_FOREGROUND"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ld2/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Ld2/b$a;->c:Ld2/b$a;

    new-instance v5, Ld2/b$a;

    const-string v7, "SELECTION_BACKGROUND"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Ld2/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Ld2/b$a;->d:Ld2/b$a;

    new-instance v7, Ld2/b$a;

    const-string v9, "CARET_FOREGROUND"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Ld2/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v7, Ld2/b$a;->e:Ld2/b$a;

    new-instance v9, Ld2/b$a;

    const-string v11, "CARET_BACKGROUND"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Ld2/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v9, Ld2/b$a;->f:Ld2/b$a;

    new-instance v11, Ld2/b$a;

    const-string v13, "CARET_DISABLED"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Ld2/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v11, Ld2/b$a;->g:Ld2/b$a;

    new-instance v13, Ld2/b$a;

    const-string v15, "LINE_HIGHLIGHT"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Ld2/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v13, Ld2/b$a;->h:Ld2/b$a;

    new-instance v15, Ld2/b$a;

    const-string v14, "NON_PRINTING_GLYPH"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Ld2/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v15, Ld2/b$a;->i:Ld2/b$a;

    new-instance v14, Ld2/b$a;

    const-string v12, "COMMENT"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Ld2/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v14, Ld2/b$a;->j:Ld2/b$a;

    new-instance v12, Ld2/b$a;

    const-string v10, "KEYWORD"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Ld2/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v12, Ld2/b$a;->k:Ld2/b$a;

    new-instance v10, Ld2/b$a;

    const-string v8, "NAME"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Ld2/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v10, Ld2/b$a;->l:Ld2/b$a;

    new-instance v8, Ld2/b$a;

    const-string v6, "LITERAL"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Ld2/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v8, Ld2/b$a;->m:Ld2/b$a;

    new-instance v6, Ld2/b$a;

    const-string v4, "STRING"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Ld2/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v6, Ld2/b$a;->n:Ld2/b$a;

    new-instance v4, Ld2/b$a;

    const-string v2, "SECONDARY"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Ld2/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v4, Ld2/b$a;->o:Ld2/b$a;

    const/16 v2, 0xf

    new-array v2, v2, [Ld2/b$a;

    const/16 v16, 0x0

    aput-object v0, v2, v16

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v15, v2, v0

    const/16 v0, 0x9

    aput-object v14, v2, v0

    const/16 v0, 0xa

    aput-object v12, v2, v0

    const/16 v0, 0xb

    aput-object v10, v2, v0

    const/16 v0, 0xc

    aput-object v8, v2, v0

    const/16 v0, 0xd

    aput-object v17, v2, v0

    aput-object v4, v2, v6

    sput-object v2, Ld2/b$a;->p:[Ld2/b$a;

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

.method public static valueOf(Ljava/lang/String;)Ld2/b$a;
    .locals 1

    const-class v0, Ld2/b$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ld2/b$a;

    return-object p0
.end method

.method public static values()[Ld2/b$a;
    .locals 1

    sget-object v0, Ld2/b$a;->p:[Ld2/b$a;

    invoke-virtual {v0}, [Ld2/b$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ld2/b$a;

    return-object v0
.end method
