.class public Lcom/vivo/speechsdk/module/tracker/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vivo/speechsdk/module/api/tracker/IDataTracker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/speechsdk/module/tracker/d$a;
    }
.end annotation


# static fields
.field private static final e:Ljava/lang/String; = "SDKTracker"

.field public static final f:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final g:Ljava/lang/String; = "177"

.field private static final h:Ljava/lang/String; = "com.vivo.analytics.VivoDataReport"

.field private static final i:Ljava/lang/String; = "com.vivo.analytics.single.SingleEvent"

.field private static j:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private a:Ljava/lang/reflect/Method;

.field private b:Ljava/lang/Class;

.field private c:Ljava/lang/reflect/Constructor;

.field private d:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/vivo/speechsdk/module/tracker/d;->f:Landroid/util/SparseArray;

    const/4 v1, 0x5

    const-string v2, "S33|10034"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x6

    const-string v2, "S33|10035"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x8

    const-string v2, "S33|10036"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x7

    const-string v2, "S33|10037"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/vivo/speechsdk/module/tracker/d;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/speechsdk/module/tracker/d;->a:Ljava/lang/reflect/Method;

    iput-object v0, p0, Lcom/vivo/speechsdk/module/tracker/d;->b:Ljava/lang/Class;

    iput-object v0, p0, Lcom/vivo/speechsdk/module/tracker/d;->c:Ljava/lang/reflect/Constructor;

    iput-object v0, p0, Lcom/vivo/speechsdk/module/tracker/d;->d:Ljava/lang/Object;

    return-void
.end method

.method public static a()Lcom/vivo/speechsdk/module/tracker/d;
    .locals 1

    invoke-static {}, Lcom/vivo/speechsdk/module/tracker/d$a;->a()Lcom/vivo/speechsdk/module/tracker/d;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11

    const-string p2, "com.vivo.analytics.single.SingleEvent"

    const-string v0, "SDKTracker"

    const-class v1, Ljava/lang/String;

    sget-object v2, Lcom/vivo/speechsdk/module/tracker/d;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_0

    :try_start_0
    const-string v2, "SDKTracker init"

    invoke-static {v0, v2}, Lcom/vivo/speechsdk/common/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "com.vivo.analytics.VivoDataReport"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "getInstance"

    const/4 v5, 0x0

    :try_start_1
    new-array v6, v5, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v4, v7, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lcom/vivo/speechsdk/module/tracker/d;->d:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v4, "initBySDK"

    const/4 v6, 0x3

    :try_start_2
    new-array v7, v6, [Ljava/lang/Class;

    const-class v8, Landroid/content/Context;

    aput-object v8, v7, v5

    const/4 v8, 0x1

    aput-object v1, v7, v8

    const/4 v9, 0x2

    aput-object v1, v7, v9

    invoke-virtual {v2, v4, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iget-object v7, p0, Lcom/vivo/speechsdk/module/tracker/d;->d:Ljava/lang/Object;

    new-array v10, v6, [Ljava/lang/Object;

    aput-object p1, v10, v5

    const-string p1, "177"

    aput-object p1, v10, v8

    aput-object p3, v10, v9

    invoke-virtual {v4, v7, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lcom/vivo/speechsdk/module/tracker/d;->b:Ljava/lang/Class;

    const/4 p2, 0x4

    new-array p2, p2, [Ljava/lang/Class;

    aput-object v1, p2, v5

    aput-object v1, p2, v8

    aput-object v1, p2, v9

    const-class p3, Ljava/util/Map;

    aput-object p3, p2, v6

    invoke-virtual {p1, p2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    iput-object p1, p0, Lcom/vivo/speechsdk/module/tracker/d;->c:Ljava/lang/reflect/Constructor;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string p1, "onSingleDelayEventBySDK"

    :try_start_3
    new-array p2, v9, [Ljava/lang/Class;

    aput-object v1, p2, v5

    aput-object v3, p2, v8

    invoke-virtual {v2, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/vivo/speechsdk/module/tracker/d;->a:Ljava/lang/reflect/Method;

    sget-object p1, Lcom/vivo/speechsdk/module/tracker/d;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    const-string p1, "xinyun sdk Class not found"

    invoke-static {v0, p1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    sget-object p1, Lcom/vivo/speechsdk/module/tracker/d;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    return p1
.end method

.method public setTrackerEnable(Z)V
    .locals 0

    return-void
.end method

.method public upload(ILjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public upload(Ljava/lang/String;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/vivo/speechsdk/module/tracker/d;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const-string v1, "SDKTracker"

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/vivo/speechsdk/module/tracker/d;->c:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v2, v5

    const-string v4, "0"

    const/4 v6, 0x2

    aput-object v4, v2, v6

    const/4 v4, 0x3

    aput-object p2, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lcom/vivo/speechsdk/module/tracker/d;->a:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lcom/vivo/speechsdk/module/tracker/d;->d:Ljava/lang/Object;

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "177"

    aput-object v7, v6, v3

    aput-object v0, v6, v5

    invoke-virtual {v2, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eventId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " params="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "Tracker error "

    invoke-static {v1, p2, p1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    const-string p1, "Tracker not init !!! "

    invoke-static {v1, p1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
