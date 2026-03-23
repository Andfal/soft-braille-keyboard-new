.class public Lr0/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Lr0/b;


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

.method public static a()Lr0/b;
    .locals 2

    sget-object v0, Lr0/b;->a:Lr0/b;

    if-nez v0, :cond_1

    const-class v0, Lr0/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lr0/b;->a:Lr0/b;

    if-nez v1, :cond_0

    new-instance v1, Lr0/b;

    invoke-direct {v1}, Lr0/b;-><init>()V

    sput-object v1, Lr0/b;->a:Lr0/b;

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
    sget-object v0, Lr0/b;->a:Lr0/b;

    return-object v0
.end method

.method private c()Lt0/b;
    .locals 1

    new-instance v0, Lt0/b;

    invoke-direct {v0}, Lt0/b;-><init>()V

    return-object v0
.end method


# virtual methods
.method public b()Lt0/c;
    .locals 1

    invoke-direct {p0}, Lr0/b;->c()Lt0/b;

    move-result-object v0

    return-object v0
.end method
