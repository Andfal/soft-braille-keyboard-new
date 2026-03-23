.class public Lcom/luajava/LuaObject;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field protected final L:Lcom/luajava/LuaState;

.field protected ref:I


# direct methods
.method protected constructor <init>(Lcom/luajava/LuaObject;Lcom/luajava/LuaObject;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/luajava/LuaObject;->getLuaState()Lcom/luajava/LuaState;

    move-result-object v0

    invoke-virtual {p2}, Lcom/luajava/LuaObject;->getLuaState()Lcom/luajava/LuaState;

    move-result-object v1

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/luajava/LuaObject;->getLuaState()Lcom/luajava/LuaState;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Lcom/luajava/LuaObject;->isTable()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/luajava/LuaObject;->isUserdata()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/luajava/LuaException;

    const-string p2, "Object parent should be a table or userdata ."

    invoke-direct {p1, p2}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/luajava/LuaObject;->getLuaState()Lcom/luajava/LuaState;

    move-result-object v1

    iput-object v1, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    invoke-virtual {p1}, Lcom/luajava/LuaObject;->push()V

    invoke-virtual {p2}, Lcom/luajava/LuaObject;->push()V

    const/4 p1, -0x2

    invoke-virtual {v1, p1}, Lcom/luajava/LuaState;->y(I)I

    invoke-virtual {v1, p1}, Lcom/luajava/LuaState;->j0(I)V

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/luajava/LuaObject;->registerValue(I)V

    const/4 p1, 0x1

    invoke-virtual {v1, p1}, Lcom/luajava/LuaState;->Q(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    new-instance p1, Lcom/luajava/LuaException;

    const-string p2, "LuaStates must be the same!"

    invoke-direct {p1, p2}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected constructor <init>(Lcom/luajava/LuaObject;Ljava/lang/Number;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/luajava/LuaObject;->getLuaState()Lcom/luajava/LuaState;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Lcom/luajava/LuaObject;->getLuaState()Lcom/luajava/LuaState;

    move-result-object v1

    iput-object v1, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    invoke-virtual {p1}, Lcom/luajava/LuaObject;->isTable()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Lcom/luajava/LuaObject;->isUserdata()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/luajava/LuaException;

    const-string p2, "Object parent should be a table or userdata ."

    invoke-direct {p1, p2}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/luajava/LuaObject;->push()V

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p1

    invoke-virtual {v1, p1, p2}, Lcom/luajava/LuaState;->Z(D)V

    const/4 p1, -0x2

    invoke-virtual {v1, p1}, Lcom/luajava/LuaState;->y(I)I

    invoke-virtual {v1, p1}, Lcom/luajava/LuaState;->j0(I)V

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/luajava/LuaObject;->registerValue(I)V

    const/4 p1, 0x1

    invoke-virtual {v1, p1}, Lcom/luajava/LuaState;->Q(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected constructor <init>(Lcom/luajava/LuaObject;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/luajava/LuaObject;->getLuaState()Lcom/luajava/LuaState;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Lcom/luajava/LuaObject;->getLuaState()Lcom/luajava/LuaState;

    move-result-object v1

    iput-object v1, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    invoke-virtual {p1}, Lcom/luajava/LuaObject;->isTable()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Lcom/luajava/LuaObject;->isUserdata()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/luajava/LuaException;

    const-string p2, "Object parent should be a table or userdata ."

    invoke-direct {p1, p2}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/luajava/LuaObject;->push()V

    invoke-virtual {v1, p2}, Lcom/luajava/LuaState;->c0(Ljava/lang/String;)V

    const/4 p1, -0x2

    invoke-virtual {v1, p1}, Lcom/luajava/LuaState;->y(I)I

    invoke-virtual {v1, p1}, Lcom/luajava/LuaState;->j0(I)V

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/luajava/LuaObject;->registerValue(I)V

    const/4 p1, 0x1

    invoke-virtual {v1, p1}, Lcom/luajava/LuaState;->Q(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected constructor <init>(Lcom/luajava/LuaState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    return-void
.end method

.method protected constructor <init>(Lcom/luajava/LuaState;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    monitor-enter p1

    :try_start_0
    iput-object p1, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    invoke-virtual {p0, p2}, Lcom/luajava/LuaObject;->registerValue(I)V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method protected constructor <init>(Lcom/luajava/LuaState;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    monitor-enter p1

    :try_start_0
    iput-object p1, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    invoke-virtual {p1, p2}, Lcom/luajava/LuaState;->p(Ljava/lang/String;)I

    const/4 p2, -0x1

    invoke-virtual {p0, p2}, Lcom/luajava/LuaObject;->registerValue(I)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/luajava/LuaState;->Q(I)V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method


# virtual methods
.method public varargs _call([Ljava/lang/Object;)Lcom/luajava/LuaObject;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/luajava/LuaObject;->_call_aux([Ljava/lang/Object;I)[Lcom/luajava/LuaObject;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    return-object p1
.end method

.method public _call_aux([Ljava/lang/Object;I)[Lcom/luajava/LuaObject;
    .locals 7

    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->isFunction()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/luajava/LuaObject;->isTable()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/luajava/LuaObject;->isUserdata()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/luajava/LuaException;

    const-string p2, "Invalid object. Not a function, table or userdata ."

    invoke-direct {p1, p2}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    invoke-virtual {v1}, Lcom/luajava/LuaState;->z()I

    move-result v1

    invoke-virtual {p0}, Lcom/luajava/LuaObject;->push()V

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    array-length v3, p1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_3

    aget-object v5, p1, v4

    iget-object v6, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    invoke-virtual {v6, v5}, Lcom/luajava/LuaState;->a0(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :cond_3
    iget-object p1, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    invoke-virtual {p1, v3, p2, v2}, Lcom/luajava/LuaState;->P(III)I

    move-result p1

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eqz p1, :cond_8

    iget-object p2, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    invoke-virtual {p2, v3}, Lcom/luajava/LuaState;->I(I)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    invoke-virtual {p2, v3}, Lcom/luajava/LuaState;->v0(I)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    invoke-virtual {v1, v2}, Lcom/luajava/LuaState;->Q(I)V

    goto :goto_2

    :cond_4
    const-string p2, ""

    :goto_2
    const/4 v1, 0x2

    if-eq p1, v1, :cond_7

    const/4 v1, 0x4

    if-eq p1, v1, :cond_6

    const/4 v1, 0x6

    if-ne p1, v1, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error while running the error handler function. "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Lua Error code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ". "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Memory allocation error. "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Runtime error. "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :goto_4
    new-instance p2, Lcom/luajava/LuaException;

    invoke-direct {p2, p1}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_8
    if-ne p2, v3, :cond_9

    iget-object p1, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    invoke-virtual {p1}, Lcom/luajava/LuaState;->z()I

    move-result p1

    sub-int p2, p1, v1

    :cond_9
    iget-object p1, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    invoke-virtual {p1}, Lcom/luajava/LuaState;->z()I

    move-result p1

    sub-int/2addr p1, v1

    if-lt p1, p2, :cond_b

    new-array p1, p2, [Lcom/luajava/LuaObject;

    :goto_5
    if-lez p2, :cond_a

    add-int/lit8 v1, p2, -0x1

    iget-object v4, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    invoke-virtual {v4, v3}, Lcom/luajava/LuaState;->s(I)Lcom/luajava/LuaObject;

    move-result-object v4

    aput-object v4, p1, v1

    iget-object v1, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    invoke-virtual {v1, v2}, Lcom/luajava/LuaState;->Q(I)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_5

    :cond_a
    monitor-exit v0

    return-object p1

    :cond_b
    new-instance p1, Lcom/luajava/LuaException;

    const-string p2, "Invalid Number of Results ."

    invoke-direct {p1, p2}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public asArray()[Ljava/lang/Object;
    .locals 9

    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->isTable()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/luajava/LuaObject;->push()V

    iget-object v1, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/luajava/LuaState;->N(I)I

    move-result v1

    const-class v3, Ljava/lang/Object;

    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x1

    :goto_0
    if-gt v5, v1, :cond_0

    iget-object v6, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    int-to-long v7, v5

    invoke-virtual {v6, v7, v8}, Lcom/luajava/LuaState;->U(J)V

    iget-object v6, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v7, -0x2

    invoke-virtual {v6, v7}, Lcom/luajava/LuaState;->y(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v6, v5, -0x1

    :try_start_1
    iget-object v7, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    invoke-virtual {v7, v2}, Lcom/luajava/LuaState;->t0(I)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v3, v6, v7}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V
    :try_end_1
    .catch Lcom/luajava/LuaException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :try_start_2
    iget-object v6, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    invoke-virtual {v6, v4}, Lcom/luajava/LuaState;->Q(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    invoke-virtual {v1, v4}, Lcom/luajava/LuaState;->Q(I)V

    check-cast v3, [Ljava/lang/Object;

    monitor-exit v0

    return-object v3

    :cond_1
    new-instance v1, Lcom/luajava/LuaException;

    const-string v2, "Invalid object. Not a table ."

    invoke-direct {v1, v2}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public asMap(Lcom/luajava/LuaState;Ljava/lang/Class;I)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/luajava/LuaState;",
            "Ljava/lang/Class<",
            "*>;I)",
            "Ljava/util/Map;"
        }
    .end annotation

    monitor-enter p1

    :try_start_0
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->isTable()Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Lcom/luajava/LuaObject;->push()V

    invoke-virtual {p1}, Lcom/luajava/LuaState;->Y()V

    :goto_0
    invoke-virtual {p1, p3}, Lcom/luajava/LuaState;->M(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, -0x2

    :try_start_1
    invoke-virtual {p1, v0}, Lcom/luajava/LuaState;->t0(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {p1, v2}, Lcom/luajava/LuaState;->t0(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/luajava/LuaException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :try_start_2
    invoke-virtual {p1, v1}, Lcom/luajava/LuaState;->Q(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Lcom/luajava/LuaState;->Q(I)V

    monitor-exit p1

    return-object p2

    :cond_1
    new-instance p2, Lcom/luajava/LuaException;

    const-string p3, "Invalid object. Not a table ."

    invoke-direct {p2, p3}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw p2

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p2
.end method

.method public varargs call([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/luajava/LuaObject;->call_aux([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    return-object p1
.end method

.method public call_aux([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->isFunction()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/luajava/LuaObject;->isTable()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/luajava/LuaObject;->isUserdata()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/luajava/LuaException;

    const-string p2, "Invalid object. Not a function, table or userdata ."

    invoke-direct {p1, p2}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    invoke-virtual {v1}, Lcom/luajava/LuaState;->z()I

    move-result v1

    invoke-virtual {p0}, Lcom/luajava/LuaObject;->push()V

    iget-object v2, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const-string v3, "debug"

    invoke-virtual {v2, v3}, Lcom/luajava/LuaState;->p(Ljava/lang/String;)I

    iget-object v2, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const-string v3, "traceback"

    const/4 v4, -0x1

    invoke-virtual {v2, v4, v3}, Lcom/luajava/LuaState;->m(ILjava/lang/String;)I

    iget-object v2, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v3, -0x2

    invoke-virtual {v2, v3}, Lcom/luajava/LuaState;->j0(I)V

    iget-object v2, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    invoke-virtual {v2, v3}, Lcom/luajava/LuaState;->A(I)V

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    array-length v3, p1

    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v5, p1, v2

    iget-object v6, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    invoke-virtual {v6, v5}, Lcom/luajava/LuaState;->a0(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move v2, v3

    :cond_3
    iget-object p1, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    rsub-int/lit8 v3, v2, -0x2

    invoke-virtual {p1, v2, p2, v3}, Lcom/luajava/LuaState;->P(III)I

    move-result p1

    const/4 v2, 0x1

    if-eqz p1, :cond_8

    iget-object p2, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    invoke-virtual {p2, v4}, Lcom/luajava/LuaState;->I(I)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    invoke-virtual {p2, v4}, Lcom/luajava/LuaState;->v0(I)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    invoke-virtual {v1, v2}, Lcom/luajava/LuaState;->Q(I)V

    goto :goto_2

    :cond_4
    const-string p2, ""

    :goto_2
    const/4 v1, 0x2

    if-eq p1, v1, :cond_7

    const/4 v1, 0x4

    if-eq p1, v1, :cond_6

    const/4 v1, 0x6

    if-ne p1, v1, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error while running the error handler function. "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Lua Error code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ". "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Memory allocation error. "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Runtime error. "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :goto_4
    new-instance p2, Lcom/luajava/LuaException;

    invoke-direct {p2, p1}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_8
    if-ne p2, v4, :cond_9

    iget-object p1, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    invoke-virtual {p1}, Lcom/luajava/LuaState;->z()I

    move-result p1

    sub-int p2, p1, v1

    :cond_9
    iget-object p1, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    invoke-virtual {p1}, Lcom/luajava/LuaState;->z()I

    move-result p1

    sub-int/2addr p1, v1

    if-lt p1, p2, :cond_b

    new-array p1, p2, [Ljava/lang/Object;

    :goto_5
    if-lez p2, :cond_a

    add-int/lit8 v1, p2, -0x1

    iget-object v3, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    invoke-virtual {v3, v4}, Lcom/luajava/LuaState;->t0(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, p1, v1

    iget-object v1, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    invoke-virtual {v1, v2}, Lcom/luajava/LuaState;->Q(I)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_5

    :cond_a
    monitor-exit v0

    return-object p1

    :cond_b
    new-instance p1, Lcom/luajava/LuaException;

    const-string p2, "Invalid Number of Results ."

    invoke-direct {p1, p2}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public createProxy(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->isTable()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/luajava/LuaObject;->isFunction()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/luajava/LuaException;

    const-string v1, "Invalid Object. Must be Table or Function."

    invoke-direct {p1, v1}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->isFunction()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    array-length v1, v1

    if-ne v1, v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Lcom/luajava/LuaException;

    const-string v1, "Invalid Object. Must be a interface Method of Function."

    invoke-direct {p1, v1}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->isTable()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/luajava/LuaObject;->getTable()Lcom/luajava/LuaTable;

    move-result-object v1

    invoke-virtual {v1}, Lcom/luajava/LuaTable;->a()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Lcom/luajava/LuaException;

    const-string v1, "Invalid Object. Must be Table is Not Array."

    invoke-direct {p1, v1}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_2
    new-array v1, v2, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    new-instance v2, Lcom/luajava/LuaInvocationHandler;

    invoke-direct {v2, p0}, Lcom/luajava/LuaInvocationHandler;-><init>(Lcom/luajava/LuaObject;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-static {p1, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public createProxy(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->isTable()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, ","

    invoke-direct {v1, p1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result p1

    new-array p1, p1, [Ljava/lang/Class;

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    aput-object v3, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/luajava/LuaInvocationHandler;

    invoke-direct {v1, p0}, Lcom/luajava/LuaInvocationHandler;-><init>(Lcom/luajava/LuaObject;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v2, p1, v1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :cond_1
    new-instance p1, Lcom/luajava/LuaException;

    const-string v1, "Invalid Object. Must be Table."

    invoke-direct {p1, v1}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public dump()[B
    .locals 4

    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->isFunction()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/luajava/LuaObject;->push()V

    iget-object v1, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/luajava/LuaState;->j(I)[B

    move-result-object v1

    iget-object v2, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/luajava/LuaState;->Q(I)V

    monitor-exit v0

    return-object v1

    :cond_0
    new-instance v1, Lcom/luajava/LuaException;

    const-string v2, "Invalid object. Not a function ."

    invoke-direct {v1, v2}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getBoolean()Z
    .locals 4

    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->push()V

    iget-object v1, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/luajava/LuaState;->r0(I)Z

    move-result v1

    iget-object v2, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/luajava/LuaState;->Q(I)V

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getField(Ljava/lang/String;)Lcom/luajava/LuaObject;
    .locals 1

    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    invoke-virtual {v0, p0, p1}, Lcom/luajava/LuaState;->u(Lcom/luajava/LuaObject;Ljava/lang/String;)Lcom/luajava/LuaObject;

    move-result-object p1

    return-object p1
.end method

.method public getFunction()Lcom/luajava/LuaFunction;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/luajava/LuaFunction<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->push()V

    new-instance v1, Lcom/luajava/LuaFunction;

    iget-object v2, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Lcom/luajava/LuaFunction;-><init>(Lcom/luajava/LuaState;I)V

    iget-object v2, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/luajava/LuaState;->Q(I)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getI(J)Lcom/luajava/LuaObject;
    .locals 1

    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/luajava/LuaState;->t(Lcom/luajava/LuaObject;Ljava/lang/Number;)Lcom/luajava/LuaObject;

    move-result-object p1

    return-object p1
.end method

.method public getInteger()J
    .locals 5

    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->push()V

    iget-object v1, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/luajava/LuaState;->s0(I)J

    move-result-wide v1

    iget-object v3, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/luajava/LuaState;->Q(I)V

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getLuaState()Lcom/luajava/LuaState;
    .locals 1

    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    return-object v0
.end method

.method public getNumber()D
    .locals 5

    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->push()V

    iget-object v1, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/luajava/LuaState;->u0(I)D

    move-result-wide v1

    iget-object v3, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/luajava/LuaState;->Q(I)V

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getObject()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->push()V

    iget-object v1, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/luajava/LuaState;->w(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/luajava/LuaState;->Q(I)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->push()V

    iget-object v1, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/luajava/LuaState;->v0(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/luajava/LuaState;->Q(I)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getTable()Lcom/luajava/LuaTable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/luajava/LuaTable<",
            "**>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->push()V

    new-instance v1, Lcom/luajava/LuaTable;

    iget-object v2, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Lcom/luajava/LuaTable;-><init>(Lcom/luajava/LuaState;I)V

    iget-object v2, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/luajava/LuaState;->Q(I)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isBoolean()Z
    .locals 4

    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->push()V

    iget-object v1, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/luajava/LuaState;->B(I)Z

    move-result v1

    iget-object v2, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/luajava/LuaState;->Q(I)V

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isFunction()Z
    .locals 4

    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->push()V

    iget-object v1, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/luajava/LuaState;->C(I)Z

    move-result v1

    iget-object v2, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/luajava/LuaState;->Q(I)V

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isInteger()Z
    .locals 4

    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->push()V

    iget-object v1, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/luajava/LuaState;->D(I)Z

    move-result v1

    iget-object v2, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/luajava/LuaState;->Q(I)V

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isJavaFunction()Z
    .locals 4

    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->push()V

    iget-object v1, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/luajava/LuaState;->E(I)Z

    move-result v1

    iget-object v2, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/luajava/LuaState;->Q(I)V

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isJavaObject()Z
    .locals 4

    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->push()V

    iget-object v1, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/luajava/LuaState;->H(I)Z

    move-result v1

    iget-object v2, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/luajava/LuaState;->Q(I)V

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isNil()Z
    .locals 4

    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->push()V

    iget-object v1, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/luajava/LuaState;->F(I)Z

    move-result v1

    iget-object v2, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/luajava/LuaState;->Q(I)V

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isNumber()Z
    .locals 4

    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->push()V

    iget-object v1, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/luajava/LuaState;->G(I)Z

    move-result v1

    iget-object v2, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/luajava/LuaState;->Q(I)V

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isString()Z
    .locals 4

    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->push()V

    iget-object v1, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/luajava/LuaState;->I(I)Z

    move-result v1

    iget-object v2, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/luajava/LuaState;->Q(I)V

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isTable()Z
    .locals 4

    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->push()V

    iget-object v1, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/luajava/LuaState;->J(I)Z

    move-result v1

    iget-object v2, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/luajava/LuaState;->Q(I)V

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isUserdata()Z
    .locals 4

    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->push()V

    iget-object v1, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/luajava/LuaState;->K(I)Z

    move-result v1

    iget-object v2, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/luajava/LuaState;->Q(I)V

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public pop()V
    .locals 2

    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/luajava/LuaState;->Q(I)V

    return-void
.end method

.method public push()V
    .locals 4

    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    iget v1, p0, Lcom/luajava/LuaObject;->ref:I

    int-to-long v1, v1

    const v3, -0xf4628

    invoke-virtual {v0, v3, v1, v2}, Lcom/luajava/LuaState;->g0(IJ)I

    return-void
.end method

.method protected registerValue(I)V
    .locals 2

    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    invoke-virtual {v1, p1}, Lcom/luajava/LuaState;->e0(I)V

    iget-object p1, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const v1, -0xf4628

    invoke-virtual {p1, v1}, Lcom/luajava/LuaState;->d(I)I

    move-result p1

    iput p1, p0, Lcom/luajava/LuaObject;->ref:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setField(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Lcom/luajava/LuaObject;->push()V

    :try_start_0
    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    invoke-virtual {v0, p2}, Lcom/luajava/LuaState;->a0(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/luajava/LuaException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object p2, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    invoke-virtual {p2}, Lcom/luajava/LuaState;->Y()V

    :goto_0
    iget-object p2, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v0, -0x2

    invoke-virtual {p2, v0, p1}, Lcom/luajava/LuaState;->l0(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/luajava/LuaState;->Q(I)V

    return-void
.end method

.method public setI(JLjava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Lcom/luajava/LuaObject;->push()V

    :try_start_0
    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    invoke-virtual {v0, p3}, Lcom/luajava/LuaState;->a0(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/luajava/LuaException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object p3, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    invoke-virtual {p3}, Lcom/luajava/LuaState;->Y()V

    :goto_0
    iget-object p3, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v0, -0x2

    invoke-virtual {p3, v0, p1, p2}, Lcom/luajava/LuaState;->n0(IJ)V

    iget-object p1, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/luajava/LuaState;->Q(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->isNil()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "nil"
    :try_end_0
    .catch Lcom/luajava/LuaException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v1

    :cond_0
    :try_start_2
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->isBoolean()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/luajava/LuaObject;->getBoolean()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catch Lcom/luajava/LuaException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-object v1

    :cond_1
    :try_start_4
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->isNumber()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/luajava/LuaObject;->getNumber()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1
    :try_end_4
    .catch Lcom/luajava/LuaException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    return-object v1

    :cond_2
    :try_start_6
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->isString()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/luajava/LuaObject;->getString()Ljava/lang/String;

    move-result-object v1
    :try_end_6
    .catch Lcom/luajava/LuaException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    return-object v1

    :cond_3
    :try_start_8
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->isFunction()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v1, "Lua Function"
    :try_end_8
    .catch Lcom/luajava/LuaException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    return-object v1

    :cond_4
    :try_start_a
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->isJavaObject()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/luajava/LuaObject;->getObject()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_a
    .catch Lcom/luajava/LuaException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :try_start_b
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    return-object v1

    :cond_5
    :try_start_c
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->isUserdata()Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v1, "Userdata"
    :try_end_c
    .catch Lcom/luajava/LuaException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :try_start_d
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    return-object v1

    :cond_6
    :try_start_e
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->isTable()Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v1, "Lua Table"
    :try_end_e
    .catch Lcom/luajava/LuaException; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :try_start_f
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    return-object v1

    :cond_7
    :try_start_10
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->isJavaFunction()Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v1, "Java Function"
    :try_end_10
    .catch Lcom/luajava/LuaException; {:try_start_10 .. :try_end_10} :catch_0
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    :try_start_11
    monitor-exit v0

    return-object v1

    :cond_8
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    monitor-exit v0

    return-object v1

    :goto_0
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    throw v1
.end method

.method public type()I
    .locals 4

    iget-object v0, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/luajava/LuaObject;->push()V

    iget-object v1, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/luajava/LuaState;->w0(I)I

    move-result v1

    iget-object v2, p0, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/luajava/LuaState;->Q(I)V

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
