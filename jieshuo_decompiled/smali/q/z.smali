.class public final enum Lq/z;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lx/r;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lq/z;",
        ">;",
        "Lx/r;"
    }
.end annotation


# static fields
.field public static final enum d:Lq/z;

.field public static final enum e:Lq/z;

.field public static final enum f:Lq/z;

.field public static final enum g:Lq/z;

.field public static final enum h:Lq/z;

.field public static final enum i:Lq/z;

.field public static final enum j:Lq/z;

.field public static final enum k:Lq/z;

.field public static final enum l:Lq/z;

.field public static final enum m:Lq/z;

.field public static final enum n:Lq/z;

.field public static final enum o:Lq/z;

.field public static final enum p:Lq/z;

.field public static final enum q:Lq/z;

.field public static final enum r:Lq/z;

.field public static final enum s:Lq/z;

.field public static final enum t:Lq/z;

.field public static final enum u:Lq/z;

.field public static final enum v:Lq/z;

.field public static final enum w:Lq/z;

.field public static final enum x:Lq/z;

.field public static final enum y:Lq/z;

.field private static final synthetic z:[Lq/z;


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 26

    new-instance v0, Lq/z;

    const-string v1, "header_item"

    const-string v2, "TYPE_HEADER_ITEM"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v3, v1}, Lq/z;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lq/z;->d:Lq/z;

    new-instance v1, Lq/z;

    const-string v2, "string_id_item"

    const-string v4, "TYPE_STRING_ID_ITEM"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v5, v2}, Lq/z;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lq/z;->e:Lq/z;

    new-instance v2, Lq/z;

    const-string v4, "type_id_item"

    const-string v6, "TYPE_TYPE_ID_ITEM"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v7, v4}, Lq/z;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lq/z;->f:Lq/z;

    new-instance v4, Lq/z;

    const-string v6, "proto_id_item"

    const-string v8, "TYPE_PROTO_ID_ITEM"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v9, v6}, Lq/z;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lq/z;->g:Lq/z;

    new-instance v6, Lq/z;

    const-string v8, "field_id_item"

    const-string v10, "TYPE_FIELD_ID_ITEM"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v11, v8}, Lq/z;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v6, Lq/z;->h:Lq/z;

    new-instance v8, Lq/z;

    const-string v10, "method_id_item"

    const-string v12, "TYPE_METHOD_ID_ITEM"

    const/4 v13, 0x5

    invoke-direct {v8, v12, v13, v13, v10}, Lq/z;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v8, Lq/z;->i:Lq/z;

    new-instance v10, Lq/z;

    const-string v12, "class_def_item"

    const-string v14, "TYPE_CLASS_DEF_ITEM"

    const/4 v15, 0x6

    invoke-direct {v10, v14, v15, v15, v12}, Lq/z;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v10, Lq/z;->j:Lq/z;

    new-instance v12, Lq/z;

    const/16 v14, 0x1000

    const-string v15, "map_list"

    const-string v13, "TYPE_MAP_LIST"

    const/4 v11, 0x7

    invoke-direct {v12, v13, v11, v14, v15}, Lq/z;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v12, Lq/z;->k:Lq/z;

    new-instance v13, Lq/z;

    const/16 v14, 0x1001

    const-string v15, "type_list"

    const-string v11, "TYPE_TYPE_LIST"

    const/16 v9, 0x8

    invoke-direct {v13, v11, v9, v14, v15}, Lq/z;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v13, Lq/z;->l:Lq/z;

    new-instance v11, Lq/z;

    const/16 v14, 0x1002

    const-string v15, "annotation_set_ref_list"

    const-string v9, "TYPE_ANNOTATION_SET_REF_LIST"

    const/16 v7, 0x9

    invoke-direct {v11, v9, v7, v14, v15}, Lq/z;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v11, Lq/z;->m:Lq/z;

    new-instance v9, Lq/z;

    const/16 v14, 0x1003

    const-string v15, "annotation_set_item"

    const-string v7, "TYPE_ANNOTATION_SET_ITEM"

    const/16 v5, 0xa

    invoke-direct {v9, v7, v5, v14, v15}, Lq/z;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v9, Lq/z;->n:Lq/z;

    new-instance v7, Lq/z;

    const/16 v14, 0x2000

    const-string v15, "class_data_item"

    const-string v5, "TYPE_CLASS_DATA_ITEM"

    const/16 v3, 0xb

    invoke-direct {v7, v5, v3, v14, v15}, Lq/z;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v7, Lq/z;->o:Lq/z;

    new-instance v5, Lq/z;

    const/16 v14, 0x2001

    const-string v15, "code_item"

    const-string v3, "TYPE_CODE_ITEM"

    move-object/from16 v16, v7

    const/16 v7, 0xc

    invoke-direct {v5, v3, v7, v14, v15}, Lq/z;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v5, Lq/z;->p:Lq/z;

    new-instance v3, Lq/z;

    const/16 v14, 0x2002

    const-string v15, "string_data_item"

    const-string v7, "TYPE_STRING_DATA_ITEM"

    move-object/from16 v17, v5

    const/16 v5, 0xd

    invoke-direct {v3, v7, v5, v14, v15}, Lq/z;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lq/z;->q:Lq/z;

    new-instance v7, Lq/z;

    const/16 v14, 0x2003

    const-string v15, "debug_info_item"

    const-string v5, "TYPE_DEBUG_INFO_ITEM"

    move-object/from16 v18, v3

    const/16 v3, 0xe

    invoke-direct {v7, v5, v3, v14, v15}, Lq/z;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v7, Lq/z;->r:Lq/z;

    new-instance v5, Lq/z;

    const/16 v14, 0x2004

    const-string v15, "annotation_item"

    const-string v3, "TYPE_ANNOTATION_ITEM"

    move-object/from16 v19, v7

    const/16 v7, 0xf

    invoke-direct {v5, v3, v7, v14, v15}, Lq/z;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v5, Lq/z;->s:Lq/z;

    new-instance v3, Lq/z;

    const/16 v14, 0x2005

    const-string v15, "encoded_array_item"

    const-string v7, "TYPE_ENCODED_ARRAY_ITEM"

    move-object/from16 v20, v5

    const/16 v5, 0x10

    invoke-direct {v3, v7, v5, v14, v15}, Lq/z;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lq/z;->t:Lq/z;

    new-instance v7, Lq/z;

    const/16 v14, 0x2006

    const-string v15, "annotations_directory_item"

    const-string v5, "TYPE_ANNOTATIONS_DIRECTORY_ITEM"

    move-object/from16 v21, v3

    const/16 v3, 0x11

    invoke-direct {v7, v5, v3, v14, v15}, Lq/z;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v7, Lq/z;->u:Lq/z;

    new-instance v5, Lq/z;

    const-string v14, "map_item"

    const-string v15, "TYPE_MAP_ITEM"

    const/16 v3, 0x12

    move-object/from16 v22, v7

    const/4 v7, -0x1

    invoke-direct {v5, v15, v3, v7, v14}, Lq/z;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v5, Lq/z;->v:Lq/z;

    new-instance v14, Lq/z;

    const-string v15, "type_item"

    const-string v3, "TYPE_TYPE_ITEM"

    move-object/from16 v23, v5

    const/16 v5, 0x13

    invoke-direct {v14, v3, v5, v7, v15}, Lq/z;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v14, Lq/z;->w:Lq/z;

    new-instance v3, Lq/z;

    const-string v15, "exception_handler_item"

    const-string v5, "TYPE_EXCEPTION_HANDLER_ITEM"

    move-object/from16 v24, v14

    const/16 v14, 0x14

    invoke-direct {v3, v5, v14, v7, v15}, Lq/z;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lq/z;->x:Lq/z;

    new-instance v5, Lq/z;

    const/16 v15, 0x15

    const-string v14, "annotation_set_ref_item"

    move-object/from16 v25, v3

    const-string v3, "TYPE_ANNOTATION_SET_REF_ITEM"

    invoke-direct {v5, v3, v15, v7, v14}, Lq/z;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v5, Lq/z;->y:Lq/z;

    const/16 v3, 0x16

    new-array v3, v3, [Lq/z;

    const/4 v7, 0x0

    aput-object v0, v3, v7

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    const/4 v0, 0x3

    aput-object v4, v3, v0

    const/4 v0, 0x4

    aput-object v6, v3, v0

    const/4 v0, 0x5

    aput-object v8, v3, v0

    const/4 v0, 0x6

    aput-object v10, v3, v0

    const/4 v0, 0x7

    aput-object v12, v3, v0

    const/16 v0, 0x8

    aput-object v13, v3, v0

    const/16 v0, 0x9

    aput-object v11, v3, v0

    const/16 v0, 0xa

    aput-object v9, v3, v0

    const/16 v0, 0xb

    aput-object v16, v3, v0

    const/16 v0, 0xc

    aput-object v17, v3, v0

    const/16 v0, 0xd

    aput-object v18, v3, v0

    const/16 v0, 0xe

    aput-object v19, v3, v0

    const/16 v0, 0xf

    aput-object v20, v3, v0

    const/16 v0, 0x10

    aput-object v21, v3, v0

    const/16 v0, 0x11

    aput-object v22, v3, v0

    const/16 v0, 0x12

    aput-object v23, v3, v0

    const/16 v0, 0x13

    aput-object v24, v3, v0

    const/16 v0, 0x14

    aput-object v25, v3, v0

    const/16 v0, 0x15

    aput-object v5, v3, v0

    sput-object v3, Lq/z;->z:[Lq/z;

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

    iput p3, p0, Lq/z;->a:I

    iput-object p4, p0, Lq/z;->b:Ljava/lang/String;

    const-string p1, "_item"

    invoke-virtual {p4, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x5

    const/4 p2, 0x0

    invoke-virtual {p4, p2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p4

    :cond_0
    const/16 p1, 0x5f

    const/16 p2, 0x20

    invoke-virtual {p4, p1, p2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lq/z;->c:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lq/z;
    .locals 1

    const-class v0, Lq/z;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lq/z;

    return-object p0
.end method

.method public static values()[Lq/z;
    .locals 1

    sget-object v0, Lq/z;->z:[Lq/z;

    invoke-virtual {v0}, [Lq/z;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lq/z;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lq/z;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lq/z;->a:I

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lq/z;->b:Ljava/lang/String;

    return-object v0
.end method
