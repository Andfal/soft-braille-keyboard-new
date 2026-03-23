.class public final enum Lh/g1;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lh/g1;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum A:Lh/g1;

.field public static final enum B:Lh/g1;

.field public static final enum C:Lh/g1;

.field public static final enum D:Lh/g1;

.field public static final enum E:Lh/g1;

.field public static final F:[Lh/g1;

.field public static final G:I

.field private static final synthetic H:[Lh/g1;

.field public static final enum b:Lh/g1;

.field public static final enum c:Lh/g1;

.field public static final enum d:Lh/g1;

.field public static final enum e:Lh/g1;

.field public static final enum f:Lh/g1;

.field public static final enum g:Lh/g1;

.field public static final enum h:Lh/g1;

.field public static final enum i:Lh/g1;

.field public static final enum j:Lh/g1;

.field public static final enum k:Lh/g1;

.field public static final enum l:Lh/g1;

.field public static final enum m:Lh/g1;

.field public static final enum n:Lh/g1;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum o:Lh/g1;

.field public static final enum p:Lh/g1;

.field public static final enum q:Lh/g1;

.field public static final enum r:Lh/g1;

.field public static final enum s:Lh/g1;

.field public static final enum t:Lh/g1;

.field public static final enum u:Lh/g1;

.field public static final enum v:Lh/g1;

.field public static final enum w:Lh/g1;

.field public static final enum x:Lh/g1;

.field public static final enum y:Lh/g1;

.field public static final enum z:Lh/g1;


# instance fields
.field public final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 32

    new-instance v0, Lh/g1;

    const-string v1, "QuoteFieldNames"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lh/g1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lh/g1;->b:Lh/g1;

    new-instance v1, Lh/g1;

    const-string v3, "UseSingleQuotes"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lh/g1;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lh/g1;->c:Lh/g1;

    new-instance v3, Lh/g1;

    const-string v5, "WriteMapNullValue"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lh/g1;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lh/g1;->d:Lh/g1;

    new-instance v5, Lh/g1;

    const-string v7, "WriteEnumUsingToString"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lh/g1;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lh/g1;->e:Lh/g1;

    new-instance v7, Lh/g1;

    const-string v9, "WriteEnumUsingName"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lh/g1;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lh/g1;->f:Lh/g1;

    new-instance v9, Lh/g1;

    const-string v11, "UseISO8601DateFormat"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lh/g1;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lh/g1;->g:Lh/g1;

    new-instance v11, Lh/g1;

    const-string v13, "WriteNullListAsEmpty"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lh/g1;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lh/g1;->h:Lh/g1;

    new-instance v13, Lh/g1;

    const-string v15, "WriteNullStringAsEmpty"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lh/g1;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lh/g1;->i:Lh/g1;

    new-instance v15, Lh/g1;

    const-string v14, "WriteNullNumberAsZero"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lh/g1;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lh/g1;->j:Lh/g1;

    new-instance v14, Lh/g1;

    const-string v12, "WriteNullBooleanAsFalse"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lh/g1;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lh/g1;->k:Lh/g1;

    new-instance v12, Lh/g1;

    const-string v10, "SkipTransientField"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lh/g1;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lh/g1;->l:Lh/g1;

    new-instance v10, Lh/g1;

    const-string v8, "SortField"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lh/g1;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lh/g1;->m:Lh/g1;

    new-instance v8, Lh/g1;

    const-string v6, "WriteTabAsSpecial"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lh/g1;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lh/g1;->n:Lh/g1;

    new-instance v6, Lh/g1;

    const-string v4, "PrettyFormat"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lh/g1;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lh/g1;->o:Lh/g1;

    new-instance v4, Lh/g1;

    const-string v2, "WriteClassName"

    move-object/from16 v16, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lh/g1;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lh/g1;->p:Lh/g1;

    new-instance v2, Lh/g1;

    const-string v6, "DisableCircularReferenceDetect"

    move-object/from16 v17, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Lh/g1;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lh/g1;->q:Lh/g1;

    new-instance v6, Lh/g1;

    const-string v4, "WriteSlashAsSpecial"

    move-object/from16 v18, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2}, Lh/g1;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lh/g1;->r:Lh/g1;

    new-instance v4, Lh/g1;

    const-string v2, "BrowserCompatible"

    move-object/from16 v19, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6}, Lh/g1;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lh/g1;->s:Lh/g1;

    new-instance v2, Lh/g1;

    const-string v6, "WriteDateUseDateFormat"

    move-object/from16 v20, v4

    const/16 v4, 0x12

    invoke-direct {v2, v6, v4}, Lh/g1;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lh/g1;->t:Lh/g1;

    new-instance v6, Lh/g1;

    const-string v4, "NotWriteRootClassName"

    move-object/from16 v21, v2

    const/16 v2, 0x13

    invoke-direct {v6, v4, v2}, Lh/g1;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lh/g1;->u:Lh/g1;

    new-instance v4, Lh/g1;

    const-string v2, "DisableCheckSpecialChar"

    move-object/from16 v22, v6

    const/16 v6, 0x14

    invoke-direct {v4, v2, v6}, Lh/g1;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lh/g1;->v:Lh/g1;

    new-instance v2, Lh/g1;

    const-string v6, "BeanToArray"

    move-object/from16 v23, v4

    const/16 v4, 0x15

    invoke-direct {v2, v6, v4}, Lh/g1;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lh/g1;->w:Lh/g1;

    new-instance v6, Lh/g1;

    const-string v4, "WriteNonStringKeyAsString"

    move-object/from16 v24, v2

    const/16 v2, 0x16

    invoke-direct {v6, v4, v2}, Lh/g1;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lh/g1;->x:Lh/g1;

    new-instance v2, Lh/g1;

    const-string v4, "NotWriteDefaultValue"

    move-object/from16 v25, v6

    const/16 v6, 0x17

    invoke-direct {v2, v4, v6}, Lh/g1;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lh/g1;->y:Lh/g1;

    new-instance v4, Lh/g1;

    const-string v6, "BrowserSecure"

    move-object/from16 v26, v2

    const/16 v2, 0x18

    invoke-direct {v4, v6, v2}, Lh/g1;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lh/g1;->z:Lh/g1;

    new-instance v2, Lh/g1;

    const-string v6, "IgnoreNonFieldGetter"

    move-object/from16 v27, v4

    const/16 v4, 0x19

    invoke-direct {v2, v6, v4}, Lh/g1;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lh/g1;->A:Lh/g1;

    new-instance v4, Lh/g1;

    const-string v6, "WriteNonStringValueAsString"

    move-object/from16 v28, v2

    const/16 v2, 0x1a

    invoke-direct {v4, v6, v2}, Lh/g1;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lh/g1;->B:Lh/g1;

    new-instance v2, Lh/g1;

    const-string v6, "IgnoreErrorGetter"

    move-object/from16 v29, v4

    const/16 v4, 0x1b

    invoke-direct {v2, v6, v4}, Lh/g1;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lh/g1;->C:Lh/g1;

    new-instance v4, Lh/g1;

    const-string v6, "WriteBigDecimalAsPlain"

    move-object/from16 v30, v2

    const/16 v2, 0x1c

    invoke-direct {v4, v6, v2}, Lh/g1;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lh/g1;->D:Lh/g1;

    new-instance v2, Lh/g1;

    const-string v6, "MapSortField"

    move-object/from16 v31, v4

    const/16 v4, 0x1d

    invoke-direct {v2, v6, v4}, Lh/g1;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lh/g1;->E:Lh/g1;

    const/16 v4, 0x1e

    new-array v4, v4, [Lh/g1;

    const/4 v6, 0x0

    aput-object v0, v4, v6

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

    aput-object v16, v4, v0

    const/16 v0, 0xe

    aput-object v17, v4, v0

    const/16 v0, 0xf

    aput-object v18, v4, v0

    const/16 v0, 0x10

    aput-object v19, v4, v0

    const/16 v0, 0x11

    aput-object v20, v4, v0

    const/16 v0, 0x12

    aput-object v21, v4, v0

    const/16 v0, 0x13

    aput-object v22, v4, v0

    const/16 v0, 0x14

    aput-object v23, v4, v0

    const/16 v0, 0x15

    aput-object v24, v4, v0

    const/16 v0, 0x16

    aput-object v25, v4, v0

    const/16 v0, 0x17

    aput-object v26, v4, v0

    const/16 v0, 0x18

    aput-object v27, v4, v0

    const/16 v0, 0x19

    aput-object v28, v4, v0

    const/16 v0, 0x1a

    aput-object v29, v4, v0

    const/16 v0, 0x1b

    aput-object v30, v4, v0

    const/16 v0, 0x1c

    aput-object v31, v4, v0

    const/16 v0, 0x1d

    aput-object v2, v4, v0

    sput-object v4, Lh/g1;->H:[Lh/g1;

    const/4 v0, 0x0

    new-array v0, v0, [Lh/g1;

    sput-object v0, Lh/g1;->F:[Lh/g1;

    invoke-virtual {v3}, Lh/g1;->a()I

    move-result v0

    invoke-virtual {v14}, Lh/g1;->a()I

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {v11}, Lh/g1;->a()I

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {v15}, Lh/g1;->a()I

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {v13}, Lh/g1;->a()I

    move-result v1

    or-int/2addr v0, v1

    sput v0, Lh/g1;->G:I

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

    iput p1, p0, Lh/g1;->a:I

    return-void
.end method

.method public static b(IILh/g1;)Z
    .locals 0

    iget p2, p2, Lh/g1;->a:I

    and-int/2addr p0, p2

    if-nez p0, :cond_1

    and-int p0, p1, p2

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static c(ILh/g1;)Z
    .locals 0

    iget p1, p1, Lh/g1;->a:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static d([Lh/g1;)I
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

    iget v3, v3, Lh/g1;->a:I

    or-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static valueOf(Ljava/lang/String;)Lh/g1;
    .locals 1

    const-class v0, Lh/g1;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lh/g1;

    return-object p0
.end method

.method public static values()[Lh/g1;
    .locals 1

    sget-object v0, Lh/g1;->H:[Lh/g1;

    invoke-virtual {v0}, [Lh/g1;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lh/g1;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lh/g1;->a:I

    return v0
.end method
