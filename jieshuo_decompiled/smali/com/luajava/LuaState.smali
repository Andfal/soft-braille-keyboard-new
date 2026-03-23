.class public Lcom/luajava/LuaState;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final LUAI_MAXSTACK:I = 0xf4240

.field public static final LUA_ERRERR:I = 0x6

.field public static final LUA_ERRGCMM:I = 0x5

.field public static final LUA_ERRMEM:I = 0x4

.field public static final LUA_ERRRUN:I = 0x2

.field public static final LUA_ERRSYNTAX:I = 0x3

.field public static final LUA_GCCOLLECT:I = 0x2

.field public static final LUA_GCCOUNT:I = 0x3

.field public static final LUA_GCCOUNTB:I = 0x4

.field public static final LUA_GCRESTART:I = 0x1

.field public static final LUA_GCSETPAUSE:I = 0x6

.field public static final LUA_GCSETSTEPMUL:I = 0x7

.field public static final LUA_GCSTEP:I = 0x5

.field public static final LUA_GCSTOP:I = 0x0

.field public static final LUA_MULTRET:I = -0x1

.field public static final LUA_OPEQ:I = 0x0

.field public static final LUA_OPLE:I = 0x2

.field public static final LUA_OPLT:I = 0x1

.field public static final LUA_REGISTRYINDEX:I = -0xf4628

.field public static final LUA_RIDX_GLOBALS:I = 0x2

.field public static final LUA_RIDX_LAST:I = 0x2

.field public static final LUA_RIDX_MAINTHREAD:I = 0x1

.field public static final LUA_TBOOLEAN:I = 0x1

.field public static final LUA_TFUNCTION:I = 0x6

.field public static final LUA_TINTEGER:I = 0x9

.field public static final LUA_TLIGHTUSERDATA:I = 0x2

.field public static final LUA_TNIL:I = 0x0

.field public static final LUA_TNONE:I = -0x1

.field public static final LUA_TNUMBER:I = 0x3

.field public static final LUA_TSTRING:I = 0x4

.field public static final LUA_TTABLE:I = 0x5

.field public static final LUA_TTHREAD:I = 0x8

.field public static final LUA_TUSERDATA:I = 0x7

.field public static final LUA_YIELD:I = 0x1

.field private static e:J

.field private static final f:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private a:J

.field private b:Lcom/androlua/LuaContext;

.field private c:I

.field private final d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "luajava"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/luajava/LuaState;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method protected constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/luajava/LuaState;->c:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/luajava/LuaState;->d:Ljava/util/HashMap;

    sget-wide v0, Lcom/luajava/LuaState;->e:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    sput-wide v2, Lcom/luajava/LuaState;->e:J

    invoke-direct {p0, v0, v1}, Lcom/luajava/LuaState;->_newstate(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/luajava/LuaState;->a:J

    return-void
.end method

.method protected constructor <init>(J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/luajava/LuaState;->c:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/luajava/LuaState;->d:Ljava/util/HashMap;

    iput-wide p1, p0, Lcom/luajava/LuaState;->a:J

    invoke-static {p0}, Lcom/luajava/LuaStateFactory;->b(Lcom/luajava/LuaState;)J

    return-void
.end method

.method private synchronized native _LargError(JILjava/lang/String;)I
.end method

.method private synchronized native _LcallMeta(JILjava/lang/String;)I
.end method

.method private synchronized native _LcheckAny(JI)V
.end method

.method private synchronized native _LcheckInteger(JI)I
.end method

.method private synchronized native _LcheckNumber(JI)D
.end method

.method private synchronized native _LcheckStack(JILjava/lang/String;)V
.end method

.method private synchronized native _LcheckString(JI)Ljava/lang/String;
.end method

.method private synchronized native _LcheckType(JII)V
.end method

.method private synchronized native _LdoFile(JLjava/lang/String;)I
.end method

.method private synchronized native _LdoString(JLjava/lang/String;)I
.end method

.method private synchronized native _LgetMetaField(JILjava/lang/String;)I
.end method

.method private synchronized native _LgetMetatable(JLjava/lang/String;)V
.end method

.method private synchronized native _Lgsub(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method private synchronized native _LloadBuffer(J[BJLjava/lang/String;)I
.end method

.method private synchronized native _LloadFile(JLjava/lang/String;)I
.end method

.method private synchronized native _LloadString(JLjava/lang/String;)I
.end method

.method private synchronized native _LnewMetatable(JLjava/lang/String;)I
.end method

.method private synchronized native _LoptInteger(JII)I
.end method

.method private synchronized native _LoptNumber(JID)D
.end method

.method private synchronized native _LoptString(JILjava/lang/String;)Ljava/lang/String;
.end method

.method private synchronized native _Lref(JI)I
.end method

.method private synchronized native _LtoString(JI)[B
.end method

.method private synchronized native _LunRef(JII)V
.end method

.method private synchronized native _Lwhere(JI)V
.end method

.method private synchronized native _call(JII)V
.end method

.method private synchronized native _checkVip(J)V
.end method

.method private synchronized native _check_stack(JI)I
.end method

.method private synchronized native _close(J)V
.end method

.method private synchronized native _compare(JIII)I
.end method

.method private synchronized native _concat(JI)V
.end method

.method private synchronized native _copy(JII)V
.end method

.method private synchronized native _createTable(JII)V
.end method

.method private synchronized native _dump(JI)[B
.end method

.method private synchronized native _equal(JII)I
.end method

.method private synchronized native _error(J)I
.end method

.method private synchronized native _gc(JII)I
.end method

.method private synchronized native _getField(JILjava/lang/String;)I
.end method

.method private synchronized native _getGlobal(JLjava/lang/String;)I
.end method

.method private synchronized native _getI(JIJ)I
.end method

.method private synchronized native _getMetaTable(JI)I
.end method

.method private synchronized native _getObjectFromUserdata(JI)I
.end method

.method private synchronized native _getTable(JI)I
.end method

.method private synchronized native _getUpValue(JII)Ljava/lang/String;
.end method

.method private synchronized native _getUserValue(JI)I
.end method

.method private synchronized native _get_top(J)I
.end method

.method private synchronized native _insert(JI)V
.end method

.method private synchronized native _isBoolean(JI)I
.end method

.method private synchronized native _isCFunction(JI)I
.end method

.method private synchronized native _isFunction(JI)I
.end method

.method private synchronized native _isJavaFunction(JI)Z
.end method

.method private synchronized native _isNil(JI)I
.end method

.method private synchronized native _isNone(JI)I
.end method

.method private synchronized native _isNoneOrNil(JI)I
.end method

.method private synchronized native _isObject(JI)Z
.end method

.method private synchronized native _isTable(JI)I
.end method

.method private synchronized native _isThread(JI)I
.end method

.method private synchronized native _isYieldable(J)I
.end method

.method private synchronized native _is_integer(JI)I
.end method

.method private synchronized native _is_number(JI)I
.end method

.method private synchronized native _is_string(JI)I
.end method

.method private synchronized native _is_userdata(JI)I
.end method

.method private synchronized native _lessThan(JII)I
.end method

.method private synchronized native _newTable(J)V
.end method

.method private synchronized native _newstate(J)J
.end method

.method private synchronized native _newthread(J)J
.end method

.method private synchronized native _next(JI)I
.end method

.method private synchronized native _objlen(JI)I
.end method

.method private synchronized native _openBase(J)V
.end method

.method private synchronized native _openDebug(J)V
.end method

.method private synchronized native _openIo(J)V
.end method

.method private synchronized native _openLibs(J)V
.end method

.method private synchronized native _openLuajava(J)V
.end method

.method private synchronized native _openMath(J)V
.end method

.method private synchronized native _openOs(J)V
.end method

.method private synchronized native _openPackage(J)V
.end method

.method private synchronized native _openString(J)V
.end method

.method private synchronized native _openTable(J)V
.end method

.method private synchronized native _pcall(JIII)I
.end method

.method private synchronized native _pop(JI)V
.end method

.method private synchronized native _pushBoolean(JI)V
.end method

.method private synchronized native _pushGlobalTable(J)V
.end method

.method private synchronized native _pushInteger(JJ)V
.end method

.method private synchronized native _pushJavaFunction(JLcom/luajava/JavaFunction;)V
.end method

.method private synchronized native _pushJavaObject(JLjava/lang/String;IZ)V
.end method

.method private synchronized native _pushLString(J[BI)V
.end method

.method private synchronized native _pushNil(J)V
.end method

.method private synchronized native _pushNumber(JD)V
.end method

.method private synchronized native _pushString(JLjava/lang/String;)V
.end method

.method private synchronized native _push_value(JI)V
.end method

.method private synchronized native _rawGet(JI)I
.end method

.method private synchronized native _rawGetI(JIJ)I
.end method

.method private synchronized native _rawSet(JI)V
.end method

.method private synchronized native _rawSetI(JIJ)V
.end method

.method private synchronized native _rawequal(JII)I
.end method

.method private synchronized native _rawlen(JI)I
.end method

.method private synchronized native _remove(JI)V
.end method

.method private synchronized native _replace(JI)V
.end method

.method private synchronized native _resume(JJI)I
.end method

.method private synchronized native _rotate(JII)V
.end method

.method private synchronized native _setField(JILjava/lang/String;)V
.end method

.method private synchronized native _setGlobal(JLjava/lang/String;)V
.end method

.method private synchronized native _setI(JIJ)V
.end method

.method private synchronized native _setMetaTable(JI)I
.end method

.method private synchronized native _setTable(JI)V
.end method

.method private synchronized native _setUpValue(JII)Ljava/lang/String;
.end method

.method private synchronized native _setUserValue(JI)V
.end method

.method public static synchronized native _set_cpu(I)V
.end method

.method private synchronized native _set_top(JI)V
.end method

.method private synchronized native _status(J)I
.end method

.method private synchronized native _strlen(JI)I
.end method

.method private synchronized native _toBoolean(JI)I
.end method

.method private synchronized native _toBuffer(JI)[B
.end method

.method private synchronized native _toInteger(JI)J
.end method

.method private synchronized native _toNumber(JI)D
.end method

.method private synchronized native _toString(JI)[B
.end method

.method private synchronized native _toThread(JI)J
.end method

.method private synchronized native _type(JI)I
.end method

.method private synchronized native _type_name(JI)Ljava/lang/String;
.end method

.method private synchronized native _xmove(JJI)V
.end method

.method private synchronized native _yield(JI)I
.end method

.method public static h(Ljava/lang/Double;Ljava/lang/Class;)Ljava/lang/Number;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Double;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Number;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Double;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Double;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Double;->floatValue()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :cond_2
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_3
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_4

    invoke-virtual {p0}, Ljava/lang/Double;->byteValue()B

    move-result p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    :cond_4
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_c

    invoke-virtual {p0}, Ljava/lang/Double;->shortValue()S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    :cond_5
    const-class v0, Ljava/lang/Number;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance p1, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Double;->intValue()I

    move-result p0

    invoke-direct {p1, p0}, Ljava/lang/Integer;-><init>(I)V

    return-object p1

    :cond_6
    const-class v0, Ljava/lang/Long;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance p1, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Double;->longValue()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Ljava/lang/Long;-><init>(J)V

    return-object p1

    :cond_7
    const-class v0, Ljava/lang/Float;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance p1, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Double;->floatValue()F

    move-result p0

    invoke-direct {p1, p0}, Ljava/lang/Float;-><init>(F)V

    return-object p1

    :cond_8
    const-class v0, Ljava/lang/Double;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-object p0

    :cond_9
    const-class v0, Ljava/lang/Byte;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance p1, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Double;->byteValue()B

    move-result p0

    invoke-direct {p1, p0}, Ljava/lang/Byte;-><init>(B)V

    return-object p1

    :cond_a
    const-class v0, Ljava/lang/Short;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_c

    new-instance p1, Ljava/lang/Short;

    invoke-virtual {p0}, Ljava/lang/Double;->shortValue()S

    move-result p0

    invoke-direct {p1, p0}, Ljava/lang/Short;-><init>(S)V

    return-object p1

    :cond_b
    const-class v0, Ljava/lang/Object;

    if-ne p1, v0, :cond_c

    return-object p0

    :cond_c
    const/4 p0, 0x0

    return-object p0
.end method

.method public static i(Ljava/lang/Long;Ljava/lang/Class;)Ljava/lang/Number;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Number;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Long;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Long;->floatValue()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :cond_2
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Long;->doubleValue()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_3
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_4

    invoke-virtual {p0}, Ljava/lang/Long;->byteValue()B

    move-result p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    :cond_4
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_c

    invoke-virtual {p0}, Ljava/lang/Long;->shortValue()S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    :cond_5
    const-class v0, Ljava/lang/Number;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance p1, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Long;->intValue()I

    move-result p0

    invoke-direct {p1, p0}, Ljava/lang/Integer;-><init>(I)V

    return-object p1

    :cond_6
    const-class v0, Ljava/lang/Long;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance p1, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Ljava/lang/Long;-><init>(J)V

    return-object p1

    :cond_7
    const-class v0, Ljava/lang/Float;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance p1, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Long;->floatValue()F

    move-result p0

    invoke-direct {p1, p0}, Ljava/lang/Float;-><init>(F)V

    return-object p1

    :cond_8
    const-class v0, Ljava/lang/Double;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-object p0

    :cond_9
    const-class v0, Ljava/lang/Byte;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance p1, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Long;->byteValue()B

    move-result p0

    invoke-direct {p1, p0}, Ljava/lang/Byte;-><init>(B)V

    return-object p1

    :cond_a
    const-class v0, Ljava/lang/Short;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_c

    new-instance p1, Ljava/lang/Short;

    invoke-virtual {p0}, Ljava/lang/Long;->shortValue()S

    move-result p0

    invoke-direct {p1, p0}, Ljava/lang/Short;-><init>(S)V

    return-object p1

    :cond_b
    const-class v0, Ljava/lang/Object;

    if-ne p1, v0, :cond_c

    return-object p0

    :cond_c
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public A(I)V
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->a:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_insert(JI)V

    return-void
.end method

.method public B(I)Z
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->a:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_isBoolean(JI)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public C(I)Z
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->a:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_isFunction(JI)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public D(I)Z
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->a:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_is_integer(JI)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public E(I)Z
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->a:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_isJavaFunction(JI)Z

    move-result p1

    return p1
.end method

.method public F(I)Z
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->a:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_isNil(JI)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public G(I)Z
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->a:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_is_number(JI)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public H(I)Z
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->a:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_isObject(JI)Z

    move-result p1

    return p1
.end method

.method public I(I)Z
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->a:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_is_string(JI)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public J(I)Z
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->a:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_isTable(JI)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public K(I)Z
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->a:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_is_userdata(JI)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public L()V
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->a:J

    invoke-direct {p0, v0, v1}, Lcom/luajava/LuaState;->_newTable(J)V

    return-void
.end method

.method public M(I)I
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->a:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_next(JI)I

    move-result p1

    return p1
.end method

.method public N(I)I
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->a:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_objlen(JI)I

    move-result p1

    return p1
.end method

.method public O()V
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->a:J

    invoke-direct {p0, v0, v1}, Lcom/luajava/LuaState;->_openLibs(J)V

    iget-wide v0, p0, Lcom/luajava/LuaState;->a:J

    invoke-direct {p0, v0, v1}, Lcom/luajava/LuaState;->_openLuajava(J)V

    invoke-virtual {p0}, Lcom/luajava/LuaState;->b0()V

    return-void
.end method

.method public P(III)I
    .locals 6

    iget-wide v1, p0, Lcom/luajava/LuaState;->a:J

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/luajava/LuaState;->_pcall(JIII)I

    move-result p1

    return p1
.end method

.method public Q(I)V
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->a:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_pop(JI)V

    return-void
.end method

.method public R(Z)V
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->a:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_pushBoolean(JI)V

    return-void
.end method

.method public S(Lcom/androlua/LuaContext;)V
    .locals 1

    iput-object p1, p0, Lcom/luajava/LuaState;->b:Lcom/androlua/LuaContext;

    const-string v0, "_LuaContext"

    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->c0(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->X(Ljava/lang/Object;)V

    const p1, -0xf4628

    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->o0(I)V

    return-void
.end method

.method public declared-synchronized T()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/luajava/LuaState;->a:J

    invoke-direct {p0, v0, v1}, Lcom/luajava/LuaState;->_pushGlobalTable(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public U(J)V
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->a:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/luajava/LuaState;->_pushInteger(JJ)V

    return-void
.end method

.method public V(Lcom/luajava/JavaFunction;)V
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->a:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_pushJavaFunction(JLcom/luajava/JavaFunction;)V

    return-void
.end method

.method public W(ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/luajava/LuaState;->d:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public X(Ljava/lang/Object;)V
    .locals 6

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/luajava/LuaState;->Y()V

    return-void

    :cond_0
    iget v4, p0, Lcom/luajava/LuaState;->c:I

    add-int/lit8 v0, v4, 0x1

    iput v0, p0, Lcom/luajava/LuaState;->c:I

    invoke-virtual {p0, v4, p1}, Lcom/luajava/LuaState;->W(ILjava/lang/Object;)V

    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Ljava/lang/Class;

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :goto_0
    :try_start_0
    instance-of p1, p1, Ljava/lang/Class;

    if-eqz p1, :cond_2

    iget-wide v1, p0, Lcom/luajava/LuaState;->a:J

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/luajava/LuaState;->_pushJavaObject(JLjava/lang/String;IZ)V

    goto :goto_1

    :cond_2
    iget-wide v1, p0, Lcom/luajava/LuaState;->a:J

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/luajava/LuaState;->_pushJavaObject(JLjava/lang/String;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public Y()V
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->a:J

    invoke-direct {p0, v0, v1}, Lcom/luajava/LuaState;->_pushNil(J)V

    return-void
.end method

.method public Z(D)V
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->a:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/luajava/LuaState;->_pushNumber(JD)V

    return-void
.end method

.method public a([BLjava/lang/String;)I
    .locals 7

    if-nez p1, :cond_0

    const/4 p1, 0x2

    return p1

    :cond_0
    iget-wide v1, p0, Lcom/luajava/LuaState;->a:J

    array-length v0, p1

    int-to-long v4, v0

    move-object v0, p0

    move-object v3, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/luajava/LuaState;->_LloadBuffer(J[BJLjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public a0(Ljava/lang/Object;)V
    .locals 2

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/luajava/LuaState;->Y()V

    goto/16 :goto_3

    :cond_0
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->R(Z)V

    goto/16 :goto_3

    :cond_1
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/luajava/LuaState;->U(J)V

    goto/16 :goto_3

    :cond_2
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_1
    int-to-long v0, p1

    goto :goto_0

    :cond_3
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_4

    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p1

    goto :goto_1

    :cond_4
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_5

    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    goto :goto_1

    :cond_5
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_6

    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    goto :goto_1

    :cond_6
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_7

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    float-to-double v0, p1

    :goto_2
    invoke-virtual {p0, v0, v1}, Lcom/luajava/LuaState;->Z(D)V

    goto :goto_3

    :cond_7
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_8

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    goto :goto_2

    :cond_8
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_9

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->c0(Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    instance-of v0, p1, Lcom/luajava/LuaString;

    if-eqz v0, :cond_a

    check-cast p1, Lcom/luajava/LuaString;

    invoke-virtual {p1}, Lcom/luajava/LuaString;->a()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->d0([B)V

    goto :goto_3

    :cond_a
    instance-of v0, p1, Lcom/luajava/JavaFunction;

    if-eqz v0, :cond_b

    check-cast p1, Lcom/luajava/JavaFunction;

    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->V(Lcom/luajava/JavaFunction;)V

    goto :goto_3

    :cond_b
    instance-of v0, p1, Lcom/luajava/LuaObject;

    if-eqz v0, :cond_c

    check-cast p1, Lcom/luajava/LuaObject;

    invoke-virtual {p1}, Lcom/luajava/LuaObject;->getLuaState()Lcom/luajava/LuaState;

    move-result-object v0

    if-ne v0, p0, :cond_c

    invoke-virtual {p1}, Lcom/luajava/LuaObject;->push()V

    goto :goto_3

    :cond_c
    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->X(Ljava/lang/Object;)V

    :goto_3
    return-void
.end method

.method public b(Ljava/lang/String;)I
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->a:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_LloadFile(JLjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public b0()V
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->X(Ljava/lang/Object;)V

    const-string v0, "boolean"

    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->m0(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->X(Ljava/lang/Object;)V

    const-string v0, "byte"

    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->m0(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->X(Ljava/lang/Object;)V

    const-string v0, "char"

    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->m0(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->X(Ljava/lang/Object;)V

    const-string v0, "short"

    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->m0(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->X(Ljava/lang/Object;)V

    const-string v0, "int"

    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->m0(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->X(Ljava/lang/Object;)V

    const-string v0, "long"

    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->m0(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->X(Ljava/lang/Object;)V

    const-string v0, "float"

    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->m0(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->X(Ljava/lang/Object;)V

    const-string v0, "double"

    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->m0(Ljava/lang/String;)V

    return-void
.end method

.method public c(Ljava/lang/String;)I
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->a:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_LloadString(JLjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public c0(Ljava/lang/String;)V
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->a:J

    if-nez p1, :cond_0

    invoke-direct {p0, v0, v1}, Lcom/luajava/LuaState;->_pushNil(J)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_pushString(JLjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public d(I)I
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->a:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_Lref(JI)I

    move-result p1

    return p1
.end method

.method public d0([B)V
    .locals 3

    iget-wide v0, p0, Lcom/luajava/LuaState;->a:J

    if-nez p1, :cond_0

    invoke-direct {p0, v0, v1}, Lcom/luajava/LuaState;->_pushNil(J)V

    goto :goto_0

    :cond_0
    array-length v2, p1

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/luajava/LuaState;->_pushLString(J[BI)V

    :goto_0
    return-void
.end method

.method public e(I)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/String;

    iget-wide v1, p0, Lcom/luajava/LuaState;->a:J

    invoke-direct {p0, v1, v2, p1}, Lcom/luajava/LuaState;->_LtoString(JI)[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public e0(I)V
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->a:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_push_value(JI)V

    return-void
.end method

.method public f()V
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->a:J

    invoke-direct {p0, v0, v1}, Lcom/luajava/LuaState;->_checkVip(J)V

    return-void
.end method

.method public f0(I)I
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->a:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_rawGet(JI)I

    move-result p1

    return p1
.end method

.method protected finalize()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finalize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/luajava/LuaState;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "luaState"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0}, Lcom/luajava/LuaState;->g()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to release luaState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/luajava/LuaState;->a:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public declared-synchronized g()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/luajava/LuaState;->a:J

    invoke-static {v0, v1}, Lcom/luajava/LuaStateFactory;->d(J)V

    iget-wide v0, p0, Lcom/luajava/LuaState;->a:J

    invoke-direct {p0, v0, v1}, Lcom/luajava/LuaState;->_close(J)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/luajava/LuaState;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public g0(IJ)I
    .locals 6

    iget-wide v1, p0, Lcom/luajava/LuaState;->a:J

    move-object v0, p0

    move v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/luajava/LuaState;->_rawGetI(JIJ)I

    move-result p1

    return p1
.end method

.method public h0(I)I
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->a:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_rawlen(JI)I

    move-result p1

    return p1
.end method

.method public i0(IJ)V
    .locals 6

    iget-wide v1, p0, Lcom/luajava/LuaState;->a:J

    move-object v0, p0

    move v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/luajava/LuaState;->_rawSetI(JIJ)V

    return-void
.end method

.method public j(I)[B
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->a:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_dump(JI)[B

    move-result-object p1

    return-object p1
.end method

.method public j0(I)V
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->a:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_remove(JI)V

    return-void
.end method

.method public k(II)I
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->a:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/luajava/LuaState;->_gc(JII)I

    move-result p1

    return p1
.end method

.method public k0(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/luajava/LuaState;->d:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public l()Lcom/androlua/LuaContext;
    .locals 1

    iget-object v0, p0, Lcom/luajava/LuaState;->b:Lcom/androlua/LuaContext;

    return-object v0
.end method

.method public l0(ILjava/lang/String;)V
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->a:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/luajava/LuaState;->_setField(JILjava/lang/String;)V

    return-void
.end method

.method public m(ILjava/lang/String;)I
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->a:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/luajava/LuaState;->_getField(JILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public declared-synchronized m0(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/luajava/LuaState;->a:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_setGlobal(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public n(I)Lcom/luajava/LuaFunction;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->s(I)Lcom/luajava/LuaObject;

    move-result-object p1

    invoke-virtual {p1}, Lcom/luajava/LuaObject;->isFunction()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/luajava/LuaObject;->getFunction()Lcom/luajava/LuaFunction;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public n0(IJ)V
    .locals 6

    iget-wide v1, p0, Lcom/luajava/LuaState;->a:J

    move-object v0, p0

    move v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/luajava/LuaState;->_setI(JIJ)V

    return-void
.end method

.method public o(Ljava/lang/String;)Lcom/luajava/LuaFunction;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->v(Ljava/lang/String;)Lcom/luajava/LuaObject;

    move-result-object p1

    invoke-virtual {p1}, Lcom/luajava/LuaObject;->isFunction()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/luajava/LuaObject;->getFunction()Lcom/luajava/LuaFunction;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public o0(I)V
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->a:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_setTable(JI)V

    return-void
.end method

.method public declared-synchronized p(Ljava/lang/String;)I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/luajava/LuaState;->a:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_getGlobal(JLjava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public p0(I)V
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->a:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_set_top(JI)V

    return-void
.end method

.method public q(IJ)I
    .locals 6

    iget-wide v1, p0, Lcom/luajava/LuaState;->a:J

    move-object v0, p0

    move v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/luajava/LuaState;->_getI(JIJ)I

    move-result p1

    return p1
.end method

.method public q0(II)Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->a:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/luajava/LuaState;->_setUpValue(JII)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public r(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/luajava/LuaState;->d:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public r0(I)Z
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->a:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_toBoolean(JI)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public s(I)Lcom/luajava/LuaObject;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->C(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/luajava/LuaFunction;

    invoke-direct {v0, p0, p1}, Lcom/luajava/LuaFunction;-><init>(Lcom/luajava/LuaState;I)V

    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->J(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/luajava/LuaTable;

    invoke-direct {v0, p0, p1}, Lcom/luajava/LuaTable;-><init>(Lcom/luajava/LuaState;I)V

    return-object v0

    :cond_1
    new-instance v0, Lcom/luajava/LuaObject;

    invoke-direct {v0, p0, p1}, Lcom/luajava/LuaObject;-><init>(Lcom/luajava/LuaState;I)V

    return-object v0
.end method

.method public s0(I)J
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->a:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_toInteger(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public t(Lcom/luajava/LuaObject;Ljava/lang/Number;)Lcom/luajava/LuaObject;
    .locals 1

    new-instance v0, Lcom/luajava/LuaObject;

    invoke-direct {v0, p1, p2}, Lcom/luajava/LuaObject;-><init>(Lcom/luajava/LuaObject;Ljava/lang/Number;)V

    return-object v0
.end method

.method public declared-synchronized t0(I)Ljava/lang/Object;
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->B(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->r0(I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->w0(I)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->v0(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->C(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->s(I)Lcom/luajava/LuaObject;

    move-result-object p1

    invoke-virtual {p1}, Lcom/luajava/LuaObject;->getFunction()Lcom/luajava/LuaFunction;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->J(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->s(I)Lcom/luajava/LuaObject;

    move-result-object p1

    invoke-virtual {p1}, Lcom/luajava/LuaObject;->getTable()Lcom/luajava/LuaTable;

    move-result-object p1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->w0(I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->D(I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->s0(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->u0(I)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    goto :goto_0

    :cond_5
    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->K(I)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->H(I)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->w(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_6
    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->s(I)Lcom/luajava/LuaObject;

    move-result-object p1

    goto :goto_0

    :cond_7
    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->F(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public u(Lcom/luajava/LuaObject;Ljava/lang/String;)Lcom/luajava/LuaObject;
    .locals 1

    new-instance v0, Lcom/luajava/LuaObject;

    invoke-direct {v0, p1, p2}, Lcom/luajava/LuaObject;-><init>(Lcom/luajava/LuaObject;Ljava/lang/String;)V

    return-object v0
.end method

.method public u0(I)D
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->a:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_toNumber(JI)D

    move-result-wide v0

    return-wide v0
.end method

.method public v(Ljava/lang/String;)Lcom/luajava/LuaObject;
    .locals 1

    invoke-virtual {p0}, Lcom/luajava/LuaState;->T()V

    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->c0(Ljava/lang/String;)V

    const/4 p1, -0x2

    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->f0(I)I

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->s(I)Lcom/luajava/LuaObject;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->Q(I)V

    return-object p1
.end method

.method public v0(I)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/String;

    iget-wide v1, p0, Lcom/luajava/LuaState;->a:J

    invoke-direct {p0, v1, v2, p1}, Lcom/luajava/LuaState;->_toString(JI)[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public w(I)Ljava/lang/Object;
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->a:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_getObjectFromUserdata(JI)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->r(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public w0(I)I
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->a:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_type(JI)I

    move-result p1

    return p1
.end method

.method public x()J
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->a:J

    return-wide v0
.end method

.method public x0(I)Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->a:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_type_name(JI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public y(I)I
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->a:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_getTable(JI)I

    move-result p1

    return p1
.end method

.method public z()I
    .locals 2

    iget-wide v0, p0, Lcom/luajava/LuaState;->a:J

    invoke-direct {p0, v0, v1}, Lcom/luajava/LuaState;->_get_top(J)I

    move-result v0

    return v0
.end method
