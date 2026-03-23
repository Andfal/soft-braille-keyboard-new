.class public Lcom/baidu/location/b/l;
.super Lcom/baidu/location/b/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/location/b/l$a;,
        Lcom/baidu/location/b/l$b;
    }
.end annotation


# static fields
.field public static g:Z = false

.field private static h:Lcom/baidu/location/b/l;


# instance fields
.field private A:Z

.field private B:J

.field private C:J

.field private D:Lcom/baidu/location/b/l$a;

.field private E:Z

.field private F:Z

.field private G:Z

.field private H:Z

.field private I:Z

.field private J:Lcom/baidu/location/b/l$b;

.field private K:Z

.field private L:I

.field private M:J

.field private N:Z

.field private O:Z

.field public e:Lcom/baidu/location/b/i$b;

.field public final f:Landroid/os/Handler;

.field private i:Z

.field private j:Ljava/lang/String;

.field private k:Lcom/baidu/location/BDLocation;

.field private l:Lcom/baidu/location/BDLocation;

.field private m:Lcom/baidu/location/c/h;

.field private n:Lcom/baidu/location/c/a;

.field private o:Lcom/baidu/location/c/h;

.field private p:Lcom/baidu/location/c/a;

.field private q:Z

.field private volatile r:Z

.field private s:Z

.field private t:J

.field private u:J

.field private v:Lcom/baidu/location/Address;

.field private w:Ljava/lang/String;

.field private x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/baidu/location/Poi;",
            ">;"
        }
    .end annotation
.end field

.field private y:D

.field private z:D


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    invoke-direct {p0}, Lcom/baidu/location/b/i;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/b/l;->i:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/baidu/location/b/l;->e:Lcom/baidu/location/b/i$b;

    iput-object v1, p0, Lcom/baidu/location/b/l;->j:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/b/l;->k:Lcom/baidu/location/BDLocation;

    iput-object v1, p0, Lcom/baidu/location/b/l;->l:Lcom/baidu/location/BDLocation;

    iput-object v1, p0, Lcom/baidu/location/b/l;->m:Lcom/baidu/location/c/h;

    iput-object v1, p0, Lcom/baidu/location/b/l;->n:Lcom/baidu/location/c/a;

    iput-object v1, p0, Lcom/baidu/location/b/l;->o:Lcom/baidu/location/c/h;

    iput-object v1, p0, Lcom/baidu/location/b/l;->p:Lcom/baidu/location/c/a;

    iput-boolean v0, p0, Lcom/baidu/location/b/l;->q:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/baidu/location/b/l;->r:Z

    iput-boolean v2, p0, Lcom/baidu/location/b/l;->s:Z

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/baidu/location/b/l;->t:J

    iput-wide v3, p0, Lcom/baidu/location/b/l;->u:J

    iput-object v1, p0, Lcom/baidu/location/b/l;->v:Lcom/baidu/location/Address;

    iput-object v1, p0, Lcom/baidu/location/b/l;->w:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/b/l;->x:Ljava/util/List;

    iput-boolean v2, p0, Lcom/baidu/location/b/l;->A:Z

    iput-wide v3, p0, Lcom/baidu/location/b/l;->B:J

    iput-wide v3, p0, Lcom/baidu/location/b/l;->C:J

    iput-object v1, p0, Lcom/baidu/location/b/l;->D:Lcom/baidu/location/b/l$a;

    iput-boolean v2, p0, Lcom/baidu/location/b/l;->E:Z

    iput-boolean v2, p0, Lcom/baidu/location/b/l;->F:Z

    iput-boolean v0, p0, Lcom/baidu/location/b/l;->G:Z

    new-instance v5, Lcom/baidu/location/b/i$a;

    invoke-direct {v5, p0}, Lcom/baidu/location/b/i$a;-><init>(Lcom/baidu/location/b/i;)V

    iput-object v5, p0, Lcom/baidu/location/b/l;->f:Landroid/os/Handler;

    iput-boolean v2, p0, Lcom/baidu/location/b/l;->H:Z

    iput-boolean v2, p0, Lcom/baidu/location/b/l;->I:Z

    iput-object v1, p0, Lcom/baidu/location/b/l;->J:Lcom/baidu/location/b/l$b;

    iput-boolean v2, p0, Lcom/baidu/location/b/l;->K:Z

    iput v2, p0, Lcom/baidu/location/b/l;->L:I

    iput-wide v3, p0, Lcom/baidu/location/b/l;->M:J

    iput-boolean v2, p0, Lcom/baidu/location/b/l;->N:Z

    iput-boolean v0, p0, Lcom/baidu/location/b/l;->O:Z

    new-instance v0, Lcom/baidu/location/b/i$b;

    invoke-direct {v0, p0}, Lcom/baidu/location/b/i$b;-><init>(Lcom/baidu/location/b/i;)V

    iput-object v0, p0, Lcom/baidu/location/b/l;->e:Lcom/baidu/location/b/i$b;

    return-void
.end method

.method static synthetic a(Lcom/baidu/location/b/l;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/b/l;->g(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/location/b/l;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/baidu/location/b/l;->K:Z

    return p0
.end method

.method static synthetic a(Lcom/baidu/location/b/l;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/location/b/l;->K:Z

    return p1
.end method

.method private a(Lcom/baidu/location/c/a;)Z
    .locals 2

    invoke-static {}, Lcom/baidu/location/c/b;->a()Lcom/baidu/location/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/c/b;->f()Lcom/baidu/location/c/a;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/b/i;->b:Lcom/baidu/location/c/a;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v0}, Lcom/baidu/location/c/a;->a(Lcom/baidu/location/c/a;)Z

    move-result p1

    xor-int/2addr p1, v1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method private a(Lcom/baidu/location/c/h;)Z
    .locals 2

    invoke-static {}, Lcom/baidu/location/c/i;->a()Lcom/baidu/location/c/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/c/i;->o()Lcom/baidu/location/c/h;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/b/i;->a:Lcom/baidu/location/c/h;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v0}, Lcom/baidu/location/c/h;->c(Lcom/baidu/location/c/h;)Z

    move-result p1

    xor-int/2addr p1, v1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method static synthetic b(Lcom/baidu/location/b/l;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/b/l;->h(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic b(Lcom/baidu/location/b/l;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/baidu/location/b/l;->s:Z

    return p0
.end method

.method static synthetic b(Lcom/baidu/location/b/l;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/location/b/l;->s:Z

    return p1
.end method

.method public static declared-synchronized c()Lcom/baidu/location/b/l;
    .locals 2

    const-class v0, Lcom/baidu/location/b/l;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/baidu/location/b/l;->h:Lcom/baidu/location/b/l;

    if-nez v1, :cond_0

    new-instance v1, Lcom/baidu/location/b/l;

    invoke-direct {v1}, Lcom/baidu/location/b/l;-><init>()V

    sput-object v1, Lcom/baidu/location/b/l;->h:Lcom/baidu/location/b/l;

    :cond_0
    sget-object v1, Lcom/baidu/location/b/l;->h:Lcom/baidu/location/b/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private c(Landroid/os/Message;)V
    .locals 4

    invoke-static {}, Lcom/baidu/location/e/k;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/baidu/location/e/a;->a:Ljava/lang/String;

    const-string v1, "isInforbiddenTime on request location ..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "isWaitingLocTag"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    sput-boolean v1, Lcom/baidu/location/b/l;->g:Z

    :cond_1
    invoke-static {}, Lcom/baidu/location/b/a;->a()Lcom/baidu/location/b/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/location/b/a;->d(Landroid/os/Message;)I

    move-result v0

    if-eq v0, v1, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    invoke-static {}, Lcom/baidu/location/c/e;->a()Lcom/baidu/location/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/c/e;->i()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0, p1}, Lcom/baidu/location/b/l;->e(Landroid/os/Message;)V

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "this type %d is illegal"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    invoke-direct {p0, p1}, Lcom/baidu/location/b/l;->g(Landroid/os/Message;)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1}, Lcom/baidu/location/b/l;->d(Landroid/os/Message;)V

    :cond_5
    :goto_0
    return-void
.end method

.method static synthetic c(Lcom/baidu/location/b/l;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/baidu/location/b/l;->E:Z

    return p0
.end method

.method static synthetic c(Lcom/baidu/location/b/l;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/location/b/l;->E:Z

    return p1
.end method

.method private d(Landroid/os/Message;)V
    .locals 1

    invoke-static {}, Lcom/baidu/location/c/e;->a()Lcom/baidu/location/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/c/e;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/baidu/location/b/l;->e(Landroid/os/Message;)V

    invoke-static {}, Lcom/baidu/location/b/n;->a()Lcom/baidu/location/b/n;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/location/b/n;->c()V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/baidu/location/b/l;->g(Landroid/os/Message;)V

    invoke-static {}, Lcom/baidu/location/b/n;->a()Lcom/baidu/location/b/n;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/location/b/n;->b()V

    :goto_0
    return-void
.end method

.method static synthetic d(Lcom/baidu/location/b/l;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/baidu/location/b/l;->F:Z

    return p0
.end method

.method private e(Landroid/os/Message;)V
    .locals 11

    invoke-static {}, Lcom/baidu/location/c/e;->a()Lcom/baidu/location/c/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/location/c/e;->f()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/baidu/location/BDLocation;

    invoke-direct {v0, p1}, Lcom/baidu/location/BDLocation;-><init>(Ljava/lang/String;)V

    sget-object p1, Lcom/baidu/location/e/k;->g:Ljava/lang/String;

    const-string v1, "all"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    sget-boolean p1, Lcom/baidu/location/e/k;->h:Z

    if-nez p1, :cond_0

    sget-boolean p1, Lcom/baidu/location/e/k;->j:Z

    if-eqz p1, :cond_4

    :cond_0
    const/4 p1, 0x2

    new-array p1, p1, [F

    iget-wide v2, p0, Lcom/baidu/location/b/l;->z:D

    iget-wide v4, p0, Lcom/baidu/location/b/l;->y:D

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v6

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v8

    move-object v10, p1

    invoke-static/range {v2 .. v10}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    const/4 v2, 0x0

    aget p1, p1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    cmpg-float p1, p1, v2

    if-gez p1, :cond_3

    iget-object p1, p0, Lcom/baidu/location/b/l;->v:Lcom/baidu/location/Address;

    if-eqz p1, :cond_1

    invoke-virtual {v0, p1}, Lcom/baidu/location/BDLocation;->setAddr(Lcom/baidu/location/Address;)V

    :cond_1
    iget-object p1, p0, Lcom/baidu/location/b/l;->w:Ljava/lang/String;

    if-eqz p1, :cond_2

    invoke-virtual {v0, p1}, Lcom/baidu/location/BDLocation;->setLocationDescribe(Ljava/lang/String;)V

    :cond_2
    iget-object p1, p0, Lcom/baidu/location/b/l;->x:Ljava/util/List;

    if-eqz p1, :cond_4

    invoke-virtual {v0, p1}, Lcom/baidu/location/BDLocation;->setPoiList(Ljava/util/List;)V

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/baidu/location/b/l;->A:Z

    invoke-direct {p0, v1}, Lcom/baidu/location/b/l;->g(Landroid/os/Message;)V

    :cond_4
    :goto_0
    iput-object v0, p0, Lcom/baidu/location/b/l;->k:Lcom/baidu/location/BDLocation;

    iput-object v1, p0, Lcom/baidu/location/b/l;->l:Lcom/baidu/location/BDLocation;

    invoke-static {}, Lcom/baidu/location/b/a;->a()Lcom/baidu/location/b/a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/baidu/location/b/a;->a(Lcom/baidu/location/BDLocation;)V

    return-void
.end method

.method private f(Landroid/os/Message;)V
    .locals 4

    invoke-static {}, Lcom/baidu/location/c/i;->a()Lcom/baidu/location/c/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/c/i;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/baidu/location/b/l;->s:Z

    iget-object v0, p0, Lcom/baidu/location/b/l;->J:Lcom/baidu/location/b/l$b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/location/b/l$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/baidu/location/b/l$b;-><init>(Lcom/baidu/location/b/l;Lcom/baidu/location/b/m;)V

    iput-object v0, p0, Lcom/baidu/location/b/l;->J:Lcom/baidu/location/b/l$b;

    :cond_0
    iget-boolean v0, p0, Lcom/baidu/location/b/l;->K:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/location/b/l;->J:Lcom/baidu/location/b/l$b;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/baidu/location/b/l;->f:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    iget-object v0, p0, Lcom/baidu/location/b/l;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/baidu/location/b/l;->J:Lcom/baidu/location/b/l$b;

    const-wide/16 v2, 0xdac

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iput-boolean p1, p0, Lcom/baidu/location/b/l;->K:Z

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/baidu/location/b/l;->h(Landroid/os/Message;)V

    :goto_0
    return-void
.end method

.method private g(Landroid/os/Message;)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/location/b/l;->L:I

    iget-boolean v0, p0, Lcom/baidu/location/b/l;->q:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput v0, p0, Lcom/baidu/location/b/l;->L:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/location/b/l;->C:J

    invoke-static {}, Lcom/baidu/location/c/i;->a()Lcom/baidu/location/c/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/c/i;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/baidu/location/b/l;->f(Landroid/os/Message;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/baidu/location/b/l;->h(Landroid/os/Message;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/baidu/location/b/l;->f(Landroid/os/Message;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/location/b/l;->C:J

    :goto_0
    return-void
.end method

.method private h(Landroid/os/Message;)V
    .locals 13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/baidu/location/b/l;->t:J

    sub-long/2addr v0, v2

    iget-boolean v2, p0, Lcom/baidu/location/b/l;->r:Z

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x2ee0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/baidu/location/b/l;->t:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/baidu/location/b/l;->t:J

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x3e8

    cmp-long v6, v0, v4

    if-gez v6, :cond_2

    iget-object p1, p0, Lcom/baidu/location/b/l;->k:Lcom/baidu/location/BDLocation;

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/baidu/location/b/a;->a()Lcom/baidu/location/b/a;

    move-result-object p1

    iget-object v0, p0, Lcom/baidu/location/b/l;->k:Lcom/baidu/location/BDLocation;

    invoke-virtual {p1, v0}, Lcom/baidu/location/b/a;->a(Lcom/baidu/location/BDLocation;)V

    :cond_1
    invoke-direct {p0}, Lcom/baidu/location/b/l;->k()V

    return-void

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/b/l;->r:Z

    iget-object v1, p0, Lcom/baidu/location/b/l;->n:Lcom/baidu/location/c/a;

    invoke-direct {p0, v1}, Lcom/baidu/location/b/l;->a(Lcom/baidu/location/c/a;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/baidu/location/b/l;->i:Z

    iget-object v1, p0, Lcom/baidu/location/b/l;->m:Lcom/baidu/location/c/h;

    invoke-direct {p0, v1}, Lcom/baidu/location/b/l;->a(Lcom/baidu/location/c/h;)Z

    move-result v1

    const/4 v4, 0x0

    if-nez v1, :cond_8

    iget-boolean v1, p0, Lcom/baidu/location/b/l;->i:Z

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/baidu/location/b/l;->k:Lcom/baidu/location/BDLocation;

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Lcom/baidu/location/b/l;->A:Z

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/baidu/location/b/l;->l:Lcom/baidu/location/BDLocation;

    if-eqz v1, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/baidu/location/b/l;->u:J

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x7530

    cmp-long v1, v5, v7

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/baidu/location/b/l;->l:Lcom/baidu/location/BDLocation;

    iput-object v1, p0, Lcom/baidu/location/b/l;->k:Lcom/baidu/location/BDLocation;

    iput-object v4, p0, Lcom/baidu/location/b/l;->l:Lcom/baidu/location/BDLocation;

    :cond_3
    invoke-static {}, Lcom/baidu/location/b/n;->a()Lcom/baidu/location/b/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/location/b/n;->d()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/baidu/location/b/l;->k:Lcom/baidu/location/BDLocation;

    invoke-static {}, Lcom/baidu/location/b/n;->a()Lcom/baidu/location/b/n;

    move-result-object v5

    invoke-virtual {v5}, Lcom/baidu/location/b/n;->e()F

    move-result v5

    invoke-virtual {v1, v5}, Lcom/baidu/location/BDLocation;->setDirection(F)V

    :cond_4
    iget-object v1, p0, Lcom/baidu/location/b/l;->k:Lcom/baidu/location/BDLocation;

    invoke-virtual {v1}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v1

    const/16 v5, 0x3e

    if-ne v1, v5, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/baidu/location/b/l;->M:J

    sub-long/2addr v6, v8

    cmp-long v1, v6, v2

    if-gtz v1, :cond_6

    :cond_5
    move-wide v6, v2

    :cond_6
    iget-object v1, p0, Lcom/baidu/location/b/l;->k:Lcom/baidu/location/BDLocation;

    invoke-virtual {v1}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v1

    const/16 v8, 0x3d

    if-eq v1, v8, :cond_7

    iget-object v1, p0, Lcom/baidu/location/b/l;->k:Lcom/baidu/location/BDLocation;

    invoke-virtual {v1}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v1

    const/16 v8, 0xa1

    if-eq v1, v8, :cond_7

    iget-object v1, p0, Lcom/baidu/location/b/l;->k:Lcom/baidu/location/BDLocation;

    invoke-virtual {v1}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v1

    if-ne v1, v5, :cond_8

    const-wide/16 v8, 0x3a98

    cmp-long v1, v6, v8

    if-gez v1, :cond_8

    :cond_7
    invoke-static {}, Lcom/baidu/location/b/a;->a()Lcom/baidu/location/b/a;

    move-result-object p1

    iget-object v0, p0, Lcom/baidu/location/b/l;->k:Lcom/baidu/location/BDLocation;

    invoke-virtual {p1, v0}, Lcom/baidu/location/b/a;->a(Lcom/baidu/location/BDLocation;)V

    invoke-direct {p0}, Lcom/baidu/location/b/l;->k()V

    return-void

    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/baidu/location/b/l;->t:J

    invoke-virtual {p0, v4}, Lcom/baidu/location/b/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/baidu/location/b/l;->I:Z

    if-nez v1, :cond_c

    iput-boolean v0, p0, Lcom/baidu/location/b/l;->I:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/baidu/location/b/l;->M:J

    invoke-direct {p0}, Lcom/baidu/location/b/l;->j()[Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/baidu/location/b/l;->B:J

    sub-long v8, v6, v8

    const-wide/32 v10, 0xea60

    cmp-long v12, v8, v10

    if-lez v12, :cond_9

    iput-wide v6, p0, Lcom/baidu/location/b/l;->B:J

    :cond_9
    invoke-static {}, Lcom/baidu/location/c/i;->a()Lcom/baidu/location/c/i;

    move-result-object v6

    invoke-virtual {v6}, Lcom/baidu/location/c/i;->l()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_a

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/baidu/location/b/i;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v1, v5

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/baidu/location/b/i;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v1, v5

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    iget-object v6, p0, Lcom/baidu/location/b/i;->b:Lcom/baidu/location/c/a;

    if-eqz v6, :cond_b

    invoke-virtual {v6}, Lcom/baidu/location/c/a;->g()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_b

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/baidu/location/b/i;->b:Lcom/baidu/location/c/a;

    invoke-virtual {v7}, Lcom/baidu/location/c/a;->g()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_b
    invoke-static {}, Lcom/baidu/location/e/b;->a()Lcom/baidu/location/e/b;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/baidu/location/e/b;->a(Z)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_c

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_c
    iget-object v6, p0, Lcom/baidu/location/b/l;->j:Ljava/lang/String;

    if-eqz v6, :cond_d

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/location/b/l;->j:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v4, p0, Lcom/baidu/location/b/l;->j:Ljava/lang/String;

    :cond_d
    iget-object v4, p0, Lcom/baidu/location/b/i;->a:Lcom/baidu/location/c/h;

    if-eqz v4, :cond_e

    invoke-virtual {v4}, Lcom/baidu/location/c/h;->f()J

    move-result-wide v2

    :cond_e
    iget-object v4, p0, Lcom/baidu/location/b/l;->e:Lcom/baidu/location/b/i$b;

    invoke-virtual {v4, v1, v2, v3}, Lcom/baidu/location/b/i$b;->a(Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/baidu/location/b/i;->b:Lcom/baidu/location/c/a;

    iput-object v1, p0, Lcom/baidu/location/b/l;->n:Lcom/baidu/location/c/a;

    iget-object v1, p0, Lcom/baidu/location/b/i;->a:Lcom/baidu/location/c/h;

    iput-object v1, p0, Lcom/baidu/location/b/l;->m:Lcom/baidu/location/c/h;

    iget-boolean v1, p0, Lcom/baidu/location/b/l;->q:Z

    if-ne v1, v0, :cond_f

    iput-boolean v5, p0, Lcom/baidu/location/b/l;->q:Z

    invoke-static {}, Lcom/baidu/location/c/i;->i()Z

    move-result v0

    if-eqz v0, :cond_f

    if-eqz p1, :cond_f

    invoke-static {}, Lcom/baidu/location/b/a;->a()Lcom/baidu/location/b/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/location/b/a;->e(Landroid/os/Message;)I

    :cond_f
    iget p1, p0, Lcom/baidu/location/b/l;->L:I

    if-lez p1, :cond_11

    const/4 v0, 0x2

    if-ne p1, v0, :cond_10

    invoke-static {}, Lcom/baidu/location/c/i;->a()Lcom/baidu/location/c/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/location/c/i;->f()Z

    :cond_10
    iput v5, p0, Lcom/baidu/location/b/l;->L:I

    :cond_11
    return-void
.end method

.method private j()[Ljava/lang/String;
    .locals 15

    const-string v0, ""

    const-string v1, "Location failed beacuse we can not get any loc information!"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "&apl="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/baidu/location/f;->getServiceContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/baidu/location/e/k;->a(Landroid/content/Context;)I

    move-result v3

    const-string v4, "Location failed beacuse we can not get any loc information in airplane mode, you can turn it off and try again!!"

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    aput-object v4, v0, v5

    :cond_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/baidu/location/f;->getServiceContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/baidu/location/e/k;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "0|0|"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    const-string v9, "Location failed beacuse we can not get any loc information without any location permission!"

    if-eqz v8, :cond_1

    aput-object v9, v0, v5

    :cond_1
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x17

    const-string v11, "Location failed beacuse we can not get any loc information with the phone loc mode is off, you can turn it on and try again!"

    const/4 v12, 0x0

    if-lt v8, v10, :cond_3

    const-string v8, "&loc="

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/baidu/location/f;->getServiceContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/baidu/location/e/k;->b(Landroid/content/Context;)I

    move-result v8

    if-nez v8, :cond_2

    aput-object v11, v0, v5

    const/4 v10, 0x1

    goto :goto_0

    :cond_2
    const/4 v10, 0x0

    :goto_0
    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_3
    const/4 v10, 0x0

    :goto_1
    const-string v8, "&lmd="

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/baidu/location/f;->getServiceContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/baidu/location/e/k;->b(Landroid/content/Context;)I

    move-result v8

    if-ltz v8, :cond_4

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_4
    invoke-static {}, Lcom/baidu/location/c/b;->a()Lcom/baidu/location/c/b;

    move-result-object v8

    invoke-virtual {v8}, Lcom/baidu/location/c/b;->g()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lcom/baidu/location/c/i;->a()Lcom/baidu/location/c/i;

    move-result-object v13

    invoke-virtual {v13}, Lcom/baidu/location/c/i;->g()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/baidu/location/f;->getServiceContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lcom/baidu/location/e/k;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v14, 0x3e

    if-ne v3, v5, :cond_5

    invoke-static {}, Lcom/baidu/location/b/b;->a()Lcom/baidu/location/b/b;

    move-result-object v1

    const/4 v3, 0x7

    :goto_2
    invoke-virtual {v1, v14, v3, v4}, Lcom/baidu/location/b/b;->a(IILjava/lang/String;)V

    goto :goto_3

    :cond_5
    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {}, Lcom/baidu/location/b/b;->a()Lcom/baidu/location/b/b;

    move-result-object v1

    const/4 v3, 0x4

    invoke-virtual {v1, v14, v3, v9}, Lcom/baidu/location/b/b;->a(IILjava/lang/String;)V

    goto :goto_3

    :cond_6
    if-eqz v10, :cond_7

    invoke-static {}, Lcom/baidu/location/b/b;->a()Lcom/baidu/location/b/b;

    move-result-object v1

    const/4 v3, 0x5

    invoke-virtual {v1, v14, v3, v11}, Lcom/baidu/location/b/b;->a(IILjava/lang/String;)V

    goto :goto_3

    :cond_7
    if-eqz v8, :cond_8

    if-eqz v13, :cond_8

    const-string v3, "&sim=1"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "&wifio=1"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-static {}, Lcom/baidu/location/b/b;->a()Lcom/baidu/location/b/b;

    move-result-object v1

    const/4 v3, 0x6

    const-string v4, "Location failed beacuse we can not get any loc information , you can insert a sim card or open wifi and try again!"

    goto :goto_2

    :cond_8
    invoke-static {}, Lcom/baidu/location/b/b;->a()Lcom/baidu/location/b/b;

    move-result-object v3

    const/16 v4, 0x9

    invoke-virtual {v3, v14, v4, v1}, Lcom/baidu/location/b/b;->a(IILjava/lang/String;)V

    :goto_3
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v12

    return-object v0
.end method

.method private k()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/b/l;->r:Z

    iput-boolean v0, p0, Lcom/baidu/location/b/l;->F:Z

    iput-boolean v0, p0, Lcom/baidu/location/b/l;->G:Z

    iput-boolean v0, p0, Lcom/baidu/location/b/l;->A:Z

    invoke-direct {p0}, Lcom/baidu/location/b/l;->l()V

    iget-boolean v1, p0, Lcom/baidu/location/b/l;->O:Z

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lcom/baidu/location/b/l;->O:Z

    :cond_0
    return-void
.end method

.method private l()V
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/b/l;->k:Lcom/baidu/location/BDLocation;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/baidu/location/c/i;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/baidu/location/b/x;->a()Lcom/baidu/location/b/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/b/x;->d()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/location/BDLocation;)Lcom/baidu/location/Address;
    .locals 11

    sget-object v0, Lcom/baidu/location/e/k;->g:Ljava/lang/String;

    const-string v1, "all"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/baidu/location/e/k;->h:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/baidu/location/e/k;->j:Z

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    iget-wide v2, p0, Lcom/baidu/location/b/l;->z:D

    iget-wide v4, p0, Lcom/baidu/location/b/l;->y:D

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v6

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v8

    move-object v10, v0

    invoke-static/range {v2 .. v10}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    const/4 p1, 0x0

    aget p1, v0, p1

    const/high16 v0, 0x42c80000    # 100.0f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_1

    iget-object p1, p0, Lcom/baidu/location/b/l;->v:Lcom/baidu/location/Address;

    if-eqz p1, :cond_2

    return-object p1

    :cond_1
    iput-object v1, p0, Lcom/baidu/location/b/l;->w:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/b/l;->x:Ljava/util/List;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/baidu/location/b/l;->A:Z

    iget-object p1, p0, Lcom/baidu/location/b/l;->f:Landroid/os/Handler;

    new-instance v0, Lcom/baidu/location/b/m;

    invoke-direct {v0, p0}, Lcom/baidu/location/b/m;-><init>(Lcom/baidu/location/b/l;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-object v1
.end method

.method public a()V
    .locals 12

    iget-object v0, p0, Lcom/baidu/location/b/l;->D:Lcom/baidu/location/b/l$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v2, p0, Lcom/baidu/location/b/l;->E:Z

    if-eqz v2, :cond_0

    iput-boolean v1, p0, Lcom/baidu/location/b/l;->E:Z

    iget-object v2, p0, Lcom/baidu/location/b/l;->f:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    invoke-static {}, Lcom/baidu/location/c/e;->a()Lcom/baidu/location/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/c/e;->i()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/baidu/location/c/e;->a()Lcom/baidu/location/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/c/e;->f()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/baidu/location/BDLocation;

    invoke-direct {v2, v0}, Lcom/baidu/location/BDLocation;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/baidu/location/e/k;->g:Ljava/lang/String;

    const-string v3, "all"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/baidu/location/e/k;->h:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/baidu/location/e/k;->j:Z

    if-eqz v0, :cond_4

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [F

    iget-wide v3, p0, Lcom/baidu/location/b/l;->z:D

    iget-wide v5, p0, Lcom/baidu/location/b/l;->y:D

    invoke-virtual {v2}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v7

    invoke-virtual {v2}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v9

    move-object v11, v0

    invoke-static/range {v3 .. v11}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    aget v0, v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    iget-object v0, p0, Lcom/baidu/location/b/l;->v:Lcom/baidu/location/Address;

    if-eqz v0, :cond_2

    invoke-virtual {v2, v0}, Lcom/baidu/location/BDLocation;->setAddr(Lcom/baidu/location/Address;)V

    :cond_2
    iget-object v0, p0, Lcom/baidu/location/b/l;->w:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v2, v0}, Lcom/baidu/location/BDLocation;->setLocationDescribe(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/baidu/location/b/l;->x:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-virtual {v2, v0}, Lcom/baidu/location/BDLocation;->setPoiList(Ljava/util/List;)V

    :cond_4
    invoke-static {}, Lcom/baidu/location/b/a;->a()Lcom/baidu/location/b/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/baidu/location/b/a;->a(Lcom/baidu/location/BDLocation;)V

    :goto_0
    invoke-direct {p0}, Lcom/baidu/location/b/l;->k()V

    return-void

    :cond_5
    iget-boolean v0, p0, Lcom/baidu/location/b/l;->F:Z

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/baidu/location/b/l;->k()V

    return-void

    :cond_6
    iget-boolean v0, p0, Lcom/baidu/location/b/l;->i:Z

    const/4 v1, 0x0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/baidu/location/b/l;->k:Lcom/baidu/location/BDLocation;

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/baidu/location/b/a;->a()Lcom/baidu/location/b/a;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/location/b/l;->k:Lcom/baidu/location/BDLocation;

    invoke-virtual {v0, v2}, Lcom/baidu/location/b/a;->a(Lcom/baidu/location/BDLocation;)V

    goto :goto_1

    :cond_7
    new-instance v0, Lcom/baidu/location/BDLocation;

    invoke-direct {v0}, Lcom/baidu/location/BDLocation;-><init>()V

    const/16 v2, 0x3f

    invoke-virtual {v0, v2}, Lcom/baidu/location/BDLocation;->setLocType(I)V

    iput-object v1, p0, Lcom/baidu/location/b/l;->k:Lcom/baidu/location/BDLocation;

    invoke-static {}, Lcom/baidu/location/b/a;->a()Lcom/baidu/location/b/a;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/baidu/location/b/a;->a(Lcom/baidu/location/BDLocation;)V

    :goto_1
    iput-object v1, p0, Lcom/baidu/location/b/l;->l:Lcom/baidu/location/BDLocation;

    goto :goto_0
.end method

.method public a(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Lcom/baidu/location/b/l;->D:Lcom/baidu/location/b/l$a;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/baidu/location/b/l;->E:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/baidu/location/b/l;->E:Z

    iget-object v1, p0, Lcom/baidu/location/b/l;->f:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/baidu/location/BDLocation;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v0

    const/16 v1, 0xa7

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/baidu/location/b/l;->I:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x3e

    invoke-virtual {p1, v0}, Lcom/baidu/location/BDLocation;->setLocType(I)V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/baidu/location/b/l;->b(Lcom/baidu/location/BDLocation;)V

    return-void
.end method

.method public b(Landroid/os/Message;)V
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/b/l;->H:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/baidu/location/b/l;->c(Landroid/os/Message;)V

    return-void
.end method

.method public b(Lcom/baidu/location/BDLocation;)V
    .locals 13

    new-instance v0, Lcom/baidu/location/BDLocation;

    invoke-direct {v0, p1}, Lcom/baidu/location/BDLocation;-><init>(Lcom/baidu/location/BDLocation;)V

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->hasAddr()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getAddress()Lcom/baidu/location/Address;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/b/l;->v:Lcom/baidu/location/Address;

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/location/b/l;->y:D

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/location/b/l;->z:D

    :cond_0
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLocationDescribe()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLocationDescribe()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/b/l;->w:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/location/b/l;->y:D

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/location/b/l;->z:D

    :cond_1
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getPoiList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getPoiList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/b/l;->x:Ljava/util/List;

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/location/b/l;->y:D

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/location/b/l;->z:D

    :cond_2
    invoke-static {}, Lcom/baidu/location/c/e;->a()Lcom/baidu/location/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/c/e;->i()Z

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/baidu/location/c/e;->a()Lcom/baidu/location/c/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/location/c/e;->f()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/baidu/location/BDLocation;

    invoke-direct {v0, p1}, Lcom/baidu/location/BDLocation;-><init>(Ljava/lang/String;)V

    sget-object p1, Lcom/baidu/location/e/k;->g:Ljava/lang/String;

    const-string v4, "all"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    sget-boolean p1, Lcom/baidu/location/e/k;->h:Z

    if-nez p1, :cond_3

    sget-boolean p1, Lcom/baidu/location/e/k;->j:Z

    if-eqz p1, :cond_6

    :cond_3
    new-array p1, v2, [F

    iget-wide v4, p0, Lcom/baidu/location/b/l;->z:D

    iget-wide v6, p0, Lcom/baidu/location/b/l;->y:D

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v8

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v10

    move-object v12, p1

    invoke-static/range {v4 .. v12}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    aget p1, p1, v3

    cmpg-float p1, p1, v1

    if-gez p1, :cond_6

    iget-object p1, p0, Lcom/baidu/location/b/l;->v:Lcom/baidu/location/Address;

    if-eqz p1, :cond_4

    invoke-virtual {v0, p1}, Lcom/baidu/location/BDLocation;->setAddr(Lcom/baidu/location/Address;)V

    :cond_4
    iget-object p1, p0, Lcom/baidu/location/b/l;->w:Ljava/lang/String;

    if-eqz p1, :cond_5

    invoke-virtual {v0, p1}, Lcom/baidu/location/BDLocation;->setLocationDescribe(Ljava/lang/String;)V

    :cond_5
    iget-object p1, p0, Lcom/baidu/location/b/l;->x:Ljava/util/List;

    if-eqz p1, :cond_6

    invoke-virtual {v0, p1}, Lcom/baidu/location/BDLocation;->setPoiList(Ljava/util/List;)V

    :cond_6
    invoke-static {}, Lcom/baidu/location/b/a;->a()Lcom/baidu/location/b/a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/baidu/location/b/a;->a(Lcom/baidu/location/BDLocation;)V

    invoke-direct {p0}, Lcom/baidu/location/b/l;->k()V

    return-void

    :cond_7
    iget-boolean v0, p0, Lcom/baidu/location/b/l;->F:Z

    if-eqz v0, :cond_b

    new-array v0, v2, [F

    iget-object v1, p0, Lcom/baidu/location/b/l;->k:Lcom/baidu/location/BDLocation;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v4

    iget-object v1, p0, Lcom/baidu/location/b/l;->k:Lcom/baidu/location/BDLocation;

    invoke-virtual {v1}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v6

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v8

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v10

    move-object v12, v0

    invoke-static/range {v4 .. v12}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    :cond_8
    aget v0, v0, v3

    const/high16 v1, 0x41200000    # 10.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_9

    iput-object p1, p0, Lcom/baidu/location/b/l;->k:Lcom/baidu/location/BDLocation;

    iget-boolean v0, p0, Lcom/baidu/location/b/l;->G:Z

    if-nez v0, :cond_a

    iput-boolean v3, p0, Lcom/baidu/location/b/l;->G:Z

    goto :goto_0

    :cond_9
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getUserIndoorState()I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_a

    iput-object p1, p0, Lcom/baidu/location/b/l;->k:Lcom/baidu/location/BDLocation;

    :goto_0
    invoke-static {}, Lcom/baidu/location/b/a;->a()Lcom/baidu/location/b/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/location/b/a;->a(Lcom/baidu/location/BDLocation;)V

    :cond_a
    invoke-direct {p0}, Lcom/baidu/location/b/l;->k()V

    return-void

    :cond_b
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v0

    const-string v4, "cl"

    const/16 v5, 0xa7

    const/4 v6, 0x1

    const/16 v7, 0xa1

    if-ne v0, v5, :cond_c

    invoke-static {}, Lcom/baidu/location/b/b;->a()Lcom/baidu/location/b/b;

    move-result-object v0

    const/16 v1, 0x8

    const-string v2, "NetWork location failed because baidu location service can not caculate the location!"

    invoke-virtual {v0, v5, v1, v2}, Lcom/baidu/location/b/b;->a(IILjava/lang/String;)V

    goto :goto_3

    :cond_c
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v0

    if-ne v0, v7, :cond_10

    invoke-static {}, Lcom/baidu/location/f;->getServiceContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/location/e/k;->b(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_e

    if-ne v0, v2, :cond_d

    goto :goto_1

    :cond_d
    const/4 v0, 0x0

    goto :goto_2

    :cond_e
    :goto_1
    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_f

    invoke-static {}, Lcom/baidu/location/b/b;->a()Lcom/baidu/location/b/b;

    move-result-object v0

    const-string v1, "NetWork location successful, open gps will be better!"

    invoke-virtual {v0, v7, v6, v1}, Lcom/baidu/location/b/b;->a(IILjava/lang/String;)V

    goto :goto_3

    :cond_f
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getRadius()F

    move-result v0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_10

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getNetworkLocationType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getNetworkLocationType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {}, Lcom/baidu/location/c/i;->a()Lcom/baidu/location/c/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/c/i;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    const-string v1, "&wifio=1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-static {}, Lcom/baidu/location/b/b;->a()Lcom/baidu/location/b/b;

    move-result-object v0

    const-string v1, "NetWork location successful, open wifi will be better!"

    invoke-virtual {v0, v7, v2, v1}, Lcom/baidu/location/b/b;->a(IILjava/lang/String;)V

    :cond_10
    :goto_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/b/l;->l:Lcom/baidu/location/BDLocation;

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v1

    if-ne v1, v7, :cond_11

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getNetworkLocationType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/baidu/location/b/l;->k:Lcom/baidu/location/BDLocation;

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v1

    if-ne v1, v7, :cond_11

    iget-object v1, p0, Lcom/baidu/location/b/l;->k:Lcom/baidu/location/BDLocation;

    invoke-virtual {v1}, Lcom/baidu/location/BDLocation;->getNetworkLocationType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "wf"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v4, p0, Lcom/baidu/location/b/l;->u:J

    sub-long/2addr v1, v4

    const-wide/16 v4, 0x7530

    cmp-long v7, v1, v4

    if-gez v7, :cond_11

    iput-object p1, p0, Lcom/baidu/location/b/l;->l:Lcom/baidu/location/BDLocation;

    const/4 v3, 0x1

    :cond_11
    invoke-static {}, Lcom/baidu/location/b/a;->a()Lcom/baidu/location/b/a;

    move-result-object v1

    if-eqz v3, :cond_12

    iget-object v2, p0, Lcom/baidu/location/b/l;->k:Lcom/baidu/location/BDLocation;

    invoke-virtual {v1, v2}, Lcom/baidu/location/b/a;->a(Lcom/baidu/location/BDLocation;)V

    goto :goto_4

    :cond_12
    invoke-virtual {v1, p1}, Lcom/baidu/location/b/a;->a(Lcom/baidu/location/BDLocation;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/baidu/location/b/l;->u:J

    :goto_4
    invoke-static {p1}, Lcom/baidu/location/e/k;->a(Lcom/baidu/location/BDLocation;)Z

    move-result v1

    if-eqz v1, :cond_13

    if-nez v3, :cond_14

    iput-object p1, p0, Lcom/baidu/location/b/l;->k:Lcom/baidu/location/BDLocation;

    goto :goto_5

    :cond_13
    iput-object v0, p0, Lcom/baidu/location/b/l;->k:Lcom/baidu/location/BDLocation;

    :cond_14
    :goto_5
    sget-object p1, Lcom/baidu/location/b/i;->c:Ljava/lang/String;

    const-string v1, "ssid\":\""

    const-string v2, "\""

    invoke-static {p1, v1, v2}, Lcom/baidu/location/e/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    const/high16 v1, -0x80000000

    if-eq p1, v1, :cond_15

    iget-object v1, p0, Lcom/baidu/location/b/l;->m:Lcom/baidu/location/c/h;

    if-eqz v1, :cond_15

    invoke-virtual {v1, p1}, Lcom/baidu/location/c/h;->b(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/location/b/l;->j:Ljava/lang/String;

    goto :goto_6

    :cond_15
    iput-object v0, p0, Lcom/baidu/location/b/l;->j:Ljava/lang/String;

    :goto_6
    invoke-static {}, Lcom/baidu/location/c/i;->i()Z

    invoke-direct {p0}, Lcom/baidu/location/b/l;->k()V

    return-void
.end method

.method public c(Lcom/baidu/location/BDLocation;)V
    .locals 1

    new-instance v0, Lcom/baidu/location/BDLocation;

    invoke-direct {v0, p1}, Lcom/baidu/location/BDLocation;-><init>(Lcom/baidu/location/BDLocation;)V

    iput-object v0, p0, Lcom/baidu/location/b/l;->k:Lcom/baidu/location/BDLocation;

    return-void
.end method

.method public d()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/b/l;->q:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/baidu/location/b/l;->r:Z

    iput-boolean v0, p0, Lcom/baidu/location/b/l;->H:Z

    return-void
.end method

.method public e()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/b/l;->r:Z

    iput-boolean v0, p0, Lcom/baidu/location/b/l;->s:Z

    iput-boolean v0, p0, Lcom/baidu/location/b/l;->F:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/baidu/location/b/l;->G:Z

    invoke-virtual {p0}, Lcom/baidu/location/b/l;->i()V

    iput-boolean v0, p0, Lcom/baidu/location/b/l;->H:Z

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/b/l;->w:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/baidu/location/Poi;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/location/b/l;->x:Ljava/util/List;

    return-object v0
.end method

.method public h()V
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/location/b/l;->s:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/baidu/location/b/l;->h(Landroid/os/Message;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/b/l;->s:Z

    :cond_0
    return-void
.end method

.method public i()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/b/l;->k:Lcom/baidu/location/BDLocation;

    return-void
.end method
