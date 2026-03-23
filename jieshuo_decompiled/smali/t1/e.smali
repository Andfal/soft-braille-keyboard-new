.class public final Lt1/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt1/e$f;
    }
.end annotation


# static fields
.field private static final v:Lz1/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz1/a<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Map<",
            "Lz1/a<",
            "*>;",
            "Lt1/e$f<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lz1/a<",
            "*>;",
            "Lt1/t<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final c:Lv1/c;

.field private final d:Lw1/d;

.field final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lt1/u;",
            ">;"
        }
    .end annotation
.end field

.field final f:Lv1/d;

.field final g:Lt1/d;

.field final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Lt1/f<",
            "*>;>;"
        }
    .end annotation
.end field

.field final i:Z

.field final j:Z

.field final k:Z

.field final l:Z

.field final m:Z

.field final n:Z

.field final o:Z

.field final p:Ljava/lang/String;

.field final q:I

.field final r:I

.field final s:Lt1/s;

.field final t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lt1/u;",
            ">;"
        }
    .end annotation
.end field

.field final u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lt1/u;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Ljava/lang/Object;

    invoke-static {v0}, Lz1/a;->a(Ljava/lang/Class;)Lz1/a;

    move-result-object v0

    sput-object v0, Lt1/e;->v:Lz1/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 18

    move-object/from16 v0, p0

    sget-object v1, Lv1/d;->g:Lv1/d;

    sget-object v2, Lt1/c;->a:Lt1/c;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    sget-object v11, Lt1/s;->a:Lt1/s;

    const/4 v12, 0x0

    const/4 v13, 0x2

    const/4 v14, 0x2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v15

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v16

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v17

    invoke-direct/range {v0 .. v17}, Lt1/e;-><init>(Lv1/d;Lt1/d;Ljava/util/Map;ZZZZZZZLt1/s;Ljava/lang/String;IILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method constructor <init>(Lv1/d;Lt1/d;Ljava/util/Map;ZZZZZZZLt1/s;Ljava/lang/String;IILjava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv1/d;",
            "Lt1/d;",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Lt1/f<",
            "*>;>;ZZZZZZZ",
            "Lt1/s;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List<",
            "Lt1/u;",
            ">;",
            "Ljava/util/List<",
            "Lt1/u;",
            ">;",
            "Ljava/util/List<",
            "Lt1/u;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p5

    move/from16 v5, p10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v6, Ljava/lang/ThreadLocal;

    invoke-direct {v6}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v6, v0, Lt1/e;->a:Ljava/lang/ThreadLocal;

    new-instance v6, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v6}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v6, v0, Lt1/e;->b:Ljava/util/Map;

    iput-object v1, v0, Lt1/e;->f:Lv1/d;

    iput-object v2, v0, Lt1/e;->g:Lt1/d;

    iput-object v3, v0, Lt1/e;->h:Ljava/util/Map;

    new-instance v6, Lv1/c;

    invoke-direct {v6, p3}, Lv1/c;-><init>(Ljava/util/Map;)V

    iput-object v6, v0, Lt1/e;->c:Lv1/c;

    move v3, p4

    iput-boolean v3, v0, Lt1/e;->i:Z

    iput-boolean v4, v0, Lt1/e;->j:Z

    move/from16 v3, p6

    iput-boolean v3, v0, Lt1/e;->k:Z

    move/from16 v3, p7

    iput-boolean v3, v0, Lt1/e;->l:Z

    move/from16 v3, p8

    iput-boolean v3, v0, Lt1/e;->m:Z

    move/from16 v3, p9

    iput-boolean v3, v0, Lt1/e;->n:Z

    iput-boolean v5, v0, Lt1/e;->o:Z

    move-object/from16 v3, p11

    iput-object v3, v0, Lt1/e;->s:Lt1/s;

    move-object/from16 v7, p12

    iput-object v7, v0, Lt1/e;->p:Ljava/lang/String;

    move/from16 v7, p13

    iput v7, v0, Lt1/e;->q:I

    move/from16 v7, p14

    iput v7, v0, Lt1/e;->r:I

    move-object/from16 v7, p15

    iput-object v7, v0, Lt1/e;->t:Ljava/util/List;

    move-object/from16 v7, p16

    iput-object v7, v0, Lt1/e;->u:Ljava/util/List;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    sget-object v8, Lw1/n;->Y:Lt1/u;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v8, Lw1/h;->b:Lt1/u;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v7, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v8, p17

    invoke-interface {v7, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget-object v8, Lw1/n;->D:Lt1/u;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v8, Lw1/n;->m:Lt1/u;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v8, Lw1/n;->g:Lt1/u;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v8, Lw1/n;->i:Lt1/u;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v8, Lw1/n;->k:Lt1/u;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static/range {p11 .. p11}, Lt1/e;->n(Lt1/s;)Lt1/t;

    move-result-object v3

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v9, Ljava/lang/Long;

    invoke-static {v8, v9, v3}, Lw1/n;->a(Ljava/lang/Class;Ljava/lang/Class;Lt1/t;)Lt1/u;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v8, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v9, Ljava/lang/Double;

    invoke-direct {p0, v5}, Lt1/e;->e(Z)Lt1/t;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lw1/n;->a(Ljava/lang/Class;Ljava/lang/Class;Lt1/t;)Lt1/u;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v8, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v9, Ljava/lang/Float;

    invoke-direct {p0, v5}, Lt1/e;->f(Z)Lt1/t;

    move-result-object v5

    invoke-static {v8, v9, v5}, Lw1/n;->a(Ljava/lang/Class;Ljava/lang/Class;Lt1/t;)Lt1/u;

    move-result-object v5

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v5, Lw1/n;->x:Lt1/u;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v5, Lw1/n;->o:Lt1/u;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v5, Lw1/n;->q:Lt1/u;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v5, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v3}, Lt1/e;->b(Lt1/t;)Lt1/t;

    move-result-object v8

    invoke-static {v5, v8}, Lw1/n;->b(Ljava/lang/Class;Lt1/t;)Lt1/u;

    move-result-object v5

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v5, Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-static {v3}, Lt1/e;->c(Lt1/t;)Lt1/t;

    move-result-object v3

    invoke-static {v5, v3}, Lw1/n;->b(Ljava/lang/Class;Lt1/t;)Lt1/u;

    move-result-object v3

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v3, Lw1/n;->s:Lt1/u;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v3, Lw1/n;->z:Lt1/u;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v3, Lw1/n;->F:Lt1/u;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v3, Lw1/n;->H:Lt1/u;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v3, Ljava/math/BigDecimal;

    sget-object v5, Lw1/n;->B:Lt1/t;

    invoke-static {v3, v5}, Lw1/n;->b(Ljava/lang/Class;Lt1/t;)Lt1/u;

    move-result-object v3

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v3, Ljava/math/BigInteger;

    sget-object v5, Lw1/n;->C:Lt1/t;

    invoke-static {v3, v5}, Lw1/n;->b(Ljava/lang/Class;Lt1/t;)Lt1/u;

    move-result-object v3

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v3, Lw1/n;->J:Lt1/u;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v3, Lw1/n;->L:Lt1/u;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v3, Lw1/n;->P:Lt1/u;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v3, Lw1/n;->R:Lt1/u;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v3, Lw1/n;->W:Lt1/u;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v3, Lw1/n;->N:Lt1/u;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v3, Lw1/n;->d:Lt1/u;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v3, Lw1/c;->b:Lt1/u;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v3, Lw1/n;->U:Lt1/u;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v3, Lw1/k;->b:Lt1/u;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v3, Lw1/j;->b:Lt1/u;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v3, Lw1/n;->S:Lt1/u;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v3, Lw1/a;->c:Lt1/u;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v3, Lw1/n;->b:Lt1/u;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lw1/b;

    invoke-direct {v3, v6}, Lw1/b;-><init>(Lv1/c;)V

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lw1/g;

    invoke-direct {v3, v6, v4}, Lw1/g;-><init>(Lv1/c;Z)V

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lw1/d;

    invoke-direct {v3, v6}, Lw1/d;-><init>(Lv1/c;)V

    iput-object v3, v0, Lt1/e;->d:Lw1/d;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v4, Lw1/n;->Z:Lt1/u;

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lw1/i;

    invoke-direct {v4, v6, p2, p1, v3}, Lw1/i;-><init>(Lv1/c;Lt1/d;Lv1/d;Lw1/d;)V

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lt1/e;->e:Ljava/util/List;

    return-void
.end method

.method private static a(Ljava/lang/Object;La2/a;)V
    .locals 0

    if-eqz p0, :cond_1

    :try_start_0
    invoke-virtual {p1}, La2/a;->M()La2/b;

    move-result-object p0

    sget-object p1, La2/b;->j:La2/b;

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lt1/k;

    const-string p1, "JSON document was not fully consumed."

    invoke-direct {p0, p1}, Lt1/k;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch La2/d; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Lt1/k;

    invoke-direct {p1, p0}, Lt1/k;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Lt1/r;

    invoke-direct {p1, p0}, Lt1/r;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method private static b(Lt1/t;)Lt1/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt1/t<",
            "Ljava/lang/Number;",
            ">;)",
            "Lt1/t<",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            ">;"
        }
    .end annotation

    new-instance v0, Lt1/e$d;

    invoke-direct {v0, p0}, Lt1/e$d;-><init>(Lt1/t;)V

    invoke-virtual {v0}, Lt1/t;->a()Lt1/t;

    move-result-object p0

    return-object p0
.end method

.method private static c(Lt1/t;)Lt1/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt1/t<",
            "Ljava/lang/Number;",
            ">;)",
            "Lt1/t<",
            "Ljava/util/concurrent/atomic/AtomicLongArray;",
            ">;"
        }
    .end annotation

    new-instance v0, Lt1/e$e;

    invoke-direct {v0, p0}, Lt1/e$e;-><init>(Lt1/t;)V

    invoke-virtual {v0}, Lt1/t;->a()Lt1/t;

    move-result-object p0

    return-object p0
.end method

.method static d(D)V
    .locals 2

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p0, " is not a valid double value as per JSON specification. To override this behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private e(Z)Lt1/t;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lt1/t<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    sget-object p1, Lw1/n;->v:Lt1/t;

    return-object p1

    :cond_0
    new-instance p1, Lt1/e$a;

    invoke-direct {p1, p0}, Lt1/e$a;-><init>(Lt1/e;)V

    return-object p1
.end method

.method private f(Z)Lt1/t;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lt1/t<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    sget-object p1, Lw1/n;->u:Lt1/t;

    return-object p1

    :cond_0
    new-instance p1, Lt1/e$b;

    invoke-direct {p1, p0}, Lt1/e$b;-><init>(Lt1/e;)V

    return-object p1
.end method

.method private static n(Lt1/s;)Lt1/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt1/s;",
            ")",
            "Lt1/t<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    sget-object v0, Lt1/s;->a:Lt1/s;

    if-ne p0, v0, :cond_0

    sget-object p0, Lw1/n;->t:Lt1/t;

    return-object p0

    :cond_0
    new-instance p0, Lt1/e$c;

    invoke-direct {p0}, Lt1/e$c;-><init>()V

    return-object p0
.end method


# virtual methods
.method public g(La2/a;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "La2/a;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    invoke-virtual {p1}, La2/a;->m()Z

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, La2/a;->S(Z)V

    :try_start_0
    invoke-virtual {p1}, La2/a;->M()La2/b;

    const/4 v1, 0x0

    invoke-static {p2}, Lz1/a;->b(Ljava/lang/reflect/Type;)Lz1/a;

    move-result-object p2

    invoke-virtual {p0, p2}, Lt1/e;->l(Lz1/a;)Lt1/t;

    move-result-object p2

    invoke-virtual {p2, p1}, Lt1/t;->b(La2/a;)Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1, v0}, La2/a;->S(Z)V

    return-object p2

    :catchall_0
    move-exception p2

    goto :goto_0

    :catch_0
    move-exception p2

    :try_start_1
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AssertionError (GSON 2.8.6): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p2}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1

    :catch_1
    move-exception p2

    new-instance v1, Lt1/r;

    invoke-direct {v1, p2}, Lt1/r;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception p2

    new-instance v1, Lt1/r;

    invoke-direct {v1, p2}, Lt1/r;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_3
    move-exception p2

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, La2/a;->S(Z)V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    :try_start_2
    new-instance v1, Lt1/r;

    invoke-direct {v1, p2}, Lt1/r;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    invoke-virtual {p1, v0}, La2/a;->S(Z)V

    throw p2
.end method

.method public h(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lt1/e;->o(Ljava/io/Reader;)La2/a;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lt1/e;->g(La2/a;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, p1}, Lt1/e;->a(Ljava/lang/Object;La2/a;)V

    return-object p2
.end method

.method public i(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lt1/e;->j(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2}, Lv1/k;->b(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public j(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lt1/e;->h(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public k(Ljava/lang/Class;)Lt1/t;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lt1/t<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, Lz1/a;->a(Ljava/lang/Class;)Lz1/a;

    move-result-object p1

    invoke-virtual {p0, p1}, Lt1/e;->l(Lz1/a;)Lt1/t;

    move-result-object p1

    return-object p1
.end method

.method public l(Lz1/a;)Lt1/t;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lz1/a<",
            "TT;>;)",
            "Lt1/t<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lt1/e;->b:Ljava/util/Map;

    if-nez p1, :cond_0

    sget-object v1, Lt1/e;->v:Lz1/a;

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt1/t;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    iget-object v0, p0, Lt1/e;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lt1/e;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lt1/e$f;

    if-eqz v2, :cond_3

    return-object v2

    :cond_3
    :try_start_0
    new-instance v2, Lt1/e$f;

    invoke-direct {v2}, Lt1/e$f;-><init>()V

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lt1/e;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lt1/u;

    invoke-interface {v4, p0, p1}, Lt1/u;->a(Lt1/e;Lz1/a;)Lt1/t;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v2, v4}, Lt1/e$f;->e(Lt1/t;)V

    iget-object v2, p0, Lt1/e;->b:Ljava/util/Map;

    invoke-interface {v2, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_5

    iget-object p1, p0, Lt1/e;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->remove()V

    :cond_5
    return-object v4

    :cond_6
    :try_start_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GSON (2.8.6) cannot handle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v2

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_7

    iget-object p1, p0, Lt1/e;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->remove()V

    :cond_7
    throw v2
.end method

.method public m(Lt1/u;Lz1/a;)Lt1/t;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lt1/u;",
            "Lz1/a<",
            "TT;>;)",
            "Lt1/t<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lt1/e;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lt1/e;->d:Lw1/d;

    :cond_0
    iget-object v0, p0, Lt1/e;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lt1/u;

    if-nez v1, :cond_2

    if-ne v2, p1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {v2, p0, p2}, Lt1/u;->a(Lt1/e;Lz1/a;)Lt1/t;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GSON cannot serialize "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public o(Ljava/io/Reader;)La2/a;
    .locals 1

    new-instance v0, La2/a;

    invoke-direct {v0, p1}, La2/a;-><init>(Ljava/io/Reader;)V

    iget-boolean p1, p0, Lt1/e;->n:Z

    invoke-virtual {v0, p1}, La2/a;->S(Z)V

    return-object v0
.end method

.method public p(Ljava/io/Writer;)La2/c;
    .locals 1

    iget-boolean v0, p0, Lt1/e;->k:Z

    if-eqz v0, :cond_0

    const-string v0, ")]}\'\n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_0
    new-instance v0, La2/c;

    invoke-direct {v0, p1}, La2/c;-><init>(Ljava/io/Writer;)V

    iget-boolean p1, p0, Lt1/e;->m:Z

    if-eqz p1, :cond_1

    const-string p1, "  "

    invoke-virtual {v0, p1}, La2/c;->G(Ljava/lang/String;)V

    :cond_1
    iget-boolean p1, p0, Lt1/e;->i:Z

    invoke-virtual {v0, p1}, La2/c;->I(Z)V

    return-object v0
.end method

.method public q(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    sget-object p1, Lt1/l;->a:Lt1/l;

    invoke-virtual {p0, p1}, Lt1/e;->s(Lt1/j;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lt1/e;->r(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public r(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lt1/e;->u(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public s(Lt1/j;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    invoke-virtual {p0, p1, v0}, Lt1/e;->w(Lt1/j;Ljava/lang/Appendable;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public t(Ljava/lang/Object;Ljava/lang/reflect/Type;La2/c;)V
    .locals 5

    invoke-static {p2}, Lz1/a;->b(Ljava/lang/reflect/Type;)Lz1/a;

    move-result-object p2

    invoke-virtual {p0, p2}, Lt1/e;->l(Lz1/a;)Lt1/t;

    move-result-object p2

    invoke-virtual {p3}, La2/c;->l()Z

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p3, v1}, La2/c;->H(Z)V

    invoke-virtual {p3}, La2/c;->k()Z

    move-result v1

    iget-boolean v2, p0, Lt1/e;->l:Z

    invoke-virtual {p3, v2}, La2/c;->D(Z)V

    invoke-virtual {p3}, La2/c;->j()Z

    move-result v2

    iget-boolean v3, p0, Lt1/e;->i:Z

    invoke-virtual {p3, v3}, La2/c;->I(Z)V

    :try_start_0
    invoke-virtual {p2, p3, p1}, Lt1/t;->d(La2/c;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p3, v0}, La2/c;->H(Z)V

    invoke-virtual {p3, v1}, La2/c;->D(Z)V

    invoke-virtual {p3, v2}, La2/c;->I(Z)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    new-instance p2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AssertionError (GSON 2.8.6): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p2

    :catch_1
    move-exception p1

    new-instance p2, Lt1/k;

    invoke-direct {p2, p1}, Lt1/k;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-virtual {p3, v0}, La2/c;->H(Z)V

    invoke-virtual {p3, v1}, La2/c;->D(Z)V

    invoke-virtual {p3, v2}, La2/c;->I(Z)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{serializeNulls:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lt1/e;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",factories:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lt1/e;->e:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",instanceCreators:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lt1/e;->c:Lv1/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V
    .locals 0

    :try_start_0
    invoke-static {p3}, Lv1/l;->c(Ljava/lang/Appendable;)Ljava/io/Writer;

    move-result-object p3

    invoke-virtual {p0, p3}, Lt1/e;->p(Ljava/io/Writer;)La2/c;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lt1/e;->t(Ljava/lang/Object;Ljava/lang/reflect/Type;La2/c;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lt1/k;

    invoke-direct {p2, p1}, Lt1/k;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public v(Lt1/j;La2/c;)V
    .locals 6

    invoke-virtual {p2}, La2/c;->l()Z

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, La2/c;->H(Z)V

    invoke-virtual {p2}, La2/c;->k()Z

    move-result v1

    iget-boolean v2, p0, Lt1/e;->l:Z

    invoke-virtual {p2, v2}, La2/c;->D(Z)V

    invoke-virtual {p2}, La2/c;->j()Z

    move-result v2

    iget-boolean v3, p0, Lt1/e;->i:Z

    invoke-virtual {p2, v3}, La2/c;->I(Z)V

    :try_start_0
    invoke-static {p1, p2}, Lv1/l;->b(Lt1/j;La2/c;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p2, v0}, La2/c;->H(Z)V

    invoke-virtual {p2, v1}, La2/c;->D(Z)V

    invoke-virtual {p2, v2}, La2/c;->I(Z)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    new-instance v3, Ljava/lang/AssertionError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AssertionError (GSON 2.8.6): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v3

    :catch_1
    move-exception p1

    new-instance v3, Lt1/k;

    invoke-direct {v3, p1}, Lt1/k;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-virtual {p2, v0}, La2/c;->H(Z)V

    invoke-virtual {p2, v1}, La2/c;->D(Z)V

    invoke-virtual {p2, v2}, La2/c;->I(Z)V

    throw p1
.end method

.method public w(Lt1/j;Ljava/lang/Appendable;)V
    .locals 0

    :try_start_0
    invoke-static {p2}, Lv1/l;->c(Ljava/lang/Appendable;)Ljava/io/Writer;

    move-result-object p2

    invoke-virtual {p0, p2}, Lt1/e;->p(Ljava/io/Writer;)La2/c;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lt1/e;->v(Lt1/j;La2/c;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lt1/k;

    invoke-direct {p2, p1}, Lt1/k;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
