.class public final enum Lb1/n;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb1/n$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lb1/n;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum A:Lb1/n;

.field public static final enum B:Lb1/n;

.field public static final enum C:Lb1/n;

.field public static final enum D:Lb1/n;

.field public static final enum E:Lb1/n;

.field public static final enum F:Lb1/n;

.field public static final enum G:Lb1/n;

.field public static final enum H:Lb1/n;

.field public static final enum I:Lb1/n;

.field public static final enum J:Lb1/n;

.field public static final enum K:Lb1/n;

.field public static final enum L:Lb1/n;

.field public static final enum M:Lb1/n;

.field public static final enum N:Lb1/n;

.field public static final enum O:Lb1/n;

.field public static final enum P:Lb1/n;

.field public static final enum Q:Lb1/n;

.field public static final enum R:Lb1/n;

.field public static final enum S:Lb1/n;

.field public static final enum T:Lb1/n;

.field public static final enum U:Lb1/n;

.field public static final enum V:Lb1/n;

.field public static final enum W:Lb1/n;

.field public static final enum X:Lb1/n;

.field public static final enum Y:Lb1/n;

.field public static final enum Z:Lb1/n;

.field public static final enum b0:Lb1/n;

.field public static final enum c0:Lb1/n;

.field public static final enum d:Lb1/n;

.field public static final enum d0:Lb1/n;

.field public static final enum e:Lb1/n;

.field public static final enum e0:Lb1/n;

.field public static final enum f:Lb1/n;

.field public static final enum f0:Lb1/n;

.field public static final enum g:Lb1/n;

.field public static final enum g0:Lb1/n;

.field public static final enum h:Lb1/n;

.field public static final enum h0:Lb1/n;

.field public static final enum i:Lb1/n;

.field public static final enum i0:Lb1/n;

.field public static final enum j:Lb1/n;

.field public static final enum j0:Lb1/n;

.field public static final enum k:Lb1/n;

.field public static final enum k0:Lb1/n;

.field public static final enum l:Lb1/n;

.field public static final enum l0:Lb1/n;

.field public static final enum m:Lb1/n;

.field public static final enum m0:Lb1/n;

.field public static final enum n:Lb1/n;

.field public static final enum n0:Lb1/n;

.field public static final enum o:Lb1/n;

.field public static final enum o0:Lb1/n;

.field public static final enum p:Lb1/n;

.field public static final enum p0:Lb1/n;

.field public static final enum q:Lb1/n;

.field public static final enum q0:Lb1/n;

.field public static final enum r:Lb1/n;

.field private static final synthetic r0:[Lb1/n;

.field public static final enum s:Lb1/n;

.field public static final enum t:Lb1/n;

.field public static final enum u:Lb1/n;

.field public static final enum v:Lb1/n;

.field public static final enum w:Lb1/n;

.field public static final enum x:Lb1/n;

.field public static final enum y:Lb1/n;

.field public static final enum z:Lb1/n;


# instance fields
.field private final a:Lb1/n$a;

.field private final b:I

.field private final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 77

    new-instance v6, Lb1/n;

    const-string v1, "ONLINE_ENGINE_AUTH_FAILURE"

    const/4 v2, 0x0

    sget-object v13, Lb1/n$a;->b:Lb1/n$a;

    const/4 v4, -0x1

    const-string v5, "online engine auth failure"

    move-object v0, v6

    move-object v3, v13

    invoke-direct/range {v0 .. v5}, Lb1/n;-><init>(Ljava/lang/String;ILb1/n$a;ILjava/lang/String;)V

    sput-object v6, Lb1/n;->d:Lb1/n;

    new-instance v0, Lb1/n;

    const-string v8, "ONLINE_ENGINE_HTTP_REQUEST_FAILURE"

    const/4 v9, 0x1

    const/4 v11, -0x2

    const-string v12, "request failure"

    move-object v7, v0

    move-object v10, v13

    invoke-direct/range {v7 .. v12}, Lb1/n;-><init>(Ljava/lang/String;ILb1/n$a;ILjava/lang/String;)V

    sput-object v0, Lb1/n;->e:Lb1/n;

    new-instance v1, Lb1/n;

    const-string v8, "ONLINE_ENGINE_CANCEL_FAILURE"

    const/4 v9, 0x2

    const/4 v11, -0x3

    const-string v12, "cancel failure"

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Lb1/n;-><init>(Ljava/lang/String;ILb1/n$a;ILjava/lang/String;)V

    sput-object v1, Lb1/n;->f:Lb1/n;

    new-instance v2, Lb1/n;

    const-string v8, "ONLINE_AUTH_INTERRUPTED_EXCEPTION"

    const/4 v9, 0x3

    const/4 v11, -0x4

    const-string v12, "InterruptedException"

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lb1/n;-><init>(Ljava/lang/String;ILb1/n$a;ILjava/lang/String;)V

    sput-object v2, Lb1/n;->g:Lb1/n;

    new-instance v3, Lb1/n;

    const-string v8, "ONLINE_AUTH_EXECUTION_EXCEPTION"

    const/4 v9, 0x4

    const/4 v11, -0x5

    const-string v12, "ExecutionException"

    move-object v7, v3

    invoke-direct/range {v7 .. v12}, Lb1/n;-><init>(Ljava/lang/String;ILb1/n$a;ILjava/lang/String;)V

    sput-object v3, Lb1/n;->h:Lb1/n;

    new-instance v4, Lb1/n;

    const-string v8, "ONLINE_AUTH_TIMEOUT_EXCEPTION"

    const/4 v9, 0x5

    const/4 v11, -0x6

    const-string v12, "TimeoutException"

    move-object v7, v4

    invoke-direct/range {v7 .. v12}, Lb1/n;-><init>(Ljava/lang/String;ILb1/n$a;ILjava/lang/String;)V

    sput-object v4, Lb1/n;->i:Lb1/n;

    new-instance v5, Lb1/n;

    const-string v8, "ONLINE_ENGINE_REQUEST_RESULT_ERROR"

    const/4 v9, 0x6

    const/4 v11, -0x7

    const-string v12, "request result contains error message"

    move-object v7, v5

    invoke-direct/range {v7 .. v12}, Lb1/n;-><init>(Ljava/lang/String;ILb1/n$a;ILjava/lang/String;)V

    sput-object v5, Lb1/n;->j:Lb1/n;

    new-instance v14, Lb1/n;

    const-string v8, "ONLINE_TOKEN_IS_NULL"

    const/4 v9, 0x7

    const/4 v11, -0x8

    const-string v12, "access token is null, please check your apikey and secretkey or product id"

    move-object v7, v14

    invoke-direct/range {v7 .. v12}, Lb1/n;-><init>(Ljava/lang/String;ILb1/n$a;ILjava/lang/String;)V

    sput-object v14, Lb1/n;->k:Lb1/n;

    new-instance v15, Lb1/n;

    const-string v8, "ONLINE_ENGINE_UNINITIALIZED"

    const/16 v9, 0x8

    const/16 v11, -0x9

    const-string v12, "online engine is not initial"

    move-object v7, v15

    invoke-direct/range {v7 .. v12}, Lb1/n;-><init>(Ljava/lang/String;ILb1/n$a;ILjava/lang/String;)V

    sput-object v15, Lb1/n;->l:Lb1/n;

    new-instance v16, Lb1/n;

    const-string v8, "ONLINE_ENGINE_CALL_EXCEPTION"

    const/16 v9, 0x9

    const/16 v11, -0xa

    const-string v12, "online engine call synthesize exception"

    move-object/from16 v7, v16

    invoke-direct/range {v7 .. v12}, Lb1/n;-><init>(Ljava/lang/String;ILb1/n$a;ILjava/lang/String;)V

    sput-object v16, Lb1/n;->m:Lb1/n;

    new-instance v17, Lb1/n;

    const-string v8, "ONLINE_UNSUPPORTED_OPERATION"

    const/16 v9, 0xa

    const/16 v11, -0xb

    const-string v12, "this method is not supported by online mode(please use other mode)"

    move-object/from16 v7, v17

    invoke-direct/range {v7 .. v12}, Lb1/n;-><init>(Ljava/lang/String;ILb1/n$a;ILjava/lang/String;)V

    sput-object v17, Lb1/n;->n:Lb1/n;

    new-instance v18, Lb1/n;

    const-string v8, "ONLINE_ENGINE_HTTP_REQUEST_PARSE_ERROR"

    const/16 v9, 0xb

    const/16 v11, -0xc

    const-string v12, "request result parse error may responsebag is null"

    move-object/from16 v7, v18

    invoke-direct/range {v7 .. v12}, Lb1/n;-><init>(Ljava/lang/String;ILb1/n$a;ILjava/lang/String;)V

    sput-object v18, Lb1/n;->o:Lb1/n;

    new-instance v19, Lb1/n;

    const-string v8, "ONLINE_ENGINE_GET_INTERRUPTED"

    const/16 v9, 0xc

    const/16 v11, -0xd

    const-string v12, "online synthesize get was interrupted"

    move-object/from16 v7, v19

    invoke-direct/range {v7 .. v12}, Lb1/n;-><init>(Ljava/lang/String;ILb1/n$a;ILjava/lang/String;)V

    sput-object v19, Lb1/n;->p:Lb1/n;

    new-instance v20, Lb1/n;

    const-string v8, "ONLINE_ENGINE_GET_EXECUTION_EXCEPTION"

    const/16 v9, 0xd

    const/16 v11, -0xe

    const-string v12, "online synthesize get exception"

    move-object/from16 v7, v20

    invoke-direct/range {v7 .. v12}, Lb1/n;-><init>(Ljava/lang/String;ILb1/n$a;ILjava/lang/String;)V

    sput-object v20, Lb1/n;->q:Lb1/n;

    new-instance v21, Lb1/n;

    const-string v8, "ONLINE_ENGINE_GET_TIMEOUT"

    const/16 v9, 0xe

    const/16 v11, -0xf

    const-string v12, "online synthesize get was timeout"

    move-object/from16 v7, v21

    invoke-direct/range {v7 .. v12}, Lb1/n;-><init>(Ljava/lang/String;ILb1/n$a;ILjava/lang/String;)V

    sput-object v21, Lb1/n;->r:Lb1/n;

    new-instance v22, Lb1/n;

    const-string v8, "ONLINE_AUTH_CANCELLATION_EXCEPTION"

    const/16 v9, 0xf

    const/16 v11, -0x10

    const-string v12, "CancellationException"

    move-object/from16 v7, v22

    invoke-direct/range {v7 .. v12}, Lb1/n;-><init>(Ljava/lang/String;ILb1/n$a;ILjava/lang/String;)V

    sput-object v22, Lb1/n;->s:Lb1/n;

    new-instance v23, Lb1/n;

    const-string v8, "ONLINE_ENGINE_SERVER_IP_IS_NULL"

    const/16 v9, 0x10

    const/16 v11, -0x11

    const-string v12, "online engine server ip is null"

    move-object/from16 v7, v23

    invoke-direct/range {v7 .. v12}, Lb1/n;-><init>(Ljava/lang/String;ILb1/n$a;ILjava/lang/String;)V

    sput-object v23, Lb1/n;->t:Lb1/n;

    new-instance v30, Lb1/n;

    const-string v25, "OFFLINE_ENGINE_AUTH_FAILURE"

    const/16 v26, 0x11

    sget-object v31, Lb1/n$a;->c:Lb1/n$a;

    const/16 v28, -0x64

    const-string v29, "offline engine auth failure,please check you offline auth params"

    move-object/from16 v24, v30

    move-object/from16 v27, v31

    invoke-direct/range {v24 .. v29}, Lb1/n;-><init>(Ljava/lang/String;ILb1/n$a;ILjava/lang/String;)V

    sput-object v30, Lb1/n;->u:Lb1/n;

    new-instance v24, Lb1/n;

    const-string v8, "OFFLINE_ENGINE_CANCEL_FAILURE"

    const/16 v9, 0x12

    const/16 v11, -0x65

    const-string v12, "offline engine cancel failure"

    move-object/from16 v7, v24

    move-object/from16 v10, v31

    invoke-direct/range {v7 .. v12}, Lb1/n;-><init>(Ljava/lang/String;ILb1/n$a;ILjava/lang/String;)V

    sput-object v24, Lb1/n;->v:Lb1/n;

    new-instance v25, Lb1/n;

    const-string v8, "OFFLINE_ENGINE_DOWNLOAD_LICENSE_FAILED"

    const/16 v9, 0x13

    const/16 v11, -0x66

    const-string v12, "offline engine download license failure"

    move-object/from16 v7, v25

    invoke-direct/range {v7 .. v12}, Lb1/n;-><init>(Ljava/lang/String;ILb1/n$a;ILjava/lang/String;)V

    sput-object v25, Lb1/n;->w:Lb1/n;

    new-instance v26, Lb1/n;

    const-string v8, "OFFLINE_ENGINE_AUTH_NULL"

    const/16 v9, 0x14

    const/16 v11, -0x67

    const-string v12, "offline engine auth authinfo is null"

    move-object/from16 v7, v26

    invoke-direct/range {v7 .. v12}, Lb1/n;-><init>(Ljava/lang/String;ILb1/n$a;ILjava/lang/String;)V

    sput-object v26, Lb1/n;->x:Lb1/n;

    new-instance v27, Lb1/n;

    const-string v8, "OFFLINE_AUTH_INTERRUPTED_EXCEPTION"

    const/16 v9, 0x15

    const/16 v11, -0x69

    const-string v12, "InterruptedException"

    move-object/from16 v7, v27

    invoke-direct/range {v7 .. v12}, Lb1/n;-><init>(Ljava/lang/String;ILb1/n$a;ILjava/lang/String;)V

    sput-object v27, Lb1/n;->y:Lb1/n;

    new-instance v28, Lb1/n;

    const-string v8, "OFFLINE_AUTH_EXECUTION_EXCEPTION"

    const/16 v9, 0x16

    const/16 v11, -0x6a

    const-string v12, "ExecutionException"

    move-object/from16 v7, v28

    invoke-direct/range {v7 .. v12}, Lb1/n;-><init>(Ljava/lang/String;ILb1/n$a;ILjava/lang/String;)V

    sput-object v28, Lb1/n;->z:Lb1/n;

    new-instance v29, Lb1/n;

    const-string v8, "OFFLINE_AUTH_TIMEOUT_EXCEPTION"

    const/16 v9, 0x17

    const/16 v11, -0x6b

    const-string v12, "TimeoutException"

    move-object/from16 v7, v29

    invoke-direct/range {v7 .. v12}, Lb1/n;-><init>(Ljava/lang/String;ILb1/n$a;ILjava/lang/String;)V

    sput-object v29, Lb1/n;->A:Lb1/n;

    new-instance v32, Lb1/n;

    const-string v8, "OFFLINE_ENGINE_INIT_FAILED"

    const/16 v9, 0x18

    const/16 v11, -0x6c

    const-string v12, "bdTTSEngineInit failed,please check you offline params"

    move-object/from16 v7, v32

    invoke-direct/range {v7 .. v12}, Lb1/n;-><init>(Ljava/lang/String;ILb1/n$a;ILjava/lang/String;)V

    sput-object v32, Lb1/n;->B:Lb1/n;

    new-instance v33, Lb1/n;

    const-string v8, "OFFLINE_ENGINE_UNINITIALIZED"

    const/16 v9, 0x19

    const/16 v11, -0x6d

    const-string v12, "offline engine is uninitialized,please invoke initTts() method"

    move-object/from16 v7, v33

    invoke-direct/range {v7 .. v12}, Lb1/n;-><init>(Ljava/lang/String;ILb1/n$a;ILjava/lang/String;)V

    sput-object v33, Lb1/n;->C:Lb1/n;

    new-instance v34, Lb1/n;

    const-string v8, "OFFLINE_ENGINE_CALL_EXCEPTION"

    const/16 v9, 0x1a

    const/16 v11, -0x6e

    const-string v12, "offline engine call synthesize exception"

    move-object/from16 v7, v34

    invoke-direct/range {v7 .. v12}, Lb1/n;-><init>(Ljava/lang/String;ILb1/n$a;ILjava/lang/String;)V

    sput-object v34, Lb1/n;->D:Lb1/n;

    new-instance v35, Lb1/n;

    const-string v8, "OFFLINE_ENGINE_SYNTHESIZE_ERROR"

    const/16 v9, 0x1b

    const/16 v11, -0x6f

    const-string v12, "offline engine synthesize result not 0"

    move-object/from16 v7, v35

    invoke-direct/range {v7 .. v12}, Lb1/n;-><init>(Ljava/lang/String;ILb1/n$a;ILjava/lang/String;)V

    sput-object v35, Lb1/n;->E:Lb1/n;

    new-instance v36, Lb1/n;

    const-string v8, "OFFLINE_ENGINE_AUTH_EXPIRED"

    const/16 v9, 0x1c

    const/16 v11, -0x70

    const-string v12, "offline engine auth verify expired,formal expired or temp expired"

    move-object/from16 v7, v36

    invoke-direct/range {v7 .. v12}, Lb1/n;-><init>(Ljava/lang/String;ILb1/n$a;ILjava/lang/String;)V

    sput-object v36, Lb1/n;->F:Lb1/n;

    new-instance v37, Lb1/n;

    const-string v8, "OFFLINE_ENGINE_AUTH_PACKAGE_UNMATCH"

    const/16 v9, 0x1d

    const/16 v11, -0x71

    const-string v12, "package name is unmatch"

    move-object/from16 v7, v37

    invoke-direct/range {v7 .. v12}, Lb1/n;-><init>(Ljava/lang/String;ILb1/n$a;ILjava/lang/String;)V

    sput-object v37, Lb1/n;->G:Lb1/n;

    new-instance v38, Lb1/n;

    const-string v8, "OFFLINE_ENGINE_AUTH_SIGN_UNMATCH"

    const/16 v9, 0x1e

    const/16 v11, -0x72

    const-string v12, "app sign is unmatch"

    move-object/from16 v7, v38

    invoke-direct/range {v7 .. v12}, Lb1/n;-><init>(Ljava/lang/String;ILb1/n$a;ILjava/lang/String;)V

    sput-object v38, Lb1/n;->H:Lb1/n;

    new-instance v39, Lb1/n;

    const-string v8, "OFFLINE_ENGINE_AUTH_CUID_UNMATCH"

    const/16 v9, 0x1f

    const/16 v11, -0x73

    const-string v12, "devices cuid is unmatch"

    move-object/from16 v7, v39

    invoke-direct/range {v7 .. v12}, Lb1/n;-><init>(Ljava/lang/String;ILb1/n$a;ILjava/lang/String;)V

    sput-object v39, Lb1/n;->I:Lb1/n;

    new-instance v40, Lb1/n;

    const-string v8, "OFFLINE_ENGINE_AUTH_PLATFORM_ERROR"

    const/16 v9, 0x20

    const/16 v11, -0x74

    const-string v12, "platform is unmatch"

    move-object/from16 v7, v40

    invoke-direct/range {v7 .. v12}, Lb1/n;-><init>(Ljava/lang/String;ILb1/n$a;ILjava/lang/String;)V

    sput-object v40, Lb1/n;->J:Lb1/n;

    new-instance v41, Lb1/n;

    const-string v8, "OFFLINE_ENGINE_AUTH_LICENSE_FILE_INVALID"

    const/16 v9, 0x21

    const/16 v11, -0x75

    const-string v12, "license file not exist or file length is 0 (download license fail)"

    move-object/from16 v7, v41

    invoke-direct/range {v7 .. v12}, Lb1/n;-><init>(Ljava/lang/String;ILb1/n$a;ILjava/lang/String;)V

    sput-object v41, Lb1/n;->K:Lb1/n;

    new-instance v42, Lb1/n;

    const-string v8, "OFFLINE_AUTH_CANCELLATION_EXCEPTION"

    const/16 v9, 0x22

    const/16 v11, -0x76

    const-string v12, "CancellationException"

    move-object/from16 v7, v42

    move-object v10, v13

    invoke-direct/range {v7 .. v12}, Lb1/n;-><init>(Ljava/lang/String;ILb1/n$a;ILjava/lang/String;)V

    sput-object v42, Lb1/n;->L:Lb1/n;

    new-instance v13, Lb1/n;

    const-string v8, "OFFLINE_DOWNLOAD_LICENSE_INVALID_SN"

    const/16 v9, 0x23

    const/16 v11, -0x77

    const-string v12, "download license failure,invalid SN"

    move-object v7, v13

    move-object/from16 v10, v31

    invoke-direct/range {v7 .. v12}, Lb1/n;-><init>(Ljava/lang/String;ILb1/n$a;ILjava/lang/String;)V

    sput-object v13, Lb1/n;->M:Lb1/n;

    new-instance v7, Lb1/n;

    const-string v44, "MIX_ENGINE_AUTH_FAILURE"

    const/16 v45, 0x24

    sget-object v8, Lb1/n$a;->a:Lb1/n$a;

    const/16 v47, -0xc8

    const-string v48, "both online and offline engine auth failue"

    move-object/from16 v43, v7

    move-object/from16 v46, v8

    invoke-direct/range {v43 .. v48}, Lb1/n;-><init>(Ljava/lang/String;ILb1/n$a;ILjava/lang/String;)V

    sput-object v7, Lb1/n;->N:Lb1/n;

    new-instance v9, Lb1/n;

    const-string v47, "MIX_AUTH_INTERRUPTED_EXCEPTION"

    const/16 v48, 0x25

    const/16 v50, -0xc9

    const-string v51, "InterruptedException"

    move-object/from16 v46, v9

    move-object/from16 v49, v8

    invoke-direct/range {v46 .. v51}, Lb1/n;-><init>(Ljava/lang/String;ILb1/n$a;ILjava/lang/String;)V

    sput-object v9, Lb1/n;->O:Lb1/n;

    new-instance v10, Lb1/n;

    const-string v47, "MIX_AUTH_EXECUTION_EXCEPTION"

    const/16 v48, 0x26

    const/16 v50, -0xca

    const-string v51, "ExecutionException"

    move-object/from16 v46, v10

    invoke-direct/range {v46 .. v51}, Lb1/n;-><init>(Ljava/lang/String;ILb1/n$a;ILjava/lang/String;)V

    sput-object v10, Lb1/n;->P:Lb1/n;

    new-instance v11, Lb1/n;

    const-string v47, "MIX_AUTH_TIMEOUT_EXCEPTION"

    const/16 v48, 0x27

    const/16 v50, -0xcb

    const-string v51, "TimeoutException"

    move-object/from16 v46, v11

    invoke-direct/range {v46 .. v51}, Lb1/n;-><init>(Ljava/lang/String;ILb1/n$a;ILjava/lang/String;)V

    sput-object v11, Lb1/n;->Q:Lb1/n;

    new-instance v12, Lb1/n;

    const-string v47, "MIX_ENGINE_OFFLINE_INIT_FAILURE"

    const/16 v48, 0x28

    const/16 v50, -0xcc

    const-string v51, "mix engine initTTS, the offline init failure"

    move-object/from16 v46, v12

    invoke-direct/range {v46 .. v51}, Lb1/n;-><init>(Ljava/lang/String;ILb1/n$a;ILjava/lang/String;)V

    sput-object v12, Lb1/n;->R:Lb1/n;

    new-instance v31, Lb1/n;

    const-string v47, "MIX_AUTH_CANCELLATION_EXCEPTION"

    const/16 v48, 0x29

    const/16 v50, -0xcd

    const-string v51, "CancellationException"

    move-object/from16 v46, v31

    invoke-direct/range {v46 .. v51}, Lb1/n;-><init>(Ljava/lang/String;ILb1/n$a;ILjava/lang/String;)V

    sput-object v31, Lb1/n;->S:Lb1/n;

    new-instance v8, Lb1/n;

    const-string v53, "TEXT_IS_EMPTY"

    const/16 v54, 0x2a

    sget-object v49, Lb1/n$a;->d:Lb1/n$a;

    const/16 v56, -0x12c

    const-string v57, "text is null or empty double quotation marks"

    move-object/from16 v52, v8

    move-object/from16 v55, v49

    invoke-direct/range {v52 .. v57}, Lb1/n;-><init>(Ljava/lang/String;ILb1/n$a;ILjava/lang/String;)V

    sput-object v8, Lb1/n;->T:Lb1/n;

    new-instance v50, Lb1/n;

    const-string v44, "TEXT_IS_TOO_LONG"

    const/16 v45, 0x2b

    const/16 v47, -0x12d

    const-string v48, "text length in gbk is more than 120 ,the text is too long cut it short than 120"

    move-object/from16 v43, v50

    move-object/from16 v46, v49

    invoke-direct/range {v43 .. v48}, Lb1/n;-><init>(Ljava/lang/String;ILb1/n$a;ILjava/lang/String;)V

    sput-object v50, Lb1/n;->U:Lb1/n;

    new-instance v51, Lb1/n;

    const-string v44, "TEXT_ENCODE_IS_WRONG"

    const/16 v45, 0x2c

    const/16 v47, -0x12e

    const-string v48, "text encode is not gbk, please use gbk text"

    move-object/from16 v43, v51

    invoke-direct/range {v43 .. v48}, Lb1/n;-><init>(Ljava/lang/String;ILb1/n$a;ILjava/lang/String;)V

    sput-object v51, Lb1/n;->V:Lb1/n;

    new-instance v43, Lb1/n;

    const-string v53, "TTS_UNINITIAL"

    const/16 v54, 0x2d

    sget-object v58, Lb1/n$a;->e:Lb1/n$a;

    const/16 v56, -0x190

    const-string v57, "tts has not been initialized,invoke in a wrong state"

    move-object/from16 v52, v43

    move-object/from16 v55, v58

    invoke-direct/range {v52 .. v57}, Lb1/n;-><init>(Ljava/lang/String;ILb1/n$a;ILjava/lang/String;)V

    sput-object v43, Lb1/n;->W:Lb1/n;

    new-instance v52, Lb1/n;

    const-string v45, "TTS_MODE_ILLEGAL"

    const/16 v46, 0x2e

    const/16 v48, -0x191

    const-string v49, "tts mode unset or not the spechified value"

    move-object/from16 v44, v52

    move-object/from16 v47, v58

    invoke-direct/range {v44 .. v49}, Lb1/n;-><init>(Ljava/lang/String;ILb1/n$a;ILjava/lang/String;)V

    sput-object v52, Lb1/n;->X:Lb1/n;

    new-instance v53, Lb1/n;

    const-string v45, "TTS_QUEUE_IS_FULL"

    const/16 v46, 0x2f

    const/16 v48, -0x192

    const-string v49, "\u961f\u5217\u957f\u5ea6\u5c0f\u4e8eMAX_QUEUE_SIZE\u65f6\u624d\u80fd\u52a0\u5165\u5408\u6210\u961f\u5217"

    move-object/from16 v44, v53

    invoke-direct/range {v44 .. v49}, Lb1/n;-><init>(Ljava/lang/String;ILb1/n$a;ILjava/lang/String;)V

    sput-object v53, Lb1/n;->Y:Lb1/n;

    new-instance v54, Lb1/n;

    const-string v45, "TTS_LIST_IS_TOO_LONG"

    const/16 v46, 0x30

    const/16 v48, -0x193

    const-string v49, "list\u7684size\u5c0f\u4e8eMAX_LIST_SIZE\u65f6\u624d\u6709\u6548"

    move-object/from16 v44, v54

    invoke-direct/range {v44 .. v49}, Lb1/n;-><init>(Ljava/lang/String;ILb1/n$a;ILjava/lang/String;)V

    sput-object v54, Lb1/n;->Z:Lb1/n;

    new-instance v55, Lb1/n;

    const-string v45, "TTS_ENGINE_STOP_FAILURE"

    const/16 v46, 0x31

    const/16 v48, -0x194

    const-string v49, "\u5f15\u64ce\u505c\u6b62\u5931\u8d25"

    move-object/from16 v44, v55

    invoke-direct/range {v44 .. v49}, Lb1/n;-><init>(Ljava/lang/String;ILb1/n$a;ILjava/lang/String;)V

    sput-object v55, Lb1/n;->b0:Lb1/n;

    new-instance v56, Lb1/n;

    const-string v45, "TTS_APP_ID_IS_INVALID"

    const/16 v46, 0x32

    const/16 v48, -0x195

    const-string v49, "app id is invalid,must be less than int(11)"

    move-object/from16 v44, v56

    invoke-direct/range {v44 .. v49}, Lb1/n;-><init>(Ljava/lang/String;ILb1/n$a;ILjava/lang/String;)V

    sput-object v56, Lb1/n;->c0:Lb1/n;

    new-instance v57, Lb1/n;

    const-string v45, "TTS_PARAMETER_INVALID"

    const/16 v46, 0x33

    const/16 v48, -0x196

    const-string v49, "arguments of the method is invalid"

    move-object/from16 v44, v57

    invoke-direct/range {v44 .. v49}, Lb1/n;-><init>(Ljava/lang/String;ILb1/n$a;ILjava/lang/String;)V

    sput-object v57, Lb1/n;->d0:Lb1/n;

    new-instance v44, Lb1/n;

    const-string v60, "APP_RESOURCE_IS_NULL"

    const/16 v61, 0x34

    sget-object v62, Lb1/n$a;->f:Lb1/n$a;

    const/16 v63, -0x1f4

    const-string v64, "context was released or persistent app value is null"

    move-object/from16 v59, v44

    invoke-direct/range {v59 .. v64}, Lb1/n;-><init>(Ljava/lang/String;ILb1/n$a;ILjava/lang/String;)V

    sput-object v44, Lb1/n;->e0:Lb1/n;

    new-instance v45, Lb1/n;

    const-string v66, "PLAYER_IS_NULL"

    const/16 v67, 0x35

    sget-object v68, Lb1/n$a;->g:Lb1/n$a;

    const/16 v69, -0x258

    const-string v70, "player is null"

    move-object/from16 v65, v45

    invoke-direct/range {v65 .. v70}, Lb1/n;-><init>(Ljava/lang/String;ILb1/n$a;ILjava/lang/String;)V

    sput-object v45, Lb1/n;->f0:Lb1/n;

    new-instance v46, Lb1/n;

    const-string v59, "MODEL_PARAMS_ERROR"

    const/16 v60, 0x36

    sget-object v47, Lb1/n$a;->h:Lb1/n$a;

    const/16 v62, -0x3e8

    const-string v63, "params is wrong"

    move-object/from16 v58, v46

    move-object/from16 v61, v47

    invoke-direct/range {v58 .. v63}, Lb1/n;-><init>(Ljava/lang/String;ILb1/n$a;ILjava/lang/String;)V

    sput-object v46, Lb1/n;->g0:Lb1/n;

    new-instance v48, Lb1/n;

    const-string v62, "MODEL_REQUEST_ERROR"

    const/16 v63, 0x37

    const/16 v65, -0x3e9

    const-string v66, "request error"

    move-object/from16 v61, v48

    move-object/from16 v64, v47

    invoke-direct/range {v61 .. v66}, Lb1/n;-><init>(Ljava/lang/String;ILb1/n$a;ILjava/lang/String;)V

    sput-object v48, Lb1/n;->h0:Lb1/n;

    new-instance v49, Lb1/n;

    const-string v62, "MODEL_SERVER_ERROR"

    const/16 v63, 0x38

    const/16 v65, -0x3ea

    const-string v66, "server error"

    move-object/from16 v61, v49

    invoke-direct/range {v61 .. v66}, Lb1/n;-><init>(Ljava/lang/String;ILb1/n$a;ILjava/lang/String;)V

    sput-object v49, Lb1/n;->i0:Lb1/n;

    new-instance v58, Lb1/n;

    const-string v62, "MODEL_DB_MODEL_INVALID"

    const/16 v63, 0x39

    const/16 v65, -0x3eb

    const-string v66, "model item in db is invalid(fileids is empty)"

    move-object/from16 v61, v58

    invoke-direct/range {v61 .. v66}, Lb1/n;-><init>(Ljava/lang/String;ILb1/n$a;ILjava/lang/String;)V

    sput-object v58, Lb1/n;->j0:Lb1/n;

    new-instance v59, Lb1/n;

    const-string v62, "MODEL_DB_MODEL_FILE_PATHS_INVALID"

    const/16 v63, 0x3a

    const/16 v65, -0x3ec

    const-string v66, "model file in db is invalid(abspath is empty)"

    move-object/from16 v61, v59

    invoke-direct/range {v61 .. v66}, Lb1/n;-><init>(Ljava/lang/String;ILb1/n$a;ILjava/lang/String;)V

    sput-object v59, Lb1/n;->k0:Lb1/n;

    new-instance v60, Lb1/n;

    const-string v62, "MODEL_EXISTS"

    const/16 v63, 0x3b

    const/16 v65, -0x3ed

    const-string v66, "this model exists(have downloaded success ever)"

    move-object/from16 v61, v60

    invoke-direct/range {v61 .. v66}, Lb1/n;-><init>(Ljava/lang/String;ILb1/n$a;ILjava/lang/String;)V

    sput-object v60, Lb1/n;->l0:Lb1/n;

    new-instance v67, Lb1/n;

    const-string v62, "MODEL_BAGS_EMPTY"

    const/16 v63, 0x3c

    const/16 v65, -0x3ee

    const-string v66, "can\'t get server model info,maybe modelid invalid or request failure"

    move-object/from16 v61, v67

    invoke-direct/range {v61 .. v66}, Lb1/n;-><init>(Ljava/lang/String;ILb1/n$a;ILjava/lang/String;)V

    sput-object v67, Lb1/n;->m0:Lb1/n;

    new-instance v68, Lb1/n;

    const-string v62, "MODEL_FILE_BAG_EMPTY"

    const/16 v63, 0x3d

    const/16 v65, -0x3ef

    const-string v66, "can\'t get server file info,maybe fileid invalid or request failure"

    move-object/from16 v61, v68

    invoke-direct/range {v61 .. v66}, Lb1/n;-><init>(Ljava/lang/String;ILb1/n$a;ILjava/lang/String;)V

    sput-object v68, Lb1/n;->n0:Lb1/n;

    new-instance v69, Lb1/n;

    const-string v62, "MODEL_CHECK_EXCEPTION"

    const/16 v63, 0x3e

    const/16 v65, -0x3f0

    const-string v66, "CheckWork exception happened"

    move-object/from16 v61, v69

    invoke-direct/range {v61 .. v66}, Lb1/n;-><init>(Ljava/lang/String;ILb1/n$a;ILjava/lang/String;)V

    sput-object v69, Lb1/n;->o0:Lb1/n;

    new-instance v70, Lb1/n;

    const-string v62, "MODEL_FILE_DOWNLOAD_EXCEPTION"

    const/16 v63, 0x3f

    const/16 v65, -0x3f1

    const-string v66, "exception happens when file downloadwork execute"

    move-object/from16 v61, v70

    invoke-direct/range {v61 .. v66}, Lb1/n;-><init>(Ljava/lang/String;ILb1/n$a;ILjava/lang/String;)V

    sput-object v70, Lb1/n;->p0:Lb1/n;

    new-instance v47, Lb1/n;

    const-string v72, "TTS_ERROR_UNKNOW"

    const/16 v73, 0x40

    sget-object v74, Lb1/n$a;->i:Lb1/n$a;

    const/16 v75, -0x270f

    const-string v76, "unknow"

    move-object/from16 v71, v47

    invoke-direct/range {v71 .. v76}, Lb1/n;-><init>(Ljava/lang/String;ILb1/n$a;ILjava/lang/String;)V

    sput-object v47, Lb1/n;->q0:Lb1/n;

    move-object/from16 v61, v8

    const/16 v8, 0x41

    new-array v8, v8, [Lb1/n;

    const/16 v62, 0x0

    aput-object v6, v8, v62

    const/4 v6, 0x1

    aput-object v0, v8, v6

    const/4 v0, 0x2

    aput-object v1, v8, v0

    const/4 v0, 0x3

    aput-object v2, v8, v0

    const/4 v0, 0x4

    aput-object v3, v8, v0

    const/4 v0, 0x5

    aput-object v4, v8, v0

    const/4 v0, 0x6

    aput-object v5, v8, v0

    const/4 v0, 0x7

    aput-object v14, v8, v0

    const/16 v0, 0x8

    aput-object v15, v8, v0

    const/16 v0, 0x9

    aput-object v16, v8, v0

    const/16 v0, 0xa

    aput-object v17, v8, v0

    const/16 v0, 0xb

    aput-object v18, v8, v0

    const/16 v0, 0xc

    aput-object v19, v8, v0

    const/16 v0, 0xd

    aput-object v20, v8, v0

    const/16 v0, 0xe

    aput-object v21, v8, v0

    const/16 v0, 0xf

    aput-object v22, v8, v0

    const/16 v0, 0x10

    aput-object v23, v8, v0

    const/16 v0, 0x11

    aput-object v30, v8, v0

    const/16 v0, 0x12

    aput-object v24, v8, v0

    const/16 v0, 0x13

    aput-object v25, v8, v0

    const/16 v0, 0x14

    aput-object v26, v8, v0

    const/16 v0, 0x15

    aput-object v27, v8, v0

    const/16 v0, 0x16

    aput-object v28, v8, v0

    const/16 v0, 0x17

    aput-object v29, v8, v0

    const/16 v0, 0x18

    aput-object v32, v8, v0

    const/16 v0, 0x19

    aput-object v33, v8, v0

    const/16 v0, 0x1a

    aput-object v34, v8, v0

    const/16 v0, 0x1b

    aput-object v35, v8, v0

    const/16 v0, 0x1c

    aput-object v36, v8, v0

    const/16 v0, 0x1d

    aput-object v37, v8, v0

    const/16 v0, 0x1e

    aput-object v38, v8, v0

    const/16 v0, 0x1f

    aput-object v39, v8, v0

    const/16 v0, 0x20

    aput-object v40, v8, v0

    const/16 v0, 0x21

    aput-object v41, v8, v0

    const/16 v0, 0x22

    aput-object v42, v8, v0

    const/16 v0, 0x23

    aput-object v13, v8, v0

    const/16 v0, 0x24

    aput-object v7, v8, v0

    const/16 v0, 0x25

    aput-object v9, v8, v0

    const/16 v0, 0x26

    aput-object v10, v8, v0

    const/16 v0, 0x27

    aput-object v11, v8, v0

    const/16 v0, 0x28

    aput-object v12, v8, v0

    const/16 v0, 0x29

    aput-object v31, v8, v0

    const/16 v0, 0x2a

    aput-object v61, v8, v0

    const/16 v0, 0x2b

    aput-object v50, v8, v0

    const/16 v0, 0x2c

    aput-object v51, v8, v0

    const/16 v0, 0x2d

    aput-object v43, v8, v0

    const/16 v0, 0x2e

    aput-object v52, v8, v0

    const/16 v0, 0x2f

    aput-object v53, v8, v0

    const/16 v0, 0x30

    aput-object v54, v8, v0

    const/16 v0, 0x31

    aput-object v55, v8, v0

    const/16 v0, 0x32

    aput-object v56, v8, v0

    const/16 v0, 0x33

    aput-object v57, v8, v0

    const/16 v0, 0x34

    aput-object v44, v8, v0

    const/16 v0, 0x35

    aput-object v45, v8, v0

    const/16 v0, 0x36

    aput-object v46, v8, v0

    const/16 v0, 0x37

    aput-object v48, v8, v0

    const/16 v0, 0x38

    aput-object v49, v8, v0

    const/16 v0, 0x39

    aput-object v58, v8, v0

    const/16 v0, 0x3a

    aput-object v59, v8, v0

    const/16 v0, 0x3b

    aput-object v60, v8, v0

    const/16 v0, 0x3c

    aput-object v67, v8, v0

    const/16 v0, 0x3d

    aput-object v68, v8, v0

    const/16 v0, 0x3e

    aput-object v69, v8, v0

    const/16 v0, 0x3f

    aput-object v70, v8, v0

    const/16 v0, 0x40

    aput-object v47, v8, v0

    sput-object v8, Lb1/n;->r0:[Lb1/n;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILb1/n$a;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb1/n$a;",
            "I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lb1/n;->a:Lb1/n$a;

    iput p4, p0, Lb1/n;->b:I

    iput-object p5, p0, Lb1/n;->c:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lb1/n;
    .locals 1

    const-class v0, Lb1/n;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lb1/n;

    return-object p0
.end method

.method public static values()[Lb1/n;
    .locals 1

    sget-object v0, Lb1/n;->r0:[Lb1/n;

    invoke-virtual {v0}, [Lb1/n;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb1/n;

    return-object v0
.end method


# virtual methods
.method public a()Lb1/n$a;
    .locals 1

    iget-object v0, p0, Lb1/n;->a:Lb1/n$a;

    return-object v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lb1/n;->b:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lb1/n;->c:Ljava/lang/String;

    return-object v0
.end method
