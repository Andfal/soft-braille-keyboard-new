.class public Lh/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh/v0;


# static fields
.field public static a:Lh/b0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lh/b0;

    invoke-direct {v0}, Lh/b0;-><init>()V

    sput-object v0, Lh/b0;->a:Lh/b0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lh/k0;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 9

    iget-object p5, p1, Lh/k0;->k:Lh/f1;

    if-nez p2, :cond_0

    sget-object p1, Lh/g1;->h:Lh/g1;

    invoke-virtual {p5, p1}, Lh/f1;->R(Lh/g1;)V

    return-void

    :cond_0
    sget-object v0, Lh/g1;->p:Lh/g1;

    invoke-virtual {p5, v0}, Lh/f1;->j(Lh/g1;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    instance-of v0, p4, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_1

    check-cast p4, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p4}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p4

    aget-object p4, p4, v1

    goto :goto_0

    :cond_1
    const/4 p4, 0x0

    :goto_0
    move-object v0, p2

    check-cast v0, Ljava/util/Enumeration;

    iget-object v8, p1, Lh/k0;->q:Lh/a1;

    invoke-virtual {p1, v8, p2, p3, v1}, Lh/k0;->B(Lh/a1;Ljava/lang/Object;Ljava/lang/Object;I)V

    const/16 p2, 0x5b

    :try_start_0
    invoke-virtual {p5, p2}, Lh/f1;->b(C)Lh/f1;

    :goto_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 p2, v1, 0x1

    if-eqz v1, :cond_2

    const/16 p3, 0x2c

    invoke-virtual {p5, p3}, Lh/f1;->b(C)Lh/f1;

    :cond_2
    if-nez v4, :cond_3

    invoke-virtual {p5}, Lh/f1;->O()V

    goto :goto_2

    :cond_3
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p1, p3}, Lh/k0;->v(Ljava/lang/Class;)Lh/v0;

    move-result-object v2

    add-int/lit8 p3, p2, -0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x0

    move-object v3, p1

    move-object v6, p4

    invoke-interface/range {v2 .. v7}, Lh/v0;->b(Lh/k0;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    :goto_2
    move v1, p2

    goto :goto_1

    :cond_4
    const/16 p2, 0x5d

    invoke-virtual {p5, p2}, Lh/f1;->b(C)Lh/f1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v8, p1, Lh/k0;->q:Lh/a1;

    return-void

    :catchall_0
    move-exception p2

    iput-object v8, p1, Lh/k0;->q:Lh/a1;

    throw p2
.end method
