.class public Lcom/baidu/location/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/location/b/a$a;,
        Lcom/baidu/location/b/a$b;
    }
.end annotation


# static fields
.field public static c:J = 0x0L

.field public static d:I = -0x1

.field private static f:Lcom/baidu/location/b/a;


# instance fields
.field public a:Z

.field b:Z

.field e:I

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/baidu/location/b/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private h:Z

.field private i:Lcom/baidu/location/BDLocation;

.field private j:Lcom/baidu/location/BDLocation;

.field private k:Lcom/baidu/location/BDLocation;

.field private l:Z

.field private m:Z

.field private n:Lcom/baidu/location/b/a$b;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/b/a;->g:Ljava/util/ArrayList;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/baidu/location/b/a;->h:Z

    iput-boolean v1, p0, Lcom/baidu/location/b/a;->a:Z

    iput-boolean v1, p0, Lcom/baidu/location/b/a;->b:Z

    iput-object v0, p0, Lcom/baidu/location/b/a;->i:Lcom/baidu/location/BDLocation;

    iput-object v0, p0, Lcom/baidu/location/b/a;->j:Lcom/baidu/location/BDLocation;

    iput v1, p0, Lcom/baidu/location/b/a;->e:I

    iput-object v0, p0, Lcom/baidu/location/b/a;->k:Lcom/baidu/location/BDLocation;

    iput-boolean v1, p0, Lcom/baidu/location/b/a;->l:Z

    iput-boolean v1, p0, Lcom/baidu/location/b/a;->m:Z

    iput-object v0, p0, Lcom/baidu/location/b/a;->n:Lcom/baidu/location/b/a$b;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/b/a;->g:Ljava/util/ArrayList;

    return-void
.end method

.method private a(Landroid/os/Messenger;)Lcom/baidu/location/b/a$a;
    .locals 4

    iget-object v0, p0, Lcom/baidu/location/b/a;->g:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/location/b/a$a;

    iget-object v3, v2, Lcom/baidu/location/b/a$a;->b:Landroid/os/Messenger;

    invoke-virtual {v3, p1}, Landroid/os/Messenger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_2
    return-object v1
.end method

.method public static a()Lcom/baidu/location/b/a;
    .locals 1

    sget-object v0, Lcom/baidu/location/b/a;->f:Lcom/baidu/location/b/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/location/b/a;

    invoke-direct {v0}, Lcom/baidu/location/b/a;-><init>()V

    sput-object v0, Lcom/baidu/location/b/a;->f:Lcom/baidu/location/b/a;

    :cond_0
    sget-object v0, Lcom/baidu/location/b/a;->f:Lcom/baidu/location/b/a;

    return-object v0
.end method

.method private a(Lcom/baidu/location/b/a$a;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lcom/baidu/location/b/a$a;->b:Landroid/os/Messenger;

    invoke-direct {p0, v0}, Lcom/baidu/location/b/a;->a(Landroid/os/Messenger;)Lcom/baidu/location/b/a$a;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v0, 0xe

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/baidu/location/b/a;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v0, 0xd

    :goto_0
    invoke-static {p1, v0}, Lcom/baidu/location/b/a$a;->a(Lcom/baidu/location/b/a$a;I)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/location/b/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/location/b/a;->m:Z

    return p1
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.baidu.location.flp.log"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.baidu.baidulocationdemo"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "pack"

    sget-object v1, Lcom/baidu/location/e/b;->e:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "tag"

    const-string v1, "state"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/baidu/location/f;->getServiceContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private e()V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/location/b/a;->f()V

    invoke-virtual {p0}, Lcom/baidu/location/b/a;->d()V

    return-void
.end method

.method private f()V
    .locals 6

    iget-object v0, p0, Lcom/baidu/location/b/a;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/location/b/a$a;

    iget-object v3, v3, Lcom/baidu/location/b/a$a;->c:Lcom/baidu/location/LocationClientOption;

    iget-boolean v4, v3, Lcom/baidu/location/LocationClientOption;->openGps:Z

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    const/4 v2, 0x1

    :cond_1
    iget-boolean v3, v3, Lcom/baidu/location/LocationClientOption;->location_change_notify:Z

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    sput-boolean v1, Lcom/baidu/location/e/k;->a:Z

    iget-boolean v0, p0, Lcom/baidu/location/b/a;->h:Z

    if-eq v0, v2, :cond_3

    iput-boolean v2, p0, Lcom/baidu/location/b/a;->h:Z

    invoke-static {}, Lcom/baidu/location/c/e;->a()Lcom/baidu/location/c/e;

    move-result-object v0

    iget-boolean v1, p0, Lcom/baidu/location/b/a;->h:Z

    invoke-virtual {v0, v1}, Lcom/baidu/location/c/e;->a(Z)V

    :cond_3
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;I)V
    .locals 3

    iget-object v0, p0, Lcom/baidu/location/b/a;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/location/b/a$a;

    invoke-static {v1, p2, p1}, Lcom/baidu/location/b/a$a;->a(Lcom/baidu/location/b/a$a;ILandroid/os/Bundle;)V

    iget v1, v1, Lcom/baidu/location/b/a$a;->d:I

    const/4 v2, 0x4

    if-le v1, v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_1
    return-void
.end method

.method public a(Landroid/os/Message;)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/baidu/location/b/a;->c:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/b/a;->a:Z

    invoke-static {}, Lcom/baidu/location/c/i;->a()Lcom/baidu/location/c/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/c/i;->b()V

    new-instance v0, Lcom/baidu/location/b/a$a;

    invoke-direct {v0, p0, p1}, Lcom/baidu/location/b/a$a;-><init>(Lcom/baidu/location/b/a;Landroid/os/Message;)V

    invoke-direct {p0, v0}, Lcom/baidu/location/b/a;->a(Lcom/baidu/location/b/a$a;)V

    invoke-direct {p0}, Lcom/baidu/location/b/a;->e()V

    iget-boolean p1, p0, Lcom/baidu/location/b/a;->l:Z

    if-eqz p1, :cond_1

    const-string p1, "start"

    invoke-direct {p0, p1}, Lcom/baidu/location/b/a;->b(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/baidu/location/b/a;->e:I

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lcom/baidu/location/BDLocation;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/baidu/location/b/a;->b(Lcom/baidu/location/BDLocation;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/baidu/location/BDLocation;

    invoke-direct {v0, p1}, Lcom/baidu/location/BDLocation;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/baidu/location/b/a;->c(Lcom/baidu/location/BDLocation;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/location/b/a;->a:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    sput p1, Lcom/baidu/location/b/a;->d:I

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/b/a;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/b/a;->i:Lcom/baidu/location/BDLocation;

    invoke-direct {p0}, Lcom/baidu/location/b/a;->e()V

    return-void
.end method

.method public b(Landroid/os/Message;)V
    .locals 1

    iget-object p1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {p0, p1}, Lcom/baidu/location/b/a;->a(Landroid/os/Messenger;)Lcom/baidu/location/b/a$a;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/baidu/location/b/a;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {}, Lcom/baidu/location/b/n;->a()Lcom/baidu/location/b/n;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/location/b/n;->c()V

    invoke-direct {p0}, Lcom/baidu/location/b/a;->e()V

    iget-boolean p1, p0, Lcom/baidu/location/b/a;->l:Z

    if-eqz p1, :cond_1

    const-string p1, "stop"

    invoke-direct {p0, p1}, Lcom/baidu/location/b/a;->b(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/baidu/location/b/a;->e:I

    :cond_1
    return-void
.end method

.method public b(Lcom/baidu/location/BDLocation;)V
    .locals 13

    const/4 v0, 0x4

    const/16 v1, 0xa1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v2

    if-ne v2, v1, :cond_2

    invoke-static {}, Lcom/baidu/location/a/a;->a()Lcom/baidu/location/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/location/a/a;->b()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/baidu/location/b/a;->j:Lcom/baidu/location/BDLocation;

    if-nez v2, :cond_0

    new-instance v2, Lcom/baidu/location/BDLocation;

    invoke-direct {v2}, Lcom/baidu/location/BDLocation;-><init>()V

    iput-object v2, p0, Lcom/baidu/location/b/a;->j:Lcom/baidu/location/BDLocation;

    const/16 v3, 0x1f9

    invoke-virtual {v2, v3}, Lcom/baidu/location/BDLocation;->setLocType(I)V

    :cond_0
    iget-object v2, p0, Lcom/baidu/location/b/a;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    :try_start_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/location/b/a$a;

    iget-object v4, p0, Lcom/baidu/location/b/a;->j:Lcom/baidu/location/BDLocation;

    invoke-virtual {v3, v4}, Lcom/baidu/location/b/a$a;->a(Lcom/baidu/location/BDLocation;)V

    iget v3, v3, Lcom/baidu/location/b/a$a;->d:I

    if-le v3, v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/baidu/location/b/a;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/location/b/a$a;

    invoke-virtual {v3, p1}, Lcom/baidu/location/b/a$a;->a(Lcom/baidu/location/BDLocation;)V

    iget v3, v3, Lcom/baidu/location/b/a$a;->d:I

    if-le v3, v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_4
    :goto_2
    sget-boolean v0, Lcom/baidu/location/b/l;->g:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    sput-boolean v2, Lcom/baidu/location/b/l;->g:Z

    :cond_5
    sget v3, Lcom/baidu/location/e/k;->X:I

    const/16 v4, 0x2710

    if-lt v3, v4, :cond_9

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v3

    const/16 v4, 0x3d

    if-eq v3, v4, :cond_6

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v3

    if-eq v3, v1, :cond_6

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v1

    const/16 v3, 0x42

    if-ne v1, v3, :cond_9

    :cond_6
    iget-object v1, p0, Lcom/baidu/location/b/a;->i:Lcom/baidu/location/BDLocation;

    if-eqz v1, :cond_8

    const/4 v3, 0x1

    new-array v3, v3, [F

    invoke-virtual {v1}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v4

    iget-object v1, p0, Lcom/baidu/location/b/a;->i:Lcom/baidu/location/BDLocation;

    invoke-virtual {v1}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v6

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v8

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v10

    move-object v12, v3

    invoke-static/range {v4 .. v12}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    aget v1, v3, v2

    sget v2, Lcom/baidu/location/e/k;->Z:I

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_7

    if-nez v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/b/a;->i:Lcom/baidu/location/BDLocation;

    new-instance v0, Lcom/baidu/location/BDLocation;

    invoke-direct {v0, p1}, Lcom/baidu/location/BDLocation;-><init>(Lcom/baidu/location/BDLocation;)V

    goto :goto_3

    :cond_8
    new-instance v0, Lcom/baidu/location/BDLocation;

    invoke-direct {v0, p1}, Lcom/baidu/location/BDLocation;-><init>(Lcom/baidu/location/BDLocation;)V

    :goto_3
    iput-object v0, p0, Lcom/baidu/location/b/a;->i:Lcom/baidu/location/BDLocation;

    :cond_9
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iget-object v1, p0, Lcom/baidu/location/b/a;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const-string v2, ":"

    const-string v3, "&prod="

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/baidu/location/e/b;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/baidu/location/e/b;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/baidu/location/b/a;->g:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/location/b/a$a;

    iget-object v4, v1, Lcom/baidu/location/b/a$a;->c:Lcom/baidu/location/LocationClientOption;

    iget-object v4, v4, Lcom/baidu/location/LocationClientOption;->prodName:Ljava/lang/String;

    if-eqz v4, :cond_1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    iget-object v4, v1, Lcom/baidu/location/b/a$a;->a:Ljava/lang/String;

    if-eqz v4, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, v1, Lcom/baidu/location/b/a$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public c(Lcom/baidu/location/BDLocation;)V
    .locals 3

    invoke-static {}, Lcom/baidu/location/b/l;->c()Lcom/baidu/location/b/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/location/b/l;->a(Lcom/baidu/location/BDLocation;)Lcom/baidu/location/Address;

    move-result-object v0

    invoke-static {}, Lcom/baidu/location/b/l;->c()Lcom/baidu/location/b/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/location/b/l;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/baidu/location/b/l;->c()Lcom/baidu/location/b/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/location/b/l;->g()Ljava/util/List;

    move-result-object v2

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lcom/baidu/location/BDLocation;->setAddr(Lcom/baidu/location/Address;)V

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {p1, v1}, Lcom/baidu/location/BDLocation;->setLocationDescribe(Ljava/lang/String;)V

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {p1, v2}, Lcom/baidu/location/BDLocation;->setPoiList(Ljava/util/List;)V

    :cond_2
    invoke-virtual {p0, p1}, Lcom/baidu/location/b/a;->a(Lcom/baidu/location/BDLocation;)V

    invoke-static {}, Lcom/baidu/location/b/l;->c()Lcom/baidu/location/b/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/location/b/l;->c(Lcom/baidu/location/BDLocation;)V

    return-void
.end method

.method public c(Landroid/os/Message;)Z
    .locals 8

    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {p0, v0}, Lcom/baidu/location/b/a;->a(Landroid/os/Messenger;)Lcom/baidu/location/b/a$a;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, v0, Lcom/baidu/location/b/a$a;->c:Lcom/baidu/location/LocationClientOption;

    iget v3, v2, Lcom/baidu/location/LocationClientOption;->scanSpan:I

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    iget-object v5, v0, Lcom/baidu/location/b/a$a;->c:Lcom/baidu/location/LocationClientOption;

    iget v5, v5, Lcom/baidu/location/LocationClientOption;->scanSpan:I

    const-string v6, "scanSpan"

    invoke-virtual {v4, v6, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v2, Lcom/baidu/location/LocationClientOption;->scanSpan:I

    iget-object v2, v0, Lcom/baidu/location/b/a$a;->c:Lcom/baidu/location/LocationClientOption;

    iget v2, v2, Lcom/baidu/location/LocationClientOption;->scanSpan:I

    const/16 v4, 0x3e8

    const/4 v5, 0x1

    if-ge v2, v4, :cond_1

    invoke-static {}, Lcom/baidu/location/b/n;->a()Lcom/baidu/location/b/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/location/b/n;->c()V

    iput-boolean v1, p0, Lcom/baidu/location/b/a;->a:Z

    goto :goto_0

    :cond_1
    iput-boolean v5, p0, Lcom/baidu/location/b/a;->a:Z

    :goto_0
    iget-object v2, v0, Lcom/baidu/location/b/a$a;->c:Lcom/baidu/location/LocationClientOption;

    iget v6, v2, Lcom/baidu/location/LocationClientOption;->scanSpan:I

    const/16 v7, 0x3e7

    if-le v6, v7, :cond_6

    if-ge v3, v4, :cond_6

    iget-boolean v3, v2, Lcom/baidu/location/LocationClientOption;->mIsNeedDeviceDirect:Z

    if-nez v3, :cond_2

    iget-boolean v2, v2, Lcom/baidu/location/LocationClientOption;->isNeedAltitude:Z

    if-eqz v2, :cond_3

    :cond_2
    invoke-static {}, Lcom/baidu/location/b/n;->a()Lcom/baidu/location/b/n;

    move-result-object v2

    iget-object v3, v0, Lcom/baidu/location/b/a$a;->c:Lcom/baidu/location/LocationClientOption;

    iget-boolean v3, v3, Lcom/baidu/location/LocationClientOption;->mIsNeedDeviceDirect:Z

    invoke-virtual {v2, v3}, Lcom/baidu/location/b/n;->a(Z)V

    invoke-static {}, Lcom/baidu/location/b/n;->a()Lcom/baidu/location/b/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/location/b/n;->b()V

    :cond_3
    iget-boolean v2, p0, Lcom/baidu/location/b/a;->b:Z

    if-nez v2, :cond_4

    iget-object v2, v0, Lcom/baidu/location/b/a$a;->c:Lcom/baidu/location/LocationClientOption;

    iget-boolean v2, v2, Lcom/baidu/location/LocationClientOption;->isNeedAltitude:Z

    if-eqz v2, :cond_5

    :cond_4
    const/4 v1, 0x1

    :cond_5
    iput-boolean v1, p0, Lcom/baidu/location/b/a;->b:Z

    const/4 v1, 0x1

    :cond_6
    iget-object v2, v0, Lcom/baidu/location/b/a$a;->c:Lcom/baidu/location/LocationClientOption;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    iget-object v4, v0, Lcom/baidu/location/b/a$a;->c:Lcom/baidu/location/LocationClientOption;

    iget-boolean v4, v4, Lcom/baidu/location/LocationClientOption;->openGps:Z

    const-string v5, "openGPS"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v2, Lcom/baidu/location/LocationClientOption;->openGps:Z

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "coorType"

    invoke-virtual {v2, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/baidu/location/b/a$a;->c:Lcom/baidu/location/LocationClientOption;

    const-string v4, ""

    if-eqz v2, :cond_7

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    goto :goto_1

    :cond_7
    iget-object v2, v0, Lcom/baidu/location/b/a$a;->c:Lcom/baidu/location/LocationClientOption;

    iget-object v2, v2, Lcom/baidu/location/LocationClientOption;->coorType:Ljava/lang/String;

    :goto_1
    iput-object v2, v3, Lcom/baidu/location/LocationClientOption;->coorType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "addrType"

    invoke-virtual {v2, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/baidu/location/b/a$a;->c:Lcom/baidu/location/LocationClientOption;

    if-eqz v2, :cond_8

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    goto :goto_2

    :cond_8
    iget-object v2, v0, Lcom/baidu/location/b/a$a;->c:Lcom/baidu/location/LocationClientOption;

    iget-object v2, v2, Lcom/baidu/location/LocationClientOption;->addrType:Ljava/lang/String;

    :goto_2
    iput-object v2, v3, Lcom/baidu/location/LocationClientOption;->addrType:Ljava/lang/String;

    sget-object v2, Lcom/baidu/location/e/k;->g:Ljava/lang/String;

    iget-object v3, v0, Lcom/baidu/location/b/a$a;->c:Lcom/baidu/location/LocationClientOption;

    iget-object v3, v3, Lcom/baidu/location/LocationClientOption;->addrType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-static {}, Lcom/baidu/location/b/l;->c()Lcom/baidu/location/b/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/location/b/l;->i()V

    :cond_9
    iget-object v2, v0, Lcom/baidu/location/b/a$a;->c:Lcom/baidu/location/LocationClientOption;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    iget-object v4, v0, Lcom/baidu/location/b/a$a;->c:Lcom/baidu/location/LocationClientOption;

    iget v4, v4, Lcom/baidu/location/LocationClientOption;->timeOut:I

    const-string v5, "timeOut"

    invoke-virtual {v3, v5, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/baidu/location/LocationClientOption;->timeOut:I

    iget-object v2, v0, Lcom/baidu/location/b/a$a;->c:Lcom/baidu/location/LocationClientOption;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    iget-object v4, v0, Lcom/baidu/location/b/a$a;->c:Lcom/baidu/location/LocationClientOption;

    iget-boolean v4, v4, Lcom/baidu/location/LocationClientOption;->location_change_notify:Z

    const-string v5, "location_change_notify"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v2, Lcom/baidu/location/LocationClientOption;->location_change_notify:Z

    iget-object v2, v0, Lcom/baidu/location/b/a$a;->c:Lcom/baidu/location/LocationClientOption;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    iget-object v0, v0, Lcom/baidu/location/b/a$a;->c:Lcom/baidu/location/LocationClientOption;

    iget v0, v0, Lcom/baidu/location/LocationClientOption;->priority:I

    const-string v4, "priority"

    invoke-virtual {v3, v4, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v2, Lcom/baidu/location/LocationClientOption;->priority:I

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "wifitimeout"

    const v2, 0x7fffffff

    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    sget v0, Lcom/baidu/location/e/k;->ag:I

    if-ge p1, v0, :cond_a

    sput p1, Lcom/baidu/location/e/k;->ag:I

    :cond_a
    invoke-direct {p0}, Lcom/baidu/location/b/a;->e()V

    return v1
.end method

.method public d(Landroid/os/Message;)I
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    iget-object p1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/baidu/location/b/a;->a(Landroid/os/Messenger;)Lcom/baidu/location/b/a$a;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/baidu/location/b/a$a;->c:Lcom/baidu/location/LocationClientOption;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget p1, p1, Lcom/baidu/location/LocationClientOption;->priority:I

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/location/b/a;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/location/b/a$a;

    invoke-virtual {v1}, Lcom/baidu/location/b/a$a;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public e(Landroid/os/Message;)I
    .locals 1

    const/16 v0, 0x3e8

    if-eqz p1, :cond_2

    iget-object p1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/baidu/location/b/a;->a(Landroid/os/Messenger;)Lcom/baidu/location/b/a$a;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/baidu/location/b/a$a;->c:Lcom/baidu/location/LocationClientOption;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget p1, p1, Lcom/baidu/location/LocationClientOption;->scanSpan:I

    return p1

    :cond_2
    :goto_0
    return v0
.end method
