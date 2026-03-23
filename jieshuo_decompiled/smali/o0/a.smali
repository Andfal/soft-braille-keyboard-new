.class public Lo0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Lo0/a;


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

.method public static a()Lo0/a;
    .locals 2

    sget-object v0, Lo0/a;->a:Lo0/a;

    if-nez v0, :cond_1

    const-class v0, Lo0/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lo0/a;->a:Lo0/a;

    if-nez v1, :cond_0

    new-instance v1, Lo0/a;

    invoke-direct {v1}, Lo0/a;-><init>()V

    sput-object v1, Lo0/a;->a:Lo0/a;

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
    sget-object v0, Lo0/a;->a:Lo0/a;

    return-object v0
.end method

.method private c(Lq0/b;)Lp0/d;
    .locals 1

    new-instance v0, Lp0/c;

    invoke-direct {v0}, Lp0/c;-><init>()V

    invoke-interface {v0, p1}, Lp0/d;->B(Lq0/b;)V

    return-object v0
.end method

.method private d()Lp0/d;
    .locals 1

    new-instance v0, Lq0/f;

    invoke-direct {v0}, Lq0/f;-><init>()V

    invoke-direct {p0, v0}, Lo0/a;->c(Lq0/b;)Lp0/d;

    move-result-object v0

    return-object v0
.end method

.method private e()Lp0/d;
    .locals 1

    new-instance v0, Lq0/e;

    invoke-direct {v0}, Lq0/e;-><init>()V

    invoke-direct {p0, v0}, Lo0/a;->c(Lq0/b;)Lp0/d;

    move-result-object v0

    return-object v0
.end method

.method private f()Lp0/d;
    .locals 1

    new-instance v0, Lq0/d;

    invoke-direct {v0}, Lq0/d;-><init>()V

    invoke-direct {p0, v0}, Lo0/a;->c(Lq0/b;)Lp0/d;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public b(Lb1/f;)Lp0/d;
    .locals 1

    sget-object v0, Lo0/a$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lo0/a;->f()Lp0/d;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lo0/a;->e()Lp0/d;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lo0/a;->d()Lp0/d;

    move-result-object p1

    :goto_0
    return-object p1
.end method
