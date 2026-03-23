.class public final Lcom/vivo/speechsdk/module/net/utils/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "com.vivo.speechsdk"

.field public static final b:Ljava/lang/String; = "speechsdk_oversea_asr_key"

.field public static final c:Ljava/lang/String; = "speechsdk_oversea_tts_key"

.field public static final d:Ljava/lang/String; = "api-ai.vivo.com.cn"

.field public static final e:Ljava/lang/String; = "api-ai.vivo.com.cn"

.field public static final f:Ljava/lang/String; = "api-ai.vivo.com.cn"

.field public static final g:Ljava/lang/String; = "api-ai.vivo.com.cn"

.field public static final h:Ljava/lang/String; = "in-asr-v2.vivoglobal.com"

.field public static final i:Ljava/lang/String; = "asia-asr-v2.vivoglobal.com"

.field private static j:Lcom/vivo/speechsdk/module/net/utils/f; = null

.field private static k:Ljava/lang/String; = "in-asr-v2.vivoglobal.com"

.field private static l:Ljava/lang/String; = "xxx"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lcom/vivo/speechsdk/module/net/utils/f;
    .locals 2

    sget-object v0, Lcom/vivo/speechsdk/module/net/utils/f;->j:Lcom/vivo/speechsdk/module/net/utils/f;

    if-nez v0, :cond_1

    const-class v0, Lcom/vivo/speechsdk/module/net/utils/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/vivo/speechsdk/module/net/utils/f;->j:Lcom/vivo/speechsdk/module/net/utils/f;

    if-nez v1, :cond_0

    new-instance v1, Lcom/vivo/speechsdk/module/net/utils/f;

    invoke-direct {v1}, Lcom/vivo/speechsdk/module/net/utils/f;-><init>()V

    sput-object v1, Lcom/vivo/speechsdk/module/net/utils/f;->j:Lcom/vivo/speechsdk/module/net/utils/f;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/vivo/speechsdk/module/net/utils/f;->j:Lcom/vivo/speechsdk/module/net/utils/f;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/vivo/speechsdk/module/net/utils/f;->k:Ljava/lang/String;

    return-object v0
.end method

.method public a(Landroid/content/Context;)V
    .locals 3

    invoke-static {}, Lcom/vivo/speechsdk/common/utils/DeviceUtils;->isOversea()Z

    move-result v0

    const-string v1, "api-ai.vivo.com.cn"

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/vivo/speechsdk/module/net/utils/a;->b()Lcom/vivo/speechsdk/module/net/utils/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/vivo/speechsdk/module/net/utils/a;->a(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/vivo/speechsdk/common/utils/DeviceUtils;->getCountryCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "CN-ZH"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_1
    const-string v0, "SG"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_2
    const-string v0, "IN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_3
    const-string v0, "ID"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_4
    const-string v0, "CN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const-string p1, "in-asr-v2.vivoglobal.com"

    :goto_1
    sput-object p1, Lcom/vivo/speechsdk/module/net/utils/f;->k:Ljava/lang/String;

    goto :goto_2

    :pswitch_1
    const-string p1, "asia-asr-v2.vivoglobal.com"

    goto :goto_1

    :pswitch_2
    sput-object v1, Lcom/vivo/speechsdk/module/net/utils/f;->k:Ljava/lang/String;

    sput-object v1, Lcom/vivo/speechsdk/module/net/utils/f;->l:Ljava/lang/String;

    :goto_2
    invoke-static {}, Lcom/vivo/speechsdk/module/net/utils/a;->b()Lcom/vivo/speechsdk/module/net/utils/a;

    move-result-object p1

    sget-object v0, Lcom/vivo/speechsdk/module/net/utils/f;->k:Ljava/lang/String;

    const-string v1, "speechsdk_oversea_asr_key"

    const-string v2, "com.vivo.speechsdk"

    invoke-virtual {p1, v1, v0, v2}, Lcom/vivo/speechsdk/module/net/utils/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/vivo/speechsdk/module/net/utils/f;->k:Ljava/lang/String;

    invoke-static {}, Lcom/vivo/speechsdk/module/net/utils/a;->b()Lcom/vivo/speechsdk/module/net/utils/a;

    move-result-object p1

    sget-object v0, Lcom/vivo/speechsdk/module/net/utils/f;->l:Ljava/lang/String;

    const-string v1, "speechsdk_oversea_tts_key"

    invoke-virtual {p1, v1, v0, v2}, Lcom/vivo/speechsdk/module/net/utils/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/vivo/speechsdk/module/net/utils/f;->l:Ljava/lang/String;

    goto :goto_3

    :cond_5
    sput-object v1, Lcom/vivo/speechsdk/module/net/utils/f;->k:Ljava/lang/String;

    sput-object v1, Lcom/vivo/speechsdk/module/net/utils/f;->l:Ljava/lang/String;

    :goto_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x86b -> :sswitch_4
        0x91b -> :sswitch_3
        0x925 -> :sswitch_2
        0xa54 -> :sswitch_1
        0x3d44fd0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/vivo/speechsdk/module/net/utils/f;->l:Ljava/lang/String;

    return-object v0
.end method
