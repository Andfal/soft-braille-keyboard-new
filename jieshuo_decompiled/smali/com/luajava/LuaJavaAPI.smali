.class public final Lcom/luajava/LuaJavaAPI;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/luajava/LuaJavaAPI$JavaObject;
    }
.end annotation


# static fields
.field private static final boolMethodCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private static final doubleMethodCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private static final integerMethodCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private static final javaObjectMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final methodCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private static final methodCache3:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/reflect/Method;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private static final methodsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private static final stringMethodCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private static final voidMethodCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/luajava/LuaJavaAPI;->methodsMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/luajava/LuaJavaAPI;->methodCache:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/luajava/LuaJavaAPI;->methodCache3:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/luajava/LuaJavaAPI;->stringMethodCache:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/luajava/LuaJavaAPI;->integerMethodCache:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/luajava/LuaJavaAPI;->doubleMethodCache:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/luajava/LuaJavaAPI;->boolMethodCache:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/luajava/LuaJavaAPI;->voidMethodCache:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/luajava/LuaJavaAPI;->javaObjectMap:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static argError(Lcom/luajava/LuaState;Ljava/lang/String;ILjava/lang/Class;)Ljava/lang/String;
    .locals 3

    new-instance v0, Lcom/luajava/LuaException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad argument to \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' ("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " expected, got "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p2}, Lcom/luajava/LuaJavaAPI;->typeName(Lcom/luajava/LuaState;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " value)"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static argError(Lcom/luajava/LuaState;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Lcom/luajava/LuaException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad argument #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' ("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " expected, got "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x1

    invoke-static {p0, p2}, Lcom/luajava/LuaJavaAPI;->typeName(Lcom/luajava/LuaState;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " value)"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static asTable(JI)I
    .locals 6

    invoke-static {p0, p1}, Lcom/luajava/LuaStateFactory;->a(J)Lcom/luajava/LuaState;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->r(I)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p0

    const/4 p2, -0x1

    :try_start_0
    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->B(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->r0(I)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0, v1}, Lcom/luajava/LuaState;->Q(I)V

    invoke-static {p0, p1}, Lcom/luajava/LuaJavaAPI;->asTable(Lcom/luajava/LuaState;Ljava/lang/Object;)I

    move-result p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/luajava/LuaState;->L()V

    invoke-virtual {p0}, Lcom/luajava/LuaState;->z()I

    move-result p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return v1

    :cond_1
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    const/4 v2, -0x2

    if-eqz v0, :cond_2

    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    const/4 v3, 0x0

    :goto_0
    add-int/lit8 v4, v0, -0x1

    if-gt v3, v4, :cond_4

    invoke-static {p1, v3}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/luajava/LuaState;->a0(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    int-to-long v4, v3

    invoke-virtual {p0, v2, v4, v5}, Lcom/luajava/LuaState;->i0(IJ)V

    goto :goto_0

    :cond_2
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_3

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/luajava/LuaState;->a0(Ljava/lang/Object;)V

    add-int/lit8 v3, v0, 0x1

    int-to-long v4, v0

    invoke-virtual {p0, v2, v4, v5}, Lcom/luajava/LuaState;->i0(IJ)V

    move v0, v3

    goto :goto_1

    :cond_3
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_4

    check-cast p1, Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/luajava/LuaState;->a0(Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->a0(Ljava/lang/Object;)V

    const/4 v0, -0x3

    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->o0(I)V

    goto :goto_2

    :cond_4
    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->e0(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit p0

    return v1

    :catch_0
    move-exception p1

    new-instance p2, Lcom/luajava/LuaException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "can not astable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw p2

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method private static asTable(Lcom/luajava/LuaState;Ljava/lang/Object;)I
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/luajava/LuaState;->L()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    if-nez p1, :cond_0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v0

    :cond_0
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    const/4 v2, -0x2

    if-eqz v1, :cond_1

    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    add-int/lit8 v4, v1, -0x1

    if-gt v3, v4, :cond_4

    invoke-static {p1, v3}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/luajava/LuaJavaAPI;->asTable(Lcom/luajava/LuaState;Ljava/lang/Object;)I

    add-int/lit8 v3, v3, 0x1

    int-to-long v4, v3

    invoke-virtual {p0, v2, v4, v5}, Lcom/luajava/LuaState;->i0(IJ)V

    goto :goto_0

    :cond_1
    instance-of v1, p1, Ljava/util/Collection;

    if-eqz v1, :cond_2

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/luajava/LuaJavaAPI;->asTable(Lcom/luajava/LuaState;Ljava/lang/Object;)I

    add-int/lit8 v3, v1, 0x1

    int-to-long v4, v1

    invoke-virtual {p0, v2, v4, v5}, Lcom/luajava/LuaState;->i0(IJ)V

    move v1, v3

    goto :goto_1

    :cond_2
    instance-of v1, p1, Ljava/util/Map;

    if-eqz v1, :cond_3

    check-cast p1, Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/luajava/LuaState;->a0(Ljava/lang/Object;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/luajava/LuaJavaAPI;->asTable(Lcom/luajava/LuaState;Ljava/lang/Object;)I

    const/4 v1, -0x3

    invoke-virtual {p0, v1}, Lcom/luajava/LuaState;->o0(I)V

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->Q(I)V

    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->a0(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    :try_start_3
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    new-instance v0, Lcom/luajava/LuaException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not astable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method private static bindClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 4

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "short"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x7

    goto :goto_0

    :sswitch_1
    const-string v1, "float"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x6

    goto :goto_0

    :sswitch_2
    const-string v1, "boolean"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_3
    const-string v1, "long"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_4
    const-string v1, "char"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_5
    const-string v1, "byte"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_6
    const-string v1, "int"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_7
    const-string v1, "double"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    new-instance v1, Lcom/luajava/LuaException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Class not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    sget-object p0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    goto :goto_1

    :pswitch_1
    sget-object p0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    goto :goto_1

    :pswitch_2
    sget-object p0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    goto :goto_1

    :pswitch_3
    sget-object p0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    goto :goto_1

    :pswitch_4
    sget-object p0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    goto :goto_1

    :pswitch_5
    sget-object p0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    goto :goto_1

    :pswitch_6
    sget-object p0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    goto :goto_1

    :pswitch_7
    sget-object p0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    :goto_1
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4f08842f -> :sswitch_7
        0x197ef -> :sswitch_6
        0x2e6108 -> :sswitch_5
        0x2e9356 -> :sswitch_4
        0x32c67c -> :sswitch_3
        0x3db6c28 -> :sswitch_2
        0x5d0225c -> :sswitch_1
        0x685847c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static callMethod(JILjava/lang/String;)I
    .locals 19

    move-object/from16 v1, p3

    invoke-static/range {p0 .. p1}, Lcom/luajava/LuaStateFactory;->a(J)Lcom/luajava/LuaState;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/luajava/LuaState;->r(I)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v2

    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/luajava/LuaState;->z()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v5, :cond_3

    sget-object v0, Lcom/luajava/LuaJavaAPI;->voidMethodCache:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v8, :cond_2

    :try_start_1
    new-array v0, v6, [Ljava/lang/Object;

    invoke-virtual {v8, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_0

    :try_start_2
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v2

    return v6

    :cond_0
    invoke-virtual {v2, v0}, Lcom/luajava/LuaState;->a0(Ljava/lang/Object;)V

    monitor-exit v2

    return v7

    :catch_0
    move-exception v0

    const-string v1, "  at "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n  -> "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    :cond_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/luajava/LuaException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid method call.\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const/4 v8, 0x0

    const/4 v0, -0x1

    :goto_0
    new-array v9, v5, [Ljava/lang/Object;

    const/4 v11, 0x4

    const/4 v12, 0x3

    if-ne v5, v7, :cond_f

    invoke-virtual {v2, v7}, Lcom/luajava/LuaState;->w0(I)I

    move-result v13

    if-eq v13, v7, :cond_a

    if-eq v13, v12, :cond_6

    if-eq v13, v11, :cond_4

    goto/16 :goto_1

    :cond_4
    sget-object v0, Lcom/luajava/LuaJavaAPI;->stringMethodCache:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/lang/reflect/Method;

    if-eqz v8, :cond_5

    invoke-virtual {v2, v7}, Lcom/luajava/LuaState;->v0(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v6

    :cond_5
    const/4 v0, 0x4

    goto :goto_1

    :cond_6
    invoke-virtual {v2, v7}, Lcom/luajava/LuaState;->D(I)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/luajava/LuaJavaAPI;->integerMethodCache:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/lang/reflect/Method;

    if-eqz v8, :cond_7

    invoke-virtual {v2, v7}, Lcom/luajava/LuaState;->s0(I)J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v13

    aget-object v13, v13, v6

    invoke-static {v0, v13}, Lcom/luajava/LuaState;->i(Ljava/lang/Long;Ljava/lang/Class;)Ljava/lang/Number;

    move-result-object v0

    aput-object v0, v9, v6

    :cond_7
    const/16 v0, 0x9

    goto :goto_1

    :cond_8
    sget-object v0, Lcom/luajava/LuaJavaAPI;->doubleMethodCache:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/lang/reflect/Method;

    if-eqz v8, :cond_9

    invoke-virtual {v2, v7}, Lcom/luajava/LuaState;->u0(I)D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v13

    aget-object v13, v13, v6

    invoke-static {v0, v13}, Lcom/luajava/LuaState;->h(Ljava/lang/Double;Ljava/lang/Class;)Ljava/lang/Number;

    move-result-object v0

    aput-object v0, v9, v6

    :cond_9
    const/4 v0, 0x3

    goto :goto_1

    :cond_a
    sget-object v0, Lcom/luajava/LuaJavaAPI;->boolMethodCache:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/lang/reflect/Method;

    if-eqz v8, :cond_b

    invoke-virtual {v2, v7}, Lcom/luajava/LuaState;->r0(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v9, v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_b
    const/4 v0, 0x1

    :goto_1
    if-eqz v8, :cond_f

    :try_start_3
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {v8, v7}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    :cond_c
    invoke-virtual {v8, v3, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v0, :cond_d

    :try_start_4
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    monitor-exit v2

    return v6

    :cond_d
    invoke-virtual {v2, v0}, Lcom/luajava/LuaState;->a0(Ljava/lang/Object;)V

    monitor-exit v2

    return v7

    :catch_1
    move-exception v0

    const-string v1, "  at "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n  -> "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    :cond_e
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/luajava/LuaException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid method call.\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    move v8, v0

    sget-object v0, Lcom/luajava/LuaJavaAPI;->methodCache:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, [Ljava/lang/reflect/Method;

    new-array v14, v5, [I

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v5, :cond_10

    add-int/lit8 v15, v0, 0x1

    invoke-virtual {v2, v15}, Lcom/luajava/LuaState;->w0(I)I

    move-result v16

    aput v16, v14, v0

    move v0, v15

    goto :goto_2

    :cond_10
    array-length v15, v13

    :goto_3
    if-ge v6, v15, :cond_1c

    aget-object v10, v13, v6

    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    array-length v11, v0

    if-eq v11, v5, :cond_12

    :cond_11
    const/4 v11, 0x4

    const/16 v12, 0x9

    const/16 v16, 0x0

    const/16 v17, 0x1

    goto/16 :goto_a

    :cond_12
    const/4 v11, 0x0

    :goto_4
    array-length v12, v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-ge v11, v12, :cond_13

    :try_start_5
    aget-object v12, v0, v11

    aget v7, v14, v11

    move-object/from16 v18, v0

    add-int/lit8 v0, v11, 0x1

    invoke-static {v2, v12, v7, v0}, Lcom/luajava/LuaJavaAPI;->compareTypes(Lcom/luajava/LuaState;Ljava/lang/Class;II)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v9, v11
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move v11, v0

    move-object/from16 v0, v18

    const/4 v7, 0x1

    goto :goto_4

    :catch_2
    nop

    const/4 v0, 0x0

    goto :goto_5

    :cond_13
    const/4 v0, 0x1

    :goto_5
    if-eqz v0, :cond_11

    :try_start_6
    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-nez v0, :cond_14

    const/4 v7, 0x1

    :try_start_7
    invoke-virtual {v10, v7}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_6

    :catch_3
    move-exception v0

    goto :goto_9

    :cond_14
    :goto_6
    :try_start_8
    invoke-virtual {v10, v3, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v8, :cond_19

    const/4 v3, 0x1

    if-eq v8, v3, :cond_18

    const/4 v7, 0x3

    if-eq v8, v7, :cond_17

    const/4 v11, 0x4

    if-eq v8, v11, :cond_16

    const/16 v12, 0x9

    if-eq v8, v12, :cond_15

    goto :goto_8

    :cond_15
    :try_start_9
    sget-object v3, Lcom/luajava/LuaJavaAPI;->integerMethodCache:Ljava/util/HashMap;

    :goto_7
    invoke-virtual {v3, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_16
    sget-object v3, Lcom/luajava/LuaJavaAPI;->stringMethodCache:Ljava/util/HashMap;

    goto :goto_7

    :cond_17
    sget-object v3, Lcom/luajava/LuaJavaAPI;->doubleMethodCache:Ljava/util/HashMap;

    goto :goto_7

    :cond_18
    sget-object v3, Lcom/luajava/LuaJavaAPI;->boolMethodCache:Ljava/util/HashMap;

    goto :goto_7

    :cond_19
    sget-object v3, Lcom/luajava/LuaJavaAPI;->voidMethodCache:Ljava/util/HashMap;

    goto :goto_7

    :goto_8
    if-nez v0, :cond_1a

    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    monitor-exit v2

    const/16 v16, 0x0

    return v16

    :cond_1a
    invoke-virtual {v2, v0}, Lcom/luajava/LuaState;->a0(Ljava/lang/Object;)V

    monitor-exit v2

    const/16 v17, 0x1

    return v17

    :catch_4
    move-exception v0

    const/4 v7, 0x3

    :goto_9
    const/4 v11, 0x4

    const/16 v12, 0x9

    const/16 v16, 0x0

    const/16 v17, 0x1

    const-string v7, "  at "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "\n  -> "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    if-eqz v7, :cond_1b

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    :cond_1b
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_a
    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x1

    const/4 v12, 0x3

    goto/16 :goto_3

    :cond_1c
    const/16 v16, 0x0

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-gtz v0, :cond_1e

    array-length v0, v13

    const/4 v6, 0x0

    :goto_b
    if-ge v6, v0, :cond_1d

    aget-object v1, v13, v6

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    :cond_1d
    new-instance v0, Lcom/luajava/LuaException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid method call. Invalid Parameters.\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    new-instance v0, Lcom/luajava/LuaException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid method call.\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    throw v0
.end method

.method public static checkClass(Lcom/luajava/LuaState;Ljava/lang/Object;Ljava/lang/String;)I
    .locals 7

    monitor-enter p0

    :try_start_0
    instance-of v0, p1, Ljava/lang/Class;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x3

    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "$"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/luajava/LuaState;->X(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p0

    return v2

    :catch_0
    invoke-virtual {v0}, Ljava/lang/Class;->getClasses()[Ljava/lang/Class;

    move-result-object v0

    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v0, v4

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v0, "LayoutParams"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "lua"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkClass:2 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ";"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0, v5}, Lcom/luajava/LuaState;->X(Ljava/lang/Object;)V

    monitor-exit p0

    return v2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    monitor-exit p0

    return v1

    :cond_3
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public static checkField(Lcom/luajava/LuaState;Ljava/lang/Object;Ljava/lang/String;)I
    .locals 4

    monitor-enter p0

    :try_start_0
    instance-of v0, p1, Ljava/lang/Class;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/lang/Class;

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    :goto_0
    :try_start_1
    invoke-virtual {v0, p2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p2, :cond_1

    :try_start_2
    monitor-exit p0

    return v2

    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-nez v0, :cond_2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return v2

    :cond_2
    :try_start_3
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p2, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    :cond_3
    invoke-virtual {p2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->a0(Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result p1

    invoke-static {p1}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result p1

    if-eqz p1, :cond_4

    monitor-exit p0

    const/4 p0, 0x5

    return p0

    :cond_4
    monitor-exit p0

    return v1

    :catch_0
    move-exception p1

    new-instance p2, Lcom/luajava/LuaException;

    invoke-direct {p2, p1}, Lcom/luajava/LuaException;-><init>(Ljava/lang/Exception;)V

    throw p2

    :catch_1
    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public static checkMethod(Lcom/luajava/LuaState;Ljava/lang/Object;Ljava/lang/String;)I
    .locals 1

    monitor-enter p0

    const/4 v0, -0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->v0(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/luajava/LuaJavaAPI;->getJavaMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/reflect/Method;

    move-result-object p1

    array-length p1, p1

    if-nez p1, :cond_0

    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :cond_0
    monitor-exit p0

    const/4 p0, 0x2

    return p0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static clearCaches()V
    .locals 1

    sget-object v0, Lcom/luajava/LuaJavaAPI;->methodCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    sget-object v0, Lcom/luajava/LuaJavaAPI;->methodsMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    sget-object v0, Lcom/luajava/LuaJavaAPI;->stringMethodCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    sget-object v0, Lcom/luajava/LuaJavaAPI;->integerMethodCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    sget-object v0, Lcom/luajava/LuaJavaAPI;->doubleMethodCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    sget-object v0, Lcom/luajava/LuaJavaAPI;->boolMethodCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    sget-object v0, Lcom/luajava/LuaJavaAPI;->voidMethodCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method private static compareTypes(Lcom/luajava/LuaState;Ljava/lang/Class;I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/luajava/LuaState;",
            "Ljava/lang/Class<",
            "*>;I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->w0(I)I

    move-result v0

    invoke-static {p0, p1, v0, p2}, Lcom/luajava/LuaJavaAPI;->compareTypes(Lcom/luajava/LuaState;Ljava/lang/Class;II)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static compareTypes(Lcom/luajava/LuaState;Ljava/lang/Class;II)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/luajava/LuaState;",
            "Ljava/lang/Class<",
            "*>;II)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p2, v2, :cond_18

    const/4 v3, 0x3

    if-eq p2, v3, :cond_15

    const/4 v3, 0x4

    if-eq p2, v3, :cond_13

    const/4 v3, 0x5

    if-eq p2, v3, :cond_d

    const/4 v3, 0x6

    if-eq p2, v3, :cond_b

    const/4 v3, 0x7

    if-ne p2, v3, :cond_a

    invoke-virtual {p0, p3}, Lcom/luajava/LuaState;->H(I)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {p0, p3}, Lcom/luajava/LuaState;->w(I)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result p3

    if-eqz p3, :cond_8

    sget-object p3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, p3, :cond_2

    instance-of p3, p0, Ljava/lang/Byte;

    if-eqz p3, :cond_2

    goto :goto_0

    :cond_2
    sget-object p3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, p3, :cond_3

    instance-of p3, p0, Ljava/lang/Short;

    if-eqz p3, :cond_3

    goto :goto_0

    :cond_3
    sget-object p3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, p3, :cond_4

    instance-of p3, p0, Ljava/lang/Integer;

    if-eqz p3, :cond_4

    goto :goto_0

    :cond_4
    sget-object p3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, p3, :cond_5

    instance-of p3, p0, Ljava/lang/Long;

    if-eqz p3, :cond_5

    goto :goto_0

    :cond_5
    sget-object p3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, p3, :cond_6

    instance-of p3, p0, Ljava/lang/Float;

    if-eqz p3, :cond_6

    goto :goto_0

    :cond_6
    sget-object p3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, p3, :cond_7

    instance-of p3, p0, Ljava/lang/Double;

    if-eqz p3, :cond_7

    goto :goto_0

    :cond_7
    sget-object p3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, p3, :cond_8

    instance-of p3, p0, Ljava/lang/Character;

    if-eqz p3, :cond_8

    :goto_0
    move-object v0, p0

    :cond_8
    if-nez v0, :cond_1a

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p3

    if-eqz p3, :cond_1b

    move-object v0, p0

    goto/16 :goto_2

    :cond_9
    const-class v3, Lcom/luajava/LuaObject;

    invoke-virtual {p1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_e

    goto/16 :goto_3

    :cond_a
    new-instance p0, Lcom/luajava/LuaException;

    const-string p1, "Invalid Parameters."

    invoke-direct {p0, p1}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v3

    if-eqz v3, :cond_c

    :goto_1
    invoke-static {p0, p1, p3}, Lcom/luajava/LuaJavaAPI;->createProxyObject(Lcom/luajava/LuaState;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_2

    :cond_c
    const-class v3, Lcom/luajava/LuaFunction;

    invoke-virtual {p1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_e

    goto/16 :goto_3

    :cond_d
    const-class v3, Lcom/luajava/LuaTable;

    invoke-virtual {p1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_f

    :cond_e
    invoke-virtual {p0, p3}, Lcom/luajava/LuaState;->s(I)Lcom/luajava/LuaObject;

    move-result-object v0

    goto/16 :goto_2

    :cond_f
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, v0, p3}, Lcom/luajava/LuaJavaAPI;->createArray(Lcom/luajava/LuaState;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_2

    :cond_10
    const-class v3, Ljava/util/List;

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-static {p0, p1, p3}, Lcom/luajava/LuaJavaAPI;->createList(Lcom/luajava/LuaState;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_2

    :cond_11
    const-class v3, Ljava/util/Map;

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-static {p0, p1, p3}, Lcom/luajava/LuaJavaAPI;->createMap(Lcom/luajava/LuaState;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_2

    :cond_12
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v3

    if-eqz v3, :cond_1b

    goto :goto_1

    :cond_13
    const-class v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_14

    goto :goto_3

    :cond_14
    invoke-virtual {p0, p3}, Lcom/luajava/LuaState;->v0(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_15
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    if-nez v3, :cond_16

    const-class v3, Ljava/lang/Number;

    invoke-virtual {p1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_16

    goto :goto_3

    :cond_16
    invoke-virtual {p0, p3}, Lcom/luajava/LuaState;->D(I)Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-virtual {p0, p3}, Lcom/luajava/LuaState;->s0(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/luajava/LuaState;->i(Ljava/lang/Long;Ljava/lang/Class;)Ljava/lang/Number;

    move-result-object v0

    goto :goto_2

    :cond_17
    invoke-virtual {p0, p3}, Lcom/luajava/LuaState;->G(I)Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-virtual {p0, p3}, Lcom/luajava/LuaState;->u0(I)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/luajava/LuaState;->h(Ljava/lang/Double;Ljava/lang/Class;)Ljava/lang/Number;

    move-result-object v0

    goto :goto_2

    :cond_18
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    if-eqz v3, :cond_19

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p1, v3, :cond_19

    const-class v3, Ljava/lang/Boolean;

    invoke-virtual {p1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_19

    goto :goto_3

    :cond_19
    invoke-virtual {p0, p3}, Lcom/luajava/LuaState;->r0(I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :cond_1a
    :goto_2
    const/4 v1, 0x1

    :cond_1b
    :goto_3
    if-eqz v1, :cond_1c

    if-eqz v0, :cond_1c

    return-object v0

    :cond_1c
    new-instance p0, Lcom/luajava/LuaException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid Parameter."

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static createAbstractProxy(Lcom/luajava/LuaState;Ljava/lang/Class;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/luajava/LuaState;",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    new-instance v0, Lcom/androlua/LuaEnhancer;

    invoke-direct {v0, p1}, Lcom/androlua/LuaEnhancer;-><init>(Ljava/lang/Class;)V

    new-instance p1, Lcom/luajava/LuaJavaAPI$2;

    invoke-direct {p1}, Lcom/luajava/LuaJavaAPI$2;-><init>()V

    invoke-virtual {v0, p1}, Lcom/androlua/LuaEnhancer;->create(Lcom/android/cglib/proxy/MethodFilter;)Ljava/lang/Class;

    move-result-object p1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/cglib/proxy/EnhancerInterface;

    new-instance v0, Lcom/luajava/LuaAbstractMethodInterceptor;

    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/luajava/LuaState;->s(I)Lcom/luajava/LuaObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/luajava/LuaAbstractMethodInterceptor;-><init>(Lcom/luajava/LuaObject;)V

    invoke-interface {p1, v0}, Lcom/android/cglib/proxy/EnhancerInterface;->setMethodInterceptor_Enhancer(Lcom/android/cglib/proxy/MethodInterceptor;)V

    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->X(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static createArray(JLjava/lang/String;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/luajava/LuaStateFactory;->a(J)Lcom/luajava/LuaState;

    move-result-object p0

    monitor-enter p0

    :try_start_0
    invoke-static {p2}, Lcom/luajava/LuaJavaAPI;->bindClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/luajava/LuaJavaAPI;->createArray(Lcom/luajava/LuaState;Ljava/lang/Class;)I

    move-result p1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private static createArray(Lcom/luajava/LuaState;Ljava/lang/Class;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/luajava/LuaState;",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x2

    :try_start_0
    invoke-static {p0, p1, v0}, Lcom/luajava/LuaJavaAPI;->createArray(Lcom/luajava/LuaState;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->X(Ljava/lang/Object;)V

    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private static createArray(Lcom/luajava/LuaState;Ljava/lang/Class;I)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/luajava/LuaState;",
            "Ljava/lang/Class<",
            "*>;I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->N(I)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    const-class v2, Ljava/lang/String;

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-ne p1, v2, :cond_0

    const/4 p1, 0x1

    :goto_0
    if-gt p1, v0, :cond_8

    int-to-double v5, p1

    invoke-virtual {p0, v5, v6}, Lcom/luajava/LuaState;->Z(D)V

    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->y(I)I

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {p0, v3}, Lcom/luajava/LuaState;->v0(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v2, v5}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {p0, v4}, Lcom/luajava/LuaState;->Q(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v2, :cond_1

    const/4 p1, 0x1

    :goto_1
    if-gt p1, v0, :cond_8

    int-to-double v5, p1

    invoke-virtual {p0, v5, v6}, Lcom/luajava/LuaState;->Z(D)V

    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->y(I)I

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {p0, v3}, Lcom/luajava/LuaState;->u0(I)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-static {v1, v2, v5}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {p0, v4}, Lcom/luajava/LuaState;->Q(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v2, :cond_2

    const/4 p1, 0x1

    :goto_2
    if-gt p1, v0, :cond_8

    int-to-double v5, p1

    invoke-virtual {p0, v5, v6}, Lcom/luajava/LuaState;->Z(D)V

    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->y(I)I

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {p0, v3}, Lcom/luajava/LuaState;->u0(I)D

    move-result-wide v5

    double-to-float v5, v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v1, v2, v5}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {p0, v4}, Lcom/luajava/LuaState;->Q(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_2
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v2, :cond_3

    const/4 p1, 0x1

    :goto_3
    if-gt p1, v0, :cond_8

    int-to-double v5, p1

    invoke-virtual {p0, v5, v6}, Lcom/luajava/LuaState;->Z(D)V

    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->y(I)I

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {p0, v3}, Lcom/luajava/LuaState;->s0(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v1, v2, v5}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {p0, v4}, Lcom/luajava/LuaState;->Q(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_3
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v2, :cond_4

    const/4 p1, 0x1

    :goto_4
    if-gt p1, v0, :cond_8

    int-to-double v5, p1

    invoke-virtual {p0, v5, v6}, Lcom/luajava/LuaState;->Z(D)V

    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->y(I)I

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {p0, v3}, Lcom/luajava/LuaState;->s0(I)J

    move-result-wide v5

    long-to-int v6, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v1, v2, v5}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {p0, v4}, Lcom/luajava/LuaState;->Q(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_4
    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, v2, :cond_5

    const/4 p1, 0x1

    :goto_5
    if-gt p1, v0, :cond_8

    int-to-double v5, p1

    invoke-virtual {p0, v5, v6}, Lcom/luajava/LuaState;->Z(D)V

    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->y(I)I

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {p0, v3}, Lcom/luajava/LuaState;->s0(I)J

    move-result-wide v5

    long-to-int v6, v5

    int-to-short v5, v6

    invoke-static {v5}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    invoke-static {v1, v2, v5}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {p0, v4}, Lcom/luajava/LuaState;->Q(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    :cond_5
    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, v2, :cond_6

    const/4 p1, 0x1

    :goto_6
    if-gt p1, v0, :cond_8

    int-to-double v5, p1

    invoke-virtual {p0, v5, v6}, Lcom/luajava/LuaState;->Z(D)V

    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->y(I)I

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {p0, v3}, Lcom/luajava/LuaState;->s0(I)J

    move-result-wide v5

    long-to-int v6, v5

    int-to-char v5, v6

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-static {v1, v2, v5}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {p0, v4}, Lcom/luajava/LuaState;->Q(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_6

    :cond_6
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, v2, :cond_7

    const/4 p1, 0x1

    :goto_7
    if-gt p1, v0, :cond_8

    int-to-double v5, p1

    invoke-virtual {p0, v5, v6}, Lcom/luajava/LuaState;->Z(D)V

    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->y(I)I

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {p0, v3}, Lcom/luajava/LuaState;->s0(I)J

    move-result-wide v5

    long-to-int v6, v5

    int-to-byte v5, v6

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-static {v1, v2, v5}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {p0, v4}, Lcom/luajava/LuaState;->Q(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_7

    :cond_7
    const/4 v2, 0x1

    :goto_8
    if-gt v2, v0, :cond_8

    int-to-double v5, v2

    invoke-virtual {p0, v5, v6}, Lcom/luajava/LuaState;->Z(D)V

    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->y(I)I

    add-int/lit8 v3, v2, -0x1

    invoke-virtual {p0}, Lcom/luajava/LuaState;->z()I

    move-result v5

    invoke-static {p0, p1, v5}, Lcom/luajava/LuaJavaAPI;->compareTypes(Lcom/luajava/LuaState;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v1, v3, v5}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {p0, v4}, Lcom/luajava/LuaState;->Q(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_8
    :try_start_1
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    goto :goto_9

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance p2, Lcom/luajava/LuaException;

    invoke-direct {p2, p1}, Lcom/luajava/LuaException;-><init>(Ljava/lang/Exception;)V

    throw p2

    :goto_9
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private static createList(Lcom/luajava/LuaState;Ljava/lang/Class;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/luajava/LuaState;",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x2

    :try_start_0
    invoke-static {p0, p1, v0}, Lcom/luajava/LuaJavaAPI;->createList(Lcom/luajava/LuaState;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->X(Ljava/lang/Object;)V

    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private static createList(Lcom/luajava/LuaState;Ljava/lang/Class;I)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/luajava/LuaState;",
            "Ljava/lang/Class<",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->N(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-class v1, Ljava/util/List;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    :goto_0
    const/4 v1, 0x1

    const/4 v2, 0x1

    :goto_1
    if-gt v2, v0, :cond_1

    int-to-double v3, v2

    invoke-virtual {p0, v3, v4}, Lcom/luajava/LuaState;->Z(D)V

    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->y(I)I

    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Lcom/luajava/LuaState;->t0(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v1}, Lcom/luajava/LuaState;->Q(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :try_start_2
    monitor-exit p0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Lcom/luajava/LuaException;

    invoke-direct {p2, p1}, Lcom/luajava/LuaException;-><init>(Ljava/lang/Exception;)V

    throw p2

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private static createMap(Lcom/luajava/LuaState;Ljava/lang/Class;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/luajava/LuaState;",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x2

    :try_start_0
    invoke-static {p0, p1, v0}, Lcom/luajava/LuaJavaAPI;->createMap(Lcom/luajava/LuaState;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->X(Ljava/lang/Object;)V

    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private static createMap(Lcom/luajava/LuaState;Ljava/lang/Class;I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/luajava/LuaState;",
            "Ljava/lang/Class<",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-class v0, Ljava/util/Map;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    :goto_0
    invoke-virtual {p0}, Lcom/luajava/LuaState;->Y()V

    :goto_1
    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->M(I)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->t0(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/luajava/LuaState;->t0(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->Q(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    :try_start_1
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    new-instance p2, Lcom/luajava/LuaException;

    invoke-direct {p2, p1}, Lcom/luajava/LuaException;-><init>(Ljava/lang/Exception;)V

    throw p2

    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public static createProxy(JLjava/lang/String;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/luajava/LuaStateFactory;->a(J)Lcom/luajava/LuaState;

    move-result-object p0

    monitor-enter p0

    :try_start_0
    invoke-static {p0, p2}, Lcom/luajava/LuaJavaAPI;->createProxyObject(Lcom/luajava/LuaState;Ljava/lang/String;)I

    move-result p1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private static createProxyObject(Lcom/luajava/LuaState;Ljava/lang/Class;)I
    .locals 1

    monitor-enter p0

    const/4 v0, 0x2

    :try_start_0
    invoke-static {p0, p1, v0}, Lcom/luajava/LuaJavaAPI;->createProxyObject(Lcom/luajava/LuaState;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->X(Ljava/lang/Object;)V

    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private static createProxyObject(Lcom/luajava/LuaState;Ljava/lang/String;)I
    .locals 1

    monitor-enter p0

    const/4 v0, 0x2

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->s(I)Lcom/luajava/LuaObject;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/luajava/LuaObject;->createProxy(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->X(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Lcom/luajava/LuaException;

    invoke-direct {v0, p1}, Lcom/luajava/LuaException;-><init>(Ljava/lang/Exception;)V

    throw v0

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private static createProxyObject(Lcom/luajava/LuaState;Ljava/lang/Class;I)Ljava/lang/Object;
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->s(I)Lcom/luajava/LuaObject;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/luajava/LuaObject;->createProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Lcom/luajava/LuaException;

    invoke-direct {p2, p1}, Lcom/luajava/LuaException;-><init>(Ljava/lang/Exception;)V

    throw p2

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public static getArrayValue(JII)I
    .locals 2

    invoke-static {p0, p1}, Lcom/luajava/LuaStateFactory;->a(J)Lcom/luajava/LuaState;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->r(I)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->isArray()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {p1, p3}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    instance-of p2, p1, Ljava/util/List;

    if-eqz p2, :cond_1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_1
    instance-of p2, p1, Ljava/util/Map;

    if-eqz p2, :cond_2

    check-cast p1, Ljava/util/Map;

    int-to-long p2, p3

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->a0(Ljava/lang/Object;)V

    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :cond_2
    new-instance p2, Lcom/luajava/LuaException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "can not get "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " value in "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw p2

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static getContext(J)I
    .locals 0

    invoke-static {p0, p1}, Lcom/luajava/LuaStateFactory;->a(J)Lcom/luajava/LuaState;

    move-result-object p0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/luajava/LuaState;->l()Lcom/androlua/LuaContext;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->X(Ljava/lang/Object;)V

    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private static getJavaMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/reflect/Method;
    .locals 3

    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Class;

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/luajava/LuaJavaAPI;->methodCache:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/reflect/Method;

    if-nez v2, :cond_1

    invoke-static {p0, p1, v0}, Lcom/luajava/LuaJavaAPI;->getMethod(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array v2, p1, [Ljava/lang/reflect/Method;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-interface {v1, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v2
.end method

.method public static getJavaObject2(I)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/luajava/LuaJavaAPI;->javaObjectMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getMethod(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/luajava/LuaJavaAPI;->methodCache3:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-nez v0, :cond_4

    sget-object v0, Lcom/luajava/LuaJavaAPI;->methodsMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/reflect/Method;

    if-nez v3, :cond_1

    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v0, p0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    array-length p0, v3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_3

    aget-object v4, v3, v0

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    if-nez v6, :cond_2

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/util/ArrayList;

    :cond_4
    if-nez v0, :cond_5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_5
    if-eqz p2, :cond_9

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_6
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_8

    const-class p0, Ljava/lang/Class;

    invoke-static {p0, p1, v2}, Lcom/luajava/LuaJavaAPI;->getMethod(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object p0

    :cond_8
    return-object p0

    :cond_9
    return-object v0
.end method

.method private static getObjInstance(Lcom/luajava/LuaState;Ljava/lang/Class;)I
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/luajava/LuaState;",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/luajava/LuaState;->z()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/luajava/LuaState;->X(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return v2

    :catch_0
    :try_start_3
    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v3, v1

    invoke-virtual {p1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/luajava/LuaState;->l()Lcom/androlua/LuaContext;

    move-result-object v5

    invoke-interface {v5}, Lcom/androlua/LuaContext;->getContext()Landroid/content/Context;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/luajava/LuaState;->X(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit p0

    return v2

    :catch_1
    :cond_0
    sub-int/2addr v0, v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object p1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    array-length v5, p1

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_5

    aget-object v7, p1, v6

    invoke-virtual {v7}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    array-length v9, v8

    if-eq v9, v0, :cond_1

    goto :goto_3

    :cond_1
    const/4 v9, 0x0

    :goto_1
    array-length v10, v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-ge v9, v10, :cond_2

    :try_start_5
    aget-object v10, v8, v9

    add-int/lit8 v11, v9, 0x2

    invoke-static {p0, v10, v11}, Lcom/luajava/LuaJavaAPI;->compareTypes(Lcom/luajava/LuaState;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v10

    aput-object v10, v3, v9
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :catch_2
    nop

    const/4 v8, 0x0

    goto :goto_2

    :cond_2
    const/4 v8, 0x1

    :goto_2
    if-eqz v8, :cond_4

    :try_start_6
    invoke-virtual {v7, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->X(Ljava/lang/Object;)V

    monitor-exit p0

    return v2

    :catch_3
    move-exception v8

    const-string v9, "  at "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "\n  -> "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual {v8}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v8

    :cond_3
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-gtz v0, :cond_7

    array-length v0, p1

    :goto_4
    if-ge v1, v0, :cond_6

    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_6
    new-instance p1, Lcom/luajava/LuaException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid constructor method call. Invalid Parameters.\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Lcom/luajava/LuaException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid constructor method call.\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw p1
.end method

.method public static javaBindClass(JLjava/lang/String;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/luajava/LuaStateFactory;->a(J)Lcom/luajava/LuaState;

    move-result-object p0

    invoke-static {p2}, Lcom/luajava/LuaJavaAPI;->bindClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->X(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static javaClose(JI)V
    .locals 0

    invoke-static {p0, p1}, Lcom/luajava/LuaStateFactory;->a(J)Lcom/luajava/LuaState;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->r(I)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    instance-of p1, p0, Lcom/androlua/LuaGcable;

    if-eqz p1, :cond_1

    check-cast p0, Lcom/androlua/LuaGcable;

    invoke-interface {p0}, Lcom/androlua/LuaGcable;->gc()V

    goto :goto_1

    :cond_1
    instance-of p1, p0, Landroid/graphics/Bitmap;

    if-eqz p1, :cond_2

    move-object p1, p0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-static {p1}, Lcom/androlua/LuaBitmap;->removeBitmap(Landroid/graphics/Bitmap;)V

    check-cast p0, Landroid/graphics/Bitmap;

    :goto_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    :cond_2
    instance-of p1, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p1, :cond_3

    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    :cond_3
    instance-of p1, p0, Ljava/lang/AutoCloseable;

    if-eqz p1, :cond_4

    check-cast p0, Ljava/lang/AutoCloseable;

    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_1
    return-void
.end method

.method public static javaCreate(JI)I
    .locals 2

    invoke-static {p0, p1}, Lcom/luajava/LuaStateFactory;->a(J)Lcom/luajava/LuaState;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->r(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result p2

    if-nez p2, :cond_8

    const-class p2, Ljava/lang/String;

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {p0, p1}, Lcom/luajava/LuaJavaAPI;->createArray(Lcom/luajava/LuaState;Ljava/lang/Class;)I

    move-result p1

    monitor-exit p0

    return p1

    :cond_1
    const-class p2, Ljava/util/List;

    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-static {p0, p1}, Lcom/luajava/LuaJavaAPI;->createList(Lcom/luajava/LuaState;Ljava/lang/Class;)I

    move-result p1

    monitor-exit p0

    return p1

    :cond_2
    const-class p2, Ljava/util/Map;

    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-static {p0, p1}, Lcom/luajava/LuaJavaAPI;->createMap(Lcom/luajava/LuaState;Ljava/lang/Class;)I

    move-result p1

    monitor-exit p0

    return p1

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-static {p0, p1}, Lcom/luajava/LuaJavaAPI;->createProxyObject(Lcom/luajava/LuaState;Ljava/lang/Class;)I

    move-result p1

    monitor-exit p0

    return p1

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result p2

    and-int/lit16 p2, p2, 0x400

    if-eqz p2, :cond_5

    invoke-static {p0, p1}, Lcom/luajava/LuaJavaAPI;->createAbstractProxy(Lcom/luajava/LuaState;Ljava/lang/Class;)I

    move-result p1

    monitor-exit p0

    return p1

    :cond_5
    const/4 p2, -0x1

    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->N(I)I

    move-result v0

    if-nez v0, :cond_6

    invoke-static {p0, p1}, Lcom/luajava/LuaJavaAPI;->createArray(Lcom/luajava/LuaState;Ljava/lang/Class;)I

    move-result p1

    monitor-exit p0

    return p1

    :cond_6
    const-wide/16 v0, 0x1

    invoke-virtual {p0, p2, v0, v1}, Lcom/luajava/LuaState;->q(IJ)I

    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->t0(I)Ljava/lang/Object;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->Q(I)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-static {p0, p1}, Lcom/luajava/LuaJavaAPI;->createArray(Lcom/luajava/LuaState;Ljava/lang/Class;)I

    move-result p1

    monitor-exit p0

    return p1

    :cond_7
    invoke-static {p0, p1}, Lcom/luajava/LuaJavaAPI;->getObjInstance(Lcom/luajava/LuaState;Ljava/lang/Class;)I

    move-result p1

    monitor-exit p0

    return p1

    :cond_8
    :goto_0
    invoke-static {p0, p1}, Lcom/luajava/LuaJavaAPI;->createArray(Lcom/luajava/LuaState;Ljava/lang/Class;)I

    move-result p1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static javaEquals(JII)I
    .locals 0

    invoke-static {p0, p1}, Lcom/luajava/LuaStateFactory;->a(J)Lcom/luajava/LuaState;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->r(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p3}, Lcom/luajava/LuaState;->r(I)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static javaGc(JI)V
    .locals 0

    invoke-static {p0, p1}, Lcom/luajava/LuaStateFactory;->a(J)Lcom/luajava/LuaState;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->k0(I)Ljava/lang/Object;

    return-void
.end method

.method public static javaGetType(JI)I
    .locals 0

    invoke-static {p0, p1}, Lcom/luajava/LuaStateFactory;->a(J)Lcom/luajava/LuaState;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->r(I)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    const-string p1, "null"

    :goto_0
    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->c0(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :goto_1
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static javaGetter(Lcom/luajava/LuaState;Ljava/lang/Object;Ljava/lang/String;)I
    .locals 7

    monitor-enter p0

    :try_start_0
    instance-of v0, p1, Ljava/util/Map;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->a0(Ljava/lang/Object;)V

    monitor-exit p0

    return v1

    :cond_0
    instance-of v0, p1, Ljava/lang/Class;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Ljava/lang/Class;

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "@<-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    if-nez v3, :cond_3

    sget-object v5, Lcom/luajava/LuaJavaAPI;->voidMethodCache:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    :goto_1
    if-nez v5, :cond_5

    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    move-object v5, p2

    goto :goto_3

    :catch_0
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "is"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v5, v2, [Ljava/lang/Class;

    invoke-virtual {v0, p2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :goto_3
    if-eqz v3, :cond_4

    :try_start_3
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result p2

    invoke-static {p2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result p2

    if-nez p2, :cond_4

    monitor-exit p0

    return v2

    :cond_4
    sget-object p2, Lcom/luajava/LuaJavaAPI;->voidMethodCache:Ljava/util/HashMap;

    invoke-virtual {p2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :catch_1
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return v2

    :cond_5
    :goto_4
    :try_start_4
    new-array p2, v2, [Ljava/lang/Object;

    invoke-virtual {v5, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    instance-of p2, p1, Ljava/lang/CharSequence;

    if-eqz p2, :cond_6

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->c0(Ljava/lang/String;)V

    goto :goto_5

    :cond_6
    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->a0(Ljava/lang/Object;)V

    :goto_5
    monitor-exit p0

    return v1

    :catch_2
    move-exception p1

    new-instance p2, Lcom/luajava/LuaException;

    invoke-direct {p2, p1}, Lcom/luajava/LuaException;-><init>(Ljava/lang/Exception;)V

    throw p2

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1
.end method

.method public static javaInstanceof(JII)I
    .locals 0

    invoke-static {p0, p1}, Lcom/luajava/LuaStateFactory;->a(J)Lcom/luajava/LuaState;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->r(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p3}, Lcom/luajava/LuaState;->r(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Class;

    monitor-enter p0

    :try_start_0
    invoke-virtual {p2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static javaLoadLib(JLjava/lang/String;Ljava/lang/String;)I
    .locals 3

    invoke-static {p0, p1}, Lcom/luajava/LuaStateFactory;->a(J)Lcom/luajava/LuaState;

    move-result-object p0

    monitor-enter p0

    :try_start_0
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p2, 0x1

    :try_start_1
    new-array v0, p2, [Ljava/lang/Class;

    const-class v1, Lcom/luajava/LuaState;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1, p3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array p2, p2, [Ljava/lang/Object;

    aput-object p0, p2, v2

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    instance-of p2, p1, Ljava/lang/Integer;

    if-eqz p2, :cond_0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p0

    return p1

    :cond_0
    monitor-exit p0

    return v2

    :catch_0
    move-exception p1

    new-instance p2, Lcom/luajava/LuaException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error on calling method. Library could not be loaded. "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw p2

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    new-instance p2, Lcom/luajava/LuaException;

    invoke-direct {p2, p1}, Lcom/luajava/LuaException;-><init>(Ljava/lang/Exception;)V

    throw p2

    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public static javaNew(JI)I
    .locals 5

    invoke-static {p0, p1}, Lcom/luajava/LuaStateFactory;->a(J)Lcom/luajava/LuaState;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/luajava/LuaState;->r(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    monitor-enter v0

    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/luajava/LuaState;->z()I

    move-result p0

    :goto_0
    if-gt v3, p0, :cond_0

    invoke-static {v0, v1, v3}, Lcom/luajava/LuaJavaAPI;->toPrimitive(Lcom/luajava/LuaState;Ljava/lang/Class;I)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    sub-int/2addr p0, v4

    monitor-exit v0

    return p0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Class;->getModifiers()I

    move-result v2

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_3

    invoke-virtual {v0, v3}, Lcom/luajava/LuaState;->J(I)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "javaOverride"

    const-string v2, "table"

    invoke-static {v0, v1, v4, v2}, Lcom/luajava/LuaJavaAPI;->argError(Lcom/luajava/LuaState;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    :cond_2
    invoke-static {p0, p1, p2}, Lcom/luajava/LuaJavaAPI;->javaOverride(JI)I

    move-result p0

    monitor-exit v0

    return p0

    :cond_3
    invoke-static {v0, v1}, Lcom/luajava/LuaJavaAPI;->getObjInstance(Lcom/luajava/LuaState;Ljava/lang/Class;)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static javaNewInstance(JLjava/lang/String;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/luajava/LuaStateFactory;->a(J)Lcom/luajava/LuaState;

    move-result-object p0

    monitor-enter p0

    :try_start_0
    invoke-static {p2}, Lcom/luajava/LuaJavaAPI;->bindClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, -0x1

    invoke-static {p0, p1, p2}, Lcom/luajava/LuaJavaAPI;->toPrimitive(Lcom/luajava/LuaState;Ljava/lang/Class;I)I

    move-result p1

    monitor-exit p0

    return p1

    :cond_0
    invoke-static {p0, p1}, Lcom/luajava/LuaJavaAPI;->getObjInstance(Lcom/luajava/LuaState;Ljava/lang/Class;)I

    move-result p1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static javaObjectLength(JI)I
    .locals 0

    invoke-static {p0, p1}, Lcom/luajava/LuaStateFactory;->a(J)Lcom/luajava/LuaState;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->r(I)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p0

    :try_start_0
    instance-of p2, p1, Ljava/lang/CharSequence;

    if-eqz p2, :cond_0

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    goto :goto_0

    :cond_0
    instance-of p2, p1, Ljava/util/Collection;

    if-eqz p2, :cond_1

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    goto :goto_0

    :cond_1
    instance-of p2, p1, Ljava/util/Map;

    if-eqz p2, :cond_2

    check-cast p1, Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    goto :goto_0

    :cond_2
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    int-to-long p1, p1

    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/luajava/LuaState;->U(J)V

    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance p2, Lcom/luajava/LuaException;

    invoke-direct {p2, p1}, Lcom/luajava/LuaException;-><init>(Ljava/lang/Exception;)V

    throw p2

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public static javaOverride(JI)I
    .locals 1

    invoke-static {p0, p1}, Lcom/luajava/LuaStateFactory;->a(J)Lcom/luajava/LuaState;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->r(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    monitor-enter p0

    :try_start_0
    new-instance p2, Lcom/luajava/LuaTable;

    const/4 v0, 0x2

    invoke-direct {p2, p0, v0}, Lcom/luajava/LuaTable;-><init>(Lcom/luajava/LuaState;I)V

    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->j0(I)V

    new-instance v0, Lcom/androlua/LuaEnhancer;

    invoke-direct {v0, p1}, Lcom/androlua/LuaEnhancer;-><init>(Ljava/lang/Class;)V

    new-instance p1, Lcom/luajava/LuaJavaAPI$1;

    invoke-direct {p1, p2}, Lcom/luajava/LuaJavaAPI$1;-><init>(Lcom/luajava/LuaTable;)V

    invoke-virtual {v0, p1}, Lcom/androlua/LuaEnhancer;->create(Lcom/android/cglib/proxy/MethodFilter;)Ljava/lang/Class;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/luajava/LuaJavaAPI;->getObjInstance(Lcom/luajava/LuaState;Ljava/lang/Class;)I

    move-result p1

    if-nez p1, :cond_0

    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->t0(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/cglib/proxy/EnhancerInterface;

    new-instance v0, Lcom/luajava/LuaMethodInterceptor;

    invoke-direct {v0, p2}, Lcom/luajava/LuaMethodInterceptor;-><init>(Lcom/luajava/LuaObject;)V

    invoke-interface {p1, v0}, Lcom/android/cglib/proxy/EnhancerInterface;->setMethodInterceptor_Enhancer(Lcom/android/cglib/proxy/MethodInterceptor;)V

    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->X(Ljava/lang/Object;)V

    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private static javaSetListener(Lcom/luajava/LuaState;Ljava/lang/Object;Ljava/lang/String;Z)I
    .locals 6

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setOn"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Listener"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0, p3}, Lcom/luajava/LuaJavaAPI;->getMethod(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    if-eqz p3, :cond_1

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    aget-object v4, v3, v2

    invoke-virtual {v4}, Ljava/lang/Class;->isInterface()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/luajava/LuaState;->L()V

    const/4 p3, -0x2

    invoke-virtual {p0, p3}, Lcom/luajava/LuaState;->e0(I)V

    invoke-virtual {p0, p3, p2}, Lcom/luajava/LuaState;->l0(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p2, -0x1

    :try_start_1
    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->s(I)Lcom/luajava/LuaObject;

    move-result-object p2

    aget-object p3, v3, v2

    invoke-virtual {p2, p3}, Lcom/luajava/LuaObject;->createProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, v5}, Lcom/luajava/LuaState;->Q(I)V

    new-array p3, v5, [Ljava/lang/Object;

    aput-object p2, p3, v2

    invoke-virtual {v1, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p0

    return v5

    :catch_0
    move-exception p1

    new-instance p2, Lcom/luajava/LuaException;

    invoke-direct {p2, p1}, Lcom/luajava/LuaException;-><init>(Ljava/lang/Exception;)V

    throw p2

    :cond_2
    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private static javaSetMethod(Lcom/luajava/LuaState;Ljava/lang/Object;Ljava/lang/String;Z)I
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    monitor-enter p0

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "set"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "@->"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v8, v7, [Ljava/lang/Object;

    const/4 v9, -0x1

    invoke-virtual {v1, v9}, Lcom/luajava/LuaState;->w0(I)I

    move-result v10

    const/16 v11, 0x9

    const/4 v12, 0x4

    const/4 v13, 0x3

    if-eq v10, v7, :cond_7

    if-eq v10, v13, :cond_3

    if-eq v10, v12, :cond_1

    const/4 v10, 0x0

    const/4 v14, -0x1

    goto :goto_0

    :cond_1
    sget-object v10, Lcom/luajava/LuaJavaAPI;->stringMethodCache:Ljava/util/HashMap;

    invoke-virtual {v10, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/reflect/Method;

    if-eqz v10, :cond_2

    invoke-virtual {v1, v9}, Lcom/luajava/LuaState;->v0(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v8, v4

    :cond_2
    const/4 v14, 0x4

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v9}, Lcom/luajava/LuaState;->D(I)Z

    move-result v10

    if-eqz v10, :cond_5

    sget-object v10, Lcom/luajava/LuaJavaAPI;->integerMethodCache:Ljava/util/HashMap;

    invoke-virtual {v10, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/reflect/Method;

    if-eqz v10, :cond_4

    invoke-virtual {v1, v9}, Lcom/luajava/LuaState;->s0(I)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v15

    aget-object v15, v15, v4

    invoke-static {v14, v15}, Lcom/luajava/LuaState;->i(Ljava/lang/Long;Ljava/lang/Class;)Ljava/lang/Number;

    move-result-object v14

    aput-object v14, v8, v4

    :cond_4
    const/16 v14, 0x9

    goto :goto_0

    :cond_5
    sget-object v10, Lcom/luajava/LuaJavaAPI;->doubleMethodCache:Ljava/util/HashMap;

    invoke-virtual {v10, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/reflect/Method;

    if-eqz v10, :cond_6

    invoke-virtual {v1, v9}, Lcom/luajava/LuaState;->u0(I)D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v15

    aget-object v15, v15, v4

    invoke-static {v14, v15}, Lcom/luajava/LuaState;->h(Ljava/lang/Double;Ljava/lang/Class;)Ljava/lang/Number;

    move-result-object v14

    aput-object v14, v8, v4

    :cond_6
    const/4 v14, 0x3

    goto :goto_0

    :cond_7
    sget-object v10, Lcom/luajava/LuaJavaAPI;->boolMethodCache:Ljava/util/HashMap;

    invoke-virtual {v10, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/reflect/Method;

    if-eqz v10, :cond_8

    invoke-virtual {v1, v9}, Lcom/luajava/LuaState;->r0(I)Z

    move-result v14

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    aput-object v14, v8, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_8
    const/4 v14, 0x1

    :goto_0
    if-eqz v10, :cond_9

    :try_start_1
    invoke-virtual {v10, v0, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p0

    return v7

    :catch_0
    move-exception v0

    move-object v2, v0

    new-instance v0, Lcom/luajava/LuaException;

    invoke-direct {v0, v2}, Lcom/luajava/LuaException;-><init>(Ljava/lang/Exception;)V

    throw v0

    :cond_9
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-static {v8, v5, v3}, Lcom/luajava/LuaJavaAPI;->getMethod(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_10

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/reflect/Method;

    if-eqz v3, :cond_a

    invoke-virtual {v15}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v16

    if-nez v16, :cond_a

    goto :goto_1

    :cond_a
    invoke-virtual {v15}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v9

    array-length v12, v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eq v12, v7, :cond_b

    :goto_2
    const/4 v9, -0x1

    const/4 v12, 0x4

    goto :goto_1

    :cond_b
    :try_start_3
    aget-object v12, v9, v4

    invoke-virtual/range {p0 .. p0}, Lcom/luajava/LuaState;->z()I

    move-result v4

    invoke-static {v1, v12, v4}, Lcom/luajava/LuaJavaAPI;->compareTypes(Lcom/luajava/LuaState;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2
    :try_end_3
    .catch Lcom/luajava/LuaException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eq v14, v7, :cond_f

    if-eq v14, v11, :cond_e

    if-eq v14, v13, :cond_d

    const/4 v4, 0x4

    if-eq v14, v4, :cond_c

    goto :goto_4

    :cond_c
    :try_start_4
    sget-object v3, Lcom/luajava/LuaJavaAPI;->stringMethodCache:Ljava/util/HashMap;

    :goto_3
    invoke-virtual {v3, v6, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_d
    sget-object v3, Lcom/luajava/LuaJavaAPI;->doubleMethodCache:Ljava/util/HashMap;

    goto :goto_3

    :cond_e
    sget-object v3, Lcom/luajava/LuaJavaAPI;->integerMethodCache:Ljava/util/HashMap;

    goto :goto_3

    :cond_f
    sget-object v3, Lcom/luajava/LuaJavaAPI;->boolMethodCache:Ljava/util/HashMap;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :goto_4
    :try_start_5
    new-array v3, v7, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-virtual {v15, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    monitor-exit p0

    return v7

    :catch_1
    move-exception v0

    new-instance v2, Lcom/luajava/LuaException;

    invoke-direct {v2, v0}, Lcom/luajava/LuaException;-><init>(Ljava/lang/Exception;)V

    throw v2

    :catch_2
    const/4 v4, 0x4

    const-string v12, "-> "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v12, 0x0

    aget-object v9, v9, v12

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, "\n"

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    goto :goto_2

    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/luajava/LuaState;->z()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/luajava/LuaState;->w0(I)I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_13

    invoke-virtual {v1, v7, v5}, Lcom/luajava/LuaState;->m(ILjava/lang/String;)I

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Lcom/luajava/LuaState;->n(I)Lcom/luajava/LuaFunction;

    move-result-object v4

    invoke-virtual {v1, v3}, Lcom/luajava/LuaState;->w0(I)I

    move-result v5

    const/4 v3, 0x6

    if-ne v5, v3, :cond_13

    if-eqz v4, :cond_13

    invoke-virtual {v1, v0}, Lcom/luajava/LuaState;->h0(I)I

    move-result v2

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v2, :cond_11

    add-int/lit8 v3, v3, 0x1

    int-to-long v4, v3

    invoke-virtual {v1, v0, v4, v5}, Lcom/luajava/LuaState;->q(IJ)I

    goto :goto_5

    :cond_11
    const/4 v0, 0x0

    invoke-virtual {v1, v2, v0, v0}, Lcom/luajava/LuaState;->P(III)I

    move-result v0

    if-nez v0, :cond_12

    monitor-exit p0

    return v7

    :cond_12
    new-instance v0, Lcom/luajava/LuaException;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/luajava/LuaState;->v0(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-gtz v0, :cond_14

    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :cond_14
    new-instance v0, Lcom/luajava/LuaException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid setter "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". Invalid Parameters.\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/luajava/LuaState;->t0(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0
.end method

.method public static javaSetter(Lcom/luajava/LuaState;Ljava/lang/Object;Ljava/lang/String;)I
    .locals 5

    monitor-enter p0

    :try_start_0
    instance-of v0, p1, Ljava/util/Map;

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, v2}, Lcom/luajava/LuaState;->t0(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0

    return v1

    :cond_0
    instance-of v0, p1, Ljava/lang/Class;

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Ljava/lang/Class;

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v4, 0x2

    if-le v0, v4, :cond_2

    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v3, "on"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v2}, Lcom/luajava/LuaState;->w0(I)I

    move-result v0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_2

    invoke-static {p0, p1, p2, v1}, Lcom/luajava/LuaJavaAPI;->javaSetListener(Lcom/luajava/LuaState;Ljava/lang/Object;Ljava/lang/String;Z)I

    move-result p1

    monitor-exit p0

    return p1

    :cond_2
    invoke-static {p0, p1, p2, v1}, Lcom/luajava/LuaJavaAPI;->javaSetMethod(Lcom/luajava/LuaState;Ljava/lang/Object;Ljava/lang/String;Z)I

    move-result v0

    if-eqz v0, :cond_3

    monitor-exit p0

    return v0

    :cond_3
    invoke-static {p0, p1, p2}, Lcom/luajava/LuaJavaAPI;->setDeclaredFieldValue(Lcom/luajava/LuaState;Ljava/lang/Object;Ljava/lang/String;)I

    move-result p1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static javaSetter(Lcom/luajava/LuaState;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)I
    .locals 0

    invoke-virtual {p0, p3}, Lcom/luajava/LuaState;->a0(Ljava/lang/Object;)V

    invoke-static {p0, p1, p2}, Lcom/luajava/LuaJavaAPI;->javaSetter(Lcom/luajava/LuaState;Ljava/lang/Object;Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->Q(I)V

    return p1
.end method

.method public static javaToString(JI)I
    .locals 0

    invoke-static {p0, p1}, Lcom/luajava/LuaStateFactory;->a(J)Lcom/luajava/LuaState;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->r(I)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    const-string p1, "null"

    :goto_0
    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->c0(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :goto_1
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static newArray(JI)I
    .locals 5

    invoke-static {p0, p1}, Lcom/luajava/LuaStateFactory;->a(J)Lcom/luajava/LuaState;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->r(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/luajava/LuaState;->z()I

    move-result p2

    const/4 v0, 0x1

    sub-int/2addr p2, v0

    new-array v1, p2, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_0

    add-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, v3}, Lcom/luajava/LuaState;->s0(I)J

    move-result-wide v3

    long-to-int v4, v3

    aput v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->X(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance p2, Lcom/luajava/LuaException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "can not create a array: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw p2

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public static newArray(JII)I
    .locals 1

    invoke-static {p0, p1}, Lcom/luajava/LuaStateFactory;->a(J)Lcom/luajava/LuaState;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->r(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    monitor-enter p0

    :try_start_0
    invoke-static {p1, p3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->X(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Lcom/luajava/LuaException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "can not create a array: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw p2

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public static objectCall(JI)I
    .locals 5

    invoke-static {p0, p1}, Lcom/luajava/LuaStateFactory;->a(J)Lcom/luajava/LuaState;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->r(I)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p0

    :try_start_0
    instance-of p2, p1, Lcom/luajava/LuaMetaTable;

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/luajava/LuaState;->z()I

    move-result p2

    add-int/lit8 v2, p2, -0x1

    new-array v2, v2, [Ljava/lang/Object;

    :goto_0
    if-gt v0, p2, :cond_0

    add-int/lit8 v3, v0, -0x2

    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->t0(I)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    check-cast p1, Lcom/luajava/LuaMetaTable;

    invoke-interface {p1, v2}, Lcom/luajava/LuaMetaTable;->__call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->a0(Ljava/lang/Object;)V

    monitor-exit p0

    return v1

    :cond_1
    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->J(I)Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->isArray()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/luajava/LuaJavaAPI;->createArray(Lcom/luajava/LuaState;Ljava/lang/Class;)I

    move-result p1

    monitor-exit p0

    return p1

    :cond_2
    invoke-virtual {p0}, Lcom/luajava/LuaState;->Y()V

    instance-of p2, p1, Ljava/util/List;

    if-eqz p2, :cond_3

    check-cast p1, Ljava/util/List;

    :goto_1
    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->M(I)I

    move-result p2

    if-eqz p2, :cond_5

    const/4 p2, -0x1

    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->t0(I)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v1}, Lcom/luajava/LuaState;->Q(I)V

    goto :goto_1

    :cond_3
    :goto_2
    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->M(I)I

    move-result p2

    if-eqz p2, :cond_5

    const/4 p2, -0x2

    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->G(I)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->s0(I)J

    move-result-wide v2

    long-to-int p2, v2

    invoke-static {p0, p1, p2}, Lcom/luajava/LuaJavaAPI;->setArrayValue(Lcom/luajava/LuaState;Ljava/lang/Object;I)I

    goto :goto_3

    :cond_4
    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->v0(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/luajava/LuaJavaAPI;->javaSetter(Lcom/luajava/LuaState;Ljava/lang/Object;Ljava/lang/String;)I

    :goto_3
    invoke-virtual {p0, v1}, Lcom/luajava/LuaState;->Q(I)V

    goto :goto_2

    :cond_5
    invoke-virtual {p0, v1}, Lcom/luajava/LuaState;->p0(I)V

    monitor-exit p0

    return v1

    :cond_6
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static objectIndex(JILjava/lang/String;I)I
    .locals 1

    invoke-static {p0, p1}, Lcom/luajava/LuaStateFactory;->a(J)Lcom/luajava/LuaState;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->r(I)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p0

    if-nez p4, :cond_0

    :try_start_0
    invoke-static {p0, p1, p3}, Lcom/luajava/LuaJavaAPI;->checkMethod(Lcom/luajava/LuaState;Ljava/lang/Object;Ljava/lang/String;)I

    move-result p2

    if-eqz p2, :cond_0

    monitor-exit p0

    const/4 p0, 0x2

    return p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    const/4 p2, 0x1

    if-eq p4, p2, :cond_1

    const/4 p2, 0x5

    if-ne p4, p2, :cond_2

    :cond_1
    invoke-static {p0, p1, p3}, Lcom/luajava/LuaJavaAPI;->checkField(Lcom/luajava/LuaState;Ljava/lang/Object;Ljava/lang/String;)I

    move-result p2

    if-eqz p2, :cond_2

    monitor-exit p0

    return p2

    :cond_2
    const/4 p2, 0x4

    if-eqz p4, :cond_3

    if-ne p4, p2, :cond_4

    :cond_3
    invoke-static {p0, p1, p3}, Lcom/luajava/LuaJavaAPI;->javaGetter(Lcom/luajava/LuaState;Ljava/lang/Object;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4

    monitor-exit p0

    return p2

    :cond_4
    const/4 p2, 0x3

    if-eqz p4, :cond_5

    if-ne p4, p2, :cond_6

    :cond_5
    invoke-static {p0, p1, p3}, Lcom/luajava/LuaJavaAPI;->checkClass(Lcom/luajava/LuaState;Ljava/lang/Object;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_6

    monitor-exit p0

    return p2

    :cond_6
    const/4 p2, 0x6

    if-eqz p4, :cond_7

    if-ne p4, p2, :cond_8

    :cond_7
    instance-of p4, p1, Lcom/luajava/LuaMetaTable;

    if-eqz p4, :cond_8

    check-cast p1, Lcom/luajava/LuaMetaTable;

    invoke-interface {p1, p3}, Lcom/luajava/LuaMetaTable;->__index(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->a0(Ljava/lang/Object;)V

    monitor-exit p0

    return p2

    :cond_8
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static objectNewIndex(JILjava/lang/String;I)I
    .locals 1

    invoke-static {p0, p1}, Lcom/luajava/LuaStateFactory;->a(J)Lcom/luajava/LuaState;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->r(I)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p0

    const/4 p2, 0x1

    if-eqz p4, :cond_0

    if-ne p4, p2, :cond_1

    :cond_0
    :try_start_0
    invoke-static {p0, p1, p3}, Lcom/luajava/LuaJavaAPI;->setFieldValue(Lcom/luajava/LuaState;Ljava/lang/Object;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    monitor-exit p0

    return p2

    :cond_1
    const/4 p2, 0x2

    if-eqz p4, :cond_2

    if-ne p4, p2, :cond_3

    :cond_2
    invoke-static {p0, p1, p3}, Lcom/luajava/LuaJavaAPI;->javaSetter(Lcom/luajava/LuaState;Ljava/lang/Object;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    monitor-exit p0

    return p2

    :cond_3
    const/4 p2, 0x3

    if-eqz p4, :cond_4

    if-ne p4, p2, :cond_5

    :cond_4
    instance-of p4, p1, Lcom/luajava/LuaMetaTable;

    if-eqz p4, :cond_5

    check-cast p1, Lcom/luajava/LuaMetaTable;

    const/4 p4, -0x1

    invoke-virtual {p0, p4}, Lcom/luajava/LuaState;->t0(I)Ljava/lang/Object;

    move-result-object p4

    invoke-interface {p1, p3, p4}, Lcom/luajava/LuaMetaTable;->__newIndex(Ljava/lang/String;Ljava/lang/Object;)V

    monitor-exit p0

    return p2

    :cond_5
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static pushJavaObject(ILjava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/luajava/LuaJavaAPI;->javaObjectMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static setArrayValue(JII)I
    .locals 3

    invoke-static {p0, p1}, Lcom/luajava/LuaStateFactory;->a(J)Lcom/luajava/LuaState;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->r(I)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->isArray()Z

    move-result p2

    const/4 v0, 0x3

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {p0, p2, v0}, Lcom/luajava/LuaJavaAPI;->compareTypes(Lcom/luajava/LuaState;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, p3, v1}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V
    :try_end_1
    .catch Lcom/luajava/LuaException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ["

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0, p2}, Lcom/luajava/LuaJavaAPI;->argError(Lcom/luajava/LuaState;Ljava/lang/String;ILjava/lang/Class;)Ljava/lang/String;

    goto :goto_0

    :cond_0
    instance-of p2, p1, Ljava/util/List;

    if-eqz p2, :cond_1

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->t0(I)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p3, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    instance-of p2, p1, Ljava/util/Map;

    if-eqz p2, :cond_2

    check-cast p1, Ljava/util/Map;

    int-to-long p2, p3

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->t0(I)Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :cond_2
    new-instance p2, Lcom/luajava/LuaException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not set "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " value: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->t0(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " in "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw p2

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public static setArrayValue(Lcom/luajava/LuaState;Ljava/lang/Object;I)I
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {p0, v0, v1}, Lcom/luajava/LuaJavaAPI;->compareTypes(Lcom/luajava/LuaState;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, p2, v1}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V
    :try_end_1
    .catch Lcom/luajava/LuaException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ["

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    invoke-static {p0, p1, p2, v0}, Lcom/luajava/LuaJavaAPI;->argError(Lcom/luajava/LuaState;Ljava/lang/String;ILjava/lang/Class;)Ljava/lang/String;

    goto :goto_0

    :cond_0
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, v1}, Lcom/luajava/LuaState;->t0(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/util/Map;

    int-to-long v2, p2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, v1}, Lcom/luajava/LuaState;->t0(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :cond_2
    new-instance v0, Lcom/luajava/LuaException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can not set "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " value: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Lcom/luajava/LuaState;->t0(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " in "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private static setDeclaredFieldValue(Lcom/luajava/LuaState;Ljava/lang/Object;Ljava/lang/String;)I
    .locals 9

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :try_start_0
    monitor-exit p0

    return v0

    :cond_0
    instance-of v1, p1, Ljava/lang/Class;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Ljava/lang/Class;

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v3, 0x0

    :goto_0
    const-string v4, "m"

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_3

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v6

    if-eqz v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_2
    move-object v4, v5

    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "m"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v8, v5

    move-object v5, v4

    move-object v4, v8

    goto :goto_2

    :cond_3
    move-object v4, v5

    :goto_2
    if-eqz v1, :cond_6

    :try_start_1
    invoke-virtual {v1, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catch_0
    if-eqz v5, :cond_4

    :try_start_2
    invoke-virtual {v1, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catch_1
    nop

    :cond_4
    :goto_3
    if-eqz v4, :cond_5

    goto :goto_4

    :cond_5
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_2

    :cond_6
    :goto_4
    if-nez v4, :cond_7

    monitor-exit p0

    return v0

    :cond_7
    if-eqz v3, :cond_8

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-nez v1, :cond_8

    monitor-exit p0

    return v0

    :cond_8
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {v4, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    :cond_9
    invoke-virtual {p0}, Lcom/luajava/LuaState;->z()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/luajava/LuaJavaAPI;->compareTypes(Lcom/luajava/LuaState;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v4, p1, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4
    .catch Lcom/luajava/LuaException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_5

    :catch_2
    move-exception p1

    :try_start_5
    new-instance p2, Lcom/luajava/LuaException;

    invoke-direct {p2, p1}, Lcom/luajava/LuaException;-><init>(Ljava/lang/Exception;)V

    throw p2

    :catch_3
    const/4 p1, 0x3

    invoke-static {p0, p2, p1, v0}, Lcom/luajava/LuaJavaAPI;->argError(Lcom/luajava/LuaState;Ljava/lang/String;ILjava/lang/Class;)Ljava/lang/String;

    :goto_5
    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1
.end method

.method public static setFieldValue(Lcom/luajava/LuaState;Ljava/lang/Object;Ljava/lang/String;)I
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :try_start_0
    monitor-exit p0

    return v0

    :cond_0
    instance-of v1, p1, Ljava/lang/Class;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Ljava/lang/Class;

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    :goto_0
    :try_start_1
    invoke-virtual {v1, p2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_2

    :try_start_2
    monitor-exit p0

    return v0

    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v3

    if-nez v3, :cond_3

    monitor-exit p0

    return v0

    :cond_3
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    :cond_4
    invoke-virtual {p0}, Lcom/luajava/LuaState;->z()I

    move-result v3

    invoke-static {p0, v0, v3}, Lcom/luajava/LuaJavaAPI;->compareTypes(Lcom/luajava/LuaState;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catch Lcom/luajava/LuaException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_4
    new-instance p2, Lcom/luajava/LuaException;

    invoke-direct {p2, p1}, Lcom/luajava/LuaException;-><init>(Ljava/lang/Exception;)V

    throw p2

    :catch_1
    const/4 p1, -0x1

    invoke-static {p0, p2, p1, v0}, Lcom/luajava/LuaJavaAPI;->argError(Lcom/luajava/LuaState;Ljava/lang/String;ILjava/lang/Class;)Ljava/lang/String;

    :goto_1
    monitor-exit p0

    return v2

    :catch_2
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method private static toPrimitive(Lcom/luajava/LuaState;Ljava/lang/Class;I)I
    .locals 3

    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->w0(I)I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->v0(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-ne p2, v1, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    goto/16 :goto_1

    :cond_1
    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->G(I)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_2

    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->u0(I)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    goto :goto_1

    :cond_2
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_3

    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->u0(I)D

    move-result-wide p1

    double-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    goto :goto_1

    :cond_3
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_4

    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->s0(I)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_1

    :cond_4
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_5

    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->s0(I)J

    move-result-wide p1

    long-to-int p2, p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1

    :cond_5
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_6

    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->s0(I)J

    move-result-wide p1

    long-to-int p2, p1

    int-to-short p1, p2

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    goto :goto_1

    :cond_6
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_7

    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->s0(I)J

    move-result-wide p1

    long-to-int p2, p1

    int-to-char p1, p2

    :goto_0
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    goto :goto_1

    :cond_7
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_8

    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->s0(I)J

    move-result-wide p1

    long-to-int p2, p1

    int-to-byte p1, p2

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    goto :goto_1

    :cond_8
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_9

    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->r0(I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_1

    :cond_9
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->X(Ljava/lang/Object;)V

    return v1

    :cond_a
    new-instance p1, Lcom/luajava/LuaException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->v0(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not number"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static typeName(Lcom/luajava/LuaState;I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->H(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->w(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->w0(I)I

    move-result p0

    packed-switch p0, :pswitch_data_0

    const-string p0, "unkown"

    return-object p0

    :pswitch_0
    const-string p0, "thread"

    return-object p0

    :pswitch_1
    const-string p0, "function"

    return-object p0

    :pswitch_2
    const-string p0, "table"

    return-object p0

    :pswitch_3
    const-string p0, "string"

    return-object p0

    :pswitch_4
    const-string p0, "number"

    return-object p0

    :pswitch_5
    const-string p0, "userdata"

    return-object p0

    :pswitch_6
    const-string p0, "boolean"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method
