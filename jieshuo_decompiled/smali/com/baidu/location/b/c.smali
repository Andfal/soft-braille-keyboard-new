.class public Lcom/baidu/location/b/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/location/b/c$c;,
        Lcom/baidu/location/b/c$b;,
        Lcom/baidu/location/b/c$a;
    }
.end annotation


# static fields
.field private static i:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static r:[C


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Lcom/baidu/location/b/c$b;

.field private d:Landroid/content/Context;

.field private e:Landroid/telephony/TelephonyManager;

.field private f:Lcom/baidu/location/c/a;

.field private g:Landroid/net/wifi/WifiManager;

.field private h:Lcom/baidu/location/b/c$c;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Lcom/baidu/location/LocationClientOption;

.field private m:Lcom/baidu/location/b/c$a;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Z

.field private s:J

.field private t:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_."

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/baidu/location/b/c;->r:[C

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/baidu/location/LocationClientOption;Lcom/baidu/location/b/c$a;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/b/c;->d:Landroid/content/Context;

    iput-object v0, p0, Lcom/baidu/location/b/c;->e:Landroid/telephony/TelephonyManager;

    new-instance v1, Lcom/baidu/location/c/a;

    invoke-direct {v1}, Lcom/baidu/location/c/a;-><init>()V

    iput-object v1, p0, Lcom/baidu/location/b/c;->f:Lcom/baidu/location/c/a;

    iput-object v0, p0, Lcom/baidu/location/b/c;->g:Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/baidu/location/b/c;->h:Lcom/baidu/location/b/c$c;

    iput-object v0, p0, Lcom/baidu/location/b/c;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/location/b/c;->k:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/location/b/c;->n:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/location/b/c;->o:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/location/b/c;->p:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/location/b/c;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/location/b/c;->b:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/baidu/location/b/c;->q:Z

    new-instance v2, Lcom/baidu/location/b/c$b;

    invoke-direct {v2, p0}, Lcom/baidu/location/b/c$b;-><init>(Lcom/baidu/location/b/c;)V

    iput-object v2, p0, Lcom/baidu/location/b/c;->c:Lcom/baidu/location/b/c$b;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/baidu/location/b/c;->s:J

    iput-boolean v1, p0, Lcom/baidu/location/b/c;->t:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/location/b/c;->d:Landroid/content/Context;

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/baidu/location/e/k;->ax:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/baidu/location/b/c;->q:Z

    new-instance v1, Lcom/baidu/location/LocationClientOption;

    invoke-direct {v1, p2}, Lcom/baidu/location/LocationClientOption;-><init>(Lcom/baidu/location/LocationClientOption;)V

    iput-object v1, p0, Lcom/baidu/location/b/c;->l:Lcom/baidu/location/LocationClientOption;

    iput-object p3, p0, Lcom/baidu/location/b/c;->m:Lcom/baidu/location/b/c$a;

    iget-object p3, p0, Lcom/baidu/location/b/c;->d:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/baidu/location/b/c;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/location/b/c;->b:Ljava/lang/String;

    :try_start_1
    iget-object p3, p0, Lcom/baidu/location/b/c;->d:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {p3, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/telephony/TelephonyManager;

    iput-object p3, p0, Lcom/baidu/location/b/c;->e:Landroid/telephony/TelephonyManager;

    iget-object p3, p0, Lcom/baidu/location/b/c;->d:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    const-string v1, "wifi"

    invoke-virtual {p3, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/net/wifi/WifiManager;

    iput-object p3, p0, Lcom/baidu/location/b/c;->g:Landroid/net/wifi/WifiManager;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "&"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/baidu/location/b/c;->a:Ljava/lang/String;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/baidu/location/b/c;->k:Ljava/lang/String;

    :try_start_2
    iget-object p3, p0, Lcom/baidu/location/b/c;->d:Landroid/content/Context;

    invoke-static {p3}, Lcom/baidu/android/bbalbs/common/util/CommonParam;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/baidu/location/b/c;->b:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    iput-object v0, p0, Lcom/baidu/location/b/c;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/location/b/c;->e:Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/baidu/location/b/c;->g:Landroid/net/wifi/WifiManager;

    :goto_0
    iget-object p3, p0, Lcom/baidu/location/b/c;->b:Ljava/lang/String;

    const-string v1, ""

    const-string v2, "&coor="

    const-string v3, "&prod="

    const-string v4, ":"

    if-eqz p3, :cond_0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/baidu/location/b/c;->b:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    sput-object p3, Lcom/baidu/location/e/k;->o:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/baidu/location/b/c;->l:Lcom/baidu/location/LocationClientOption;

    iget-object v0, v0, Lcom/baidu/location/LocationClientOption;->prodName:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/baidu/location/b/c;->a:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "|&cu="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/baidu/location/b/c;->b:Ljava/lang/String;

    goto :goto_1

    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/baidu/location/b/c;->l:Lcom/baidu/location/LocationClientOption;

    iget-object v3, v3, Lcom/baidu/location/LocationClientOption;->prodName:Ljava/lang/String;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/baidu/location/b/c;->a:Ljava/lang/String;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "|&im="

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/baidu/location/LocationClientOption;->getCoorType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/baidu/location/b/c;->j:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuffer;

    const/16 v0, 0x100

    invoke-direct {p3, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v0, "&fw="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "7.93"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "&sdk="

    invoke-virtual {p3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "&lt=1"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "&mb="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "&resid="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "12"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Lcom/baidu/location/LocationClientOption;->getAddrType()Ljava/lang/String;

    invoke-virtual {p2}, Lcom/baidu/location/LocationClientOption;->getAddrType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/baidu/location/LocationClientOption;->getAddrType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "all"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/baidu/location/b/c;->j:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&addr=allj"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/b/c;->j:Ljava/lang/String;

    iget-boolean v0, p2, Lcom/baidu/location/LocationClientOption;->isNeedNewVersionRgc:Z

    if-eqz v0, :cond_1

    const-string v0, "&adtp=n2"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    iget-boolean v0, p2, Lcom/baidu/location/LocationClientOption;->isNeedAptag:Z

    if-eq v0, p1, :cond_2

    iget-boolean v0, p2, Lcom/baidu/location/LocationClientOption;->isNeedAptagd:Z

    if-ne v0, p1, :cond_5

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/baidu/location/b/c;->j:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&sema="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/b/c;->j:Ljava/lang/String;

    iget-boolean v0, p2, Lcom/baidu/location/LocationClientOption;->isNeedAptag:Z

    if-ne v0, p1, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/baidu/location/b/c;->j:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "aptag|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/b/c;->j:Ljava/lang/String;

    :cond_3
    iget-boolean p2, p2, Lcom/baidu/location/LocationClientOption;->isNeedAptagd:Z

    if-ne p2, p1, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/baidu/location/b/c;->j:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "aptagd|"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/location/b/c;->j:Ljava/lang/String;

    :cond_4
    iget-object p1, p0, Lcom/baidu/location/b/c;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/baidu/location/a/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/location/b/c;->o:Ljava/lang/String;

    iget-object p1, p0, Lcom/baidu/location/b/c;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/baidu/location/a/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/location/b/c;->p:Ljava/lang/String;

    :cond_5
    const-string p1, "&first=1"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "&os=A"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object p1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/baidu/location/b/c;->j:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/location/b/c;->j:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/baidu/location/b/c;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_6

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_7

    const-string p2, "020000000000"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/baidu/location/b/c;->j:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "&mac="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/location/b/c;->j:Ljava/lang/String;

    :cond_7
    invoke-virtual {p0}, Lcom/baidu/location/b/c;->b()Ljava/lang/String;

    return-void
.end method

.method private a(I)I
    .locals 1

    const v0, 0x7fffffff

    if-ne p1, v0, :cond_0

    const/4 p1, -0x1

    :cond_0
    return p1
.end method

.method private a(Landroid/telephony/CellInfo;)Lcom/baidu/location/c/a;
    .locals 9

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x11

    if-ge v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v1, Lcom/baidu/location/c/a;

    invoke-direct {v1}, Lcom/baidu/location/c/a;-><init>()V

    instance-of v2, p1, Landroid/telephony/CellInfoGsm;

    const/4 v3, 0x1

    const/16 v4, 0x67

    if-eqz v2, :cond_1

    move-object v2, p1

    check-cast v2, Landroid/telephony/CellInfoGsm;

    invoke-virtual {v2}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/CellIdentityGsm;->getMcc()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/baidu/location/b/c;->a(I)I

    move-result v6

    iput v6, v1, Lcom/baidu/location/c/a;->c:I

    invoke-virtual {v5}, Landroid/telephony/CellIdentityGsm;->getMnc()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/baidu/location/b/c;->a(I)I

    move-result v6

    iput v6, v1, Lcom/baidu/location/c/a;->d:I

    invoke-virtual {v5}, Landroid/telephony/CellIdentityGsm;->getLac()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/baidu/location/b/c;->a(I)I

    move-result v6

    iput v6, v1, Lcom/baidu/location/c/a;->a:I

    invoke-virtual {v5}, Landroid/telephony/CellIdentityGsm;->getCid()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/baidu/location/b/c;->a(I)I

    move-result v5

    iput v5, v1, Lcom/baidu/location/c/a;->b:I

    iput-char v4, v1, Lcom/baidu/location/c/a;->i:C

    invoke-virtual {v2}, Landroid/telephony/CellInfoGsm;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthGsm;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/CellSignalStrengthGsm;->getAsuLevel()I

    move-result v2

    :goto_0
    iput v2, v1, Lcom/baidu/location/c/a;->h:I

    goto/16 :goto_3

    :cond_1
    instance-of v2, p1, Landroid/telephony/CellInfoCdma;

    const/4 v5, 0x0

    if-eqz v2, :cond_5

    move-object v2, p1

    check-cast v2, Landroid/telephony/CellInfoCdma;

    invoke-virtual {v2}, Landroid/telephony/CellInfoCdma;->getCellIdentity()Landroid/telephony/CellIdentityCdma;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/CellIdentityCdma;->getLatitude()I

    move-result v7

    iput v7, v1, Lcom/baidu/location/c/a;->e:I

    invoke-virtual {v6}, Landroid/telephony/CellIdentityCdma;->getLongitude()I

    move-result v7

    iput v7, v1, Lcom/baidu/location/c/a;->f:I

    invoke-virtual {v6}, Landroid/telephony/CellIdentityCdma;->getSystemId()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/baidu/location/b/c;->a(I)I

    move-result v7

    iput v7, v1, Lcom/baidu/location/c/a;->d:I

    invoke-virtual {v6}, Landroid/telephony/CellIdentityCdma;->getNetworkId()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/baidu/location/b/c;->a(I)I

    move-result v7

    iput v7, v1, Lcom/baidu/location/c/a;->a:I

    invoke-virtual {v6}, Landroid/telephony/CellIdentityCdma;->getBasestationId()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/baidu/location/b/c;->a(I)I

    move-result v6

    iput v6, v1, Lcom/baidu/location/c/a;->b:I

    const/16 v6, 0x63

    iput-char v6, v1, Lcom/baidu/location/c/a;->i:C

    invoke-virtual {v2}, Landroid/telephony/CellInfoCdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthCdma;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaDbm()I

    move-result v2

    iput v2, v1, Lcom/baidu/location/c/a;->h:I

    iget-object v2, p0, Lcom/baidu/location/b/c;->f:Lcom/baidu/location/c/a;

    if-eqz v2, :cond_2

    iget v2, v2, Lcom/baidu/location/c/a;->c:I

    if-lez v2, :cond_2

    :goto_1
    iput v2, v1, Lcom/baidu/location/c/a;->c:I

    goto :goto_3

    :cond_2
    const/4 v2, -0x1

    :try_start_0
    iget-object v6, p0, Lcom/baidu/location/b/c;->e:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_4

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x3

    if-lt v7, v8, :cond_4

    invoke-virtual {v6, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-gez v5, :cond_3

    goto :goto_2

    :cond_3
    move v2, v5

    goto :goto_2

    :catch_0
    nop

    :cond_4
    :goto_2
    if-lez v2, :cond_7

    goto :goto_1

    :cond_5
    instance-of v2, p1, Landroid/telephony/CellInfoLte;

    if-eqz v2, :cond_6

    move-object v2, p1

    check-cast v2, Landroid/telephony/CellInfoLte;

    invoke-virtual {v2}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/CellIdentityLte;->getMcc()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/baidu/location/b/c;->a(I)I

    move-result v6

    iput v6, v1, Lcom/baidu/location/c/a;->c:I

    invoke-virtual {v5}, Landroid/telephony/CellIdentityLte;->getMnc()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/baidu/location/b/c;->a(I)I

    move-result v6

    iput v6, v1, Lcom/baidu/location/c/a;->d:I

    invoke-virtual {v5}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/baidu/location/b/c;->a(I)I

    move-result v6

    iput v6, v1, Lcom/baidu/location/c/a;->a:I

    invoke-virtual {v5}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/baidu/location/b/c;->a(I)I

    move-result v5

    iput v5, v1, Lcom/baidu/location/c/a;->b:I

    iput-char v4, v1, Lcom/baidu/location/c/a;->i:C

    invoke-virtual {v2}, Landroid/telephony/CellInfoLte;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/CellSignalStrengthLte;->getAsuLevel()I

    move-result v2

    goto/16 :goto_0

    :cond_6
    const/4 v3, 0x0

    :cond_7
    :goto_3
    const/16 v2, 0x12

    if-lt v0, v2, :cond_8

    if-nez v3, :cond_8

    :try_start_1
    instance-of v0, p1, Landroid/telephony/CellInfoWcdma;

    if-eqz v0, :cond_8

    move-object v0, p1

    check-cast v0, Landroid/telephony/CellInfoWcdma;

    invoke-virtual {v0}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/CellIdentityWcdma;->getMcc()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/baidu/location/b/c;->a(I)I

    move-result v2

    iput v2, v1, Lcom/baidu/location/c/a;->c:I

    invoke-virtual {v0}, Landroid/telephony/CellIdentityWcdma;->getMnc()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/baidu/location/b/c;->a(I)I

    move-result v2

    iput v2, v1, Lcom/baidu/location/c/a;->d:I

    invoke-virtual {v0}, Landroid/telephony/CellIdentityWcdma;->getLac()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/baidu/location/b/c;->a(I)I

    move-result v2

    iput v2, v1, Lcom/baidu/location/c/a;->a:I

    invoke-virtual {v0}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/baidu/location/b/c;->a(I)I

    move-result v0

    iput v0, v1, Lcom/baidu/location/c/a;->b:I

    iput-char v4, v1, Lcom/baidu/location/c/a;->i:C

    move-object v0, p1

    check-cast v0, Landroid/telephony/CellInfoWcdma;

    invoke-virtual {v0}, Landroid/telephony/CellInfoWcdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthWcdma;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthWcdma;->getAsuLevel()I

    move-result v0

    iput v0, v1, Lcom/baidu/location/c/a;->h:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_8
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/telephony/CellInfo;->getTimeStamp()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    iput-wide v4, v1, Lcom/baidu/location/c/a;->g:J
    :try_end_2
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/baidu/location/c/a;->g:J

    :goto_4
    return-object v1
.end method

.method static synthetic a(Lcom/baidu/location/b/c;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/baidu/location/b/c;->o:Ljava/lang/String;

    return-object p0
.end method

.method private a(Landroid/telephony/CellLocation;)V
    .locals 6

    if-eqz p1, :cond_d

    iget-object v0, p0, Lcom/baidu/location/b/c;->e:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    new-instance v0, Lcom/baidu/location/c/a;

    invoke-direct {v0}, Lcom/baidu/location/c/a;-><init>()V

    iget-object v1, p0, Lcom/baidu/location/b/c;->e:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_6

    :try_start_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-lt v2, v4, :cond_2

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gez v2, :cond_1

    iget-object v2, p0, Lcom/baidu/location/b/c;->f:Lcom/baidu/location/c/a;

    iget v2, v2, Lcom/baidu/location/c/a;->c:I

    :cond_1
    iput v2, v0, Lcom/baidu/location/c/a;->c:I

    :cond_2
    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const/4 v4, 0x0

    :goto_0
    array-length v5, v2

    if-ge v4, v5, :cond_4

    aget-char v5, v2, v4

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gez v1, :cond_5

    iget-object v1, p0, Lcom/baidu/location/b/c;->f:Lcom/baidu/location/c/a;

    iget v1, v1, Lcom/baidu/location/c/a;->d:I

    :cond_5
    iput v1, v0, Lcom/baidu/location/c/a;->d:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    nop

    :cond_6
    :goto_2
    instance-of v1, p1, Landroid/telephony/gsm/GsmCellLocation;

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    check-cast p1, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v1

    iput v1, v0, Lcom/baidu/location/c/a;->a:I

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result p1

    iput p1, v0, Lcom/baidu/location/c/a;->b:I

    const/16 p1, 0x67

    iput-char p1, v0, Lcom/baidu/location/c/a;->i:C

    goto :goto_4

    :cond_7
    instance-of v1, p1, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v1, :cond_b

    const/16 v1, 0x63

    iput-char v1, v0, Lcom/baidu/location/c/a;->i:C

    sget-object v1, Lcom/baidu/location/b/c;->i:Ljava/lang/Class;

    if-nez v1, :cond_8

    :try_start_1
    const-string v1, "android.telephony.cdma.CdmaCellLocation"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/baidu/location/b/c;->i:Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    sput-object v2, Lcom/baidu/location/b/c;->i:Ljava/lang/Class;

    return-void

    :cond_8
    :goto_3
    sget-object v1, Lcom/baidu/location/b/c;->i:Ljava/lang/Class;

    if-eqz v1, :cond_b

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    :try_start_2
    move-object v1, p1

    check-cast v1, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v1}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v1

    if-gez v1, :cond_9

    const/4 v1, -0x1

    :cond_9
    iput v1, v0, Lcom/baidu/location/c/a;->d:I

    move-object v1, p1

    check-cast v1, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v1

    iput v1, v0, Lcom/baidu/location/c/a;->b:I

    move-object v1, p1

    check-cast v1, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v1}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v1

    iput v1, v0, Lcom/baidu/location/c/a;->a:I

    move-object v1, p1

    check-cast v1, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLatitude()I

    move-result v1

    const v3, 0x7fffffff

    if-ge v1, v3, :cond_a

    iput v1, v0, Lcom/baidu/location/c/a;->e:I

    :cond_a
    check-cast p1, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLongitude()I

    move-result p1

    if-ge p1, v3, :cond_b

    iput p1, v0, Lcom/baidu/location/c/a;->f:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_2
    nop

    :cond_b
    :goto_4
    invoke-virtual {v0}, Lcom/baidu/location/c/a;->b()Z

    move-result p1

    if-eqz p1, :cond_c

    iput-object v0, p0, Lcom/baidu/location/b/c;->f:Lcom/baidu/location/c/a;

    goto :goto_5

    :cond_c
    iput-object v2, p0, Lcom/baidu/location/b/c;->f:Lcom/baidu/location/c/a;

    :cond_d
    :goto_5
    return-void
.end method

.method static synthetic a(Lcom/baidu/location/b/c;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/location/b/c;->t:Z

    return p1
.end method

.method private b(I)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/baidu/location/b/c;->d()Lcom/baidu/location/c/a;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/baidu/location/c/a;->b()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lcom/baidu/location/b/c;->f:Lcom/baidu/location/c/a;

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/baidu/location/b/c;->e:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/baidu/location/b/c;->a(Landroid/telephony/CellLocation;)V

    :goto_1
    iget-object v1, p0, Lcom/baidu/location/b/c;->f:Lcom/baidu/location/c/a;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/baidu/location/c/a;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/baidu/location/b/c;->f:Lcom/baidu/location/c/a;

    invoke-virtual {v1}, Lcom/baidu/location/c/a;->g()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_2
    move-object v1, v0

    :goto_2
    :try_start_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/baidu/location/b/c;->f:Lcom/baidu/location/c/a;

    if-eqz v2, :cond_3

    iget-object v2, v2, Lcom/baidu/location/c/a;->k:Ljava/lang/String;

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/baidu/location/b/c;->f:Lcom/baidu/location/c/a;

    iget-object v3, v3, Lcom/baidu/location/c/a;->k:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_0
    move-object v1, v0

    :catchall_1
    :cond_3
    :goto_3
    :try_start_2
    iput-object v0, p0, Lcom/baidu/location/b/c;->h:Lcom/baidu/location/b/c$c;

    new-instance v2, Lcom/baidu/location/b/c$c;

    iget-object v3, p0, Lcom/baidu/location/b/c;->g:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/baidu/location/b/c$c;-><init>(Lcom/baidu/location/b/c;Ljava/util/List;)V

    iput-object v2, p0, Lcom/baidu/location/b/c;->h:Lcom/baidu/location/b/c$c;

    invoke-direct {p0}, Lcom/baidu/location/b/c;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lcom/baidu/location/b/c$c;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    nop

    move-object p1, v0

    :goto_4
    if-nez v1, :cond_4

    if-nez p1, :cond_4

    iput-object v0, p0, Lcom/baidu/location/b/c;->n:Ljava/lang/String;

    return-object v0

    :cond_4
    if-eqz p1, :cond_6

    if-nez v1, :cond_5

    move-object v1, p1

    goto :goto_5

    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_6
    :goto_5
    if-nez v1, :cond_7

    return-object v0

    :cond_7
    iput-object v1, p0, Lcom/baidu/location/b/c;->n:Ljava/lang/String;

    iget-object p1, p0, Lcom/baidu/location/b/c;->j:Ljava/lang/String;

    if-eqz p1, :cond_8

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/baidu/location/b/c;->n:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/baidu/location/b/c;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/location/b/c;->n:Ljava/lang/String;

    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/baidu/location/b/c;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic b(Lcom/baidu/location/b/c;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/baidu/location/b/c;->p:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/baidu/location/b/c;)Lcom/baidu/location/LocationClientOption;
    .locals 0

    iget-object p0, p0, Lcom/baidu/location/b/c;->l:Lcom/baidu/location/LocationClientOption;

    return-object p0
.end method

.method static synthetic d(Lcom/baidu/location/b/c;)Lcom/baidu/location/b/c$a;
    .locals 0

    iget-object p0, p0, Lcom/baidu/location/b/c;->m:Lcom/baidu/location/b/c$a;

    return-object p0
.end method

.method private d()Lcom/baidu/location/c/a;
    .locals 6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x11

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return-object v2

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/baidu/location/b/c;->e:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_7

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v1, v2

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/CellInfo;

    invoke-virtual {v3}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v1, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    invoke-direct {p0, v3}, Lcom/baidu/location/b/c;->a(Landroid/telephony/CellInfo;)Lcom/baidu/location/c/a;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Lcom/baidu/location/c/a;->b()Z

    move-result v5

    if-nez v5, :cond_4

    move-object v3, v2

    goto :goto_2

    :cond_4
    if-eqz v4, :cond_5

    if-eqz v1, :cond_5

    invoke-virtual {v3}, Lcom/baidu/location/c/a;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/baidu/location/c/a;->k:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :cond_5
    :goto_2
    if-nez v1, :cond_1

    move-object v1, v3

    goto :goto_0

    :cond_6
    move-object v2, v1

    :catchall_0
    :cond_7
    return-object v2
.end method

.method private e()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/baidu/location/b/c;->g:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    :try_start_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v2, ":"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_3

    return-object v1

    :cond_3
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    return-object v1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/baidu/location/b/c;->g:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const/16 v0, 0xf

    :try_start_0
    invoke-direct {p0, v0}, Lcom/baidu/location/b/c;->b(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/location/b/c;->n:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/baidu/location/b/c;->q:Z

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/baidu/location/b/c;->c:Lcom/baidu/location/b/c$b;

    invoke-virtual {v1, v0}, Lcom/baidu/location/b/c$b;->a(Ljava/lang/String;)V

    return-void
.end method
