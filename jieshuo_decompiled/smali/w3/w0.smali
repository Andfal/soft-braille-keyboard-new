.class public final Lw3/w0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final a:Lw3/a3;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Z

.field private final e:Z

.field private f:Ljava/lang/Object;

.field private g:I


# direct methods
.method constructor <init>(Lw3/a3;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw3/w0;->a:Lw3/a3;

    iput-object p2, p0, Lw3/w0;->b:Ljava/lang/String;

    iput-object p3, p0, Lw3/w0;->c:Ljava/lang/String;

    iput-boolean p4, p0, Lw3/w0;->d:Z

    iput-boolean p5, p0, Lw3/w0;->e:Z

    const/4 p3, 0x0

    iput p3, p0, Lw3/w0;->g:I

    const/4 p4, 0x2

    invoke-virtual {p1, p2, p3, p0, p4}, Lw3/a3;->G(Ljava/lang/String;ILw3/w0;I)V

    return-void
.end method

.method static bridge synthetic a(Lw3/w0;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lw3/w0;->c()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private b()Ljava/lang/Object;
    .locals 1

    iget-boolean v0, p0, Lw3/w0;->e:Z

    if-eqz v0, :cond_0

    new-instance v0, Lw3/w0$a;

    invoke-direct {v0, p0}, Lw3/w0$a;-><init>(Lw3/w0;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-direct {p0}, Lw3/w0;->c()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private c()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lw3/w0;->c:Ljava/lang/String;

    invoke-static {v0}, Lw3/v0;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lw3/w0;->d(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v1, p0, Lw3/w0;->a:Lw3/a3;

    iget-boolean v2, p0, Lw3/w0;->d:Z

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lw3/a3;->K(Lw3/z2;Ljava/lang/Class;ZZ)Lw3/c;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lw3/w0;->a:Lw3/a3;

    iget-object v1, p0, Lw3/w0;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v0}, Lw3/a3;->w(Ljava/lang/String;Lw3/z2;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lw3/z2;->a0:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lw3/s2; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    if-eq v0, v1, :cond_2

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    :catch_1
    :cond_2
    :goto_0
    sget-object v0, Lw3/z2;->a0:Ljava/lang/Object;

    return-object v0
.end method

.method private static d(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "+",
            "Lw3/z2;",
            ">;"
        }
    .end annotation

    return-object p0
.end method


# virtual methods
.method e()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lw3/w0;->g:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lw3/w0;->f:Ljava/lang/Object;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v1, p0, Lw3/w0;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method f()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lw3/w0;->g:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_0

    iput v1, p0, Lw3/w0;->g:I

    sget-object v0, Lw3/z2;->a0:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x2

    :try_start_1
    invoke-direct {p0}, Lw3/w0;->b()Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iput-object v0, p0, Lw3/w0;->f:Ljava/lang/Object;

    iput v1, p0, Lw3/w0;->g:I

    goto :goto_0

    :catchall_0
    move-exception v2

    iput-object v0, p0, Lw3/w0;->f:Ljava/lang/Object;

    iput v1, p0, Lw3/w0;->g:I

    throw v2

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Recursive initialization for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lw3/w0;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method
