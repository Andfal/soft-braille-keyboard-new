.class public abstract Lz/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz/a$b;
    }
.end annotation


# static fields
.field protected static final j:Ljava/util/logging/Logger;


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/lang/String;

.field protected c:Ljava/lang/String;

.field protected d:Ljava/lang/String;

.field protected e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected g:Ljava/util/Calendar;

.field protected h:Lz/a$b;

.field protected i:Lf0/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "baidu"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lz/a;->j:Ljava/util/logging/Logger;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz/a;->a:Ljava/lang/String;

    iput-object p2, p0, Lz/a;->b:Ljava/lang/String;

    iput-object p3, p0, Lz/a;->c:Ljava/lang/String;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lz/a;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lz/a;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x0

    iput-object p1, p0, Lz/a;->d:Ljava/lang/String;

    iput-object p1, p0, Lz/a;->g:Ljava/util/Calendar;

    new-instance p1, Lz/a$b;

    invoke-direct {p1, p0}, Lz/a$b;-><init>(Lz/a;)V

    iput-object p1, p0, Lz/a;->h:Lz/a$b;

    return-void
.end method


# virtual methods
.method protected declared-synchronized a(Lf0/a;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lz/a;->b()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lz/a;->b:Ljava/lang/String;

    iget-object v1, p0, Lz/a;->c:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Ly/b;->a(Ljava/lang/String;Ljava/lang/String;Lf0/a;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    const-string v0, "access_token"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    iget-object v0, p0, Lz/a;->h:Lz/a$b;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lz/a$b;->b(Z)V

    const-string v0, "access_token"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lz/a;->d:Ljava/lang/String;

    sget-object v0, Lz/a;->j:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get access_token success. current state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lz/a;->h:Lz/a$b;

    invoke-virtual {v4}, Lz/a$b;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    const-string v0, "expires_in"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v4, 0xd

    invoke-virtual {v3, v4, v0}, Ljava/util/Calendar;->add(II)V

    iput-object v3, p0, Lz/a;->g:Ljava/util/Calendar;

    const-string v0, "scope"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_3

    aget-object v4, p1, v3

    sget-object v5, Lf0/b;->c:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    iget-object p1, p0, Lz/a;->h:Lz/a$b;

    :goto_2
    invoke-virtual {p1, v1}, Lz/a$b;->b(Z)V

    goto :goto_3

    :cond_4
    const-string v0, "error_code"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lz/a;->h:Lz/a$b;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :cond_5
    :goto_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected b()Ljava/lang/Boolean;
    .locals 3

    iget-object v0, p0, Lz/a;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    iget-object v1, p0, Lz/a;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lz/a;->g:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected c(Lc0/b;)V
    .locals 3

    iget-object v0, p0, Lz/a;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const-string v1, "java"

    const-string v2, "aipSdk"

    invoke-virtual {p1, v2, v1}, Lc0/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lc0/b;->d()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-virtual {p1}, Lc0/b;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    array-length v1, v1

    const-string v2, "Content-Length"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lc0/b;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    invoke-virtual {p1}, Lc0/b;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lf0/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Content-MD5"

    invoke-virtual {p1, v1, v0}, Lc0/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lf0/e;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lc0/b;->k()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Host"

    invoke-virtual {p1, v2, v1}, Lc0/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "x-bce-date"

    invoke-virtual {p1, v1, v0}, Lc0/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lz/a;->b:Ljava/lang/String;

    iget-object v2, p0, Lz/a;->c:Ljava/lang/String;

    invoke-static {p1, v1, v2, v0}, Ly/a;->d(Lc0/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Authorization"

    invoke-virtual {p1, v1, v0}, Lc0/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string v0, "access_token"

    iget-object v1, p0, Lz/a;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lc0/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method protected d(Lc0/b;)V
    .locals 2

    invoke-virtual {p0}, Lz/a;->b()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lz/a;->i:Lf0/a;

    invoke-virtual {p0, v0}, Lz/a;->a(Lf0/a;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    sget-object v0, Lc0/e;->b:Lc0/e;

    invoke-virtual {p1, v0}, Lc0/b;->n(Lc0/e;)V

    const-string v0, "Content-Type"

    const-string v1, "application/x-www-form-urlencoded"

    invoke-virtual {p1, v0, v1}, Lc0/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "accept"

    const-string v1, "*/*"

    invoke-virtual {p1, v0, v1}, Lc0/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lz/a;->i:Lf0/a;

    invoke-virtual {p1, v0}, Lc0/b;->m(Lf0/a;)V

    return-void
.end method

.method protected e(Lc0/b;)Lorg/json/JSONObject;
    .locals 5

    const-string v0, "error_code"

    invoke-static {p1}, Lc0/a;->a(Lc0/b;)Lc0/c;

    move-result-object v1

    invoke-virtual {v1}, Lc0/c;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "detect: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lc0/b;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "baidu"

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lc0/c;->b()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v1, 0xc8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, ""

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lz/a;->h:Lz/a$b;

    invoke-virtual {v1}, Lz/a$b;->a()Lz/b;

    move-result-object v1

    sget-object v3, Lz/b;->d:Lz/b;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    sget-object v1, Lf0/b;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iget-object v1, p0, Lz/a;->h:Lz/a$b;

    invoke-virtual {v1, v0}, Lz/a$b;->b(Z)V

    if-nez v0, :cond_2

    sget-object p1, Lf0/b;->e:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string v0, "No permission to access data"

    invoke-static {p1, v0}, Lf0/e;->b(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-object p1

    :catch_0
    const/4 p1, -0x1

    invoke-static {p1, v2}, Lf0/e;->b(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    :cond_3
    sget-object p1, La0/a;->l:La0/a;

    invoke-virtual {p1}, La0/a;->a()Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public f(I)V
    .locals 1

    iget-object v0, p0, Lz/a;->i:Lf0/a;

    if-nez v0, :cond_0

    new-instance v0, Lf0/a;

    invoke-direct {v0}, Lf0/a;-><init>()V

    iput-object v0, p0, Lz/a;->i:Lf0/a;

    :cond_0
    iget-object v0, p0, Lz/a;->i:Lf0/a;

    invoke-virtual {v0, p1}, Lf0/a;->d(I)V

    return-void
.end method

.method public g(I)V
    .locals 1

    iget-object v0, p0, Lz/a;->i:Lf0/a;

    if-nez v0, :cond_0

    new-instance v0, Lf0/a;

    invoke-direct {v0}, Lf0/a;-><init>()V

    iput-object v0, p0, Lz/a;->i:Lf0/a;

    :cond_0
    iget-object v0, p0, Lz/a;->i:Lf0/a;

    invoke-virtual {v0, p1}, Lf0/a;->e(I)V

    return-void
.end method
