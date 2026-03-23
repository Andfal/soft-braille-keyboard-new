.class public Lcom/baidu/location/c/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/location/c/e$d;,
        Lcom/baidu/location/c/e$b;,
        Lcom/baidu/location/c/e$a;,
        Lcom/baidu/location/c/e$c;,
        Lcom/baidu/location/c/e$e;
    }
.end annotation


# static fields
.field private static C:Ljava/lang/String; = null

.field private static G:D = 100.0

.field public static a:Ljava/lang/String; = ""

.field public static b:Ljava/lang/String; = ""

.field private static c:Lcom/baidu/location/c/e;

.field private static p:I

.field private static q:I

.field private static r:I

.field private static s:J


# instance fields
.field private A:D

.field private B:D

.field private D:Landroid/os/Handler;

.field private E:I

.field private F:I

.field private H:J

.field private I:J

.field private J:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field private K:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field private d:Landroid/content/Context;

.field private e:Landroid/location/LocationManager;

.field private f:Landroid/location/Location;

.field private g:Lcom/baidu/location/c/e$c;

.field private h:Lcom/baidu/location/c/e$e;

.field private i:Landroid/location/GpsStatus;

.field private j:Lcom/baidu/location/c/e$a;

.field private k:Z

.field private l:Lcom/baidu/location/c/e$b;

.field private m:Z

.field private n:Lcom/baidu/location/c/e$d;

.field private o:Landroid/location/OnNmeaMessageListener;

.field private t:J

.field private u:Z

.field private v:Z

.field private w:Ljava/lang/String;

.field private x:Z

.field private y:J

.field private z:D


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/c/e;->e:Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/baidu/location/c/e;->g:Lcom/baidu/location/c/e$c;

    iput-object v0, p0, Lcom/baidu/location/c/e;->h:Lcom/baidu/location/c/e$e;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/baidu/location/c/e;->k:Z

    iput-object v0, p0, Lcom/baidu/location/c/e;->l:Lcom/baidu/location/c/e$b;

    iput-boolean v1, p0, Lcom/baidu/location/c/e;->m:Z

    iput-object v0, p0, Lcom/baidu/location/c/e;->n:Lcom/baidu/location/c/e$d;

    iput-object v0, p0, Lcom/baidu/location/c/e;->o:Landroid/location/OnNmeaMessageListener;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/baidu/location/c/e;->t:J

    iput-boolean v1, p0, Lcom/baidu/location/c/e;->u:Z

    iput-boolean v1, p0, Lcom/baidu/location/c/e;->v:Z

    iput-object v0, p0, Lcom/baidu/location/c/e;->w:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/baidu/location/c/e;->x:Z

    iput-wide v2, p0, Lcom/baidu/location/c/e;->y:J

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    iput-wide v4, p0, Lcom/baidu/location/c/e;->z:D

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/baidu/location/c/e;->A:D

    iput-wide v4, p0, Lcom/baidu/location/c/e;->B:D

    iput-object v0, p0, Lcom/baidu/location/c/e;->D:Landroid/os/Handler;

    iput-wide v2, p0, Lcom/baidu/location/c/e;->H:J

    iput-wide v2, p0, Lcom/baidu/location/c/e;->I:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/c/e;->J:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/c/e;->K:Ljava/util/ArrayList;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v0, v2, :cond_0

    :try_start_0
    const-string v0, "android.location.GnssStatus"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/c/e;->k:Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iput-boolean v1, p0, Lcom/baidu/location/c/e;->k:Z

    :cond_0
    :goto_0
    iput-boolean v1, p0, Lcom/baidu/location/c/e;->m:Z

    return-void
.end method

.method static synthetic a(D)D
    .locals 0

    sput-wide p0, Lcom/baidu/location/c/e;->G:D

    return-wide p0
.end method

.method static synthetic a(I)I
    .locals 0

    sput p0, Lcom/baidu/location/c/e;->p:I

    return p0
.end method

.method static synthetic a(Lcom/baidu/location/c/e;I)I
    .locals 0

    iput p1, p0, Lcom/baidu/location/c/e;->E:I

    return p1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/Character;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method static synthetic a(J)J
    .locals 0

    sput-wide p0, Lcom/baidu/location/c/e;->s:J

    return-wide p0
.end method

.method static synthetic a(Lcom/baidu/location/c/e;J)J
    .locals 0

    iput-wide p1, p0, Lcom/baidu/location/c/e;->t:J

    return-wide p1
.end method

.method static synthetic a(Lcom/baidu/location/c/e;Landroid/location/GpsStatus;)Landroid/location/GpsStatus;
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/c/e;->i:Landroid/location/GpsStatus;

    return-object p1
.end method

.method public static declared-synchronized a()Lcom/baidu/location/c/e;
    .locals 2

    const-class v0, Lcom/baidu/location/c/e;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/baidu/location/c/e;->c:Lcom/baidu/location/c/e;

    if-nez v1, :cond_0

    new-instance v1, Lcom/baidu/location/c/e;

    invoke-direct {v1}, Lcom/baidu/location/c/e;-><init>()V

    sput-object v1, Lcom/baidu/location/c/e;->c:Lcom/baidu/location/c/e;

    :cond_0
    sget-object v1, Lcom/baidu/location/c/e;->c:Lcom/baidu/location/c/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static a(Landroid/location/Location;)Ljava/lang/String;
    .locals 9

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p0}, Landroid/location/Location;->getSpeed()F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x400ccccccccccccdL    # 3.6

    mul-double v0, v0, v2

    double-to-float v0, v0

    invoke-virtual {p0}, Landroid/location/Location;->hasSpeed()Z

    move-result v1

    const/high16 v2, -0x40800000    # -1.0f

    if-nez v1, :cond_1

    const/high16 v0, -0x40800000    # -1.0f

    :cond_1
    invoke-virtual {p0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    goto :goto_0

    :cond_2
    const/high16 v1, -0x40800000    # -1.0f

    :goto_0
    float-to-int v1, v1

    invoke-virtual {p0}, Landroid/location/Location;->hasAltitude()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Landroid/location/Location;->getAltitude()D

    move-result-wide v3

    goto :goto_1

    :cond_3
    const-wide v3, 0x4081580000000000L    # 555.0

    :goto_1
    invoke-virtual {p0}, Landroid/location/Location;->hasBearing()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Landroid/location/Location;->getBearing()F

    move-result v2

    :cond_4
    sget-object v5, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const/16 v6, 0xb

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    const/4 v7, 0x2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v6, v7

    const/4 v0, 0x3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v6, v0

    const/4 v0, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v0

    sget v0, Lcom/baidu/location/c/e;->p:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x5

    aput-object v0, v6, v1

    const/4 v0, 0x6

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v6, v0

    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 v0, 0x7

    aput-object p0, v6, v0

    sget p0, Lcom/baidu/location/c/e;->p:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/16 v0, 0x8

    aput-object p0, v6, v0

    sget p0, Lcom/baidu/location/c/e;->q:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/16 v0, 0x9

    aput-object p0, v6, v0

    sget-wide v0, Lcom/baidu/location/c/e;->G:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    const/16 v0, 0xa

    aput-object p0, v6, v0

    const-string p0, "&ll=%.5f|%.5f&s=%.1f&d=%.1f&ll_r=%d&ll_n=%d&ll_h=%.2f&ll_t=%d&ll_sn=%d|%d&ll_snr=%.1f"

    invoke-static {v5, p0, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_2
    return-object p0
.end method

.method static synthetic a(Lcom/baidu/location/c/e;Landroid/location/Location;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/c/e;->e(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/location/c/e;Ljava/lang/String;Landroid/location/Location;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/baidu/location/c/e;->a(Ljava/lang/String;Landroid/location/Location;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/location/c/e;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/c/e;->b(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Landroid/location/Location;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/location/b/a;->a()Lcom/baidu/location/b/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/location/b/a;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/baidu/location/c/i;->a()Lcom/baidu/location/c/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/c/i;->e()Z

    move-result v0

    invoke-static {}, Lcom/baidu/location/c/b;->a()Lcom/baidu/location/c/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/location/c/b;->f()Lcom/baidu/location/c/a;

    move-result-object v1

    new-instance v2, Lcom/baidu/location/c/a;

    invoke-direct {v2, v1}, Lcom/baidu/location/c/a;-><init>(Lcom/baidu/location/c/a;)V

    invoke-static {v2}, Lcom/baidu/location/b/t;->a(Lcom/baidu/location/c/a;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/baidu/location/b/t;->a(J)V

    new-instance v1, Landroid/location/Location;

    invoke-direct {v1, p2}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    invoke-static {v1}, Lcom/baidu/location/b/t;->a(Landroid/location/Location;)V

    invoke-static {p1}, Lcom/baidu/location/b/t;->a(Ljava/lang/String;)V

    if-nez v0, :cond_1

    invoke-static {}, Lcom/baidu/location/b/t;->c()Lcom/baidu/location/c/a;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {}, Lcom/baidu/location/b/t;->d()Landroid/location/Location;

    move-result-object v1

    invoke-static {p2, v0, v1, p1}, Lcom/baidu/location/b/w;->a(Lcom/baidu/location/c/a;Lcom/baidu/location/c/h;Landroid/location/Location;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static a(Landroid/location/Location;Landroid/location/Location;Z)Z
    .locals 8

    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-eqz p0, :cond_9

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v2

    const/high16 v3, 0x40a00000    # 5.0f

    if-eqz p2, :cond_3

    sget p2, Lcom/baidu/location/e/k;->v:I

    const/4 v4, 0x3

    if-eq p2, v4, :cond_2

    invoke-static {}, Lcom/baidu/location/e/d;->a()Lcom/baidu/location/e/d;

    move-result-object p2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-virtual {p2, v4, v5, v6, v7}, Lcom/baidu/location/e/d;->a(DD)Z

    move-result p2

    if-nez p2, :cond_3

    :cond_2
    cmpg-float p2, v2, v3

    if-gez p2, :cond_3

    return v1

    :cond_3
    invoke-virtual {p1, p0}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result p0

    sget p1, Lcom/baidu/location/e/k;->L:F

    cmpl-float p1, v2, p1

    if-lez p1, :cond_5

    sget p1, Lcom/baidu/location/e/k;->N:F

    cmpl-float p0, p0, p1

    if-lez p0, :cond_4

    const/4 v0, 0x1

    :cond_4
    return v0

    :cond_5
    sget p1, Lcom/baidu/location/e/k;->K:F

    cmpl-float p1, v2, p1

    if-lez p1, :cond_7

    sget p1, Lcom/baidu/location/e/k;->M:F

    cmpl-float p0, p0, p1

    if-lez p0, :cond_6

    const/4 v0, 0x1

    :cond_6
    return v0

    :cond_7
    cmpl-float p0, p0, v3

    if-lez p0, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0

    :cond_9
    :goto_0
    return v1
.end method

.method static synthetic a(Lcom/baidu/location/c/e;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/baidu/location/c/e;->v:Z

    return p0
.end method

.method static synthetic a(Lcom/baidu/location/c/e;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/c/e;->b(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic b(I)I
    .locals 0

    sput p0, Lcom/baidu/location/c/e;->q:I

    return p0
.end method

.method static synthetic b(Lcom/baidu/location/c/e;I)I
    .locals 0

    iput p1, p0, Lcom/baidu/location/c/e;->F:I

    return p1
.end method

.method static synthetic b(Lcom/baidu/location/c/e;J)J
    .locals 0

    iput-wide p1, p0, Lcom/baidu/location/c/e;->I:J

    return-wide p1
.end method

.method static synthetic b(Lcom/baidu/location/c/e;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/baidu/location/c/e;->D:Landroid/os/Handler;

    return-object p0
.end method

.method public static b(Landroid/location/Location;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/baidu/location/c/e;->a(Landroid/location/Location;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&g_tp=0"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method static synthetic b(Lcom/baidu/location/c/e;Landroid/location/Location;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/c/e;->d(Landroid/location/Location;)V

    return-void
.end method

.method private b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/location/c/e;->x:Z

    return-void
.end method

.method static synthetic b(Lcom/baidu/location/c/e;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/location/c/e;->u:Z

    return p1
.end method

.method private b(Ljava/lang/String;)Z
    .locals 8

    const-string v0, "*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    return v2

    :cond_0
    const-string v1, "$"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v3, :cond_1

    return v2

    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-le v1, v4, :cond_2

    return v2

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lt v1, v4, :cond_5

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v4, 0x1

    aget-byte v5, v1, v4

    const/4 v6, 0x2

    :goto_0
    array-length v7, v1

    if-ge v6, v7, :cond_3

    aget-byte v7, v1, v6

    xor-int/2addr v5, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    const-string v5, "%02x"

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v3, :cond_4

    return v2

    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v5, v0, 0x3

    if-lt v3, v5, :cond_5

    add-int/2addr v0, v4

    invoke-virtual {p1, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    return v4

    :cond_5
    return v2
.end method

.method static synthetic c(I)I
    .locals 0

    sput p0, Lcom/baidu/location/c/e;->r:I

    return p0
.end method

.method static synthetic c(Lcom/baidu/location/c/e;)J
    .locals 2

    iget-wide v0, p0, Lcom/baidu/location/c/e;->I:J

    return-wide v0
.end method

.method public static c(Landroid/location/Location;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/baidu/location/c/e;->a(Landroid/location/Location;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/baidu/location/c/e;->C:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method static synthetic d(Lcom/baidu/location/c/e;)Landroid/location/LocationManager;
    .locals 0

    iget-object p0, p0, Lcom/baidu/location/c/e;->e:Landroid/location/LocationManager;

    return-object p0
.end method

.method private d(Landroid/location/Location;)V
    .locals 2

    iget-object v0, p0, Lcom/baidu/location/c/e;->D:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object v0, p0, Lcom/baidu/location/c/e;->D:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method static synthetic e(Lcom/baidu/location/c/e;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/baidu/location/c/e;->J:Ljava/util/ArrayList;

    return-object p0
.end method

.method private e(Landroid/location/Location;)V
    .locals 12

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    sget v1, Lcom/baidu/location/c/e;->p:I

    const-string v2, "satellites"

    if-nez v1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_0
    :goto_0
    if-nez v1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/baidu/location/c/e;->I:J

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    const-wide/16 v5, 0x1388

    cmp-long v1, v3, v5

    if-lez v1, :cond_1

    sget-boolean v1, Lcom/baidu/location/e/k;->m:Z

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/baidu/location/c/e;->m:Z

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v1

    float-to-double v3, v1

    const-wide/16 v5, 0x0

    cmpl-double v1, v3, v5

    if-nez v1, :cond_2

    iget-wide v3, p0, Lcom/baidu/location/c/e;->A:D

    cmpl-double v1, v3, v5

    if-eqz v1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    long-to-double v3, v3

    iget-wide v5, p0, Lcom/baidu/location/c/e;->B:D

    sub-double/2addr v3, v5

    const-wide v5, 0x409f400000000000L    # 2000.0

    cmpg-double v1, v3, v5

    if-gez v1, :cond_2

    iget-wide v3, p0, Lcom/baidu/location/c/e;->A:D

    double-to-float v1, v3

    invoke-virtual {p1, v1}, Landroid/location/Location;->setSpeed(F)V

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/baidu/location/c/e;->y:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iput-object p1, p0, Lcom/baidu/location/c/e;->f:Landroid/location/Location;

    new-instance p1, Landroid/location/Location;

    iget-object v1, p0, Lcom/baidu/location/c/e;->f:Landroid/location/Location;

    invoke-direct {p1, v1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    sget v1, Lcom/baidu/location/c/e;->p:I

    iget-object v3, p0, Lcom/baidu/location/c/e;->f:Landroid/location/Location;

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-nez v3, :cond_3

    :goto_1
    iput-object v0, p0, Lcom/baidu/location/c/e;->w:Ljava/lang/String;

    goto :goto_2

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v0, p0, Lcom/baidu/location/c/e;->f:Landroid/location/Location;

    invoke-virtual {v0, v6, v7}, Landroid/location/Location;->setTime(J)V

    iget-object v0, p0, Lcom/baidu/location/c/e;->f:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getSpeed()F

    move-result v0

    float-to-double v8, v0

    const-wide v10, 0x400ccccccccccccdL    # 3.6

    mul-double v8, v8, v10

    double-to-float v0, v8

    iget-object v3, p0, Lcom/baidu/location/c/e;->f:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->hasSpeed()Z

    move-result v3

    if-nez v3, :cond_4

    const/high16 v0, -0x40800000    # -1.0f

    :cond_4
    if-nez v1, :cond_5

    :try_start_1
    iget-object v3, p0, Lcom/baidu/location/c/e;->f:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_5
    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/baidu/location/c/e;->f:Landroid/location/Location;

    invoke-virtual {v8}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v3, v9

    iget-object v8, p0, Lcom/baidu/location/c/e;->f:Landroid/location/Location;

    invoke-virtual {v8}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v3, v5

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v3, v4

    iget-object v0, p0, Lcom/baidu/location/c/e;->f:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getBearing()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v8, 0x3

    aput-object v0, v3, v8

    const/4 v0, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    const/4 v0, 0x5

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v3, v0

    const-string v0, "&ll=%.5f|%.5f&s=%.1f&d=%.1f&ll_n=%d&ll_t=%d"

    invoke-static {v2, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :goto_2
    iget-object v0, p0, Lcom/baidu/location/c/e;->f:Landroid/location/Location;

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/baidu/location/b/a;->a()Lcom/baidu/location/b/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/location/c/e;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/location/b/a;->a(Ljava/lang/String;)V

    sget v0, Lcom/baidu/location/c/e;->p:I

    if-le v0, v4, :cond_6

    iget-object v0, p0, Lcom/baidu/location/c/e;->f:Landroid/location/Location;

    invoke-static {v0, v5}, Lcom/baidu/location/b/w;->a(Landroid/location/Location;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/baidu/location/c/i;->a()Lcom/baidu/location/c/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/c/i;->e()Z

    move-result v0

    invoke-static {}, Lcom/baidu/location/c/b;->a()Lcom/baidu/location/c/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/location/c/b;->f()Lcom/baidu/location/c/a;

    move-result-object v1

    new-instance v2, Lcom/baidu/location/c/a;

    invoke-direct {v2, v1}, Lcom/baidu/location/c/a;-><init>(Lcom/baidu/location/c/a;)V

    invoke-static {v2}, Lcom/baidu/location/b/t;->a(Lcom/baidu/location/c/a;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/baidu/location/b/t;->a(J)V

    new-instance v1, Landroid/location/Location;

    iget-object v2, p0, Lcom/baidu/location/c/e;->f:Landroid/location/Location;

    invoke-direct {v1, v2}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    invoke-static {v1}, Lcom/baidu/location/b/t;->a(Landroid/location/Location;)V

    invoke-static {}, Lcom/baidu/location/b/a;->a()Lcom/baidu/location/b/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/location/b/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/location/b/t;->a(Ljava/lang/String;)V

    if-nez v0, :cond_6

    invoke-static {}, Lcom/baidu/location/b/x;->a()Lcom/baidu/location/b/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/b/x;->b()V

    :cond_6
    invoke-static {}, Lcom/baidu/location/b/x;->a()Lcom/baidu/location/b/x;

    move-result-object v0

    sget v1, Lcom/baidu/location/c/e;->p:I

    invoke-virtual {v0, p1, v1}, Lcom/baidu/location/b/x;->a(Landroid/location/Location;I)V

    return-void

    :cond_7
    iput-object v0, p0, Lcom/baidu/location/c/e;->f:Landroid/location/Location;

    return-void
.end method

.method static synthetic f(Lcom/baidu/location/c/e;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/baidu/location/c/e;->K:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic g(Lcom/baidu/location/c/e;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/baidu/location/c/e;->l()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic h(Lcom/baidu/location/c/e;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/baidu/location/c/e;->m()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic i(Lcom/baidu/location/c/e;)Landroid/location/GpsStatus;
    .locals 0

    iget-object p0, p0, Lcom/baidu/location/c/e;->i:Landroid/location/GpsStatus;

    return-object p0
.end method

.method static synthetic j(Lcom/baidu/location/c/e;)I
    .locals 2

    iget v0, p0, Lcom/baidu/location/c/e;->F:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/baidu/location/c/e;->F:I

    return v0
.end method

.method public static j()Ljava/lang/String;
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/baidu/location/c/e;->s:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const-wide/16 v2, 0xbb8

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    sget v2, Lcom/baidu/location/c/e;->r:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget v2, Lcom/baidu/location/c/e;->p:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "&gsvn=%d&gsfn=%d"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method static synthetic k()I
    .locals 1

    sget v0, Lcom/baidu/location/c/e;->p:I

    return v0
.end method

.method private l()Ljava/lang/String;
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/baidu/location/c/e;->J:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x20

    if-gt v1, v2, :cond_4

    iget-object v1, p0, Lcom/baidu/location/c/e;->J:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v1, p0, Lcom/baidu/location/c/e;->J:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x6

    if-eq v5, v6, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    const-string v6, "|"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    new-array v6, v2, [Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v6, v5

    const-string v7, "%.1f;"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v6, v2, [Ljava/lang/Object;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v6, v5

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v6, v2, [Ljava/lang/Object;

    const/4 v7, 0x2

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v6, v5

    const-string v7, "%.0f;"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v6, v2, [Ljava/lang/Object;

    const/4 v8, 0x3

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v6, v5

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v6, v2, [Ljava/lang/Object;

    const/4 v7, 0x4

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v6, v5

    const-string v4, "%.0f"

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private m()Ljava/lang/String;
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/baidu/location/c/e;->K:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/baidu/location/c/e;->K:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x6

    if-eq v5, v6, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    const-string v6, "|"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    new-array v6, v2, [Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v6, v5

    const-string v7, "%.1f;"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v6, v2, [Ljava/lang/Object;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v6, v5

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v6, v2, [Ljava/lang/Object;

    const/4 v7, 0x2

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v6, v5

    const-string v7, "%.0f;"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v6, v2, [Ljava/lang/Object;

    const/4 v8, 0x3

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v6, v5

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v6, v2, [Ljava/lang/Object;

    const/4 v7, 0x4

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v6, v5

    const-string v7, "%.0f"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v6, v2, [Ljava/lang/Object;

    const/4 v8, 0x5

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v6, v5

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/baidu/location/c/e;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v0, "$GPPWR,"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "$GNGST,"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "$GPGST,"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "$GLGSV,"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "$GNGSV,"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "$BDGSV,"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "$GPZDA,"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "$GPGSA,"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "$GNVTG,"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "$GPVTG,"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "$GNGSA,"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "$GPNTR,"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "$GNGGA,"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "$GPGGA,"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "$GPRMC,"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "$GPGSV,"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "$BDGSA,"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0}, Lcom/baidu/location/c/e;->a(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_3

    return-void

    :cond_3
    array-length p1, v1

    if-lez p1, :cond_5

    const/4 p1, 0x0

    aget-object v0, v1, p1

    const-string v2, "$GPRMC"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    aget-object v0, v1, p1

    const-string v2, "$GNRMC"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    aget-object v0, v1, p1

    const-string v2, "$GLRMC"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    aget-object p1, v1, p1

    const-string v0, "$BDRMC"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    array-length p1, v1

    const/4 v0, 0x7

    if-le p1, v0, :cond_5

    aget-object p1, v1, v0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_5

    aget-object p1, v1, v0

    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide v2, 0x3ffda1cac083126fL    # 1.852

    mul-double v0, v0, v2

    const-wide v2, 0x40ac200000000000L    # 3600.0

    div-double/2addr v0, v2

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double v0, v0, v2

    iput-wide v0, p0, Lcom/baidu/location/c/e;->A:D

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-double v0, v0

    iput-wide v0, p0, Lcom/baidu/location/c/e;->B:D

    :cond_5
    return-void
.end method

.method public a(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/baidu/location/c/e;->c()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/baidu/location/c/e;->d()V

    :goto_0
    return-void
.end method

.method public declared-synchronized b()V
    .locals 7

    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/baidu/location/f;->isServing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/baidu/location/f;->getServiceContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/c/e;->d:Landroid/content/Context;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/baidu/location/c/e;->e:Landroid/location/LocationManager;

    iget-boolean v0, p0, Lcom/baidu/location/c/e;->k:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    new-instance v0, Lcom/baidu/location/c/e$b;

    invoke-direct {v0, p0, v1}, Lcom/baidu/location/c/e$b;-><init>(Lcom/baidu/location/c/e;Lcom/baidu/location/c/f;)V

    iput-object v0, p0, Lcom/baidu/location/c/e;->l:Lcom/baidu/location/c/e$b;

    iget-object v2, p0, Lcom/baidu/location/c/e;->e:Landroid/location/LocationManager;

    invoke-virtual {v2, v0}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/baidu/location/c/e$a;

    invoke-direct {v0, p0, v1}, Lcom/baidu/location/c/e$a;-><init>(Lcom/baidu/location/c/e;Lcom/baidu/location/c/f;)V

    iput-object v0, p0, Lcom/baidu/location/c/e;->j:Lcom/baidu/location/c/e$a;

    iget-object v2, p0, Lcom/baidu/location/c/e;->e:Landroid/location/LocationManager;

    invoke-static {v2, v0}, Lcom/baidu/location/c/l;->a(Landroid/location/LocationManager;Landroid/location/GnssStatus$Callback;)Z

    :goto_0
    iget-boolean v0, p0, Lcom/baidu/location/c/e;->m:Z

    if-eqz v0, :cond_3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v0, v2, :cond_2

    new-instance v0, Lcom/baidu/location/c/f;

    invoke-direct {v0, p0}, Lcom/baidu/location/c/f;-><init>(Lcom/baidu/location/c/e;)V

    iput-object v0, p0, Lcom/baidu/location/c/e;->o:Landroid/location/OnNmeaMessageListener;

    iget-object v2, p0, Lcom/baidu/location/c/e;->e:Landroid/location/LocationManager;

    invoke-static {v2, v0}, Lcom/baidu/location/c/m;->a(Landroid/location/LocationManager;Landroid/location/OnNmeaMessageListener;)Z

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/baidu/location/c/e$d;

    invoke-direct {v0, p0, v1}, Lcom/baidu/location/c/e$d;-><init>(Lcom/baidu/location/c/e;Lcom/baidu/location/c/f;)V

    iput-object v0, p0, Lcom/baidu/location/c/e;->n:Lcom/baidu/location/c/e$d;

    iget-object v2, p0, Lcom/baidu/location/c/e;->e:Landroid/location/LocationManager;

    invoke-virtual {v2, v0}, Landroid/location/LocationManager;->addNmeaListener(Landroid/location/GpsStatus$NmeaListener;)Z

    :cond_3
    :goto_1
    new-instance v6, Lcom/baidu/location/c/e$e;

    invoke-direct {v6, p0, v1}, Lcom/baidu/location/c/e$e;-><init>(Lcom/baidu/location/c/e;Lcom/baidu/location/c/f;)V

    iput-object v6, p0, Lcom/baidu/location/c/e;->h:Lcom/baidu/location/c/e$e;

    iget-object v1, p0, Lcom/baidu/location/c/e;->e:Landroid/location/LocationManager;

    const-string v2, "passive"

    const-wide/16 v3, 0x2328

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_0
    :try_start_3
    new-instance v0, Lcom/baidu/location/c/g;

    invoke-direct {v0, p0}, Lcom/baidu/location/c/g;-><init>(Lcom/baidu/location/c/e;)V

    iput-object v0, p0, Lcom/baidu/location/c/e;->D:Landroid/os/Handler;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()V
    .locals 10

    sget-object v0, Lcom/baidu/location/e/a;->a:Ljava/lang/String;

    const-string v1, "start gps..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/baidu/location/c/e;->v:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Lcom/baidu/location/c/e$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/baidu/location/c/e$c;-><init>(Lcom/baidu/location/c/e;Lcom/baidu/location/c/f;)V

    iput-object v0, p0, Lcom/baidu/location/c/e;->g:Lcom/baidu/location/c/e$c;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/baidu/location/c/e;->e:Landroid/location/LocationManager;

    const-string v2, "gps"

    const-string v3, "force_xtra_injection"

    invoke-virtual {v1, v2, v3, v0}, Landroid/location/LocationManager;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :try_start_2
    iget-object v4, p0, Lcom/baidu/location/c/e;->e:Landroid/location/LocationManager;

    const-string v5, "gps"

    const-wide/16 v6, 0x3e8

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/baidu/location/c/e;->g:Lcom/baidu/location/c/e$c;

    invoke-virtual/range {v4 .. v9}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/location/c/e;->H:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/c/e;->v:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    return-void
.end method

.method public d()V
    .locals 2

    iget-boolean v0, p0, Lcom/baidu/location/c/e;->v:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/baidu/location/c/e;->e:Landroid/location/LocationManager;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/baidu/location/c/e;->g:Lcom/baidu/location/c/e$c;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    const/4 v0, 0x0

    sput v0, Lcom/baidu/location/e/k;->d:I

    sput v0, Lcom/baidu/location/e/k;->v:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/baidu/location/c/e;->g:Lcom/baidu/location/c/e$c;

    iput-boolean v0, p0, Lcom/baidu/location/c/e;->v:Z

    invoke-direct {p0, v0}, Lcom/baidu/location/c/e;->b(Z)V

    return-void
.end method

.method public declared-synchronized e()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/baidu/location/c/e;->d()V

    iget-object v0, p0, Lcom/baidu/location/c/e;->e:Landroid/location/LocationManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/baidu/location/c/e;->l:Lcom/baidu/location/c/e$b;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V

    :cond_1
    iget-boolean v0, p0, Lcom/baidu/location/c/e;->k:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/location/c/e;->j:Lcom/baidu/location/c/e$a;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/baidu/location/c/e;->e:Landroid/location/LocationManager;

    invoke-static {v1, v0}, Lcom/baidu/location/c/k;->a(Landroid/location/LocationManager;Landroid/location/GnssStatus$Callback;)V

    :cond_2
    iget-boolean v0, p0, Lcom/baidu/location/c/e;->m:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/baidu/location/c/e;->n:Lcom/baidu/location/c/e$d;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/baidu/location/c/e;->e:Landroid/location/LocationManager;

    invoke-virtual {v1, v0}, Landroid/location/LocationManager;->removeNmeaListener(Landroid/location/GpsStatus$NmeaListener;)V

    :cond_3
    iget-object v0, p0, Lcom/baidu/location/c/e;->e:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/baidu/location/c/e;->h:Lcom/baidu/location/c/e$e;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/baidu/location/c/e;->l:Lcom/baidu/location/c/e$b;

    iput-object v0, p0, Lcom/baidu/location/c/e;->e:Landroid/location/LocationManager;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public f()Ljava/lang/String;
    .locals 13

    iget-object v0, p0, Lcom/baidu/location/c/e;->f:Landroid/location/Location;

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{\"result\":{\"time\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/location/e/k;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"error\":\"61\"},\"content\":{\"point\":{\"x\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"%f\",\"y\":\"%f\"},\"radius\":\"%d\",\"d\":\"%f\","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"s\":\"%f\",\"n\":\"%d\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/c/e;->f:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/location/c/e;->f:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    goto :goto_0

    :cond_0
    const/high16 v1, 0x41200000    # 10.0f

    :goto_0
    float-to-int v1, v1

    iget-object v2, p0, Lcom/baidu/location/c/e;->f:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getSpeed()F

    move-result v2

    float-to-double v2, v2

    const-wide v4, 0x400ccccccccccccdL    # 3.6

    mul-double v2, v2, v4

    double-to-float v2, v2

    iget-object v3, p0, Lcom/baidu/location/c/e;->f:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->hasSpeed()Z

    move-result v3

    if-nez v3, :cond_1

    const/high16 v2, -0x40800000    # -1.0f

    :cond_1
    invoke-static {}, Lcom/baidu/location/e/d;->a()Lcom/baidu/location/e/d;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/location/c/e;->f:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    iget-object v6, p0, Lcom/baidu/location/c/e;->f:Landroid/location/Location;

    invoke-virtual {v6}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/baidu/location/e/d;->a(DD)Z

    move-result v3

    const-string v4, "gps2gcj"

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/baidu/location/c/e;->f:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v9

    iget-object v3, p0, Lcom/baidu/location/c/e;->f:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v11

    invoke-static {v9, v10, v11, v12, v4}, Lcom/baidu/location/Jni;->coorEncrypt(DDLjava/lang/String;)[D

    move-result-object v3

    aget-wide v9, v3, v7

    cmpl-double v4, v9, v5

    if-gtz v4, :cond_2

    aget-wide v9, v3, v8

    cmpl-double v4, v9, v5

    if-gtz v4, :cond_2

    iget-object v4, p0, Lcom/baidu/location/c/e;->f:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    aput-wide v4, v3, v7

    iget-object v4, p0, Lcom/baidu/location/c/e;->f:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    aput-wide v4, v3, v8

    :cond_2
    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/baidu/location/c/e;->f:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    iget-object v3, p0, Lcom/baidu/location/c/e;->f:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    iget-object v3, p0, Lcom/baidu/location/c/e;->f:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v9

    iget-object v3, p0, Lcom/baidu/location/c/e;->f:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v11

    invoke-static {v9, v10, v11, v12, v4}, Lcom/baidu/location/Jni;->coorEncrypt(DDLjava/lang/String;)[D

    move-result-object v3

    aget-wide v9, v3, v7

    cmpl-double v4, v9, v5

    if-gtz v4, :cond_4

    aget-wide v9, v3, v8

    cmpl-double v4, v9, v5

    if-gtz v4, :cond_4

    iget-object v4, p0, Lcom/baidu/location/c/e;->f:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    aput-wide v4, v3, v7

    iget-object v4, p0, Lcom/baidu/location/c/e;->f:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    aput-wide v4, v3, v8

    :cond_4
    const/4 v4, 0x0

    :goto_1
    sget-object v5, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    aget-wide v9, v3, v7

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v6, v7

    aget-wide v9, v3, v8

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v6, v8

    const/4 v3, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v3

    iget-object v1, p0, Lcom/baidu/location/c/e;->f:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getBearing()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v6, v3

    const/4 v1, 0x4

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v6, v1

    sget v1, Lcom/baidu/location/c/e;->p:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v6, v2

    invoke-static {v5, v0, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-nez v4, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",\"in_cn\":\"0\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_5
    iget-object v1, p0, Lcom/baidu/location/c/e;->f:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->hasAltitude()Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    new-array v2, v8, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/baidu/location/c/e;->f:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getAltitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v7

    const-string v3, ",\"h\":%.2f}}"

    invoke-static {v0, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}}"

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_7
    const/4 v0, 0x0

    :goto_3
    return-object v0
.end method

.method public g()Landroid/location/Location;
    .locals 6

    iget-object v0, p0, Lcom/baidu/location/c/e;->f:Landroid/location/Location;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/baidu/location/c/e;->f:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/baidu/location/c/e;->f:Landroid/location/Location;

    return-object v0
.end method

.method public h()Z
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/baidu/location/c/e;->I:J

    sub-long/2addr v4, v6

    sget v6, Lcom/baidu/location/c/e;->p:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v6, :cond_0

    :try_start_1
    iget-object v7, p0, Lcom/baidu/location/c/e;->f:Landroid/location/Location;

    invoke-virtual {v7}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "satellites"

    invoke-virtual {v7, v8}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_0
    :try_start_2
    iget-object v7, p0, Lcom/baidu/location/c/e;->f:Landroid/location/Location;

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Landroid/location/Location;->getLatitude()D

    move-result-wide v7

    cmpl-double v9, v7, v2

    if-eqz v9, :cond_2

    iget-object v7, p0, Lcom/baidu/location/c/e;->f:Landroid/location/Location;

    invoke-virtual {v7}, Landroid/location/Location;->getLongitude()D

    move-result-wide v7

    cmpl-double v9, v7, v2

    if-eqz v9, :cond_2

    const/4 v7, 0x2

    if-gt v6, v7, :cond_1

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/16 v6, 0x1388

    cmp-long v8, v4, v6

    if-ltz v8, :cond_1

    sget-boolean v2, Lcom/baidu/location/e/k;->m:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v2, :cond_2

    :cond_1
    return v0

    :cond_2
    return v1

    :catch_1
    nop

    iget-object v4, p0, Lcom/baidu/location/c/e;->f:Landroid/location/Location;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    cmpl-double v6, v4, v2

    if-eqz v6, :cond_3

    iget-object v4, p0, Lcom/baidu/location/c/e;->f:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    cmpl-double v6, v4, v2

    if-eqz v6, :cond_3

    return v0

    :cond_3
    return v1
.end method

.method public i()Z
    .locals 6

    invoke-virtual {p0}, Lcom/baidu/location/c/e;->h()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/baidu/location/c/e;->y:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x2710

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    return v1

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-boolean v2, p0, Lcom/baidu/location/c/e;->u:Z

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lcom/baidu/location/c/e;->t:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xbb8

    cmp-long v4, v0, v2

    if-gez v4, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    iget-boolean v0, p0, Lcom/baidu/location/c/e;->x:Z

    return v0
.end method
