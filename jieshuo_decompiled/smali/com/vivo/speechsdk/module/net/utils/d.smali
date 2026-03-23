.class public Lcom/vivo/speechsdk/module/net/utils/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/speechsdk/module/net/utils/d$c;,
        Lcom/vivo/speechsdk/module/net/utils/d$b;
    }
.end annotation


# static fields
.field public static final A:I = 0x3e7

.field private static final B:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/vivo/speechsdk/module/net/utils/d$c;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile C:Z = false

.field private static volatile D:Z = false

.field private static volatile E:Z = false

.field private static F:Lcom/vivo/speechsdk/module/net/utils/d$b; = null

.field private static G:Lcom/vivo/speechsdk/module/api/net/NetQualityListener; = null

.field private static H:Landroid/content/Context; = null

.field private static final I:Ljava/lang/Object;

.field private static final J:Landroid/net/ConnectivityManager$NetworkCallback;

.field private static final a:Ljava/lang/String; = "NetworkState"

.field public static final b:Ljava/lang/String; = "<unknown ssid>"

.field public static final c:I = 0x0

.field public static final d:I = -0x73

.field public static final e:I = -0x6e

.field public static final f:I = -0x61

.field public static final g:I = -0x55

.field public static final h:I = -0x53

.field public static final i:I = -0x4b

.field public static final j:I = -0x3f

.field public static final k:I = -0x32

.field public static final l:I = 0x4

.field public static final m:I = 0x3

.field public static final n:I = 0x2

.field public static final o:I = 0x1

.field public static final p:I = 0x0

.field public static final q:I = 0x1

.field public static final r:I = 0x2

.field public static final s:I = 0x3

.field public static final t:I = 0x1

.field public static final u:I = 0x2

.field public static final v:I = 0x3

.field public static final w:I = 0x4

.field public static final x:I = 0x5

.field public static final y:I = 0x6

.field private static final z:I = 0x13


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/vivo/speechsdk/module/net/utils/d;->B:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/vivo/speechsdk/module/net/utils/d;->C:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/vivo/speechsdk/module/net/utils/d;->D:Z

    sput-boolean v0, Lcom/vivo/speechsdk/module/net/utils/d;->E:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/vivo/speechsdk/module/net/utils/d;->I:Ljava/lang/Object;

    new-instance v0, Lcom/vivo/speechsdk/module/net/utils/d$a;

    invoke-direct {v0}, Lcom/vivo/speechsdk/module/net/utils/d$a;-><init>()V

    sput-object v0, Lcom/vivo/speechsdk/module/net/utils/d;->J:Landroid/net/ConnectivityManager$NetworkCallback;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(I)I
    .locals 0

    invoke-static {p0}, Lcom/vivo/speechsdk/module/net/utils/d;->c(I)I

    move-result p0

    return p0
.end method

.method private static a(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .locals 1

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p0, v0}, Lcom/vivo/speechsdk/common/utils/PermissionUtils;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method static synthetic a()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    sget-object v0, Lcom/vivo/speechsdk/module/net/utils/d;->B:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic a(III)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/vivo/speechsdk/module/net/utils/d;->b(III)V

    return-void
.end method

.method public static a(Lcom/vivo/speechsdk/module/api/net/NetQualityListener;)V
    .locals 1

    sget-object v0, Lcom/vivo/speechsdk/module/net/utils/d;->I:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/vivo/speechsdk/module/net/utils/d;->G:Lcom/vivo/speechsdk/module/api/net/NetQualityListener;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static b(I)I
    .locals 2

    const/16 v0, -0x61

    if-le p0, v0, :cond_0

    const/4 p0, 0x4

    return p0

    :cond_0
    const/16 v1, -0x6e

    if-ge p0, v0, :cond_1

    if-lt p0, v1, :cond_1

    const/4 p0, 0x3

    return p0

    :cond_1
    if-ge p0, v1, :cond_2

    const/16 v0, -0x73

    if-lt p0, v0, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static b(Landroid/content/Context;)I
    .locals 3

    invoke-static {p0}, Lcom/vivo/speechsdk/module/net/utils/d;->a(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v1, v2, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    if-nez p0, :cond_3

    return v1

    :cond_3
    const/4 v1, 0x7

    if-ne p0, v1, :cond_4

    const/4 p0, 0x3

    return p0

    :cond_4
    return v0
.end method

.method static synthetic b()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/vivo/speechsdk/module/net/utils/d;->H:Landroid/content/Context;

    return-object v0
.end method

.method private static declared-synchronized b(III)V
    .locals 4

    const-class v0, Lcom/vivo/speechsdk/module/net/utils/d;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/vivo/speechsdk/module/net/utils/d;->B:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vivo/speechsdk/module/net/utils/d$c;

    invoke-static {p2}, Lcom/vivo/speechsdk/module/net/utils/d;->d(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3e7

    if-eqz p1, :cond_1

    iput-object v1, p1, Lcom/vivo/speechsdk/module/net/utils/d$c;->b:Ljava/lang/String;

    iput p2, p1, Lcom/vivo/speechsdk/module/net/utils/d$c;->c:I

    iget-object v1, p1, Lcom/vivo/speechsdk/module/net/utils/d$c;->e:Ljava/util/List;

    if-ne v2, p2, :cond_0

    invoke-static {p0}, Lcom/vivo/speechsdk/module/net/utils/d;->e(I)I

    move-result v3

    goto :goto_0

    :cond_0
    move v3, p0

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput p0, p1, Lcom/vivo/speechsdk/module/net/utils/d$c;->d:I

    const-string v1, "SignalChange"

    const/4 v3, 0x1

    invoke-virtual {p1, v3, v1}, Lcom/vivo/speechsdk/module/net/utils/d$c;->a(ZLjava/lang/String;)V

    :cond_1
    if-ne v2, p2, :cond_2

    const/16 p1, -0x4b

    goto :goto_1

    :cond_2
    const/4 p1, 0x2

    :goto_1
    sget-object p2, Lcom/vivo/speechsdk/module/net/utils/d;->I:Ljava/lang/Object;

    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v1, Lcom/vivo/speechsdk/module/net/utils/d;->G:Lcom/vivo/speechsdk/module/api/net/NetQualityListener;

    if-eqz v1, :cond_3

    if-gt p0, p1, :cond_3

    const/16 p0, 0x67

    invoke-interface {v1, p0}, Lcom/vivo/speechsdk/module/api/net/NetQualityListener;->low(I)V

    :cond_3
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static c(I)I
    .locals 1

    const/16 v0, 0x13

    if-eq p0, v0, :cond_1

    const/16 v0, 0x14

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x6

    return p0

    :pswitch_0
    const/4 p0, 0x3

    return p0

    :pswitch_1
    const/4 p0, 0x2

    return p0

    :cond_0
    const/4 p0, 0x5

    return p0

    :cond_1
    :pswitch_2
    const/4 p0, 0x4

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static c(Landroid/content/Context;)I
    .locals 3

    const/4 v0, 0x6

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lcom/vivo/speechsdk/module/net/utils/d;->n()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_2

    sget p0, Lcom/vivo/speechsdk/module/net/utils/d$b;->b:I

    :goto_0
    invoke-static {p0}, Lcom/vivo/speechsdk/module/net/utils/d;->c(I)I

    move-result p0

    return p0

    :cond_2
    invoke-static {p0}, Lcom/vivo/speechsdk/module/net/utils/d;->a(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object p0

    if-nez p0, :cond_3

    return v0

    :cond_3
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result p0

    goto :goto_0
.end method

.method static synthetic c()Lcom/vivo/speechsdk/module/net/utils/d$b;
    .locals 1

    sget-object v0, Lcom/vivo/speechsdk/module/net/utils/d;->F:Lcom/vivo/speechsdk/module/net/utils/d$b;

    return-object v0
.end method

.method public static d()I
    .locals 5

    sget-object v0, Lcom/vivo/speechsdk/module/net/utils/d;->B:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v1

    const/high16 v2, -0x80000000

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v3, Lcom/vivo/speechsdk/module/net/utils/d;->B:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vivo/speechsdk/module/net/utils/d$c;

    if-eqz v1, :cond_0

    iget v3, v1, Lcom/vivo/speechsdk/module/net/utils/d$c;->c:I

    const/16 v4, 0x3e7

    if-eq v3, v4, :cond_0

    iget v0, v1, Lcom/vivo/speechsdk/module/net/utils/d$c;->d:I

    return v0

    :cond_1
    return v2
.end method

.method public static d(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x3e7

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const-string p0, "UNKNOWN"

    return-object p0

    :pswitch_0
    const-string p0, "NR"

    return-object p0

    :pswitch_1
    const-string p0, "LTE_CA"

    return-object p0

    :pswitch_2
    const-string p0, "IWLAN"

    return-object p0

    :pswitch_3
    const-string p0, "TD_SCDMA"

    return-object p0

    :pswitch_4
    const-string p0, "GSM"

    return-object p0

    :pswitch_5
    const-string p0, "HSPA+"

    return-object p0

    :pswitch_6
    const-string p0, "CDMA - eHRPD"

    return-object p0

    :pswitch_7
    const-string p0, "LTE"

    return-object p0

    :pswitch_8
    const-string p0, "CDMA - EvDo rev. B"

    return-object p0

    :pswitch_9
    const-string p0, "iDEN"

    return-object p0

    :pswitch_a
    const-string p0, "HSPA"

    return-object p0

    :pswitch_b
    const-string p0, "HSUPA"

    return-object p0

    :pswitch_c
    const-string p0, "HSDPA"

    return-object p0

    :pswitch_d
    const-string p0, "CDMA - 1xRTT"

    return-object p0

    :pswitch_e
    const-string p0, "CDMA - EvDo rev. A"

    return-object p0

    :pswitch_f
    const-string p0, "CDMA - EvDo rev. 0"

    return-object p0

    :pswitch_10
    const-string p0, "CDMA"

    return-object p0

    :pswitch_11
    const-string p0, "UMTS"

    return-object p0

    :pswitch_12
    const-string p0, "EDGE"

    return-object p0

    :pswitch_13
    const-string p0, "GPRS"

    return-object p0

    :cond_0
    const-string p0, "WIFI"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object p0

    const-string v1, "<unknown ssid>"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "\""

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method public static e()I
    .locals 1

    sget-object v0, Lcom/vivo/speechsdk/module/net/utils/d;->H:Landroid/content/Context;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/net/utils/d;->c(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method private static e(I)I
    .locals 1

    const/16 v0, -0x3f

    if-le p0, v0, :cond_0

    const/4 p0, 0x4

    return p0

    :cond_0
    const/16 v0, -0x4b

    if-le p0, v0, :cond_1

    const/4 p0, 0x3

    return p0

    :cond_1
    const/16 v0, -0x53

    if-le p0, v0, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static e(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Lcom/vivo/speechsdk/module/net/utils/d;->a(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    return p0
.end method

.method public static f()Ljava/lang/String;
    .locals 1

    sget v0, Lcom/vivo/speechsdk/module/net/utils/d$b;->b:I

    invoke-static {v0}, Lcom/vivo/speechsdk/module/net/utils/d;->d(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static f(Landroid/content/Context;)Z
    .locals 3

    invoke-static {p0}, Lcom/vivo/speechsdk/module/net/utils/d;->b(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    sget-boolean p0, Lcom/vivo/speechsdk/module/net/utils/d;->C:Z

    return p0

    :cond_1
    invoke-static {p0}, Lcom/vivo/speechsdk/module/net/utils/d;->a(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public static g()Ljava/lang/String;
    .locals 5

    sget-object v0, Lcom/vivo/speechsdk/module/net/utils/d;->H:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v2, "android.permission.ACCESS_WIFI_STATE"

    invoke-static {v0, v2}, Lcom/vivo/speechsdk/common/utils/PermissionUtils;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1b

    if-ge v2, v3, :cond_1

    invoke-static {v0}, Lcom/vivo/speechsdk/module/net/utils/d;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/16 v3, 0x1d

    const-string v4, "android.permission.ACCESS_FINE_LOCATION"

    if-ge v2, v3, :cond_3

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v0, v2}, Lcom/vivo/speechsdk/common/utils/PermissionUtils;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    invoke-static {v0, v4}, Lcom/vivo/speechsdk/common/utils/PermissionUtils;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v2, :cond_2

    if-eqz v3, :cond_4

    :cond_2
    invoke-static {v0}, Lcom/vivo/speechsdk/module/net/utils/d;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    invoke-static {v0, v4}, Lcom/vivo/speechsdk/common/utils/PermissionUtils;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v0}, Lcom/vivo/speechsdk/module/net/utils/d;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    return-object v1
.end method

.method public static h()I
    .locals 5

    sget-object v0, Lcom/vivo/speechsdk/module/net/utils/d;->B:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v1

    const/high16 v2, -0x80000000

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v3, Lcom/vivo/speechsdk/module/net/utils/d;->B:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vivo/speechsdk/module/net/utils/d$c;

    if-eqz v1, :cond_0

    iget v3, v1, Lcom/vivo/speechsdk/module/net/utils/d$c;->c:I

    const/16 v4, 0x3e7

    if-ne v3, v4, :cond_0

    iget v0, v1, Lcom/vivo/speechsdk/module/net/utils/d$c;->d:I

    return v0

    :cond_1
    return v2
.end method

.method public static declared-synchronized i()V
    .locals 2

    const-class v0, Lcom/vivo/speechsdk/module/net/utils/d;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/vivo/speechsdk/module/net/utils/d;->E:Z

    if-nez v1, :cond_0

    invoke-static {}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getInstance()Lcom/vivo/speechsdk/common/module/ModuleManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getSpeechContext()Lcom/vivo/speechsdk/b/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vivo/speechsdk/b/c;->b()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/vivo/speechsdk/module/net/utils/d;->H:Landroid/content/Context;

    invoke-static {}, Lcom/vivo/speechsdk/module/net/utils/d;->q()V

    invoke-static {}, Lcom/vivo/speechsdk/module/net/utils/d;->p()V

    const/4 v1, 0x1

    sput-boolean v1, Lcom/vivo/speechsdk/module/net/utils/d;->E:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static j()Z
    .locals 2

    invoke-static {}, Lcom/vivo/speechsdk/module/net/utils/d;->d()I

    move-result v0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/vivo/speechsdk/module/net/utils/d;->k()Z

    move-result v0

    return v0
.end method

.method public static k()Z
    .locals 1

    sget-object v0, Lcom/vivo/speechsdk/module/net/utils/d;->H:Landroid/content/Context;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/net/utils/d;->e(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static l()Z
    .locals 1

    sget-object v0, Lcom/vivo/speechsdk/module/net/utils/d;->B:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static m()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_2

    invoke-static {}, Lcom/vivo/speechsdk/module/net/utils/d;->h()I

    move-result v0

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/vivo/speechsdk/module/net/utils/d;->j()Z

    move-result v0

    return v0

    :cond_0
    const/16 v1, -0x4b

    if-le v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    invoke-static {}, Lcom/vivo/speechsdk/module/net/utils/d;->k()Z

    move-result v0

    return v0
.end method

.method public static n()Z
    .locals 2

    invoke-static {}, Lcom/vivo/speechsdk/module/net/utils/d;->h()I

    move-result v0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static o()Z
    .locals 3

    invoke-static {}, Lcom/vivo/speechsdk/module/net/utils/d;->h()I

    move-result v0

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    const/16 v1, -0x4b

    if-le v0, v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private static p()V
    .locals 3

    sget-object v0, Lcom/vivo/speechsdk/module/net/utils/d;->H:Landroid/content/Context;

    if-eqz v0, :cond_0

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v0, v1}, Lcom/vivo/speechsdk/common/utils/PermissionUtils;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    sget-object v2, Lcom/vivo/speechsdk/module/net/utils/d;->J:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    :cond_0
    return-void
.end method

.method private static q()V
    .locals 3

    sget-object v0, Lcom/vivo/speechsdk/module/net/utils/d;->H:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_1

    new-instance v1, Lcom/vivo/speechsdk/module/net/utils/d$b;

    invoke-static {}, Lcom/vivo/speechsdk/common/thread/a;->a()Lcom/vivo/speechsdk/common/thread/a;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/vivo/speechsdk/module/net/utils/d$b;-><init>(Ljava/util/concurrent/Executor;)V

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/vivo/speechsdk/module/net/utils/d$b;

    invoke-direct {v1}, Lcom/vivo/speechsdk/module/net/utils/d$b;-><init>()V

    :goto_0
    sput-object v1, Lcom/vivo/speechsdk/module/net/utils/d;->F:Lcom/vivo/speechsdk/module/net/utils/d$b;

    sget-object v1, Lcom/vivo/speechsdk/module/net/utils/d;->F:Lcom/vivo/speechsdk/module/net/utils/d$b;

    const/16 v2, 0x140

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method public static declared-synchronized r()V
    .locals 5

    const-class v0, Lcom/vivo/speechsdk/module/net/utils/d;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/vivo/speechsdk/module/net/utils/d;->E:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/vivo/speechsdk/module/net/utils/d;->t()V

    invoke-static {}, Lcom/vivo/speechsdk/module/net/utils/d;->s()V

    const/4 v1, 0x0

    sput-boolean v1, Lcom/vivo/speechsdk/module/net/utils/d;->E:Z

    :cond_0
    sget-object v1, Lcom/vivo/speechsdk/module/net/utils/d;->B:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v3, Lcom/vivo/speechsdk/module/net/utils/d;->B:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vivo/speechsdk/module/net/utils/d$c;

    if-eqz v2, :cond_1

    const-string v3, "release"

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v3}, Lcom/vivo/speechsdk/module/net/utils/d$c;->a(ZLjava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/vivo/speechsdk/module/net/utils/d;->B:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    :cond_3
    const/4 v1, 0x0

    sput-object v1, Lcom/vivo/speechsdk/module/net/utils/d;->H:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static s()V
    .locals 3

    sget-object v0, Lcom/vivo/speechsdk/module/net/utils/d;->H:Landroid/content/Context;

    if-eqz v0, :cond_0

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v0, v1}, Lcom/vivo/speechsdk/common/utils/PermissionUtils;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v1, Lcom/vivo/speechsdk/module/net/utils/d;->J:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterNetworkCallback fatal ! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkState"

    invoke-static {v1, v0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private static t()V
    .locals 3

    sget-object v0, Lcom/vivo/speechsdk/module/net/utils/d;->F:Lcom/vivo/speechsdk/module/net/utils/d$b;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/vivo/speechsdk/module/net/utils/d;->H:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sget-object v1, Lcom/vivo/speechsdk/module/net/utils/d;->F:Lcom/vivo/speechsdk/module/net/utils/d$b;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_1
    return-void
.end method
