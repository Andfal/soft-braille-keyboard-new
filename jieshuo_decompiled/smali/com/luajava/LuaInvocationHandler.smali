.class public Lcom/luajava/LuaInvocationHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field private final a:Lcom/androlua/LuaContext;

.field private b:Lcom/luajava/LuaObject;


# direct methods
.method public constructor <init>(Lcom/luajava/LuaObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/luajava/LuaInvocationHandler;->b:Lcom/luajava/LuaObject;

    invoke-virtual {p1}, Lcom/luajava/LuaObject;->getLuaState()Lcom/luajava/LuaState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/luajava/LuaState;->l()Lcom/androlua/LuaContext;

    move-result-object p1

    iput-object p1, p0, Lcom/luajava/LuaInvocationHandler;->a:Lcom/androlua/LuaContext;

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iget-object p1, p0, Lcom/luajava/LuaInvocationHandler;->b:Lcom/luajava/LuaObject;

    iget-object p1, p1, Lcom/luajava/LuaObject;->L:Lcom/luajava/LuaState;

    monitor-enter p1

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/luajava/LuaInvocationHandler;->b:Lcom/luajava/LuaObject;

    invoke-virtual {v1}, Lcom/luajava/LuaObject;->isFunction()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/luajava/LuaInvocationHandler;->b:Lcom/luajava/LuaObject;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/luajava/LuaInvocationHandler;->b:Lcom/luajava/LuaObject;

    invoke-virtual {v1, v0}, Lcom/luajava/LuaObject;->getField(Ljava/lang/String;)Lcom/luajava/LuaObject;

    move-result-object v1

    :goto_0
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v1}, Lcom/luajava/LuaObject;->isNil()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_5

    sget-object p3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_4

    const-class p3, Ljava/lang/Boolean;

    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Class;->isPrimitive()Z

    move-result p3

    if-nez p3, :cond_3

    const-class p3, Ljava/lang/Number;

    invoke-virtual {p3, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    monitor-exit p1

    return-object v4

    :cond_3
    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    monitor-exit p1

    return-object p2

    :cond_4
    :goto_2
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p2

    :cond_5
    :try_start_1
    const-class v2, Ljava/lang/Void;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {v1, p3}, Lcom/luajava/LuaObject;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_8

    instance-of p3, v4, Ljava/lang/Double;

    if-eqz p3, :cond_8

    move-object p3, v4

    check-cast p3, Ljava/lang/Double;

    invoke-static {p3, p2}, Lcom/luajava/LuaState;->h(Ljava/lang/Double;Ljava/lang/Class;)Ljava/lang/Number;

    move-result-object v4

    goto :goto_4

    :cond_7
    :goto_3
    invoke-virtual {v1, p3}, Lcom/luajava/LuaObject;->call([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/luajava/LuaException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catch_0
    move-exception p3

    :try_start_2
    iget-object v1, p0, Lcom/luajava/LuaInvocationHandler;->a:Lcom/androlua/LuaContext;

    invoke-interface {v1, v0, p3}, Lcom/androlua/LuaContext;->sendError(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_8
    :goto_4
    if-nez v4, :cond_c

    sget-object p3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_b

    const-class p3, Ljava/lang/Boolean;

    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_9

    goto :goto_5

    :cond_9
    invoke-virtual {p2}, Ljava/lang/Class;->isPrimitive()Z

    move-result p3

    if-nez p3, :cond_a

    const-class p3, Ljava/lang/Number;

    invoke-virtual {p3, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_c

    :cond_a
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    monitor-exit p1

    return-object p2

    :cond_b
    :goto_5
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    monitor-exit p1

    return-object p2

    :cond_c
    monitor-exit p1

    return-object v4

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p2
.end method
