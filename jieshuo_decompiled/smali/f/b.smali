.class public final enum Lf/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lf/b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic A:[Lf/b;

.field public static final enum b:Lf/b;

.field public static final enum c:Lf/b;

.field public static final enum d:Lf/b;

.field public static final enum e:Lf/b;

.field public static final enum f:Lf/b;

.field public static final enum g:Lf/b;

.field public static final enum h:Lf/b;

.field public static final enum i:Lf/b;

.field public static final enum j:Lf/b;

.field public static final enum k:Lf/b;

.field public static final enum l:Lf/b;

.field public static final enum m:Lf/b;

.field public static final enum n:Lf/b;

.field public static final enum o:Lf/b;

.field public static final enum p:Lf/b;

.field public static final enum q:Lf/b;

.field public static final enum r:Lf/b;

.field public static final enum s:Lf/b;

.field public static final enum t:Lf/b;

.field public static final enum u:Lf/b;

.field public static final enum v:Lf/b;

.field public static final enum w:Lf/b;

.field public static final enum x:Lf/b;

.field public static final enum y:Lf/b;

.field public static final enum z:Lf/b;


# instance fields
.field public final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 27

    new-instance v0, Lf/b;

    const-string v1, "AutoCloseSource"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lf/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lf/b;->b:Lf/b;

    new-instance v1, Lf/b;

    const-string v3, "AllowComment"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lf/b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lf/b;->c:Lf/b;

    new-instance v3, Lf/b;

    const-string v5, "AllowUnQuotedFieldNames"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lf/b;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lf/b;->d:Lf/b;

    new-instance v5, Lf/b;

    const-string v7, "AllowSingleQuotes"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lf/b;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lf/b;->e:Lf/b;

    new-instance v7, Lf/b;

    const-string v9, "InternFieldNames"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lf/b;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lf/b;->f:Lf/b;

    new-instance v9, Lf/b;

    const-string v11, "AllowISO8601DateFormat"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lf/b;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lf/b;->g:Lf/b;

    new-instance v11, Lf/b;

    const-string v13, "AllowArbitraryCommas"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lf/b;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lf/b;->h:Lf/b;

    new-instance v13, Lf/b;

    const-string v15, "UseBigDecimal"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lf/b;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lf/b;->i:Lf/b;

    new-instance v15, Lf/b;

    const-string v14, "IgnoreNotMatch"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lf/b;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lf/b;->j:Lf/b;

    new-instance v14, Lf/b;

    const-string v12, "SortFeidFastMatch"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lf/b;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lf/b;->k:Lf/b;

    new-instance v12, Lf/b;

    const-string v10, "DisableASM"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lf/b;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lf/b;->l:Lf/b;

    new-instance v10, Lf/b;

    const-string v8, "DisableCircularReferenceDetect"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lf/b;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lf/b;->m:Lf/b;

    new-instance v8, Lf/b;

    const-string v6, "InitStringFieldAsEmpty"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lf/b;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lf/b;->n:Lf/b;

    new-instance v6, Lf/b;

    const-string v4, "SupportArrayToBean"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lf/b;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lf/b;->o:Lf/b;

    new-instance v4, Lf/b;

    const-string v2, "OrderedField"

    move-object/from16 v16, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lf/b;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lf/b;->p:Lf/b;

    new-instance v2, Lf/b;

    const-string v6, "DisableSpecialKeyDetect"

    move-object/from16 v17, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Lf/b;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lf/b;->q:Lf/b;

    new-instance v6, Lf/b;

    const-string v4, "UseObjectArray"

    move-object/from16 v18, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2}, Lf/b;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lf/b;->r:Lf/b;

    new-instance v4, Lf/b;

    const-string v2, "SupportNonPublicField"

    move-object/from16 v19, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6}, Lf/b;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lf/b;->s:Lf/b;

    new-instance v2, Lf/b;

    const-string v6, "IgnoreAutoType"

    move-object/from16 v20, v4

    const/16 v4, 0x12

    invoke-direct {v2, v6, v4}, Lf/b;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lf/b;->t:Lf/b;

    new-instance v6, Lf/b;

    const-string v4, "DisableFieldSmartMatch"

    move-object/from16 v21, v2

    const/16 v2, 0x13

    invoke-direct {v6, v4, v2}, Lf/b;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lf/b;->u:Lf/b;

    new-instance v4, Lf/b;

    const-string v2, "SupportAutoType"

    move-object/from16 v22, v6

    const/16 v6, 0x14

    invoke-direct {v4, v2, v6}, Lf/b;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lf/b;->v:Lf/b;

    new-instance v2, Lf/b;

    const-string v6, "NonStringKeyAsString"

    move-object/from16 v23, v4

    const/16 v4, 0x15

    invoke-direct {v2, v6, v4}, Lf/b;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lf/b;->w:Lf/b;

    new-instance v6, Lf/b;

    const-string v4, "CustomMapDeserializer"

    move-object/from16 v24, v2

    const/16 v2, 0x16

    invoke-direct {v6, v4, v2}, Lf/b;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lf/b;->x:Lf/b;

    new-instance v2, Lf/b;

    const-string v4, "ErrorOnEnumNotMatch"

    move-object/from16 v25, v6

    const/16 v6, 0x17

    invoke-direct {v2, v4, v6}, Lf/b;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lf/b;->y:Lf/b;

    new-instance v4, Lf/b;

    const-string v6, "SafeMode"

    move-object/from16 v26, v2

    const/16 v2, 0x18

    invoke-direct {v4, v6, v2}, Lf/b;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lf/b;->z:Lf/b;

    const/16 v2, 0x19

    new-array v2, v2, [Lf/b;

    const/4 v6, 0x0

    aput-object v0, v2, v6

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

    aput-object v16, v2, v0

    const/16 v0, 0xe

    aput-object v17, v2, v0

    const/16 v0, 0xf

    aput-object v18, v2, v0

    const/16 v0, 0x10

    aput-object v19, v2, v0

    const/16 v0, 0x11

    aput-object v20, v2, v0

    const/16 v0, 0x12

    aput-object v21, v2, v0

    const/16 v0, 0x13

    aput-object v22, v2, v0

    const/16 v0, 0x14

    aput-object v23, v2, v0

    const/16 v0, 0x15

    aput-object v24, v2, v0

    const/16 v0, 0x16

    aput-object v25, v2, v0

    const/16 v0, 0x17

    aput-object v26, v2, v0

    const/16 v0, 0x18

    aput-object v4, v2, v0

    sput-object v2, Lf/b;->A:[Lf/b;

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

    const/4 p1, 0x1

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    shl-int/2addr p1, p2

    iput p1, p0, Lf/b;->a:I

    return-void
.end method

.method public static b([Lf/b;)I
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v3, p0, v0

    iget v3, v3, Lf/b;->a:I

    or-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static valueOf(Ljava/lang/String;)Lf/b;
    .locals 1

    const-class v0, Lf/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lf/b;

    return-object p0
.end method

.method public static values()[Lf/b;
    .locals 1

    sget-object v0, Lf/b;->A:[Lf/b;

    invoke-virtual {v0}, [Lf/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lf/b;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lf/b;->a:I

    return v0
.end method
