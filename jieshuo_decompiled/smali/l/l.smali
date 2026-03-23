.class public Ll/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile A:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile B:Z

.field private static C:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static D:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static E:Z

.field private static F:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field

.field private static G:Z

.field private static volatile H:Ljava/lang/Class;

.field private static volatile I:Z

.field private static volatile J:Ljava/lang/Class;

.field private static volatile K:Ljava/lang/Class;

.field private static volatile L:Z

.field private static volatile M:Ljava/lang/reflect/Method;

.field private static volatile N:Ljava/lang/reflect/Field;

.field private static volatile O:Ljava/lang/Object;

.field private static P:Ljava/lang/Class;

.field private static final a:Ljava/util/regex/Pattern;

.field public static b:Z

.field public static c:Z

.field private static d:Z

.field private static e:Z

.field private static f:Ljava/lang/reflect/Method;

.field private static g:Z

.field private static h:Ljava/lang/reflect/Method;

.field private static i:Z

.field private static j:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static k:Z

.field private static l:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field

.field private static m:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field

.field private static n:Z

.field private static o:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field

.field private static p:Z

.field private static q:Ljava/lang/reflect/Method;

.field private static r:Z

.field private static volatile s:Ljava/lang/Class;

.field private static volatile t:Z

.field private static volatile u:Z

.field private static volatile v:Ljava/lang/reflect/Constructor;

.field private static volatile w:Ljava/lang/reflect/Method;

.field private static volatile x:Ljava/lang/reflect/Method;

.field private static volatile y:Ljava/lang/reflect/Method;

.field private static volatile z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v0, "true"

    const-string v1, "\\.0*$"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Ll/l;->a:Ljava/util/regex/Pattern;

    const/4 v1, 0x0

    sput-boolean v1, Ll/l;->b:Z

    sput-boolean v1, Ll/l;->c:Z

    const/4 v2, 0x1

    sput-boolean v2, Ll/l;->d:Z

    sput-boolean v1, Ll/l;->e:Z

    sput-boolean v1, Ll/l;->g:Z

    sput-boolean v1, Ll/l;->i:Z

    sput-boolean v1, Ll/l;->k:Z

    const/4 v3, 0x0

    sput-object v3, Ll/l;->m:Ljava/lang/Class;

    sput-boolean v1, Ll/l;->n:Z

    sput-object v3, Ll/l;->o:Ljava/lang/Class;

    sput-boolean v1, Ll/l;->p:Z

    sput-object v3, Ll/l;->q:Ljava/lang/reflect/Method;

    sput-boolean v1, Ll/l;->r:Z

    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v5, 0x100

    const/high16 v6, 0x3f400000    # 0.75f

    invoke-direct {v4, v5, v6, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    sput-object v4, Ll/l;->C:Ljava/util/concurrent/ConcurrentMap;

    sput-boolean v1, Ll/l;->E:Z

    sput-object v3, Ll/l;->F:Ljava/lang/Class;

    sput-boolean v1, Ll/l;->G:Z

    sput-object v3, Ll/l;->H:Ljava/lang/Class;

    sput-boolean v1, Ll/l;->I:Z

    sput-object v3, Ll/l;->J:Ljava/lang/Class;

    sput-object v3, Ll/l;->K:Ljava/lang/Class;

    sput-boolean v1, Ll/l;->L:Z

    sput-object v3, Ll/l;->M:Ljava/lang/reflect/Method;

    sput-object v3, Ll/l;->N:Ljava/lang/reflect/Field;

    sput-object v3, Ll/l;->O:Ljava/lang/Object;

    sput-object v3, Ll/l;->P:Ljava/lang/Class;

    :try_start_0
    const-string v1, "fastjson.compatibleWithJavaBean"

    invoke-static {v1}, Ll/e;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Ll/l;->b:Z

    const-string v1, "fastjson.compatibleWithFieldName"

    invoke-static {v1}, Ll/e;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Ll/l;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :try_start_1
    const-class v0, Ljava/util/Deque;

    sput-object v0, Ll/l;->P:Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    invoke-static {}, Ll/l;->a()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static A0(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ll/l;->B0(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public static B(Ljava/lang/Object;)Ljava/sql/Timestamp;
    .locals 22

    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    instance-of v2, v0, Ljava/util/Calendar;

    if-eqz v2, :cond_1

    new-instance v1, Ljava/sql/Timestamp;

    check-cast v0, Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/sql/Timestamp;-><init>(J)V

    return-object v1

    :cond_1
    instance-of v2, v0, Ljava/sql/Timestamp;

    if-eqz v2, :cond_2

    check-cast v0, Ljava/sql/Timestamp;

    return-object v0

    :cond_2
    instance-of v2, v0, Ljava/util/Date;

    if-eqz v2, :cond_3

    new-instance v1, Ljava/sql/Timestamp;

    check-cast v0, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/sql/Timestamp;-><init>(J)V

    return-object v1

    :cond_3
    instance-of v2, v0, Ljava/math/BigDecimal;

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_4

    move-object v2, v0

    check-cast v2, Ljava/math/BigDecimal;

    invoke-static {v2}, Ll/l;->D0(Ljava/math/BigDecimal;)J

    move-result-wide v5

    goto :goto_0

    :cond_4
    instance-of v2, v0, Ljava/lang/Number;

    if-eqz v2, :cond_5

    move-object v2, v0

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    goto :goto_0

    :cond_5
    move-wide v5, v3

    :goto_0
    instance-of v2, v0, Ljava/lang/String;

    const-string v7, "can not cast to Timestamp, value : "

    if-eqz v2, :cond_d

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_c

    const-string v5, "null"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    const-string v5, "NULL"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    goto/16 :goto_3

    :cond_6
    const-string v1, ".000000000"

    invoke-virtual {v2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v5, 0x7

    const/16 v6, 0xa

    const/4 v8, 0x0

    if-eqz v1, :cond_7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v6

    :goto_1
    invoke-virtual {v2, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_7
    const-string v1, ".000000"

    invoke-virtual {v2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v5

    goto :goto_1

    :cond_8
    :goto_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v9, 0x1d

    if-ne v1, v9, :cond_9

    const/4 v1, 0x4

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v9, 0x2d

    if-ne v1, v9, :cond_9

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v9, :cond_9

    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v5, 0x20

    if-ne v1, v5, :cond_9

    const/16 v1, 0xd

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v5, 0x3a

    if-ne v1, v5, :cond_9

    const/16 v1, 0x10

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_9

    const/16 v1, 0x13

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v5, 0x2e

    if-ne v1, v5, :cond_9

    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/4 v5, 0x3

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v0, v3, v4, v5}, Ll/l;->G0(CCCC)I

    move-result v0

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/4 v4, 0x6

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v3, v4}, Ll/l;->F0(CC)I

    move-result v3

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x9

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v4, v5}, Ll/l;->F0(CC)I

    move-result v9

    const/16 v4, 0xb

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0xc

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v4, v5}, Ll/l;->F0(CC)I

    move-result v10

    const/16 v4, 0xe

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0xf

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v4, v5}, Ll/l;->F0(CC)I

    move-result v11

    const/16 v4, 0x11

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x12

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v4, v5}, Ll/l;->F0(CC)I

    move-result v12

    const/16 v4, 0x14

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v4, 0x15

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v4, 0x16

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v4, 0x17

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v16

    const/16 v4, 0x18

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v17

    const/16 v4, 0x19

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v18

    const/16 v4, 0x1a

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v19

    const/16 v4, 0x1b

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v20

    const/16 v4, 0x1c

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v21

    invoke-static/range {v13 .. v21}, Ll/l;->H0(CCCCCCCCC)I

    move-result v13

    new-instance v2, Ljava/sql/Timestamp;

    add-int/lit16 v7, v0, -0x76c

    add-int/lit8 v8, v3, -0x1

    move-object v6, v2

    invoke-direct/range {v6 .. v13}, Ljava/sql/Timestamp;-><init>(IIIIIII)V

    return-object v2

    :cond_9
    invoke-static {v2}, Ll/l;->u0(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    goto :goto_4

    :cond_a
    new-instance v1, Lf/f;

    invoke-direct {v1, v2}, Lf/f;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Lf/f;->d1(Z)Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-virtual {v1}, Lf/d;->p0()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    goto :goto_4

    :cond_b
    new-instance v0, Lc/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lc/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    :goto_3
    return-object v1

    :cond_d
    :goto_4
    cmp-long v1, v5, v3

    if-ltz v1, :cond_e

    new-instance v0, Ljava/sql/Timestamp;

    invoke-direct {v0, v5, v6}, Ljava/sql/Timestamp;-><init>(J)V

    return-object v0

    :cond_e
    new-instance v1, Lc/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lc/d;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static B0(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            "Z)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x80

    if-le v0, v1, :cond_0

    goto/16 :goto_2

    :cond_0
    sget-object v0, Ll/l;->C:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5b

    const/4 v4, 0x1

    if-ne v2, v3, :cond_2

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Ll/l;->A0(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0

    :cond_2
    const-string v1, "L"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, ";"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    sub-int/2addr p2, v4

    invoke-virtual {p0, v4, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Ll/l;->A0(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    return-object p0

    :cond_3
    if-eqz p1, :cond_5

    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz p2, :cond_4

    sget-object v1, Ll/l;->C:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    return-object v0

    :catchall_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-eqz v1, :cond_7

    if-eq v1, p1, :cond_7

    invoke-virtual {v1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz p2, :cond_6

    :try_start_2
    sget-object v0, Ll/l;->C:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-object v0, p1

    goto :goto_1

    :cond_6
    :goto_0
    return-object p1

    :catchall_2
    :cond_7
    :goto_1
    :try_start_3
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz p2, :cond_8

    sget-object p1, Ll/l;->C:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    :cond_8
    return-object v0

    :cond_9
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private static C(Ljava/lang/Class;Ljava/util/Map;Lc/l;Ljava/util/Map;[Ljava/lang/reflect/Field;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lc/l;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ll/c;",
            ">;[",
            "Ljava/lang/reflect/Field;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    array-length v4, v3

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_8

    aget-object v10, v3, v6

    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v7

    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v7

    if-eqz v7, :cond_0

    goto/16 :goto_2

    :cond_0
    const-class v7, Ld/b;

    invoke-static {v10, v7}, Ll/l;->N(Ljava/lang/reflect/Field;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v7

    move-object/from16 v17, v7

    check-cast v17, Ld/b;

    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    if-eqz v17, :cond_4

    invoke-interface/range {v17 .. v17}, Ld/b;->serialize()Z

    move-result v9

    if-nez v9, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-interface/range {v17 .. v17}, Ld/b;->ordinal()I

    move-result v9

    invoke-interface/range {v17 .. v17}, Ld/b;->serialzeFeatures()[Lh/g1;

    move-result-object v11

    invoke-static {v11}, Lh/g1;->d([Lh/g1;)I

    move-result v11

    invoke-interface/range {v17 .. v17}, Ld/b;->parseFeatures()[Lf/b;

    move-result-object v12

    invoke-static {v12}, Lf/b;->b([Lf/b;)I

    move-result v12

    invoke-interface/range {v17 .. v17}, Ld/b;->name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface/range {v17 .. v17}, Ld/b;->name()Ljava/lang/String;

    move-result-object v7

    :cond_2
    invoke-interface/range {v17 .. v17}, Ld/b;->label()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface/range {v17 .. v17}, Ld/b;->label()Ljava/lang/String;

    move-result-object v8

    :cond_3
    move-object/from16 v18, v8

    move v13, v9

    move v14, v11

    move v15, v12

    goto :goto_1

    :cond_4
    move-object/from16 v18, v8

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_1
    if-eqz v0, :cond_5

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-nez v7, :cond_5

    goto :goto_2

    :cond_5
    if-eqz v1, :cond_6

    invoke-virtual {v1, v7}, Lc/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :cond_6
    move-object v12, v7

    invoke-interface {v2, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    new-instance v11, Ll/c;

    const/4 v9, 0x0

    const/16 v16, 0x0

    const/16 v19, 0x0

    move-object v7, v11

    move-object v8, v12

    move-object v5, v11

    move-object/from16 v11, p0

    move-object/from16 v20, v12

    move-object/from16 v12, v16

    move-object/from16 v16, v19

    invoke-direct/range {v7 .. v18}, Ll/c;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILd/b;Ld/b;Ljava/lang/String;)V

    move-object/from16 v7, v20

    invoke-interface {v2, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method public static C0(Ljava/lang/Number;)J
    .locals 2

    instance-of v0, p0, Ljava/math/BigDecimal;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Ljava/math/BigDecimal;->longValueExact()J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static D(Ljava/lang/Class;Ld/d;Ljava/util/Map;Ljava/util/Map;ZLc/l;)Ljava/util/List;
    .locals 38
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ld/d;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            ">;Z",
            "Lc/l;",
            ")",
            "Ljava/util/List<",
            "Ll/c;",
            ">;"
        }
    .end annotation

    move-object/from16 v12, p0

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    move-object/from16 v15, p5

    new-instance v11, Ljava/util/LinkedHashMap;

    invoke-direct {v11}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static/range {p0 .. p0}, Ll/l;->s0(Ljava/lang/Class;)Z

    move-result v16

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v10

    array-length v9, v10

    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object v1, v0

    move-object v2, v1

    move-object v3, v2

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v9, :cond_47

    aget-object v6, v10, v7

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    const/16 v18, 0x0

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    sget-object v8, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v4, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    array-length v4, v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    const-class v8, Ljava/lang/ClassLoader;

    if-ne v4, v8, :cond_3

    goto :goto_1

    :cond_3
    const-string v4, "getMetaClass"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v8, "groovy.lang.MetaClass"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_1

    :cond_4
    const-string v4, "getSuppressed"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    const-class v8, Ljava/lang/Throwable;

    if-ne v4, v8, :cond_5

    goto :goto_1

    :cond_5
    if-eqz v16, :cond_6

    invoke-static {v12, v5}, Ll/l;->t0(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    :goto_1
    move-object/from16 v23, v0

    move/from16 v25, v7

    move/from16 v31, v9

    move-object/from16 v32, v10

    move-object v0, v11

    const/16 v29, 0x0

    goto/16 :goto_27

    :cond_6
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-class v8, Ld/b;

    invoke-static {v6, v8}, Ll/l;->O(Ljava/lang/reflect/Method;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v19

    check-cast v19, Ld/b;

    if-nez v19, :cond_7

    invoke-static {v12, v6}, Ll/l;->i0(Ljava/lang/Class;Ljava/lang/reflect/Method;)Ld/b;

    move-result-object v19

    :cond_7
    move-object/from16 v20, v1

    const-string v1, "get"

    move-object/from16 v21, v11

    if-nez v19, :cond_14

    if-eqz v16, :cond_14

    if-nez v0, :cond_b

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-static {v0}, Ll/l;->a0([Ljava/lang/reflect/Constructor;)Ljava/lang/reflect/Constructor;

    move-result-object v22

    if-eqz v22, :cond_a

    invoke-static/range {v22 .. v22}, Ll/l;->c0(Ljava/lang/reflect/Constructor;)[[Ljava/lang/annotation/Annotation;

    move-result-object v3

    invoke-static/range {p0 .. p0}, Ll/l;->Z(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_9

    array-length v2, v11

    new-array v2, v2, [Ljava/lang/String;

    move-object/from16 v23, v0

    array-length v0, v11

    move-object/from16 v20, v3

    const/4 v3, 0x0

    invoke-static {v11, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    array-length v0, v11

    new-array v0, v0, [S

    move-object/from16 v24, v4

    :goto_2
    array-length v4, v11

    if-ge v3, v4, :cond_8

    aget-object v4, v11, v3

    invoke-static {v2, v4}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    aput-short v3, v0, v4

    add-int/lit8 v3, v3, 0x1

    int-to-short v3, v3

    goto :goto_2

    :cond_8
    move-object v11, v2

    move-object/from16 v3, v20

    move-object v2, v0

    move-object/from16 v0, v23

    goto :goto_3

    :cond_9
    move-object/from16 v23, v0

    move-object/from16 v20, v3

    move-object/from16 v24, v4

    goto :goto_3

    :cond_a
    move-object/from16 v23, v0

    :cond_b
    move-object/from16 v24, v4

    move-object/from16 v11, v20

    :goto_3
    if-eqz v11, :cond_12

    if-eqz v2, :cond_12

    invoke-virtual {v5, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    const/4 v4, 0x3

    invoke-virtual {v5, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ll/l;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v20

    move-object/from16 v23, v0

    move/from16 v25, v7

    if-gez v20, :cond_d

    const/4 v0, 0x0

    :goto_4
    array-length v7, v11

    if-ge v0, v7, :cond_d

    aget-object v7, v11, v0

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    move/from16 v20, v0

    goto :goto_5

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_d
    :goto_5
    if-ltz v20, :cond_11

    aget-short v0, v2, v20

    aget-object v0, v3, v0

    if-eqz v0, :cond_f

    array-length v7, v0

    move-object/from16 v20, v2

    const/4 v2, 0x0

    :goto_6
    move-object/from16 v26, v3

    if-ge v2, v7, :cond_10

    aget-object v3, v0, v2

    move-object/from16 v27, v0

    instance-of v0, v3, Ld/b;

    if-eqz v0, :cond_e

    move-object/from16 v19, v3

    check-cast v19, Ld/b;

    goto :goto_7

    :cond_e
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v3, v26

    move-object/from16 v0, v27

    goto :goto_6

    :cond_f
    move-object/from16 v20, v2

    move-object/from16 v26, v3

    :cond_10
    :goto_7
    if-nez v19, :cond_13

    invoke-static {v4, v14}, Lf/i;->q(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-static {v0, v8}, Ll/l;->N(Ljava/lang/reflect/Field;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Ld/b;

    move-object/from16 v27, v0

    goto :goto_9

    :cond_11
    move-object/from16 v20, v2

    move-object/from16 v26, v3

    goto :goto_8

    :cond_12
    move-object/from16 v23, v0

    move-object/from16 v20, v2

    move-object/from16 v26, v3

    move/from16 v25, v7

    :cond_13
    :goto_8
    move-object/from16 v27, v19

    :goto_9
    move-object/from16 v19, v20

    move-object/from16 v20, v11

    goto :goto_a

    :cond_14
    move-object/from16 v24, v4

    move/from16 v25, v7

    move-object/from16 v23, v0

    move-object/from16 v26, v3

    move-object/from16 v27, v19

    move-object/from16 v19, v2

    :goto_a
    if-eqz v27, :cond_18

    invoke-interface/range {v27 .. v27}, Ld/b;->serialize()Z

    move-result v0

    if-nez v0, :cond_15

    :goto_b
    move/from16 v31, v9

    move-object/from16 v32, v10

    move-object/from16 v0, v21

    const/16 v29, 0x0

    goto/16 :goto_26

    :cond_15
    invoke-interface/range {v27 .. v27}, Ld/b;->ordinal()I

    move-result v7

    invoke-interface/range {v27 .. v27}, Ld/b;->serialzeFeatures()[Lh/g1;

    move-result-object v0

    invoke-static {v0}, Lh/g1;->d([Lh/g1;)I

    move-result v11

    invoke-interface/range {v27 .. v27}, Ld/b;->parseFeatures()[Lf/b;

    move-result-object v0

    invoke-static {v0}, Lf/b;->b([Lf/b;)I

    move-result v28

    invoke-interface/range {v27 .. v27}, Ld/b;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface/range {v27 .. v27}, Ld/b;->name()Ljava/lang/String;

    move-result-object v0

    if-eqz v13, :cond_16

    invoke-interface {v13, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_16

    goto :goto_b

    :cond_16
    move-object v8, v0

    new-instance v5, Ll/c;

    const/4 v3, 0x0

    const/16 v22, 0x0

    const/16 v24, 0x0

    move-object v0, v5

    move-object v1, v8

    move-object v2, v6

    const/16 v29, 0x0

    move-object/from16 v4, p0

    move-object v6, v5

    move-object/from16 v5, v22

    move-object/from16 v30, v6

    move v6, v7

    move v7, v11

    move-object v11, v8

    move/from16 v8, v28

    move/from16 v31, v9

    move-object/from16 v9, v27

    move-object/from16 v32, v10

    move-object/from16 v10, v24

    move-object v13, v11

    move-object/from16 v15, v21

    move-object/from16 v11, v18

    invoke-direct/range {v0 .. v11}, Ll/c;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILd/b;Ld/b;Ljava/lang/String;)V

    move-object/from16 v0, v30

    invoke-interface {v15, v13, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :cond_17
    move/from16 v31, v9

    move-object/from16 v32, v10

    move-object/from16 v15, v21

    const/16 v29, 0x0

    invoke-interface/range {v27 .. v27}, Ld/b;->label()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface/range {v27 .. v27}, Ld/b;->label()Ljava/lang/String;

    move-result-object v18

    goto :goto_c

    :cond_18
    move/from16 v31, v9

    move-object/from16 v32, v10

    move-object/from16 v15, v21

    const/16 v29, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x0

    const/16 v28, 0x0

    :cond_19
    :goto_c
    invoke-virtual {v5, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/16 v13, 0x66

    const/16 v10, 0x5f

    if-eqz v0, :cond_31

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_1a

    :goto_d
    move-object/from16 v13, p2

    :goto_e
    move-object v0, v15

    move-object/from16 v15, p5

    goto/16 :goto_26

    :cond_1a
    const-string v0, "getClass"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_d

    :cond_1b
    const-string v0, "getDeclaringClass"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_d

    :cond_1c
    const/4 v0, 0x3

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-nez v3, :cond_23

    const/16 v3, 0x200

    if-le v2, v3, :cond_1d

    goto :goto_10

    :cond_1d
    if-ne v2, v10, :cond_1f

    invoke-virtual {v5, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v14, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    if-nez v0, :cond_25

    invoke-virtual {v5, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v14}, Lf/i;->q(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v1

    if-nez v1, :cond_1e

    goto :goto_f

    :cond_1e
    move-object v2, v0

    goto :goto_f

    :cond_1f
    const/4 v0, 0x3

    if-ne v2, v13, :cond_20

    invoke-virtual {v5, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_12

    :cond_20
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x5

    if-lt v2, v3, :cond_21

    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-virtual {v5, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ll/l;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_12

    :cond_21
    invoke-virtual {v5, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v14}, Lf/i;->q(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v1

    if-nez v1, :cond_22

    goto :goto_d

    :cond_22
    :goto_f
    move-object v0, v1

    goto :goto_13

    :cond_23
    :goto_10
    sget-boolean v1, Ll/l;->b:Z

    if-eqz v1, :cond_24

    invoke-virtual {v5, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ll/l;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_11

    :cond_24
    invoke-static {v5}, Ll/l;->g0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_11
    invoke-static {v14, v5, v1, v0}, Ll/l;->f0(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    :goto_12
    move-object/from16 v0, v17

    :cond_25
    :goto_13
    invoke-static {v12, v2}, Ll/l;->q0(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26

    goto/16 :goto_d

    :cond_26
    if-nez v0, :cond_27

    invoke-static {v2, v14}, Lf/i;->q(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v0

    :cond_27
    if-nez v0, :cond_28

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x1

    if-le v1, v3, :cond_28

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x41

    if-lt v1, v3, :cond_28

    const/16 v3, 0x5a

    if-gt v1, v3, :cond_28

    const/4 v9, 0x3

    invoke-virtual {v5, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ll/l;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v14}, Lf/i;->q(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v0

    goto :goto_14

    :cond_28
    const/4 v9, 0x3

    :goto_14
    move-object v3, v0

    if-eqz v3, :cond_2e

    invoke-static {v3, v8}, Ll/l;->N(Ljava/lang/reflect/Field;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Ld/b;

    if-eqz v0, :cond_2d

    invoke-interface {v0}, Ld/b;->serialize()Z

    move-result v1

    if-nez v1, :cond_29

    goto/16 :goto_d

    :cond_29
    invoke-interface {v0}, Ld/b;->ordinal()I

    move-result v1

    invoke-interface {v0}, Ld/b;->serialzeFeatures()[Lh/g1;

    move-result-object v4

    invoke-static {v4}, Lh/g1;->d([Lh/g1;)I

    move-result v4

    invoke-interface {v0}, Ld/b;->parseFeatures()[Lf/b;

    move-result-object v7

    invoke-static {v7}, Lf/b;->b([Lf/b;)I

    move-result v7

    invoke-interface {v0}, Ld/b;->name()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_2b

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0}, Ld/b;->name()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v13, p2

    if-eqz v13, :cond_2a

    invoke-interface {v13, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    if-nez v11, :cond_2a

    goto :goto_18

    :cond_2a
    move-object/from16 v24, v2

    move-object v2, v11

    goto :goto_15

    :cond_2b
    move-object/from16 v13, p2

    :goto_15
    invoke-interface {v0}, Ld/b;->label()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_2c

    invoke-interface {v0}, Ld/b;->label()Ljava/lang/String;

    move-result-object v11

    move/from16 v18, v1

    move/from16 v21, v4

    move/from16 v28, v7

    move-object/from16 v22, v11

    move-object/from16 v4, v24

    move-object v11, v0

    goto :goto_17

    :cond_2c
    move-object v11, v0

    move/from16 v21, v4

    move/from16 v28, v7

    move-object/from16 v22, v18

    move-object/from16 v4, v24

    move/from16 v18, v1

    goto :goto_17

    :cond_2d
    move-object/from16 v13, p2

    move/from16 v21, v11

    move-object/from16 v22, v18

    move-object/from16 v4, v24

    move-object v11, v0

    goto :goto_16

    :cond_2e
    move-object/from16 v13, p2

    move/from16 v21, v11

    move-object/from16 v11, v17

    move-object/from16 v22, v18

    move-object/from16 v4, v24

    :goto_16
    move/from16 v18, v7

    :goto_17
    if-eqz v13, :cond_2f

    invoke-interface {v13, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_2f

    :goto_18
    goto/16 :goto_e

    :cond_2f
    move-object v7, v15

    move-object/from16 v15, p5

    if-eqz v15, :cond_30

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_30

    invoke-virtual {v15, v2}, Lc/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_30
    move-object v4, v2

    new-instance v2, Ll/c;

    const/16 v24, 0x0

    move-object v0, v2

    move-object v1, v4

    move-object/from16 v33, v2

    move-object v2, v6

    move-object v15, v4

    move-object/from16 v4, p0

    move-object v13, v5

    move-object/from16 v5, v24

    move-object/from16 v24, v6

    move/from16 v6, v18

    move-object/from16 v34, v7

    move/from16 v7, v21

    move-object/from16 v35, v8

    move/from16 v8, v28

    const/16 v30, 0x3

    move-object/from16 v9, v27

    move-object v10, v11

    const/4 v12, 0x3

    move-object/from16 v11, v22

    invoke-direct/range {v0 .. v11}, Ll/c;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILd/b;Ld/b;Ljava/lang/String;)V

    move-object/from16 v0, v33

    move-object/from16 v10, v34

    invoke-interface {v10, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v7, v18

    move/from16 v11, v21

    move-object/from16 v18, v22

    goto :goto_19

    :cond_31
    move-object v13, v5

    move-object/from16 v24, v6

    move-object/from16 v35, v8

    move-object v10, v15

    const/4 v12, 0x3

    :goto_19
    const-string v0, "is"

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v12, :cond_32

    goto/16 :goto_22

    :cond_32
    invoke-virtual/range {v24 .. v24}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_33

    invoke-virtual/range {v24 .. v24}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Boolean;

    if-eq v0, v1, :cond_33

    goto/16 :goto_22

    :cond_33
    const/4 v0, 0x2

    invoke-virtual {v13, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v2

    if-eqz v2, :cond_35

    sget-boolean v1, Ll/l;->b:Z

    if-eqz v1, :cond_34

    invoke-virtual {v13, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ll/l;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1a

    :cond_34
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1a
    invoke-static {v14, v13, v1, v0}, Ll/l;->f0(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1b

    :cond_35
    const/16 v2, 0x5f

    if-ne v1, v2, :cond_37

    invoke-virtual {v13, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v14, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Field;

    if-nez v2, :cond_36

    invoke-virtual {v13, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v14}, Lf/i;->q(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v2

    if-nez v2, :cond_39

    move-object v0, v1

    goto :goto_1c

    :cond_36
    move-object/from16 v12, p0

    move-object v0, v1

    goto :goto_1d

    :cond_37
    const/16 v2, 0x66

    invoke-virtual {v13, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    if-ne v1, v2, :cond_38

    :goto_1b
    move-object/from16 v12, p0

    move-object/from16 v2, v17

    goto :goto_1d

    :cond_38
    invoke-static {v0, v14}, Lf/i;->q(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v2

    if-nez v2, :cond_39

    goto/16 :goto_22

    :cond_39
    :goto_1c
    move-object/from16 v12, p0

    :goto_1d
    invoke-static {v12, v0}, Ll/l;->q0(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3a

    :goto_1e
    goto/16 :goto_23

    :cond_3a
    if-nez v2, :cond_3b

    invoke-static {v0, v14}, Lf/i;->q(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v2

    :cond_3b
    if-nez v2, :cond_3c

    invoke-static {v13, v14}, Lf/i;->q(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v1

    move-object v3, v1

    goto :goto_1f

    :cond_3c
    move-object v3, v2

    :goto_1f
    if-eqz v3, :cond_42

    move-object/from16 v1, v35

    invoke-static {v3, v1}, Ll/l;->N(Ljava/lang/reflect/Field;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Ld/b;

    if-eqz v1, :cond_41

    invoke-interface {v1}, Ld/b;->serialize()Z

    move-result v2

    if-nez v2, :cond_3d

    goto :goto_1e

    :cond_3d
    invoke-interface {v1}, Ld/b;->ordinal()I

    move-result v2

    invoke-interface {v1}, Ld/b;->serialzeFeatures()[Lh/g1;

    move-result-object v4

    invoke-static {v4}, Lh/g1;->d([Lh/g1;)I

    move-result v4

    invoke-interface {v1}, Ld/b;->parseFeatures()[Lf/b;

    move-result-object v5

    invoke-static {v5}, Lf/b;->b([Lf/b;)I

    move-result v5

    invoke-interface {v1}, Ld/b;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_3e

    invoke-interface {v1}, Ld/b;->name()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v13, p2

    if-eqz v13, :cond_3f

    invoke-interface {v13, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_3f

    goto :goto_21

    :cond_3e
    move-object/from16 v13, p2

    :cond_3f
    invoke-interface {v1}, Ld/b;->label()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_40

    invoke-interface {v1}, Ld/b;->label()Ljava/lang/String;

    move-result-object v6

    move-object v11, v1

    move v7, v4

    move v8, v5

    move-object/from16 v18, v6

    move v6, v2

    goto :goto_20

    :cond_40
    move-object v11, v1

    move v6, v2

    move v7, v4

    move v8, v5

    goto :goto_20

    :cond_41
    move-object/from16 v13, p2

    move v6, v7

    move v7, v11

    move/from16 v8, v28

    move-object v11, v1

    goto :goto_20

    :cond_42
    move-object/from16 v13, p2

    move v6, v7

    move v7, v11

    move-object/from16 v11, v17

    move/from16 v8, v28

    :goto_20
    if-eqz v13, :cond_43

    invoke-interface {v13, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_43

    :goto_21
    goto :goto_24

    :cond_43
    move-object/from16 v15, p5

    if-eqz v15, :cond_44

    invoke-virtual {v15, v0}, Lc/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_44
    move-object v9, v0

    invoke-interface {v10, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    goto :goto_25

    :cond_45
    new-instance v5, Ll/c;

    const/16 v21, 0x0

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v24

    move-object/from16 v4, p0

    move-object v14, v5

    move-object/from16 v5, v21

    move-object/from16 v36, v9

    move-object/from16 v9, v27

    move-object/from16 v37, v10

    move-object v10, v11

    move-object/from16 v11, v18

    invoke-direct/range {v0 .. v11}, Ll/c;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILd/b;Ld/b;Ljava/lang/String;)V

    move-object/from16 v1, v36

    move-object/from16 v0, v37

    invoke-interface {v0, v1, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_26

    :cond_46
    :goto_22
    move-object/from16 v12, p0

    :goto_23
    move-object/from16 v13, p2

    :goto_24
    move-object/from16 v15, p5

    :goto_25
    move-object v0, v10

    :goto_26
    move-object/from16 v2, v19

    move-object/from16 v1, v20

    move-object/from16 v3, v26

    :goto_27
    add-int/lit8 v7, v25, 0x1

    move-object/from16 v14, p3

    move-object v11, v0

    move-object/from16 v0, v23

    move/from16 v9, v31

    move-object/from16 v10, v32

    goto/16 :goto_0

    :cond_47
    move-object v0, v11

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-static {v12, v13, v15, v0, v1}, Ll/l;->C(Ljava/lang/Class;Ljava/util/Map;Lc/l;Ljava/util/Map;[Ljava/lang/reflect/Field;)V

    move/from16 v1, p4

    invoke-static {v12, v1, v0}, Ll/l;->X(Ljava/lang/Class;ZLjava/util/Map;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static D0(Ljava/math/BigDecimal;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Ljava/math/BigDecimal;->scale()I

    move-result v0

    const/16 v1, -0x64

    if-lt v0, v1, :cond_1

    const/16 v1, 0x64

    if-gt v0, v1, :cond_1

    invoke-virtual {p0}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_1
    invoke-virtual {p0}, Ljava/math/BigDecimal;->longValueExact()J

    move-result-wide v0

    return-wide v0
.end method

.method public static E(Ljava/lang/Class;Ljava/util/Map;ZLc/l;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Lc/l;",
            ")",
            "Ljava/util/List<",
            "Ll/c;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v1, p0

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-static {v1, p1, p3, v0, v2}, Ll/l;->C(Ljava/lang/Class;Ljava/util/Map;Lc/l;Ljava/util/Map;[Ljava/lang/reflect/Field;)V

    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {p0, p2, v0}, Ll/l;->X(Ljava/lang/Class;ZLjava/util/Map;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static E0(Ljava/lang/Class;[Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/ParameterizedType;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/TypeVariable;",
            "Ljava/lang/reflect/Type;",
            ">;)",
            "Ljava/lang/reflect/ParameterizedType;"
        }
    .end annotation

    array-length v0, p1

    new-array v1, v0, [Ljava/lang/reflect/Type;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    invoke-static {v3, p2}, Ll/l;->L(Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Ll/h;

    const/4 p2, 0x0

    invoke-direct {p1, v1, p2, p0}, Ll/h;-><init>([Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    return-object p1
.end method

.method private static F([Ljava/lang/reflect/TypeVariable;[Ljava/lang/reflect/Type;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/reflect/TypeVariable;",
            "[",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/TypeVariable;",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation

    array-length v0, p0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p0, v2

    aget-object v4, p1, v2

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method static F0(CC)I
    .locals 2

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v1, 0x39

    if-gt p0, v1, :cond_0

    if-lt p1, v0, :cond_0

    if-gt p1, v1, :cond_0

    sub-int/2addr p0, v0

    mul-int/lit8 p0, p0, 0xa

    sub-int/2addr p1, v0

    add-int/2addr p0, p1

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public static G(Ljava/lang/reflect/Type;)Ljava/util/Collection;
    .locals 3

    invoke-static {p0}, Ll/l;->h0(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/util/AbstractCollection;

    if-eq v0, v1, :cond_9

    const-class v1, Ljava/util/Collection;

    if-ne v0, v1, :cond_0

    goto/16 :goto_2

    :cond_0
    const-class v1, Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    goto/16 :goto_3

    :cond_1
    const-class v1, Ljava/util/LinkedHashSet;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance p0, Ljava/util/LinkedHashSet;

    invoke-direct {p0}, Ljava/util/LinkedHashSet;-><init>()V

    goto/16 :goto_3

    :cond_2
    const-class v1, Ljava/util/TreeSet;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance p0, Ljava/util/TreeSet;

    invoke-direct {p0}, Ljava/util/TreeSet;-><init>()V

    goto/16 :goto_3

    :cond_3
    const-class v1, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_3

    :cond_4
    const-class v1, Ljava/util/EnumSet;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_6

    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_5

    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    goto :goto_0

    :cond_5
    const-class p0, Ljava/lang/Object;

    :goto_0
    check-cast p0, Ljava/lang/Class;

    invoke-static {p0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p0

    goto :goto_3

    :cond_6
    const-class p0, Ljava/util/Queue;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-nez p0, :cond_8

    sget-object p0, Ll/l;->P:Ljava/lang/Class;

    if-eqz p0, :cond_7

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_1

    :cond_7
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    new-instance p0, Lc/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create instance error, class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lc/d;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    :goto_1
    new-instance p0, Ljava/util/LinkedList;

    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    goto :goto_3

    :cond_9
    :goto_2
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :goto_3
    return-object p0
.end method

.method static G0(CCCC)I
    .locals 2

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v1, 0x39

    if-gt p0, v1, :cond_0

    if-lt p1, v0, :cond_0

    if-gt p1, v1, :cond_0

    if-lt p2, v0, :cond_0

    if-gt p2, v1, :cond_0

    if-lt p3, v0, :cond_0

    if-gt p3, v1, :cond_0

    sub-int/2addr p0, v0

    mul-int/lit16 p0, p0, 0x3e8

    sub-int/2addr p1, v0

    mul-int/lit8 p1, p1, 0x64

    add-int/2addr p0, p1

    sub-int/2addr p2, v0

    mul-int/lit8 p2, p2, 0xa

    add-int/2addr p0, p2

    sub-int/2addr p3, v0

    add-int/2addr p0, p3

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public static H(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-le v0, v1, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    aget-char v0, p0, v2

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    aput-char v0, p0, v2

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    return-object v0

    :cond_2
    :goto_0
    return-object p0
.end method

.method static H0(CCCCCCCCC)I
    .locals 2

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v1, 0x39

    if-gt p0, v1, :cond_0

    if-lt p1, v0, :cond_0

    if-gt p1, v1, :cond_0

    if-lt p2, v0, :cond_0

    if-gt p2, v1, :cond_0

    if-lt p3, v0, :cond_0

    if-gt p3, v1, :cond_0

    if-lt p4, v0, :cond_0

    if-gt p4, v1, :cond_0

    if-lt p5, v0, :cond_0

    if-gt p5, v1, :cond_0

    if-lt p6, v0, :cond_0

    if-gt p6, v1, :cond_0

    if-lt p7, v0, :cond_0

    if-gt p7, v1, :cond_0

    if-lt p8, v0, :cond_0

    if-gt p8, v1, :cond_0

    sub-int/2addr p0, v0

    const v1, 0x5f5e100

    mul-int p0, p0, v1

    sub-int/2addr p1, v0

    const v1, 0x989680

    mul-int p1, p1, v1

    add-int/2addr p0, p1

    sub-int/2addr p2, v0

    const p1, 0xf4240

    mul-int p2, p2, p1

    add-int/2addr p0, p2

    sub-int/2addr p3, v0

    const p1, 0x186a0

    mul-int p3, p3, p1

    add-int/2addr p0, p3

    sub-int/2addr p4, v0

    mul-int/lit16 p4, p4, 0x2710

    add-int/2addr p0, p4

    sub-int/2addr p5, v0

    mul-int/lit16 p5, p5, 0x3e8

    add-int/2addr p0, p5

    sub-int/2addr p6, v0

    mul-int/lit8 p6, p6, 0x64

    add-int/2addr p0, p6

    sub-int/2addr p7, v0

    mul-int/lit8 p7, p7, 0xa

    add-int/2addr p0, p7

    sub-int/2addr p8, v0

    add-int/2addr p0, p8

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public static I(Ljava/lang/String;)J
    .locals 5

    const-wide v0, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-long v3, v3

    xor-long/2addr v0, v3

    const-wide v3, 0x100000001b3L

    mul-long v0, v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public static I0(Ljava/lang/String;)D
    .locals 9

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0

    :cond_0
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    move-wide v4, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v1, v0, :cond_5

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2d

    const/4 v8, 0x1

    if-ne v6, v7, :cond_1

    if-nez v1, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/16 v7, 0x2e

    if-ne v6, v7, :cond_3

    if-eqz v3, :cond_2

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0

    :cond_2
    sub-int v3, v0, v1

    sub-int/2addr v3, v8

    goto :goto_1

    :cond_3
    const/16 v7, 0x30

    if-lt v6, v7, :cond_4

    const/16 v7, 0x39

    if-gt v6, v7, :cond_4

    add-int/lit8 v6, v6, -0x30

    const-wide/16 v7, 0xa

    mul-long v4, v4, v7

    int-to-long v6, v6

    add-long/2addr v4, v6

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0

    :cond_5
    if-eqz v2, :cond_6

    neg-long v4, v4

    :cond_6
    packed-switch v3, :pswitch_data_0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0

    :pswitch_0
    long-to-double v0, v4

    const-wide v2, 0x41cdcd6500000000L    # 1.0E9

    :goto_2
    div-double/2addr v0, v2

    return-wide v0

    :pswitch_1
    long-to-double v0, v4

    const-wide v2, 0x4197d78400000000L    # 1.0E8

    goto :goto_2

    :pswitch_2
    long-to-double v0, v4

    const-wide v2, 0x416312d000000000L    # 1.0E7

    goto :goto_2

    :pswitch_3
    long-to-double v0, v4

    const-wide v2, 0x412e848000000000L    # 1000000.0

    goto :goto_2

    :pswitch_4
    long-to-double v0, v4

    const-wide v2, 0x40f86a0000000000L    # 100000.0

    goto :goto_2

    :pswitch_5
    long-to-double v0, v4

    const-wide v2, 0x40c3880000000000L    # 10000.0

    goto :goto_2

    :pswitch_6
    long-to-double v0, v4

    const-wide v2, 0x408f400000000000L    # 1000.0

    goto :goto_2

    :pswitch_7
    long-to-double v0, v4

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    goto :goto_2

    :pswitch_8
    long-to-double v0, v4

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    goto :goto_2

    :pswitch_9
    long-to-double v0, v4

    return-wide v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
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

.method public static J(Ljava/lang/String;)J
    .locals 5

    const-wide v0, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-long v3, v3

    xor-long/2addr v0, v3

    const-wide v3, 0x100000001b3L

    mul-long v0, v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public static J0(Ljava/lang/String;)F
    .locals 9

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    return p0

    :cond_0
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    move-wide v4, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v1, v0, :cond_5

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2d

    const/4 v8, 0x1

    if-ne v6, v7, :cond_1

    if-nez v1, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/16 v7, 0x2e

    if-ne v6, v7, :cond_3

    if-eqz v3, :cond_2

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    return p0

    :cond_2
    sub-int v3, v0, v1

    sub-int/2addr v3, v8

    goto :goto_1

    :cond_3
    const/16 v7, 0x30

    if-lt v6, v7, :cond_4

    const/16 v7, 0x39

    if-gt v6, v7, :cond_4

    add-int/lit8 v6, v6, -0x30

    const-wide/16 v7, 0xa

    mul-long v4, v4, v7

    int-to-long v6, v6

    add-long/2addr v4, v6

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    return p0

    :cond_5
    if-eqz v2, :cond_6

    neg-long v4, v4

    :cond_6
    packed-switch v3, :pswitch_data_0

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    return p0

    :pswitch_0
    long-to-float p0, v4

    const v0, 0x4e6e6b28    # 1.0E9f

    :goto_2
    div-float/2addr p0, v0

    return p0

    :pswitch_1
    long-to-float p0, v4

    const v0, 0x4cbebc20    # 1.0E8f

    goto :goto_2

    :pswitch_2
    long-to-float p0, v4

    const v0, 0x4b189680    # 1.0E7f

    goto :goto_2

    :pswitch_3
    long-to-float p0, v4

    const v0, 0x49742400    # 1000000.0f

    goto :goto_2

    :pswitch_4
    long-to-float p0, v4

    const v0, 0x47c35000    # 100000.0f

    goto :goto_2

    :pswitch_5
    long-to-float p0, v4

    const v0, 0x461c4000    # 10000.0f

    goto :goto_2

    :pswitch_6
    long-to-float p0, v4

    const/high16 v0, 0x447a0000    # 1000.0f

    goto :goto_2

    :pswitch_7
    long-to-float p0, v4

    const/high16 v0, 0x42c80000    # 100.0f

    goto :goto_2

    :pswitch_8
    long-to-float p0, v4

    const/high16 v0, 0x41200000    # 10.0f

    goto :goto_2

    :pswitch_9
    long-to-float p0, v4

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
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

.method public static K(Ljava/lang/String;)J
    .locals 5

    const-wide v0, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5f

    if-eq v3, v4, :cond_2

    const/16 v4, 0x2d

    if-ne v3, v4, :cond_0

    goto :goto_1

    :cond_0
    const/16 v4, 0x41

    if-lt v3, v4, :cond_1

    const/16 v4, 0x5a

    if-gt v3, v4, :cond_1

    add-int/lit8 v3, v3, 0x20

    int-to-char v3, v3

    :cond_1
    int-to-long v3, v3

    xor-long/2addr v0, v3

    const-wide v3, 0x100000001b3L

    mul-long v0, v0, v3

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-wide v0
.end method

.method static K0(Ljava/lang/reflect/AccessibleObject;)V
    .locals 1

    sget-boolean v0, Ll/l;->d:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/security/AccessControlException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    sput-boolean p0, Ll/l;->d:Z

    :goto_0
    return-void
.end method

.method private static L(Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/TypeVariable;",
            "Ljava/lang/reflect/Type;",
            ">;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    instance-of v0, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_0

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/reflect/Type;

    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_1

    invoke-static {p0}, Ll/l;->h0(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-static {v0, p0, p1}, Ll/l;->E0(Ljava/lang/Class;[Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/ParameterizedType;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v0, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_2

    new-instance v0, Ll/d;

    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-static {p0, p1}, Ll/l;->L(Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-direct {v0, p0}, Ll/d;-><init>(Ljava/lang/reflect/Type;)V

    return-object v0

    :cond_2
    return-object p0
.end method

.method public static L0(Ljava/math/BigDecimal;)S
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Ljava/math/BigDecimal;->scale()I

    move-result v0

    const/16 v1, -0x64

    if-lt v0, v1, :cond_1

    const/16 v1, 0x64

    if-gt v0, v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Number;->shortValue()S

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p0}, Ljava/math/BigDecimal;->shortValueExact()S

    move-result p0

    return p0
.end method

.method public static M(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "TA;>;)TA;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    invoke-static {p0}, Lc/a;->j(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/Class;

    if-eqz v2, :cond_0

    check-cast v1, Ljava/lang/Class;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v1, p1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    if-nez v3, :cond_2

    invoke-virtual {v1}, Ljava/lang/Class;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v4

    array-length v4, v4

    if-lez v4, :cond_2

    invoke-virtual {v1}, Ljava/lang/Class;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    array-length v4, v1

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_2

    aget-object v3, v1, v5

    invoke-interface {v3}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-eqz v3, :cond_3

    return-object v3

    :cond_3
    if-nez v0, :cond_5

    invoke-virtual {p0}, Ljava/lang/Class;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_5

    invoke-virtual {p0}, Ljava/lang/Class;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object p0

    array-length v1, p0

    :goto_3
    if-ge v2, v1, :cond_5

    aget-object v0, p0, v2

    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    :goto_4
    return-object v0
.end method

.method public static M0(Ljava/lang/String;)Ljava/util/Locale;
    .locals 4

    const-string v0, "_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    new-instance v0, Ljava/util/Locale;

    aget-object p0, p0, v1

    invoke-direct {v0, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_0
    array-length v0, p0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    new-instance v0, Ljava/util/Locale;

    aget-object v1, p0, v1

    aget-object p0, p0, v2

    invoke-direct {v0, v1, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/util/Locale;

    aget-object v1, p0, v1

    aget-object v2, p0, v2

    aget-object p0, p0, v3

    invoke-direct {v0, v1, v2, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static N(Ljava/lang/reflect/Field;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/Class<",
            "TA;>;)TA;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lc/a;->j(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/Class;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    check-cast v1, Ljava/lang/Class;

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p0

    :goto_1
    if-eqz v1, :cond_1

    const-class v2, Ljava/lang/Object;

    if-eq v1, v2, :cond_1

    :try_start_0
    invoke-virtual {v1, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_1

    :cond_1
    :goto_2
    if-nez v3, :cond_2

    return-object v0

    :cond_2
    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    if-eqz p0, :cond_3

    return-object p0

    :cond_3
    return-object v0
.end method

.method public static N0(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 3

    sget-boolean v0, Ll/l;->i:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :try_start_0
    const-string v1, "java.util.Optional"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Ll/l;->j:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sput-boolean v0, Ll/l;->i:Z

    throw p0

    :catch_0
    :goto_0
    sput-boolean v0, Ll/l;->i:Z

    :cond_0
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v1

    sget-object v2, Ll/l;->j:Ljava/lang/Class;

    if-ne v1, v2, :cond_1

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    :cond_1
    return-object p0
.end method

.method public static O(Ljava/lang/reflect/Method;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Class<",
            "TA;>;)TA;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lc/a;->j(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/Class;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    check-cast v1, Ljava/lang/Class;

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p0

    :goto_1
    if-eqz v1, :cond_1

    const-class v4, Ljava/lang/Object;

    if-eq v1, v4, :cond_1

    :try_start_0
    invoke-virtual {v1, v2, p0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_1

    :cond_1
    :goto_2
    if-nez v3, :cond_2

    return-object v0

    :cond_2
    invoke-virtual {v3, p1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    if-eqz p0, :cond_3

    return-object p0

    :cond_3
    return-object v0
.end method

.method public static P(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    check-cast p0, Ljava/lang/Class;

    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Ll/l;->P(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v0, p0, Ljava/lang/reflect/TypeVariable;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    check-cast p0, Ljava/lang/reflect/TypeVariable;

    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object p0

    aget-object p0, p0, v1

    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_2

    check-cast p0, Ljava/lang/Class;

    return-object p0

    :cond_2
    invoke-static {p0}, Ll/l;->P(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p0

    return-object p0

    :cond_3
    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_4

    check-cast p0, Ljava/lang/reflect/WildcardType;

    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object p0

    array-length v0, p0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    aget-object p0, p0, v1

    goto :goto_0

    :cond_4
    const-class p0, Ljava/lang/Object;

    return-object p0
.end method

.method public static Q(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    sget-object v0, Ll/l;->C:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;

    return-object p0
.end method

.method public static R(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_3

    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    instance-of v1, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v1, :cond_0

    move-object v1, p0

    check-cast v1, Ljava/lang/reflect/WildcardType;

    invoke-interface {v1}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    aget-object p0, v1, v0

    :cond_0
    instance-of v0, p0, Ljava/lang/Class;

    const-string v1, "can not create ASMParser"

    if-eqz v0, :cond_2

    check-cast p0, Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    :cond_1
    new-instance p0, Lc/d;

    invoke-direct {p0, v1}, Lc/d;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lc/d;

    invoke-direct {p0, v1}, Lc/d;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    const-class p0, Ljava/lang/Object;

    return-object p0
.end method

.method private static S(Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-class p0, Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ll/l;->V(Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-static {p0}, Ll/l;->U(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static T(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;
    .locals 3

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p0

    const-class v1, Ljava/util/Collection;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-static {p0}, Ll/l;->j0(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p0

    return-object p0

    :cond_0
    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v1

    invoke-static {v1, p0}, Ll/l;->F([Ljava/lang/reflect/TypeVariable;[Ljava/lang/reflect/Type;)Ljava/util/Map;

    move-result-object p0

    invoke-static {v0}, Ll/l;->V(Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_2

    invoke-static {v0}, Ll/l;->h0(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    array-length v2, v0

    if-lez v2, :cond_1

    invoke-static {v1, v0, p0}, Ll/l;->E0(Ljava/lang/Class;[Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/ParameterizedType;

    move-result-object p0

    invoke-static {p0}, Ll/l;->T(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-static {v1}, Ll/l;->S(Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_2
    check-cast v0, Ljava/lang/Class;

    invoke-static {v0}, Ll/l;->S(Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object p0

    return-object p0
.end method

.method public static U(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 1

    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    invoke-static {p0}, Ll/l;->T(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/lang/Class;

    invoke-static {p0}, Ll/l;->S(Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object p0

    return-object p0

    :cond_1
    const-class p0, Ljava/lang/Object;

    return-object p0
.end method

.method private static V(Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    invoke-static {v4}, Ll/l;->h0(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v5

    const-class v6, Ljava/util/Collection;

    if-ne v5, v6, :cond_0

    return-object v4

    :cond_0
    invoke-virtual {v6, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v2, v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-nez v2, :cond_3

    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v2

    :cond_3
    return-object v2
.end method

.method public static W(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/reflect/Field;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p2, v2

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    return-object v3

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-le v5, v6, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x61

    if-lt v5, v6, :cond_1

    const/16 v6, 0x7a

    if-gt v5, v6, :cond_1

    const/4 v5, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x41

    if-lt v5, v6, :cond_1

    const/16 v6, 0x5a

    if-gt v5, v6, :cond_1

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    if-eqz p0, :cond_3

    const-class p2, Ljava/lang/Object;

    if-eq p0, p2, :cond_3

    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object p2

    invoke-static {p0, p1, p2}, Ll/l;->W(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method private static X(Ljava/lang/Class;ZLjava/util/Map;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ll/c;",
            ">;)",
            "Ljava/util/List<",
            "Ll/c;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-class v1, Ld/d;

    invoke-static {p0, v1}, Ll/l;->M(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Ld/d;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ld/d;->orders()[Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_4

    array-length v1, p0

    if-lez v1, :cond_4

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {p1, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ll/c;

    iget-object v2, v1, Ll/c;->a:Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    array-length p2, p0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, p2, :cond_3

    aget-object v2, p0, v1

    invoke-virtual {p1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ll/c;

    if-eqz v3, :cond_2

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v2}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ll/c;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ll/c;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_5
    if-eqz p1, :cond_6

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    :cond_6
    return-object v0
.end method

.method public static Y(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 1

    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-static {p0}, Ll/l;->Y(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static Z(Ljava/lang/Class;)[Ljava/lang/String;
    .locals 8

    sget-object v0, Ll/l;->v:Ljava/lang/reflect/Constructor;

    const-string v1, "kotlin.reflect.jvm.internal.KClassImpl"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    sget-boolean v0, Ll/l;->u:Z

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-array v4, v2, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Class;

    aput-object v5, v4, v3

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Ll/l;->v:Ljava/lang/reflect/Constructor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    sput-boolean v2, Ll/l;->u:Z

    :cond_0
    :goto_0
    sget-object v0, Ll/l;->v:Ljava/lang/reflect/Constructor;

    const/4 v4, 0x0

    if-nez v0, :cond_1

    return-object v4

    :cond_1
    sget-object v0, Ll/l;->w:Ljava/lang/reflect/Method;

    if-nez v0, :cond_2

    sget-boolean v0, Ll/l;->u:Z

    if-nez v0, :cond_2

    :try_start_1
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getConstructors"

    new-array v5, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Ll/l;->w:Ljava/lang/reflect/Method;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    sput-boolean v2, Ll/l;->u:Z

    :cond_2
    :goto_1
    sget-object v0, Ll/l;->x:Ljava/lang/reflect/Method;

    if-nez v0, :cond_3

    sget-boolean v0, Ll/l;->u:Z

    if-nez v0, :cond_3

    :try_start_2
    const-class v0, Lv2/b;

    const-string v1, "getParameters"

    new-array v5, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Ll/l;->x:Ljava/lang/reflect/Method;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    sput-boolean v2, Ll/l;->u:Z

    :cond_3
    :goto_2
    sget-object v0, Ll/l;->y:Ljava/lang/reflect/Method;

    if-nez v0, :cond_4

    sget-boolean v0, Ll/l;->u:Z

    if-nez v0, :cond_4

    :try_start_3
    const-class v0, Lv2/c;

    const-string v1, "getName"

    new-array v5, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Ll/l;->y:Ljava/lang/reflect/Method;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_3

    :catchall_3
    sput-boolean v2, Ll/l;->u:Z

    :cond_4
    :goto_3
    sget-boolean v0, Ll/l;->z:Z

    if-eqz v0, :cond_5

    return-object v4

    :cond_5
    :try_start_4
    sget-object v0, Ll/l;->v:Ljava/lang/reflect/Constructor;

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p0, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Ll/l;->w:Ljava/lang/reflect/Method;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move-object v0, v4

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    sget-object v5, Ll/l;->x:Ljava/lang/reflect/Method;

    new-array v6, v3, [Ljava/lang/Object;

    invoke-virtual {v5, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-eqz v0, :cond_6

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_6

    goto :goto_5

    :cond_6
    move-object v0, v1

    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    goto :goto_4

    :cond_7
    if-nez v0, :cond_8

    return-object v4

    :cond_8
    sget-object p0, Ll/l;->x:Ljava/lang/reflect/Method;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_6
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_9

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Ll/l;->y:Ljava/lang/reflect/Method;

    new-array v7, v3, [Ljava/lang/Object;

    invoke-virtual {v6, v5, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v0, v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_9
    return-object v0

    :catchall_4
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    sput-boolean v2, Ll/l;->z:Z

    return-object v4
.end method

.method private static a()V
    .locals 10

    sget-object v0, Ll/l;->C:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "byte"

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ll/l;->C:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "short"

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ll/l;->C:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "int"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ll/l;->C:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "long"

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ll/l;->C:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "float"

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ll/l;->C:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "double"

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ll/l;->C:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "boolean"

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ll/l;->C:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "char"

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ll/l;->C:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "[byte"

    const-class v2, [B

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ll/l;->C:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "[short"

    const-class v3, [S

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ll/l;->C:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "[int"

    const-class v4, [I

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ll/l;->C:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "[long"

    const-class v5, [J

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ll/l;->C:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "[float"

    const-class v6, [F

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ll/l;->C:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "[double"

    const-class v7, [D

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ll/l;->C:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "[boolean"

    const-class v8, [Z

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ll/l;->C:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "[char"

    const-class v9, [C

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ll/l;->C:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "[B"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ll/l;->C:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "[S"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ll/l;->C:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "[I"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ll/l;->C:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "[J"

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ll/l;->C:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "[F"

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ll/l;->C:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "[D"

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ll/l;->C:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "[C"

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ll/l;->C:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "[Z"

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x47

    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-class v4, Ljava/lang/Cloneable;

    aput-object v4, v1, v2

    const-string v2, "java.lang.AutoCloseable"

    invoke-static {v2}, Ll/l;->z0(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v1, v4

    const/4 v2, 0x3

    const-class v4, Ljava/lang/Exception;

    aput-object v4, v1, v2

    const/4 v2, 0x4

    const-class v4, Ljava/lang/RuntimeException;

    aput-object v4, v1, v2

    const/4 v2, 0x5

    const-class v4, Ljava/lang/IllegalAccessError;

    aput-object v4, v1, v2

    const/4 v2, 0x6

    const-class v4, Ljava/lang/IllegalAccessException;

    aput-object v4, v1, v2

    const/4 v2, 0x7

    const-class v4, Ljava/lang/IllegalArgumentException;

    aput-object v4, v1, v2

    const/16 v2, 0x8

    const-class v4, Ljava/lang/IllegalMonitorStateException;

    aput-object v4, v1, v2

    const/16 v2, 0x9

    const-class v4, Ljava/lang/IllegalStateException;

    aput-object v4, v1, v2

    const/16 v2, 0xa

    const-class v4, Ljava/lang/IllegalThreadStateException;

    aput-object v4, v1, v2

    const/16 v2, 0xb

    const-class v4, Ljava/lang/IndexOutOfBoundsException;

    aput-object v4, v1, v2

    const/16 v2, 0xc

    const-class v4, Ljava/lang/InstantiationError;

    aput-object v4, v1, v2

    const/16 v2, 0xd

    const-class v4, Ljava/lang/InstantiationException;

    aput-object v4, v1, v2

    const/16 v2, 0xe

    const-class v4, Ljava/lang/InternalError;

    aput-object v4, v1, v2

    const/16 v2, 0xf

    const-class v4, Ljava/lang/InterruptedException;

    aput-object v4, v1, v2

    const/16 v2, 0x10

    const-class v4, Ljava/lang/LinkageError;

    aput-object v4, v1, v2

    const/16 v2, 0x11

    const-class v4, Ljava/lang/NegativeArraySizeException;

    aput-object v4, v1, v2

    const/16 v2, 0x12

    const-class v4, Ljava/lang/NoClassDefFoundError;

    aput-object v4, v1, v2

    const/16 v2, 0x13

    const-class v4, Ljava/lang/NoSuchFieldError;

    aput-object v4, v1, v2

    const/16 v2, 0x14

    const-class v4, Ljava/lang/NoSuchFieldException;

    aput-object v4, v1, v2

    const/16 v2, 0x15

    const-class v4, Ljava/lang/NoSuchMethodError;

    aput-object v4, v1, v2

    const/16 v2, 0x16

    const-class v4, Ljava/lang/NoSuchMethodException;

    aput-object v4, v1, v2

    const/16 v2, 0x17

    const-class v4, Ljava/lang/NullPointerException;

    aput-object v4, v1, v2

    const/16 v2, 0x18

    const-class v4, Ljava/lang/NumberFormatException;

    aput-object v4, v1, v2

    const/16 v2, 0x19

    const-class v4, Ljava/lang/OutOfMemoryError;

    aput-object v4, v1, v2

    const/16 v2, 0x1a

    const-class v4, Ljava/lang/SecurityException;

    aput-object v4, v1, v2

    const/16 v2, 0x1b

    const-class v4, Ljava/lang/StackOverflowError;

    aput-object v4, v1, v2

    const/16 v2, 0x1c

    const-class v4, Ljava/lang/StringIndexOutOfBoundsException;

    aput-object v4, v1, v2

    const/16 v2, 0x1d

    const-class v4, Ljava/lang/TypeNotPresentException;

    aput-object v4, v1, v2

    const/16 v2, 0x1e

    const-class v4, Ljava/lang/VerifyError;

    aput-object v4, v1, v2

    const/16 v2, 0x1f

    const-class v4, Ljava/lang/StackTraceElement;

    aput-object v4, v1, v2

    const/16 v2, 0x20

    const-class v4, Ljava/util/HashMap;

    aput-object v4, v1, v2

    const/16 v2, 0x21

    const-class v4, Ljava/util/Hashtable;

    aput-object v4, v1, v2

    const/16 v2, 0x22

    const-class v4, Ljava/util/TreeMap;

    aput-object v4, v1, v2

    const/16 v2, 0x23

    const-class v4, Ljava/util/IdentityHashMap;

    aput-object v4, v1, v2

    const/16 v2, 0x24

    const-class v4, Ljava/util/WeakHashMap;

    aput-object v4, v1, v2

    const/16 v2, 0x25

    const-class v4, Ljava/util/LinkedHashMap;

    aput-object v4, v1, v2

    const/16 v2, 0x26

    const-class v4, Ljava/util/HashSet;

    aput-object v4, v1, v2

    const/16 v2, 0x27

    const-class v4, Ljava/util/LinkedHashSet;

    aput-object v4, v1, v2

    const/16 v2, 0x28

    const-class v4, Ljava/util/TreeSet;

    aput-object v4, v1, v2

    const/16 v2, 0x29

    const-class v4, Ljava/util/ArrayList;

    aput-object v4, v1, v2

    const/16 v2, 0x2a

    const-class v4, Ljava/util/concurrent/TimeUnit;

    aput-object v4, v1, v2

    const/16 v2, 0x2b

    const-class v4, Ljava/util/concurrent/ConcurrentHashMap;

    aput-object v4, v1, v2

    const/16 v2, 0x2c

    const-class v4, Ljava/util/concurrent/atomic/AtomicInteger;

    aput-object v4, v1, v2

    const/16 v2, 0x2d

    const-class v4, Ljava/util/concurrent/atomic/AtomicLong;

    aput-object v4, v1, v2

    sget-object v2, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/16 v4, 0x2e

    aput-object v2, v1, v4

    const/16 v2, 0x2f

    const-class v4, Ljava/lang/Boolean;

    aput-object v4, v1, v2

    const/16 v2, 0x30

    const-class v4, Ljava/lang/Character;

    aput-object v4, v1, v2

    const/16 v2, 0x31

    const-class v4, Ljava/lang/Byte;

    aput-object v4, v1, v2

    const/16 v2, 0x32

    const-class v4, Ljava/lang/Short;

    aput-object v4, v1, v2

    const/16 v2, 0x33

    const-class v4, Ljava/lang/Integer;

    aput-object v4, v1, v2

    const/16 v2, 0x34

    const-class v4, Ljava/lang/Long;

    aput-object v4, v1, v2

    const/16 v2, 0x35

    const-class v4, Ljava/lang/Float;

    aput-object v4, v1, v2

    const/16 v2, 0x36

    const-class v4, Ljava/lang/Double;

    aput-object v4, v1, v2

    const/16 v2, 0x37

    const-class v4, Ljava/lang/Number;

    aput-object v4, v1, v2

    const/16 v2, 0x38

    const-class v4, Ljava/lang/String;

    aput-object v4, v1, v2

    const/16 v2, 0x39

    const-class v4, Ljava/math/BigDecimal;

    aput-object v4, v1, v2

    const/16 v2, 0x3a

    const-class v4, Ljava/math/BigInteger;

    aput-object v4, v1, v2

    const/16 v2, 0x3b

    const-class v4, Ljava/util/BitSet;

    aput-object v4, v1, v2

    const/16 v2, 0x3c

    const-class v4, Ljava/util/Calendar;

    aput-object v4, v1, v2

    const/16 v2, 0x3d

    const-class v4, Ljava/util/Date;

    aput-object v4, v1, v2

    const/16 v2, 0x3e

    const-class v4, Ljava/util/Locale;

    aput-object v4, v1, v2

    const/16 v2, 0x3f

    const-class v4, Ljava/util/UUID;

    aput-object v4, v1, v2

    const/16 v2, 0x40

    const-class v4, Ljava/sql/Time;

    aput-object v4, v1, v2

    const/16 v2, 0x41

    const-class v4, Ljava/sql/Date;

    aput-object v4, v1, v2

    const/16 v2, 0x42

    const-class v4, Ljava/sql/Timestamp;

    aput-object v4, v1, v2

    const/16 v2, 0x43

    const-class v4, Ljava/text/SimpleDateFormat;

    aput-object v4, v1, v2

    const/16 v2, 0x44

    const-class v4, Lc/e;

    aput-object v4, v1, v2

    const/16 v2, 0x45

    const-class v4, Lc/f;

    aput-object v4, v1, v2

    const/16 v2, 0x46

    const-class v4, Lc/b;

    aput-object v4, v1, v2

    :goto_0
    if-ge v3, v0, :cond_1

    aget-object v2, v1, v3

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    sget-object v4, Ll/l;->C:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static a0([Ljava/lang/reflect/Constructor;)Ljava/lang/reflect/Constructor;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ll/l;->b0([Ljava/lang/reflect/Constructor;[Ljava/lang/String;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    sget-object v0, Ll/l;->C:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static b0([Ljava/lang/reflect/Constructor;[Ljava/lang/String;)Ljava/lang/reflect/Constructor;
    .locals 7

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    if-eqz p1, :cond_0

    array-length v5, v4

    array-length v6, p1

    if-eq v5, v6, :cond_0

    goto :goto_1

    :cond_0
    array-length v5, v4

    if-lez v5, :cond_1

    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v4, v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "t2.d"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    array-length v5, v5

    array-length v4, v4

    if-lt v5, v4, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, v3

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public static c(Ljava/lang/Class;Ljava/util/Map;Lc/l;)Lh/b1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lc/l;",
            ")",
            "Lh/b1;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Ll/l;->d(Ljava/lang/Class;Ljava/util/Map;Lc/l;Z)Lh/b1;

    move-result-object p0

    return-object p0
.end method

.method public static c0(Ljava/lang/reflect/Constructor;)[[Ljava/lang/annotation/Annotation;
    .locals 10

    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lc/a;->j(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/Class;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    check-cast v1, Ljava/lang/Class;

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    if-eqz v1, :cond_6

    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p0

    new-instance v2, Ljava/util/ArrayList;

    const/4 v4, 0x2

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v4

    :goto_1
    if-eqz v4, :cond_1

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v4

    goto :goto_1

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    move-object v5, v1

    :goto_2
    if-eqz v5, :cond_4

    const-class v6, Ljava/lang/Object;

    if-eq v5, v6, :cond_4

    if-eqz v4, :cond_3

    :try_start_0
    array-length v6, p0

    add-int/2addr v6, v4

    new-array v6, v6, [Ljava/lang/Class;

    array-length v7, p0

    const/4 v8, 0x0

    invoke-static {p0, v8, v6, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v7, v4

    :goto_3
    if-lez v7, :cond_2

    add-int/lit8 v8, v7, -0x1

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Class;

    aput-object v9, v6, v8

    add-int/lit8 v7, v7, -0x1

    goto :goto_3

    :cond_2
    invoke-virtual {v1, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    goto :goto_4

    :cond_3
    invoke-virtual {v1, p0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    move-object v3, p0

    goto :goto_5

    :catch_0
    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v5}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v5

    goto :goto_2

    :cond_4
    :goto_5
    if-nez v3, :cond_5

    return-object v0

    :cond_5
    invoke-virtual {v3}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object p0

    if-eqz p0, :cond_6

    return-object p0

    :cond_6
    return-object v0
.end method

.method public static d(Ljava/lang/Class;Ljava/util/Map;Lc/l;Z)Lh/b1;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lc/l;",
            "Z)",
            "Lh/b1;"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    const-class v0, Ld/d;

    invoke-static {v6, v0}, Ll/l;->M(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Ld/d;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v8, :cond_8

    invoke-interface {v8}, Ld/d;->orders()[Ljava/lang/String;

    move-result-object v3

    invoke-interface {v8}, Ld/d;->typeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_0

    move-object v4, v2

    :cond_0
    invoke-interface {v8}, Ld/d;->naming()Lc/l;

    move-result-object v5

    sget-object v9, Lc/l;->a:Lc/l;

    if-eq v5, v9, :cond_1

    goto :goto_0

    :cond_1
    move-object/from16 v5, p2

    :goto_0
    invoke-interface {v8}, Ld/d;->serialzeFeatures()[Lh/g1;

    move-result-object v9

    invoke-static {v9}, Lh/g1;->d([Lh/g1;)I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v10

    move-object v11, v2

    :goto_1
    if-eqz v10, :cond_4

    const-class v12, Ljava/lang/Object;

    if-eq v10, v12, :cond_4

    invoke-static {v10, v0}, Ll/l;->M(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v12

    check-cast v12, Ld/d;

    if-nez v12, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {v12}, Ld/d;->typeKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v10}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v10

    goto :goto_1

    :cond_4
    :goto_2
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v10

    array-length v12, v10

    const/4 v13, 0x0

    :goto_3
    if-ge v13, v12, :cond_6

    aget-object v14, v10, v13

    invoke-static {v14, v0}, Ll/l;->M(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v14

    check-cast v14, Ld/d;

    if-eqz v14, :cond_5

    invoke-interface {v14}, Ld/d;->typeKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v14

    if-eqz v14, :cond_5

    goto :goto_4

    :cond_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_6
    :goto_4
    if-eqz v11, :cond_7

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_7

    goto :goto_5

    :cond_7
    move-object v2, v11

    :goto_5
    move-object v11, v2

    move-object v10, v4

    move-object v12, v5

    move v13, v9

    move-object v9, v3

    goto :goto_6

    :cond_8
    move-object/from16 v12, p2

    move-object v9, v2

    move-object v10, v9

    move-object v11, v10

    const/4 v13, 0x0

    :goto_6
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    invoke-static {v6, v14}, Lf/i;->v(Ljava/lang/Class;Ljava/util/Map;)V

    if-eqz p3, :cond_9

    invoke-static {v6, v7, v1, v12}, Ll/l;->E(Ljava/lang/Class;Ljava/util/Map;ZLc/l;)Ljava/util/List;

    move-result-object v0

    goto :goto_7

    :cond_9
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object v1, v8

    move-object/from16 v2, p1

    move-object v3, v14

    move-object v5, v12

    invoke-static/range {v0 .. v5}, Ll/l;->D(Ljava/lang/Class;Ld/d;Ljava/util/Map;Ljava/util/Map;ZLc/l;)Ljava/util/List;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v15, v1, [Ll/c;

    invoke-interface {v0, v15}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    if-eqz v9, :cond_b

    array-length v1, v9

    if-eqz v1, :cond_b

    if-eqz p3, :cond_a

    const/4 v0, 0x1

    invoke-static {v6, v7, v0, v12}, Ll/l;->E(Ljava/lang/Class;Ljava/util/Map;ZLc/l;)Ljava/util/List;

    move-result-object v0

    goto :goto_8

    :cond_a
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object v1, v8

    move-object/from16 v2, p1

    move-object v3, v14

    move-object v5, v12

    invoke-static/range {v0 .. v5}, Ll/l;->D(Ljava/lang/Class;Ld/d;Ljava/util/Map;Ljava/util/Map;ZLc/l;)Ljava/util/List;

    move-result-object v0

    goto :goto_8

    :cond_b
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    move-object v0, v1

    :goto_8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ll/c;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-static {v1, v15}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    move-object v7, v15

    goto :goto_9

    :cond_c
    move-object v7, v1

    :goto_9
    new-instance v9, Lh/b1;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v2, v8

    move-object v3, v10

    move-object v4, v11

    move v5, v13

    move-object v6, v15

    invoke-direct/range {v0 .. v7}, Lh/b1;-><init>(Ljava/lang/Class;Ld/d;Ljava/lang/String;Ljava/lang/String;I[Ll/c;[Ll/c;)V

    return-object v9
.end method

.method public static d0(Ljava/lang/reflect/Method;)[[Ljava/lang/annotation/Annotation;
    .locals 5

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lc/a;->j(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/Class;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    check-cast v1, Ljava/lang/Class;

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p0

    :goto_1
    if-eqz v1, :cond_1

    const-class v4, Ljava/lang/Object;

    if-eq v1, v4, :cond_1

    :try_start_0
    invoke-virtual {v1, v2, p0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_1

    :cond_1
    :goto_2
    if-nez v3, :cond_2

    return-object v0

    :cond_2
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object p0

    if-eqz p0, :cond_3

    return-object p0

    :cond_3
    return-object v0
.end method

.method public static e(Ljava/math/BigDecimal;)B
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Ljava/math/BigDecimal;->scale()I

    move-result v0

    const/16 v1, -0x64

    if-lt v0, v1, :cond_1

    const/16 v1, 0x64

    if-gt v0, v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Number;->byteValue()B

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p0}, Ljava/math/BigDecimal;->byteValueExact()B

    move-result p0

    return p0
.end method

.method public static e0(Ljava/lang/Class;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    const-class v0, Ld/d;

    invoke-static {p0, v0}, Ll/l;->M(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Ld/d;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0}, Ld/d;->parseFeatures()[Lf/b;

    move-result-object p0

    invoke-static {p0}, Lf/b;->b([Lf/b;)I

    move-result p0

    return p0
.end method

.method public static f(Ljava/lang/Object;Ljava/lang/Class;Lf/i;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lf/i;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p0, :cond_7

    sget-object p0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, p0, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, p0, :cond_1

    const-wide/16 p0, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object p0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, p0, :cond_2

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    :cond_2
    sget-object p0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, p0, :cond_3

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    :cond_3
    sget-object p0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, p0, :cond_4

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :cond_4
    sget-object p0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, p0, :cond_5

    const-wide/16 p0, 0x0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_5
    sget-object p0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, p0, :cond_6

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_6
    return-object v0

    :cond_7
    if-eqz p1, :cond_31

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne p1, v2, :cond_8

    return-object p0

    :cond_8
    instance-of v2, p0, Ljava/util/Map;

    if-eqz v2, :cond_b

    const-class v0, Ljava/util/Map;

    if-ne p1, v0, :cond_9

    return-object p0

    :cond_9
    move-object v0, p0

    check-cast v0, Ljava/util/Map;

    const-class v1, Ljava/lang/Object;

    if-ne p1, v1, :cond_a

    sget-object v1, Lc/a;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return-object p0

    :cond_a
    invoke-static {v0, p1, p2}, Ll/l;->u(Ljava/util/Map;Ljava/lang/Class;Lf/i;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_b
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_e

    instance-of v2, p0, Ljava/util/Collection;

    if-eqz v2, :cond_d

    check-cast p0, Ljava/util/Collection;

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v2, v3, p2}, Ll/l;->f(Ljava/lang/Object;Ljava/lang/Class;Lf/i;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_c
    return-object v0

    :cond_d
    const-class v1, [B

    if-ne p1, v1, :cond_e

    invoke-static {p0}, Ll/l;->m(Ljava/lang/Object;)[B

    move-result-object p0

    return-object p0

    :cond_e
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_f

    return-object p0

    :cond_f
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_30

    const-class v1, Ljava/lang/Boolean;

    if-ne p1, v1, :cond_10

    goto/16 :goto_a

    :cond_10
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_2f

    const-class v1, Ljava/lang/Byte;

    if-ne p1, v1, :cond_11

    goto/16 :goto_9

    :cond_11
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_2e

    const-class v1, Ljava/lang/Character;

    if-ne p1, v1, :cond_12

    goto/16 :goto_8

    :cond_12
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_2d

    const-class v1, Ljava/lang/Short;

    if-ne p1, v1, :cond_13

    goto/16 :goto_7

    :cond_13
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_2c

    const-class v1, Ljava/lang/Integer;

    if-ne p1, v1, :cond_14

    goto/16 :goto_6

    :cond_14
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_2b

    const-class v1, Ljava/lang/Long;

    if-ne p1, v1, :cond_15

    goto/16 :goto_5

    :cond_15
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_2a

    const-class v1, Ljava/lang/Float;

    if-ne p1, v1, :cond_16

    goto/16 :goto_4

    :cond_16
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p1, v1, :cond_29

    const-class v1, Ljava/lang/Double;

    if-ne p1, v1, :cond_17

    goto/16 :goto_3

    :cond_17
    const-class v1, Ljava/lang/String;

    if-ne p1, v1, :cond_18

    invoke-static {p0}, Ll/l;->A(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_18
    const-class v1, Ljava/math/BigDecimal;

    if-ne p1, v1, :cond_19

    invoke-static {p0}, Ll/l;->i(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0

    :cond_19
    const-class v1, Ljava/math/BigInteger;

    if-ne p1, v1, :cond_1a

    invoke-static {p0}, Ll/l;->j(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_1a
    const-class v1, Ljava/util/Date;

    if-ne p1, v1, :cond_1b

    invoke-static {p0}, Ll/l;->o(Ljava/lang/Object;)Ljava/util/Date;

    move-result-object p0

    return-object p0

    :cond_1b
    const-class v1, Ljava/sql/Date;

    if-ne p1, v1, :cond_1c

    invoke-static {p0}, Ll/l;->y(Ljava/lang/Object;)Ljava/sql/Date;

    move-result-object p0

    return-object p0

    :cond_1c
    const-class v1, Ljava/sql/Time;

    if-ne p1, v1, :cond_1d

    invoke-static {p0}, Ll/l;->z(Ljava/lang/Object;)Ljava/sql/Time;

    move-result-object p0

    return-object p0

    :cond_1d
    const-class v1, Ljava/sql/Timestamp;

    if-ne p1, v1, :cond_1e

    invoke-static {p0}, Ll/l;->B(Ljava/lang/Object;)Ljava/sql/Timestamp;

    move-result-object p0

    return-object p0

    :cond_1e
    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-static {p0, p1, p2}, Ll/l;->r(Ljava/lang/Object;Ljava/lang/Class;Lf/i;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1f
    const-class v1, Ljava/util/Calendar;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    const-string v3, "can not cast to : "

    if-eqz v2, :cond_21

    invoke-static {p0}, Ll/l;->o(Ljava/lang/Object;)Ljava/util/Date;

    move-result-object p0

    if-ne p1, v1, :cond_20

    sget-object p1, Lc/a;->a:Ljava/util/TimeZone;

    sget-object p2, Lc/a;->b:Ljava/util/Locale;

    invoke-static {p1, p2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    goto :goto_1

    :cond_20
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Calendar;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, p2

    :goto_1
    invoke-virtual {p1, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    return-object p1

    :catch_0
    move-exception p0

    new-instance p2, Lc/d;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Lc/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_21
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "javax.xml.datatype.XMLGregorianCalendar"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-static {p0}, Ll/l;->o(Ljava/lang/Object;)Ljava/util/Date;

    move-result-object p0

    sget-object p1, Lc/a;->a:Ljava/util/TimeZone;

    sget-object p2, Lc/a;->b:Ljava/util/Locale;

    invoke-static {p1, p2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    sget-object p0, Lh/r;->b:Lh/r;

    invoke-virtual {p0, p1}, Lh/r;->g(Ljava/util/Calendar;)Ljavax/xml/datatype/XMLGregorianCalendar;

    move-result-object p0

    return-object p0

    :cond_22
    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_27

    move-object v2, p0

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_26

    const-string v4, "null"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_26

    const-string v4, "NULL"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    goto :goto_2

    :cond_23
    const-class v0, Ljava/util/Currency;

    if-ne p1, v0, :cond_24

    invoke-static {v2}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object p0

    return-object p0

    :cond_24
    const-class v0, Ljava/util/Locale;

    if-ne p1, v0, :cond_25

    invoke-static {v2}, Ll/l;->M0(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p0

    return-object p0

    :cond_25
    const-string v0, "java.time."

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-static {v2}, Lc/a;->t(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lc/a;->o(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_26
    :goto_2
    return-object v0

    :cond_27
    invoke-virtual {p2, p1}, Lf/i;->k(Ljava/lang/reflect/Type;)Lg/j1;

    move-result-object p2

    if-eqz p2, :cond_28

    invoke-static {p0}, Lc/a;->t(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lc/a;->o(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_28
    new-instance p0, Lc/d;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lc/d;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_29
    :goto_3
    invoke-static {p0}, Ll/l;->q(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_2a
    :goto_4
    invoke-static {p0}, Ll/l;->s(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :cond_2b
    :goto_5
    invoke-static {p0}, Ll/l;->w(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_2c
    :goto_6
    invoke-static {p0}, Ll/l;->t(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_2d
    :goto_7
    invoke-static {p0}, Ll/l;->x(Ljava/lang/Object;)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    :cond_2e
    :goto_8
    invoke-static {p0}, Ll/l;->n(Ljava/lang/Object;)Ljava/lang/Character;

    move-result-object p0

    return-object p0

    :cond_2f
    :goto_9
    invoke-static {p0}, Ll/l;->l(Ljava/lang/Object;)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    :cond_30
    :goto_a
    invoke-static {p0}, Ll/l;->k(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_31
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "clazz is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static f0(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/lang/String;"
        }
    .end annotation

    sget-boolean v0, Ll/l;->c:Z

    if-eqz v0, :cond_0

    invoke-interface {p0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move-object p2, p1

    :cond_0
    return-object p2
.end method

.method public static g(Ljava/lang/Object;Ljava/lang/reflect/ParameterizedType;Lf/i;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/ParameterizedType;",
            "Lf/i;",
            ")TT;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    const-class v1, Lc/e;

    const-class v2, Ljava/util/ArrayList;

    const/4 v3, 0x0

    const-class v4, Ljava/util/List;

    if-eq v0, v4, :cond_0

    if-ne v0, v2, :cond_4

    :cond_0
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v5

    aget-object v5, v5, v3

    instance-of v6, p0, Ljava/util/List;

    if-eqz v6, :cond_4

    check-cast p0, Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v4, v5, Ljava/lang/Class;

    if-eqz v4, :cond_2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v4, v1, :cond_1

    check-cast v2, Lc/e;

    move-object v4, v5

    check-cast v4, Ljava/lang/Class;

    invoke-virtual {v2, v4, p2, v3}, Lc/e;->C(Ljava/lang/Class;Lf/i;I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v4, v5

    check-cast v4, Ljava/lang/Class;

    invoke-static {v2, v4, p2}, Ll/l;->f(Ljava/lang/Object;Ljava/lang/Class;Lf/i;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    :cond_2
    invoke-static {v2, v5, p2}, Ll/l;->h(Ljava/lang/Object;Ljava/lang/reflect/Type;Lf/i;)Ljava/lang/Object;

    move-result-object v2

    :goto_1
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-object p1

    :cond_4
    const-class v5, Ljava/util/TreeSet;

    const-class v6, Ljava/util/HashSet;

    const-class v7, Ljava/util/Set;

    if-eq v0, v7, :cond_5

    if-eq v0, v6, :cond_5

    if-eq v0, v5, :cond_5

    const-class v8, Ljava/util/Collection;

    if-eq v0, v8, :cond_5

    if-eq v0, v4, :cond_5

    if-ne v0, v2, :cond_c

    :cond_5
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v2

    aget-object v2, v2, v3

    instance-of v4, p0, Ljava/lang/Iterable;

    if-eqz v4, :cond_c

    if-eq v0, v7, :cond_8

    if-ne v0, v6, :cond_6

    goto :goto_2

    :cond_6
    if-ne v0, v5, :cond_7

    new-instance p1, Ljava/util/TreeSet;

    invoke-direct {p1}, Ljava/util/TreeSet;-><init>()V

    goto :goto_3

    :cond_7
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_3

    :cond_8
    :goto_2
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    :goto_3
    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v4, v2, Ljava/lang/Class;

    if-eqz v4, :cond_a

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v4, v1, :cond_9

    check-cast v0, Lc/e;

    move-object v4, v2

    check-cast v4, Ljava/lang/Class;

    invoke-virtual {v0, v4, p2, v3}, Lc/e;->C(Ljava/lang/Class;Lf/i;I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_5

    :cond_9
    move-object v4, v2

    check-cast v4, Ljava/lang/Class;

    invoke-static {v0, v4, p2}, Ll/l;->f(Ljava/lang/Object;Ljava/lang/Class;Lf/i;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_5

    :cond_a
    invoke-static {v0, v2, p2}, Ll/l;->h(Ljava/lang/Object;Ljava/lang/reflect/Type;Lf/i;)Ljava/lang/Object;

    move-result-object v0

    :goto_5
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_b
    return-object p1

    :cond_c
    const-class v1, Ljava/util/Map;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_d

    const-class v1, Ljava/util/HashMap;

    if-ne v0, v1, :cond_f

    :cond_d
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    aget-object v1, v1, v3

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v4

    aget-object v4, v4, v2

    instance-of v5, p0, Ljava/util/Map;

    if-eqz v5, :cond_f

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v1, p2}, Ll/l;->h(Ljava/lang/Object;Ljava/lang/reflect/Type;Lf/i;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v4, p2}, Ll/l;->h(Ljava/lang/Object;Ljava/lang/reflect/Type;Lf/i;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_e
    return-object p1

    :cond_f
    instance-of v1, p0, Ljava/lang/String;

    const/4 v4, 0x0

    if-eqz v1, :cond_10

    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_10

    return-object v4

    :cond_10
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    array-length v5, v1

    if-ne v5, v2, :cond_11

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v5

    aget-object v3, v5, v3

    instance-of v3, v3, Ljava/lang/reflect/WildcardType;

    if-eqz v3, :cond_11

    invoke-static {p0, v0, p2}, Ll/l;->h(Ljava/lang/Object;Ljava/lang/reflect/Type;Lf/i;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_11
    const-class v3, Ljava/util/Map$Entry;

    if-ne v0, v3, :cond_13

    instance-of v3, p0, Ljava/util/Map;

    if-eqz v3, :cond_13

    move-object v3, p0

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v5

    if-ne v5, v2, :cond_13

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    array-length v0, v1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_12

    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_12

    aget-object v0, v1, v2

    invoke-static {p1, v0, p2}, Ll/l;->h(Ljava/lang/Object;Ljava/lang/reflect/Type;Lf/i;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12
    return-object p0

    :cond_13
    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_15

    if-nez p2, :cond_14

    sget-object p2, Lf/i;->y:Lf/i;

    :cond_14
    invoke-virtual {p2, v0}, Lf/i;->n(Ljava/lang/reflect/Type;)Lg/j1;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-static {p0}, Lc/a;->t(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Lf/a;

    invoke-direct {v1, p0, p2}, Lf/a;-><init>(Ljava/lang/String;Lf/i;)V

    invoke-interface {v0, v1, p1, v4}, Lg/j1;->d(Lf/a;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_15
    new-instance p0, Lc/d;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "can not cast to : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lc/d;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static g0(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static h(Ljava/lang/Object;Ljava/lang/reflect/Type;Lf/i;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Type;",
            "Lf/i;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    instance-of v1, p1, Ljava/lang/Class;

    if-eqz v1, :cond_1

    check-cast p1, Ljava/lang/Class;

    invoke-static {p0, p1, p2}, Ll/l;->f(Ljava/lang/Object;Ljava/lang/Class;Lf/i;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v1, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_2

    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-static {p0, p1, p2}, Ll/l;->g(Ljava/lang/Object;Ljava/lang/reflect/ParameterizedType;Lf/i;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    instance-of p2, p0, Ljava/lang/String;

    if-eqz p2, :cond_4

    move-object p2, p0

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "null"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "NULL"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    :cond_3
    return-object v0

    :cond_4
    instance-of p2, p1, Ljava/lang/reflect/TypeVariable;

    if-eqz p2, :cond_5

    return-object p0

    :cond_5
    new-instance p0, Lc/d;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "can not cast to : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lc/d;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static h0(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Class;

    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Ll/l;->h0(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    const-string v1, "TODO"

    if-eqz v0, :cond_3

    check-cast p0, Ljava/lang/reflect/WildcardType;

    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object p0

    array-length v0, p0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    const/4 v0, 0x0

    aget-object p0, p0, v0

    goto :goto_0

    :cond_2
    new-instance p0, Lc/d;

    invoke-direct {p0, v1}, Lc/d;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Lc/d;

    invoke-direct {p0, v1}, Lc/d;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static i(Ljava/lang/Object;)Ljava/math/BigDecimal;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    instance-of v1, p0, Ljava/math/BigDecimal;

    if-eqz v1, :cond_1

    check-cast p0, Ljava/math/BigDecimal;

    return-object p0

    :cond_1
    instance-of v1, p0, Ljava/math/BigInteger;

    if-eqz v1, :cond_2

    new-instance v0, Ljava/math/BigDecimal;

    check-cast p0, Ljava/math/BigInteger;

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    return-object v0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    return-object v0

    :cond_3
    instance-of v2, p0, Ljava/util/Map;

    if-eqz v2, :cond_4

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p0

    const v0, 0xffff

    if-gt p0, v0, :cond_5

    new-instance p0, Ljava/math/BigDecimal;

    invoke-direct {p0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_5
    new-instance p0, Lc/d;

    const-string v0, "decimal overflow"

    invoke-direct {p0, v0}, Lc/d;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static i0(Ljava/lang/Class;Ljava/lang/reflect/Method;)Ld/b;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Method;",
            ")",
            "Ld/b;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    array-length v1, v0

    const-class v2, Ld/b;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lez v1, :cond_7

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    array-length v5, v0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_7

    aget-object v7, v0, v6

    invoke-virtual {v7}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v7

    array-length v8, v7

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_6

    aget-object v10, v7, v9

    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v11

    array-length v12, v11

    array-length v13, v1

    if-eq v12, v13, :cond_0

    goto :goto_4

    :cond_0
    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    goto :goto_4

    :cond_1
    const/4 v12, 0x0

    :goto_2
    array-length v13, v1

    if-ge v12, v13, :cond_3

    aget-object v13, v11, v12

    aget-object v14, v1, v12

    invoke-virtual {v13, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    const/4 v11, 0x0

    goto :goto_3

    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_3
    const/4 v11, 0x1

    :goto_3
    if-nez v11, :cond_4

    goto :goto_4

    :cond_4
    invoke-static {v10, v2}, Ll/l;->O(Ljava/lang/reflect/Method;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v10

    check-cast v10, Ld/b;

    if-eqz v10, :cond_5

    return-object v10

    :cond_5
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v6, v0

    const/4 v7, 0x0

    :goto_5
    if-ge v7, v6, :cond_f

    aget-object v8, v0, v7

    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v9

    array-length v10, v9

    array-length v11, v5

    if-eq v10, v11, :cond_9

    goto :goto_8

    :cond_9
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a

    goto :goto_8

    :cond_a
    const/4 v10, 0x0

    :goto_6
    array-length v11, v5

    if-ge v10, v11, :cond_c

    aget-object v11, v9, v10

    aget-object v12, v5, v10

    invoke-virtual {v11, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_b

    const/4 v9, 0x0

    goto :goto_7

    :cond_b
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_c
    const/4 v9, 0x1

    :goto_7
    if-nez v9, :cond_d

    goto :goto_8

    :cond_d
    invoke-static {v8, v2}, Ll/l;->O(Ljava/lang/reflect/Method;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v8

    check-cast v8, Ld/b;

    if-eqz v8, :cond_e

    return-object v8

    :cond_e
    :goto_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_f
    return-object v1
.end method

.method public static j(Ljava/lang/Object;)Ljava/math/BigInteger;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    instance-of v1, p0, Ljava/math/BigInteger;

    if-eqz v1, :cond_1

    check-cast p0, Ljava/math/BigInteger;

    return-object p0

    :cond_1
    instance-of v1, p0, Ljava/lang/Float;

    if-nez v1, :cond_7

    instance-of v1, p0, Ljava/lang/Double;

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    instance-of v1, p0, Ljava/math/BigDecimal;

    if-eqz v1, :cond_3

    move-object v1, p0

    check-cast v1, Ljava/math/BigDecimal;

    invoke-virtual {v1}, Ljava/math/BigDecimal;->scale()I

    move-result v2

    const/16 v3, -0x3e8

    if-le v2, v3, :cond_3

    const/16 v3, 0x3e8

    if-ge v2, v3, :cond_3

    invoke-virtual {v1}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "null"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "NULL"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const v1, 0xffff

    if-gt v0, v1, :cond_5

    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_5
    new-instance p0, Lc/d;

    const-string v0, "decimal overflow"

    invoke-direct {p0, v0}, Lc/d;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_0
    return-object v0

    :cond_7
    :goto_1
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method private static j0(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 1

    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/lang/reflect/WildcardType;

    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object p0

    array-length v0, p0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    goto :goto_0

    :cond_0
    const-class p0, Ljava/lang/Object;

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static k(Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    instance-of v1, p0, Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    check-cast p0, Ljava/lang/Boolean;

    return-object p0

    :cond_1
    instance-of v1, p0, Ljava/math/BigDecimal;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    check-cast p0, Ljava/math/BigDecimal;

    invoke-static {p0}, Ll/l;->k0(Ljava/math/BigDecimal;)I

    move-result p0

    if-ne p0, v3, :cond_2

    const/4 v2, 0x1

    :cond_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_3
    instance-of v1, p0, Ljava/lang/Number;

    if-eqz v1, :cond_5

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    if-ne p0, v3, :cond_4

    const/4 v2, 0x1

    :cond_4
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_5
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_f

    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_e

    const-string v2, "null"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, "NULL"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_3

    :cond_6
    const-string v0, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_2

    :cond_7
    const-string v0, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_1

    :cond_8
    const-string v0, "Y"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "T"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_0

    :cond_9
    const-string v0, "F"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "N"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_a
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_b
    :goto_0
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_c
    :goto_1
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_d
    :goto_2
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_e
    :goto_3
    return-object v0

    :cond_f
    new-instance v0, Lc/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not cast to boolean, value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lc/d;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static k0(Ljava/math/BigDecimal;)I
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Ljava/math/BigDecimal;->scale()I

    move-result v0

    const/16 v1, -0x64

    if-lt v0, v1, :cond_1

    const/16 v1, 0x64

    if-gt v0, v1, :cond_1

    invoke-virtual {p0}, Ljava/math/BigDecimal;->intValue()I

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p0}, Ljava/math/BigDecimal;->intValueExact()I

    move-result p0

    return p0
.end method

.method public static l(Ljava/lang/Object;)Ljava/lang/Byte;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    instance-of v1, p0, Ljava/math/BigDecimal;

    if-eqz v1, :cond_1

    check-cast p0, Ljava/math/BigDecimal;

    invoke-static {p0}, Ll/l;->e(Ljava/math/BigDecimal;)B

    move-result p0

    :goto_0
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v1, p0, Ljava/lang/Number;

    if-eqz v1, :cond_2

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->byteValue()B

    move-result p0

    goto :goto_0

    :cond_2
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_5

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "null"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "NULL"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {p0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result p0

    goto :goto_0

    :cond_4
    :goto_1
    return-object v0

    :cond_5
    new-instance v0, Lc/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not cast to byte, value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lc/d;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static l0(Ljava/lang/reflect/Method;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    sget-object v1, Ll/l;->o:Ljava/lang/Class;

    const/4 v2, 0x1

    if-nez v1, :cond_1

    sget-boolean v1, Ll/l;->p:Z

    if-nez v1, :cond_1

    :try_start_0
    const-string v1, "javax.persistence.ManyToMany"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Ll/l;->o:Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    sput-boolean v2, Ll/l;->p:Z

    :cond_1
    :goto_0
    sget-object v1, Ll/l;->o:Ljava/lang/Class;

    if-eqz v1, :cond_3

    sget-object v1, Ll/l;->m:Ljava/lang/Class;

    invoke-virtual {p0, v1}, Ljava/lang/reflect/AccessibleObject;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Ll/l;->o:Ljava/lang/Class;

    invoke-virtual {p0, v1}, Ljava/lang/reflect/AccessibleObject;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public static m(Ljava/lang/Object;)[B
    .locals 3

    instance-of v0, p0, [B

    if-eqz v0, :cond_0

    check-cast p0, [B

    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ll/e;->b(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Lc/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not cast to byte[], value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lc/d;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static m0(Ljava/lang/reflect/Method;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    sget-object v1, Ll/l;->m:Ljava/lang/Class;

    const/4 v2, 0x1

    if-nez v1, :cond_1

    sget-boolean v1, Ll/l;->n:Z

    if-nez v1, :cond_1

    :try_start_0
    const-string v1, "javax.persistence.OneToMany"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Ll/l;->m:Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    sput-boolean v2, Ll/l;->n:Z

    :cond_1
    :goto_0
    sget-object v1, Ll/l;->m:Ljava/lang/Class;

    if-eqz v1, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/reflect/AccessibleObject;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public static n(Ljava/lang/Object;)Ljava/lang/Character;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    instance-of v1, p0, Ljava/lang/Character;

    if-eqz v1, :cond_1

    check-cast p0, Ljava/lang/Character;

    return-object p0

    :cond_1
    instance-of v1, p0, Ljava/lang/String;

    const-string v2, "can not cast to char, value : "

    if-eqz v1, :cond_4

    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    return-object v0

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_3

    const/4 p0, 0x0

    invoke-virtual {v1, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance v0, Lc/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lc/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Lc/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lc/d;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static n0(Ljava/lang/Class;)Z
    .locals 1

    sget-object v0, Ll/l;->H:Ljava/lang/Class;

    if-nez v0, :cond_0

    sget-boolean v0, Ll/l;->I:Z

    if-nez v0, :cond_0

    :try_start_0
    const-class v0, Ljava/sql/Clob;

    sput-object v0, Ll/l;->H:Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x1

    sput-boolean v0, Ll/l;->I:Z

    :cond_0
    :goto_0
    sget-object v0, Ll/l;->H:Ljava/lang/Class;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    sget-object v0, Ll/l;->H:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method public static o(Ljava/lang/Object;)Ljava/util/Date;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ll/l;->p(Ljava/lang/Object;Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static o0(Ljava/lang/reflect/Type;)Z
    .locals 3

    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    instance-of v0, p0, Ljava/lang/Class;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    check-cast p0, Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object p0

    const-class v0, Ljava/lang/Object;

    if-eq p0, v0, :cond_1

    invoke-static {p0}, Ll/l;->o0(Ljava/lang/reflect/Type;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_2
    return v2
.end method

.method public static p(Ljava/lang/Object;Ljava/lang/String;)Ljava/util/Date;
    .locals 8

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    instance-of v1, p0, Ljava/util/Date;

    if-eqz v1, :cond_1

    check-cast p0, Ljava/util/Date;

    return-object p0

    :cond_1
    instance-of v1, p0, Ljava/util/Calendar;

    if-eqz v1, :cond_2

    check-cast p0, Ljava/util/Calendar;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    return-object p0

    :cond_2
    instance-of v1, p0, Ljava/math/BigDecimal;

    if-eqz v1, :cond_3

    check-cast p0, Ljava/math/BigDecimal;

    invoke-static {p0}, Ll/l;->D0(Ljava/math/BigDecimal;)J

    move-result-wide p0

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    return-object v0

    :cond_3
    instance-of v1, p0, Ljava/lang/Number;

    if-eqz v1, :cond_5

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    const-string p0, "unixtime"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const-wide/16 p0, 0x3e8

    mul-long v0, v0, p0

    :cond_4
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0, v0, v1}, Ljava/util/Date;-><init>(J)V

    return-object p0

    :cond_5
    instance-of v1, p0, Ljava/lang/String;

    const-string v2, "can not cast to Date, value : "

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_12

    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    new-instance v6, Lf/f;

    invoke-direct {v6, v1}, Lf/f;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v6, v5}, Lf/f;->d1(Z)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {v6}, Lf/d;->p0()Ljava/util/Calendar;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v6}, Lf/d;->close()V

    return-object p0

    :cond_6
    invoke-virtual {v6}, Lf/d;->close()V

    const-string v6, "/Date("

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    const-string v6, ")/"

    invoke-virtual {v1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x2

    const/4 v7, 0x6

    invoke-virtual {v1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_7
    const/16 v6, 0x2d

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-gtz v6, :cond_a

    const/16 v6, 0x2b

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-lez v6, :cond_8

    goto :goto_0

    :cond_8
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_9

    return-object v0

    :cond_9
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    goto/16 :goto_3

    :cond_a
    :goto_0
    if-nez p1, :cond_11

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p0

    sget-object p1, Lc/a;->e:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-eq p0, p1, :cond_10

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p0

    const/16 p1, 0x16

    if-ne p0, p1, :cond_b

    sget-object p0, Lc/a;->e:Ljava/lang/String;

    const-string p1, "yyyyMMddHHmmssSSSZ"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_1

    :cond_b
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p0

    const/16 p1, 0xa

    if-ne p0, p1, :cond_c

    const-string p1, "yyyy-MM-dd"

    goto :goto_2

    :cond_c
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p0

    const/16 p1, 0x13

    if-ne p0, p1, :cond_d

    const-string p1, "yyyy-MM-dd HH:mm:ss"

    goto :goto_2

    :cond_d
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0x1d

    if-ne p0, v0, :cond_e

    const/16 p0, 0x1a

    invoke-virtual {v1, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v0, 0x3a

    if-ne p0, v0, :cond_e

    const/16 p0, 0x1c

    invoke-virtual {v1, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v0, 0x30

    if-ne p0, v0, :cond_e

    const-string p1, "yyyy-MM-dd\'T\'HH:mm:ss.SSSXXX"

    goto :goto_2

    :cond_e
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0x17

    if-ne p0, v0, :cond_f

    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 p1, 0x2c

    if-ne p0, p1, :cond_f

    const-string p1, "yyyy-MM-dd HH:mm:ss,SSS"

    goto :goto_2

    :cond_f
    const-string p1, "yyyy-MM-dd HH:mm:ss.SSS"

    goto :goto_2

    :cond_10
    :goto_1
    sget-object p1, Lc/a;->e:Ljava/lang/String;

    :cond_11
    :goto_2
    new-instance p0, Ljava/text/SimpleDateFormat;

    sget-object v0, Lc/a;->b:Ljava/util/Locale;

    invoke-direct {p0, p1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sget-object p1, Lc/a;->a:Ljava/util/TimeZone;

    invoke-virtual {p0, p1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    :try_start_1
    invoke-virtual {p0, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    new-instance p0, Lc/d;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lc/d;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    invoke-virtual {v6}, Lf/d;->close()V

    throw p0

    :cond_12
    move-wide v0, v3

    :goto_3
    cmp-long p1, v0, v3

    if-nez p1, :cond_17

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "oracle.sql.TIMESTAMP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "toJdbc"

    const/4 v3, 0x1

    if-eqz v0, :cond_14

    sget-object v0, Ll/l;->f:Ljava/lang/reflect/Method;

    if-nez v0, :cond_13

    sget-boolean v0, Ll/l;->e:Z

    if-nez v0, :cond_13

    :try_start_2
    new-array v0, v5, [Ljava/lang/Class;

    invoke-virtual {p1, v1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    sput-object p1, Ll/l;->f:Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception p0

    sput-boolean v3, Ll/l;->e:Z

    throw p0

    :catch_1
    :goto_4
    sput-boolean v3, Ll/l;->e:Z

    :cond_13
    :try_start_3
    sget-object p1, Ll/l;->f:Ljava/lang/reflect/Method;

    new-array v0, v5, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    check-cast p0, Ljava/util/Date;

    return-object p0

    :catch_2
    move-exception p0

    new-instance p1, Lc/d;

    const-string v0, "can not cast oracle.sql.TIMESTAMP to Date"

    invoke-direct {p1, v0, p0}, Lc/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_14
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v4, "oracle.sql.DATE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object v0, Ll/l;->h:Ljava/lang/reflect/Method;

    if-nez v0, :cond_15

    sget-boolean v0, Ll/l;->g:Z

    if-nez v0, :cond_15

    :try_start_4
    new-array v0, v5, [Ljava/lang/Class;

    invoke-virtual {p1, v1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    sput-object p1, Ll/l;->h:Ljava/lang/reflect/Method;
    :try_end_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_5

    :catchall_2
    move-exception p0

    sput-boolean v3, Ll/l;->g:Z

    throw p0

    :catch_3
    :goto_5
    sput-boolean v3, Ll/l;->g:Z

    :cond_15
    :try_start_5
    sget-object p1, Ll/l;->h:Ljava/lang/reflect/Method;

    new-array v0, v5, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    check-cast p0, Ljava/util/Date;

    return-object p0

    :catch_4
    move-exception p0

    new-instance p1, Lc/d;

    const-string v0, "can not cast oracle.sql.DATE to Date"

    invoke-direct {p1, v0, p0}, Lc/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_16
    new-instance p1, Lc/d;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lc/d;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0, v0, v1}, Ljava/util/Date;-><init>(J)V

    return-object p0
.end method

.method public static p0(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    sget-object v1, Ll/l;->q:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    if-nez v1, :cond_1

    sget-boolean v1, Ll/l;->r:Z

    if-nez v1, :cond_1

    :try_start_0
    const-string v1, "org.hibernate.Hibernate"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v3, "isInitialized"

    new-array v4, v2, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Object;

    aput-object v5, v4, v0

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Ll/l;->q:Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    sput-boolean v2, Ll/l;->r:Z

    :cond_1
    :goto_0
    sget-object v1, Ll/l;->q:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_2

    :try_start_1
    new-array v3, v2, [Ljava/lang/Object;

    aput-object p0, v3, v0

    const/4 p0, 0x0

    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return p0

    :catchall_1
    :cond_2
    return v2
.end method

.method public static q(Ljava/lang/Object;)Ljava/lang/Double;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    instance-of v1, p0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "null"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "NULL"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    const-string v0, ","

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_3
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    goto :goto_0

    :cond_4
    :goto_1
    return-object v0

    :cond_5
    new-instance v0, Lc/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not cast to double, value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lc/d;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static q0(Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const-class v0, Ld/d;

    invoke-static {p0, v0}, Ll/l;->M(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Ld/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ld/d;->includes()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x1

    if-lez v3, :cond_2

    const/4 p0, 0x0

    :goto_0
    array-length v0, v2

    if-ge p0, v0, :cond_1

    aget-object v0, v2, p0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    return v4

    :cond_2
    invoke-interface {v0}, Ld/d;->ignores()[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_4

    aget-object v3, v0, v2

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    return v4

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    const-class v2, Ljava/lang/Object;

    if-eq v0, v2, :cond_5

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, p1}, Ll/l;->q0(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_5
    return v1
.end method

.method public static r(Ljava/lang/Object;Ljava/lang/Class;Lf/i;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lf/i;",
            ")TT;"
        }
    .end annotation

    const-string v0, "can not cast to : "

    :try_start_0
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_3

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-nez p2, :cond_1

    invoke-static {}, Lf/i;->r()Lf/i;

    move-result-object p2

    :cond_1
    invoke-virtual {p2, p1}, Lf/i;->n(Ljava/lang/reflect/Type;)Lg/j1;

    move-result-object p2

    instance-of v1, p2, Lg/h;

    if-eqz v1, :cond_2

    check-cast p2, Lg/h;

    invoke-static {p0}, Ll/l;->I(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lg/h;->b(J)Ljava/lang/Enum;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {p1, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    return-object p0

    :cond_3
    instance-of p2, p0, Ljava/math/BigDecimal;

    if-eqz p2, :cond_4

    move-object p2, p0

    check-cast p2, Ljava/math/BigDecimal;

    invoke-static {p2}, Ll/l;->k0(Ljava/math/BigDecimal;)I

    move-result p2

    invoke-virtual {p1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v1

    array-length v2, v1

    if-ge p2, v2, :cond_4

    aget-object p0, v1, p2

    return-object p0

    :cond_4
    instance-of p2, p0, Ljava/lang/Number;

    if-eqz p2, :cond_5

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-virtual {p1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object p2

    array-length v1, p2

    if-ge p0, v1, :cond_5

    aget-object p0, p2, p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_5
    new-instance p0, Lc/d;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lc/d;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    new-instance p2, Lc/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Lc/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public static r0(Ljava/lang/reflect/Method;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    sget-object v1, Ll/l;->F:Ljava/lang/Class;

    const/4 v2, 0x1

    if-nez v1, :cond_1

    sget-boolean v1, Ll/l;->G:Z

    if-nez v1, :cond_1

    :try_start_0
    const-string v1, "com.fasterxml.jackson.annotation.JsonCreator"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Ll/l;->F:Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    sput-boolean v2, Ll/l;->G:Z

    :cond_1
    :goto_0
    sget-object v1, Ll/l;->F:Ljava/lang/Class;

    if-eqz v1, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/reflect/AccessibleObject;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public static s(Ljava/lang/Object;)Ljava/lang/Float;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    instance-of v1, p0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    :goto_0
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "null"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "NULL"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    const-string v0, ","

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_3
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    goto :goto_0

    :cond_4
    :goto_1
    return-object v0

    :cond_5
    new-instance v0, Lc/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not cast to float, value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lc/d;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static s0(Ljava/lang/Class;)Z
    .locals 2

    sget-object v0, Ll/l;->s:Ljava/lang/Class;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    sget-boolean v0, Ll/l;->t:Z

    if-nez v0, :cond_0

    :try_start_0
    const-class v0, Ln2/g;

    sput-object v0, Ll/l;->s:Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    sput-boolean v1, Ll/l;->t:Z

    :cond_0
    :goto_0
    sget-object v0, Ll/l;->s:Ljava/lang/Class;

    if-eqz v0, :cond_1

    sget-object v0, Ll/l;->s:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public static t(Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    instance-of v1, p0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    check-cast p0, Ljava/lang/Integer;

    return-object p0

    :cond_1
    instance-of v1, p0, Ljava/math/BigDecimal;

    if-eqz v1, :cond_2

    check-cast p0, Ljava/math/BigDecimal;

    invoke-static {p0}, Ll/l;->k0(Ljava/math/BigDecimal;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_2
    instance-of v1, p0, Ljava/lang/Number;

    if-eqz v1, :cond_3

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_3
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_8

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "null"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "NULL"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    const-string v2, ""

    if-eq v0, v1, :cond_5

    const-string v0, ","

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_5
    sget-object v0, Ll/l;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_6
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_7
    :goto_0
    return-object v0

    :cond_8
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_9

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_9
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_a

    move-object v0, p0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_a

    const-string v1, "andIncrement"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "andDecrement"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ll/l;->t(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_a
    new-instance v0, Lc/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not cast to int, value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lc/d;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static t0(Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 6

    const-string v0, "isEmpty"

    const-string v1, "getEndInclusive"

    sget-object v2, Ll/l;->A:Ljava/util/Map;

    const/4 v3, 0x1

    if-nez v2, :cond_0

    sget-boolean v2, Ll/l;->B:Z

    if-nez v2, :cond_0

    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-class v4, Lkotlin/ranges/c;

    sget-object v5, Lkotlin/ranges/c;->f:Lkotlin/ranges/c$a;

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v4, Lkotlin/ranges/h;

    sget-object v5, Lkotlin/ranges/h;->f:Lkotlin/ranges/h$a;

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v4, Lkotlin/ranges/k;

    sget-object v5, Lkotlin/ranges/k;->f:Lkotlin/ranges/k$a;

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "kotlin.ranges.e"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "kotlin.ranges.d"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sput-object v2, Ll/l;->A:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    sput-boolean v3, Ll/l;->B:Z

    :cond_0
    :goto_0
    sget-object v0, Ll/l;->A:Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    sget-object v0, Ll/l;->A:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    if-eqz p0, :cond_2

    invoke-static {p0, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    return v3
.end method

.method public static u(Ljava/util/Map;Ljava/lang/Class;Lf/i;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lf/i;",
            ")TT;"
        }
    .end annotation

    :try_start_0
    const-class v0, Ljava/lang/StackTraceElement;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    const-string p1, "className"

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string p2, "methodName"

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string v0, "fileName"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "lineNumber"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v1, p0, Ljava/math/BigDecimal;

    if-eqz v1, :cond_1

    check-cast p0, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Ljava/math/BigDecimal;->intValueExact()I

    move-result v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v1

    :goto_0
    new-instance p0, Ljava/lang/StackTraceElement;

    invoke-direct {p0, p1, p2, v0, v1}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object p0

    :cond_2
    sget-object v0, Lc/a;->c:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    check-cast v0, Ljava/lang/String;

    if-nez p2, :cond_3

    sget-object p2, Lf/i;->y:Lf/i;

    :cond_3
    invoke-virtual {p2, v0, v3}, Lf/i;->g(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {p0, v2, p2}, Ll/l;->u(Ljava/util/Map;Ljava/lang/Class;Lf/i;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/ClassNotFoundException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " not found"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_9

    instance-of v0, p0, Lc/e;

    if-eqz v0, :cond_6

    check-cast p0, Lc/e;

    goto :goto_1

    :cond_6
    new-instance v0, Lc/e;

    invoke-direct {v0, p0}, Lc/e;-><init>(Ljava/util/Map;)V

    move-object p0, v0

    :goto_1
    if-nez p2, :cond_7

    invoke-static {}, Lf/i;->r()Lf/i;

    move-result-object p2

    :cond_7
    invoke-virtual {p2, p1}, Lf/i;->k(Ljava/lang/reflect/Type;)Lg/j1;

    move-result-object p2

    if-eqz p2, :cond_8

    invoke-static {p0}, Lc/a;->t(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lc/a;->o(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_8
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    aput-object p1, v0, v1

    invoke-static {p2, v0, p0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_9
    const-class v0, Ljava/util/Locale;

    if-ne p1, v0, :cond_b

    const-string v0, "language"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "country"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_b

    check-cast v0, Ljava/lang/String;

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_a

    check-cast v1, Ljava/lang/String;

    new-instance p0, Ljava/util/Locale;

    invoke-direct {p0, v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_a
    if-nez v1, :cond_b

    new-instance p0, Ljava/util/Locale;

    invoke-direct {p0, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_b
    const-class v0, Ljava/lang/String;

    if-ne p1, v0, :cond_c

    instance-of v0, p0, Lc/e;

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_c
    const-class v0, Lc/a;

    if-ne p1, v0, :cond_d

    instance-of v0, p0, Lc/e;

    if-eqz v0, :cond_d

    return-object p0

    :cond_d
    const-class v0, Ljava/util/LinkedHashMap;

    if-ne p1, v0, :cond_f

    instance-of v0, p0, Lc/e;

    if-eqz v0, :cond_f

    move-object v0, p0

    check-cast v0, Lc/e;

    invoke-virtual {v0}, Lc/e;->z()Ljava/util/Map;

    move-result-object v0

    instance-of v1, v0, Ljava/util/LinkedHashMap;

    if-eqz v1, :cond_e

    return-object v0

    :cond_e
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    :cond_f
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    return-object p0

    :cond_10
    const-class v0, Lc/e;

    if-ne p1, v0, :cond_11

    new-instance p1, Lc/e;

    invoke-direct {p1, p0}, Lc/e;-><init>(Ljava/util/Map;)V

    return-object p1

    :cond_11
    if-nez p2, :cond_12

    invoke-static {}, Lf/i;->r()Lf/i;

    move-result-object p2

    :cond_12
    invoke-virtual {p2, p1}, Lf/i;->n(Ljava/lang/reflect/Type;)Lg/j1;

    move-result-object v0

    instance-of v1, v0, Lg/o;

    if-eqz v1, :cond_13

    move-object v3, v0

    check-cast v3, Lg/o;

    :cond_13
    if-eqz v3, :cond_14

    invoke-virtual {v3, p0, p2}, Lg/o;->g(Ljava/util/Map;Lf/i;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_14
    new-instance p0, Lc/d;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "can not get javaBeanDeserializer. "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lc/d;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Lc/d;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lc/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static u0(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2b

    if-eq v2, v3, :cond_2

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    const/16 v3, 0x30

    if-lt v2, v3, :cond_1

    const/16 v3, 0x39

    if-le v2, v3, :cond_3

    :cond_1
    return v0

    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    return v0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method public static v(Ljava/lang/Object;Ljava/lang/String;)Ljava/time/LocalDateTime;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-nez p1, :cond_1

    const-string p1, "yyyy-MM-dd HH:mm:ss"

    :cond_1
    invoke-static {p1}, Lg/q;->a(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lg/z0;->a(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0
.end method

.method public static v0(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    sget-object v0, Ll/l;->D:Ljava/lang/Class;

    if-nez v0, :cond_0

    sget-boolean v0, Ll/l;->E:Z

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "java.nio.file.Path"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ll/l;->D:Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x1

    sput-boolean v0, Ll/l;->E:Z

    :cond_0
    :goto_0
    sget-object v0, Ll/l;->D:Ljava/lang/Class;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static w(Ljava/lang/Object;)Ljava/lang/Long;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    instance-of v1, p0, Ljava/math/BigDecimal;

    if-eqz v1, :cond_1

    check-cast p0, Ljava/math/BigDecimal;

    invoke-static {p0}, Ll/l;->D0(Ljava/math/BigDecimal;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v1, p0, Ljava/lang/Number;

    if-eqz v1, :cond_2

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_2
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_7

    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "null"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "NULL"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    const-string v2, ","

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_4
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    nop

    new-instance v2, Lf/f;

    invoke-direct {v2, v1}, Lf/f;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Lf/f;->d1(Z)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v2}, Lf/d;->p0()Ljava/util/Calendar;

    move-result-object v0

    :cond_5
    invoke-virtual {v2}, Lf/d;->close()V

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_6
    :goto_0
    return-object v0

    :cond_7
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_8

    move-object v0, p0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_8

    const-string v1, "andIncrement"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "andDecrement"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ll/l;->w(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_8
    new-instance v0, Lc/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not cast to long, value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lc/d;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static w0(Ljava/lang/Class;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "net.sf.cglib.proxy.Factory"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_3

    const-string v4, "org.springframework.cglib.proxy.Factory"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    const-string v4, "javassist.util.proxy.ProxyObject"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "org.apache.ibatis.javassist.util.proxy.ProxyObject"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    const-string v4, "org.hibernate.proxy.HibernateProxy"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v5

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v5

    :cond_4
    return v1
.end method

.method public static x(Ljava/lang/Object;)Ljava/lang/Short;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    instance-of v1, p0, Ljava/math/BigDecimal;

    if-eqz v1, :cond_1

    check-cast p0, Ljava/math/BigDecimal;

    invoke-static {p0}, Ll/l;->L0(Ljava/math/BigDecimal;)S

    move-result p0

    :goto_0
    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v1, p0, Ljava/lang/Number;

    if-eqz v1, :cond_2

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->shortValue()S

    move-result p0

    goto :goto_0

    :cond_2
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_5

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "null"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "NULL"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {p0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result p0

    goto :goto_0

    :cond_4
    :goto_1
    return-object v0

    :cond_5
    new-instance v0, Lc/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not cast to short, value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lc/d;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static x0(Ljava/lang/reflect/Method;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    sget-boolean v1, Ll/l;->k:Z

    const/4 v2, 0x1

    if-nez v1, :cond_1

    :try_start_0
    const-string v1, "java.beans.Transient"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Ll/l;->l:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sput-boolean v2, Ll/l;->k:Z

    throw p0

    :catch_0
    :goto_0
    sput-boolean v2, Ll/l;->k:Z

    :cond_1
    sget-object v1, Ll/l;->l:Ljava/lang/Class;

    if-eqz v1, :cond_2

    invoke-static {p0, v1}, Ll/l;->O(Ljava/lang/reflect/Method;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public static y(Ljava/lang/Object;)Ljava/sql/Date;
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    instance-of v1, p0, Ljava/sql/Date;

    if-eqz v1, :cond_1

    check-cast p0, Ljava/sql/Date;

    return-object p0

    :cond_1
    instance-of v1, p0, Ljava/util/Date;

    if-eqz v1, :cond_2

    new-instance v0, Ljava/sql/Date;

    check-cast p0, Ljava/util/Date;

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/sql/Date;-><init>(J)V

    return-object v0

    :cond_2
    instance-of v1, p0, Ljava/util/Calendar;

    if-eqz v1, :cond_3

    new-instance v0, Ljava/sql/Date;

    check-cast p0, Ljava/util/Calendar;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/sql/Date;-><init>(J)V

    return-object v0

    :cond_3
    instance-of v1, p0, Ljava/math/BigDecimal;

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_4

    move-object v1, p0

    check-cast v1, Ljava/math/BigDecimal;

    invoke-static {v1}, Ll/l;->D0(Ljava/math/BigDecimal;)J

    move-result-wide v4

    goto :goto_0

    :cond_4
    instance-of v1, p0, Ljava/lang/Number;

    if-eqz v1, :cond_5

    move-object v1, p0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    goto :goto_0

    :cond_5
    move-wide v4, v2

    :goto_0
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_a

    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_9

    const-string v4, "null"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    const-string v4, "NULL"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_1

    :cond_6
    invoke-static {v1}, Ll/l;->u0(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    goto :goto_2

    :cond_7
    new-instance v0, Lf/f;

    invoke-direct {v0, v1}, Lf/f;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lf/f;->d1(Z)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v0}, Lf/d;->p0()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    goto :goto_2

    :cond_8
    new-instance p0, Lc/d;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not cast to Timestamp, value : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lc/d;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    :goto_1
    return-object v0

    :cond_a
    :goto_2
    cmp-long v0, v4, v2

    if-lez v0, :cond_b

    new-instance p0, Ljava/sql/Date;

    invoke-direct {p0, v4, v5}, Ljava/sql/Date;-><init>(J)V

    return-object p0

    :cond_b
    new-instance v0, Lc/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not cast to Date, value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lc/d;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static y0(Ljava/lang/Class;)Z
    .locals 5

    sget-object v0, Ll/l;->K:Ljava/lang/Class;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    sget-boolean v0, Ll/l;->L:Z

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "javax.xml.bind.annotation.XmlAccessorType"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ll/l;->K:Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    sput-boolean v1, Ll/l;->L:Z

    :cond_0
    :goto_0
    sget-object v0, Ll/l;->K:Ljava/lang/Class;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    sget-object v0, Ll/l;->K:Ljava/lang/Class;

    invoke-static {p0, v0}, Ll/l;->M(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    sget-object v0, Ll/l;->M:Ljava/lang/reflect/Method;

    if-nez v0, :cond_3

    sget-boolean v0, Ll/l;->L:Z

    if-nez v0, :cond_3

    :try_start_1
    sget-object v0, Ll/l;->K:Ljava/lang/Class;

    const-string v3, "value"

    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Ll/l;->M:Ljava/lang/reflect/Method;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    sput-boolean v1, Ll/l;->L:Z

    :cond_3
    :goto_1
    sget-object v0, Ll/l;->M:Ljava/lang/reflect/Method;

    if-nez v0, :cond_4

    return v2

    :cond_4
    sget-boolean v0, Ll/l;->L:Z

    const/4 v3, 0x0

    if-nez v0, :cond_5

    :try_start_2
    sget-object v0, Ll/l;->M:Ljava/lang/reflect/Method;

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    sput-boolean v1, Ll/l;->L:Z

    :cond_5
    move-object p0, v3

    :goto_2
    if-nez p0, :cond_6

    return v2

    :cond_6
    sget-object v0, Ll/l;->J:Ljava/lang/Class;

    if-nez v0, :cond_7

    sget-boolean v0, Ll/l;->L:Z

    if-nez v0, :cond_7

    :try_start_3
    const-string v0, "javax.xml.bind.annotation.XmlAccessType"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ll/l;->J:Ljava/lang/Class;

    sget-object v0, Ll/l;->J:Ljava/lang/Class;

    const-string v4, "FIELD"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Ll/l;->N:Ljava/lang/reflect/Field;

    sget-object v0, Ll/l;->N:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Ll/l;->O:Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_3

    :catchall_3
    sput-boolean v1, Ll/l;->L:Z

    :cond_7
    :goto_3
    sget-object v0, Ll/l;->O:Ljava/lang/Object;

    if-ne p0, v0, :cond_8

    goto :goto_4

    :cond_8
    const/4 v1, 0x0

    :goto_4
    return v1
.end method

.method public static z(Ljava/lang/Object;)Ljava/sql/Time;
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    instance-of v1, p0, Ljava/sql/Time;

    if-eqz v1, :cond_1

    check-cast p0, Ljava/sql/Time;

    return-object p0

    :cond_1
    instance-of v1, p0, Ljava/util/Date;

    if-eqz v1, :cond_2

    new-instance v0, Ljava/sql/Time;

    check-cast p0, Ljava/util/Date;

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/sql/Time;-><init>(J)V

    return-object v0

    :cond_2
    instance-of v1, p0, Ljava/util/Calendar;

    if-eqz v1, :cond_3

    new-instance v0, Ljava/sql/Time;

    check-cast p0, Ljava/util/Calendar;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/sql/Time;-><init>(J)V

    return-object v0

    :cond_3
    instance-of v1, p0, Ljava/math/BigDecimal;

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_4

    move-object v1, p0

    check-cast v1, Ljava/math/BigDecimal;

    invoke-static {v1}, Ll/l;->D0(Ljava/math/BigDecimal;)J

    move-result-wide v4

    goto :goto_0

    :cond_4
    instance-of v1, p0, Ljava/lang/Number;

    if-eqz v1, :cond_5

    move-object v1, p0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    goto :goto_0

    :cond_5
    move-wide v4, v2

    :goto_0
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_a

    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_9

    const-string v4, "null"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_1

    :cond_6
    invoke-static {v1}, Ll/l;->u0(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    goto :goto_2

    :cond_7
    new-instance v0, Lf/f;

    invoke-direct {v0, v1}, Lf/f;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lf/f;->d1(Z)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v0}, Lf/d;->p0()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    goto :goto_2

    :cond_8
    new-instance p0, Lc/d;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not cast to Timestamp, value : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lc/d;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    :goto_1
    return-object v0

    :cond_a
    :goto_2
    cmp-long v0, v4, v2

    if-lez v0, :cond_b

    new-instance p0, Ljava/sql/Time;

    invoke-direct {p0, v4, v5}, Ljava/sql/Time;-><init>(J)V

    return-object p0

    :cond_b
    new-instance v0, Lc/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not cast to Date, value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lc/d;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static z0(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ll/l;->A0(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method
