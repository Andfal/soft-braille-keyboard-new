.class public final enum La0/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "La0/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum c:La0/a;

.field public static final enum d:La0/a;

.field public static final enum e:La0/a;

.field public static final enum f:La0/a;

.field public static final enum g:La0/a;

.field public static final enum h:La0/a;

.field public static final enum i:La0/a;

.field public static final enum j:La0/a;

.field public static final enum k:La0/a;

.field public static final enum l:La0/a;

.field public static final enum m:La0/a;

.field public static final enum n:La0/a;

.field public static final enum o:La0/a;

.field public static final enum p:La0/a;

.field private static final synthetic q:[La0/a;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    new-instance v0, La0/a;

    const-string v1, "0"

    const-string v2, "Success"

    const-string v3, "SUCCESS"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, La0/a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, La0/a;->c:La0/a;

    new-instance v1, La0/a;

    const-string v2, "SDK100"

    const-string v3, "image size error"

    const-string v5, "IMAGE_SIZE_ERROR"

    const/4 v6, 0x1

    invoke-direct {v1, v5, v6, v2, v3}, La0/a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, La0/a;->d:La0/a;

    new-instance v2, La0/a;

    const-string v3, "SDK101"

    const-string v5, "image length error"

    const-string v7, "IMAGE_LENGTH_ERROR"

    const/4 v8, 0x2

    invoke-direct {v2, v7, v8, v3, v5}, La0/a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v2, La0/a;->e:La0/a;

    new-instance v3, La0/a;

    const-string v5, "SDK102"

    const-string v7, "read image file error"

    const-string v9, "IMAGE_READ_ERROR"

    const/4 v10, 0x3

    invoke-direct {v3, v9, v10, v5, v7}, La0/a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, La0/a;->f:La0/a;

    new-instance v5, La0/a;

    const-string v7, "SDK103"

    const-string v9, "user_info size error"

    const-string v11, "USER_INFO_SIZE_ERROR"

    const/4 v12, 0x4

    invoke-direct {v5, v11, v12, v7, v9}, La0/a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v5, La0/a;->g:La0/a;

    new-instance v7, La0/a;

    const-string v9, "SDK104"

    const-string v11, "group_id format error"

    const-string v13, "GROUP_ID_FORMAT_ERROR"

    const/4 v14, 0x5

    invoke-direct {v7, v13, v14, v9, v11}, La0/a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v7, La0/a;->h:La0/a;

    new-instance v9, La0/a;

    const-string v11, "SDK105"

    const-string v13, "group_id size error"

    const-string v15, "GROUP_ID_SIZE_ERROR"

    const/4 v14, 0x6

    invoke-direct {v9, v15, v14, v11, v13}, La0/a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v9, La0/a;->i:La0/a;

    new-instance v11, La0/a;

    const-string v13, "SDK106"

    const-string v15, "uid format error"

    const-string v14, "UID_FORMAT_ERROR"

    const/4 v12, 0x7

    invoke-direct {v11, v14, v12, v13, v15}, La0/a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v11, La0/a;->j:La0/a;

    new-instance v13, La0/a;

    const-string v14, "SDK107"

    const-string v15, "uid size error"

    const-string v12, "UID_SIZE_ERROR"

    const/16 v10, 0x8

    invoke-direct {v13, v12, v10, v14, v15}, La0/a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v13, La0/a;->k:La0/a;

    new-instance v12, La0/a;

    const-string v14, "SDK108"

    const-string v15, "connection or read data time out"

    const-string v10, "NET_TIMEOUT_ERROR"

    const/16 v8, 0x9

    invoke-direct {v12, v10, v8, v14, v15}, La0/a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v12, La0/a;->l:La0/a;

    new-instance v10, La0/a;

    const-string v14, "SDK109"

    const-string v15, "unsupported image format"

    const-string v8, "UNSUPPORTED_IMAGE_FORMAT_ERROR"

    const/16 v6, 0xa

    invoke-direct {v10, v8, v6, v14, v15}, La0/a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v10, La0/a;->m:La0/a;

    new-instance v8, La0/a;

    const-string v14, "SDK110"

    const-string v15, "illegal request id found: "

    const-string v6, "ILLEGAL_REQUEST_ID_ERROR"

    const/16 v4, 0xb

    invoke-direct {v8, v6, v4, v14, v15}, La0/a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v8, La0/a;->n:La0/a;

    new-instance v6, La0/a;

    const-string v14, "SDK111"

    const-string v15, "wait for aysnc result timeout"

    const-string v4, "ASYNC_TIMEOUT_ERROR"

    move-object/from16 v16, v8

    const/16 v8, 0xc

    invoke-direct {v6, v4, v8, v14, v15}, La0/a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v6, La0/a;->o:La0/a;

    new-instance v4, La0/a;

    const-string v14, "SDK112"

    const-string v15, "download file failed"

    const-string v8, "DOWNLOAD_FILE_ERROR"

    move-object/from16 v17, v6

    const/16 v6, 0xd

    invoke-direct {v4, v8, v6, v14, v15}, La0/a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v4, La0/a;->p:La0/a;

    const/16 v8, 0xe

    new-array v8, v8, [La0/a;

    const/4 v14, 0x0

    aput-object v0, v8, v14

    const/4 v0, 0x1

    aput-object v1, v8, v0

    const/4 v0, 0x2

    aput-object v2, v8, v0

    const/4 v0, 0x3

    aput-object v3, v8, v0

    const/4 v0, 0x4

    aput-object v5, v8, v0

    const/4 v0, 0x5

    aput-object v7, v8, v0

    const/4 v0, 0x6

    aput-object v9, v8, v0

    const/4 v0, 0x7

    aput-object v11, v8, v0

    const/16 v0, 0x8

    aput-object v13, v8, v0

    const/16 v0, 0x9

    aput-object v12, v8, v0

    const/16 v0, 0xa

    aput-object v10, v8, v0

    const/16 v0, 0xb

    aput-object v16, v8, v0

    const/16 v0, 0xc

    aput-object v17, v8, v0

    aput-object v4, v8, v6

    sput-object v8, La0/a;->q:[La0/a;

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

    iput-object p3, p0, La0/a;->a:Ljava/lang/String;

    iput-object p4, p0, La0/a;->b:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)La0/a;
    .locals 1

    const-class v0, La0/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, La0/a;

    return-object p0
.end method

.method public static values()[La0/a;
    .locals 1

    sget-object v0, La0/a;->q:[La0/a;

    invoke-virtual {v0}, [La0/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [La0/a;

    return-object v0
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "error_code"

    iget-object v2, p0, La0/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "error_msg"

    iget-object v2, p0, La0/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, La0/a;->a()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
