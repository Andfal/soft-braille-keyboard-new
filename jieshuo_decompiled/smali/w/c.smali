.class public final Lw/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw/d;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lw/d;",
        "Ljava/lang/Comparable<",
        "Lw/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final A:Lw/c;

.field public static final B:Lw/c;

.field public static final C:Lw/c;

.field public static final D:Lw/c;

.field public static final E:Lw/c;

.field public static final F:Lw/c;

.field public static final G:Lw/c;

.field public static final H:Lw/c;

.field public static final I:Lw/c;

.field public static final J:Lw/c;

.field public static final K:Lw/c;

.field public static final L:Lw/c;

.field public static final M:Lw/c;

.field public static final N:Lw/c;

.field public static final O:Lw/c;

.field public static final P:Lw/c;

.field public static final Q:Lw/c;

.field public static final R:Lw/c;

.field private static final h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lw/c;",
            ">;"
        }
    .end annotation
.end field

.field public static final i:Lw/c;

.field public static final j:Lw/c;

.field public static final k:Lw/c;

.field public static final l:Lw/c;

.field public static final m:Lw/c;

.field public static final n:Lw/c;

.field public static final o:Lw/c;

.field public static final p:Lw/c;

.field public static final q:Lw/c;

.field public static final r:Lw/c;

.field public static final s:Lw/c;

.field public static final t:Lw/c;

.field public static final u:Lw/c;

.field public static final v:Lw/c;

.field public static final w:Lw/c;

.field public static final x:Lw/c;

.field public static final y:Lw/c;

.field public static final z:Lw/c;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:I

.field private d:Ljava/lang/String;

.field private e:Lw/c;

.field private f:Lw/c;

.field private g:Lw/c;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lw/c;->h:Ljava/util/HashMap;

    new-instance v0, Lw/c;

    const-string v1, "Z"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lw/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lw/c;->i:Lw/c;

    new-instance v1, Lw/c;

    const-string v2, "B"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lw/c;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lw/c;->j:Lw/c;

    new-instance v2, Lw/c;

    const-string v3, "C"

    const/4 v4, 0x3

    invoke-direct {v2, v3, v4}, Lw/c;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lw/c;->k:Lw/c;

    new-instance v3, Lw/c;

    const-string v4, "D"

    const/4 v5, 0x4

    invoke-direct {v3, v4, v5}, Lw/c;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lw/c;->l:Lw/c;

    new-instance v4, Lw/c;

    const-string v5, "F"

    const/4 v6, 0x5

    invoke-direct {v4, v5, v6}, Lw/c;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lw/c;->m:Lw/c;

    new-instance v5, Lw/c;

    const-string v6, "I"

    const/4 v7, 0x6

    invoke-direct {v5, v6, v7}, Lw/c;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lw/c;->n:Lw/c;

    new-instance v6, Lw/c;

    const-string v7, "J"

    const/4 v8, 0x7

    invoke-direct {v6, v7, v8}, Lw/c;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lw/c;->o:Lw/c;

    new-instance v7, Lw/c;

    const-string v8, "S"

    const/16 v9, 0x8

    invoke-direct {v7, v8, v9}, Lw/c;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lw/c;->p:Lw/c;

    new-instance v8, Lw/c;

    const-string v9, "V"

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Lw/c;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lw/c;->q:Lw/c;

    new-instance v8, Lw/c;

    const-string v9, "<null>"

    const/16 v10, 0x9

    invoke-direct {v8, v9, v10}, Lw/c;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lw/c;->r:Lw/c;

    new-instance v8, Lw/c;

    const-string v9, "<addr>"

    const/16 v10, 0xa

    invoke-direct {v8, v9, v10}, Lw/c;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lw/c;->s:Lw/c;

    invoke-static {v0}, Lw/c;->p(Lw/c;)Lw/c;

    invoke-static {v1}, Lw/c;->p(Lw/c;)Lw/c;

    invoke-static {v2}, Lw/c;->p(Lw/c;)Lw/c;

    invoke-static {v3}, Lw/c;->p(Lw/c;)Lw/c;

    invoke-static {v4}, Lw/c;->p(Lw/c;)Lw/c;

    invoke-static {v5}, Lw/c;->p(Lw/c;)Lw/c;

    invoke-static {v6}, Lw/c;->p(Lw/c;)Lw/c;

    invoke-static {v7}, Lw/c;->p(Lw/c;)Lw/c;

    const-string v8, "Ljava/lang/annotation/Annotation;"

    invoke-static {v8}, Lw/c;->j(Ljava/lang/String;)Lw/c;

    move-result-object v8

    sput-object v8, Lw/c;->t:Lw/c;

    const-string v8, "Ljava/lang/Class;"

    invoke-static {v8}, Lw/c;->j(Ljava/lang/String;)Lw/c;

    move-result-object v8

    sput-object v8, Lw/c;->u:Lw/c;

    const-string v8, "Ljava/lang/Cloneable;"

    invoke-static {v8}, Lw/c;->j(Ljava/lang/String;)Lw/c;

    move-result-object v8

    sput-object v8, Lw/c;->v:Lw/c;

    const-string v8, "Ljava/lang/Object;"

    invoke-static {v8}, Lw/c;->j(Ljava/lang/String;)Lw/c;

    move-result-object v8

    sput-object v8, Lw/c;->w:Lw/c;

    const-string v9, "Ljava/io/Serializable;"

    invoke-static {v9}, Lw/c;->j(Ljava/lang/String;)Lw/c;

    move-result-object v9

    sput-object v9, Lw/c;->x:Lw/c;

    const-string v9, "Ljava/lang/String;"

    invoke-static {v9}, Lw/c;->j(Ljava/lang/String;)Lw/c;

    move-result-object v9

    sput-object v9, Lw/c;->y:Lw/c;

    const-string v9, "Ljava/lang/Throwable;"

    invoke-static {v9}, Lw/c;->j(Ljava/lang/String;)Lw/c;

    move-result-object v9

    sput-object v9, Lw/c;->z:Lw/c;

    const-string v9, "Ljava/lang/Boolean;"

    invoke-static {v9}, Lw/c;->j(Ljava/lang/String;)Lw/c;

    move-result-object v9

    sput-object v9, Lw/c;->A:Lw/c;

    const-string v9, "Ljava/lang/Byte;"

    invoke-static {v9}, Lw/c;->j(Ljava/lang/String;)Lw/c;

    move-result-object v9

    sput-object v9, Lw/c;->B:Lw/c;

    const-string v9, "Ljava/lang/Character;"

    invoke-static {v9}, Lw/c;->j(Ljava/lang/String;)Lw/c;

    move-result-object v9

    sput-object v9, Lw/c;->C:Lw/c;

    const-string v9, "Ljava/lang/Double;"

    invoke-static {v9}, Lw/c;->j(Ljava/lang/String;)Lw/c;

    move-result-object v9

    sput-object v9, Lw/c;->D:Lw/c;

    const-string v9, "Ljava/lang/Float;"

    invoke-static {v9}, Lw/c;->j(Ljava/lang/String;)Lw/c;

    move-result-object v9

    sput-object v9, Lw/c;->E:Lw/c;

    const-string v9, "Ljava/lang/Integer;"

    invoke-static {v9}, Lw/c;->j(Ljava/lang/String;)Lw/c;

    move-result-object v9

    sput-object v9, Lw/c;->F:Lw/c;

    const-string v9, "Ljava/lang/Long;"

    invoke-static {v9}, Lw/c;->j(Ljava/lang/String;)Lw/c;

    move-result-object v9

    sput-object v9, Lw/c;->G:Lw/c;

    const-string v9, "Ljava/lang/Short;"

    invoke-static {v9}, Lw/c;->j(Ljava/lang/String;)Lw/c;

    move-result-object v9

    sput-object v9, Lw/c;->H:Lw/c;

    const-string v9, "Ljava/lang/Void;"

    invoke-static {v9}, Lw/c;->j(Ljava/lang/String;)Lw/c;

    move-result-object v9

    sput-object v9, Lw/c;->I:Lw/c;

    invoke-virtual {v0}, Lw/c;->e()Lw/c;

    move-result-object v0

    sput-object v0, Lw/c;->J:Lw/c;

    invoke-virtual {v1}, Lw/c;->e()Lw/c;

    move-result-object v0

    sput-object v0, Lw/c;->K:Lw/c;

    invoke-virtual {v2}, Lw/c;->e()Lw/c;

    move-result-object v0

    sput-object v0, Lw/c;->L:Lw/c;

    invoke-virtual {v3}, Lw/c;->e()Lw/c;

    move-result-object v0

    sput-object v0, Lw/c;->M:Lw/c;

    invoke-virtual {v4}, Lw/c;->e()Lw/c;

    move-result-object v0

    sput-object v0, Lw/c;->N:Lw/c;

    invoke-virtual {v5}, Lw/c;->e()Lw/c;

    move-result-object v0

    sput-object v0, Lw/c;->O:Lw/c;

    invoke-virtual {v6}, Lw/c;->e()Lw/c;

    move-result-object v0

    sput-object v0, Lw/c;->P:Lw/c;

    invoke-virtual {v8}, Lw/c;->e()Lw/c;

    move-result-object v0

    sput-object v0, Lw/c;->Q:Lw/c;

    invoke-virtual {v7}, Lw/c;->e()Lw/c;

    move-result-object v0

    sput-object v0, Lw/c;->R:Lw/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lw/c;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    if-ltz p2, :cond_1

    const/16 v0, 0xb

    if-ge p2, v0, :cond_1

    const/4 v0, -0x1

    if-lt p3, v0, :cond_0

    iput-object p1, p0, Lw/c;->a:Ljava/lang/String;

    iput p2, p0, Lw/c;->b:I

    iput p3, p0, Lw/c;->c:I

    const/4 p1, 0x0

    iput-object p1, p0, Lw/c;->e:Lw/c;

    iput-object p1, p0, Lw/c;->f:Lw/c;

    iput-object p1, p0, Lw/c;->g:Lw/c;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "newAt < -1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bad basicType"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "descriptor == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static j(Ljava/lang/String;)Lw/c;
    .locals 7

    sget-object v0, Lw/c;->h:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lw/c;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    const/16 v1, 0x5b

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lw/c;->j(Ljava/lang/String;)Lw/c;

    move-result-object p0

    invoke-virtual {p0}, Lw/c;->e()Lw/c;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x4c

    if-ne v0, v4, :cond_6

    sub-int/2addr v3, v2

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x3b

    if-ne v0, v4, :cond_6

    const/4 v0, 0x1

    :goto_0
    if-ge v0, v3, :cond_5

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x28

    if-eq v5, v6, :cond_4

    const/16 v6, 0x29

    if-eq v5, v6, :cond_4

    const/16 v6, 0x2e

    if-eq v5, v6, :cond_4

    const/16 v6, 0x2f

    if-eq v5, v6, :cond_2

    if-eq v5, v4, :cond_4

    if-eq v5, v1, :cond_4

    goto :goto_1

    :cond_2
    if-eq v0, v2, :cond_3

    if-eq v0, v3, :cond_3

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v6, :cond_3

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad descriptor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad descriptor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Lw/c;

    const/16 v1, 0x9

    invoke-direct {v0, p0, v1}, Lw/c;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Lw/c;->p(Lw/c;)Lw/c;

    move-result-object p0

    return-object p0

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad descriptor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "descriptor == null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "descriptor is empty"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static k(Ljava/lang/String;)Lw/c;
    .locals 1

    :try_start_0
    const-string v0, "V"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lw/c;->q:Lw/c;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_0
    invoke-static {p0}, Lw/c;->j(Ljava/lang/String;)Lw/c;

    move-result-object p0

    return-object p0

    :catch_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "descriptor == null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static p(Lw/c;)Lw/c;
    .locals 3

    sget-object v0, Lw/c;->h:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lw/c;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lw/c;

    if-eqz v2, :cond_0

    monitor-exit v0

    return-object v2

    :cond_0
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lw/c;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lw/c;->a:Ljava/lang/String;

    return-object v0

    :pswitch_0
    invoke-virtual {p0}, Lw/c;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lw/c;->h()Lw/c;

    move-result-object v1

    invoke-virtual {v1}, Lw/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lw/c;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    const-string v2, "."

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    const-string v0, "short"

    return-object v0

    :pswitch_2
    const-string v0, "long"

    return-object v0

    :pswitch_3
    const-string v0, "int"

    return-object v0

    :pswitch_4
    const-string v0, "float"

    return-object v0

    :pswitch_5
    const-string v0, "double"

    return-object v0

    :pswitch_6
    const-string v0, "char"

    return-object v0

    :pswitch_7
    const-string v0, "byte"

    return-object v0

    :pswitch_8
    const-string v0, "boolean"

    return-object v0

    :pswitch_9
    const-string v0, "void"

    return-object v0

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

.method public b()I
    .locals 1

    iget v0, p0, Lw/c;->b:I

    return v0
.end method

.method public c()I
    .locals 3

    iget v0, p0, Lw/c;->b:I

    const/4 v1, 0x1

    const/4 v2, 0x6

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    if-eq v0, v2, :cond_0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    return v2
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lw/c;

    invoke-virtual {p0, p1}, Lw/c;->d(Lw/c;)I

    move-result p1

    return p1
.end method

.method public d(Lw/c;)I
    .locals 1

    iget-object v0, p0, Lw/c;->a:Ljava/lang/String;

    iget-object p1, p1, Lw/c;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public e()Lw/c;
    .locals 3

    iget-object v0, p0, Lw/c;->e:Lw/c;

    if-nez v0, :cond_0

    new-instance v0, Lw/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lw/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lw/c;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Lw/c;->p(Lw/c;)Lw/c;

    move-result-object v0

    iput-object v0, p0, Lw/c;->e:Lw/c;

    :cond_0
    iget-object v0, p0, Lw/c;->e:Lw/c;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lw/c;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    iget-object v0, p0, Lw/c;->a:Ljava/lang/String;

    check-cast p1, Lw/c;

    iget-object p1, p1, Lw/c;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public f()I
    .locals 2

    iget v0, p0, Lw/c;->b:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x2

    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lw/c;->d:Ljava/lang/String;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lw/c;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lw/c;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5b

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lw/c;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lw/c;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lw/c;->d:Ljava/lang/String;

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not an object type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lw/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_1
    iget-object v0, p0, Lw/c;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lw/c;
    .locals 0

    return-object p0
.end method

.method public h()Lw/c;
    .locals 3

    iget-object v0, p0, Lw/c;->f:Lw/c;

    if-nez v0, :cond_1

    iget-object v0, p0, Lw/c;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5b

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lw/c;->a:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lw/c;->j(Ljava/lang/String;)Lw/c;

    move-result-object v0

    iput-object v0, p0, Lw/c;->f:Lw/c;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not an array type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lw/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lw/c;->f:Lw/c;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lw/c;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lw/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public l()Z
    .locals 3

    iget-object v0, p0, Lw/c;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x5b

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public m()Z
    .locals 2

    iget v0, p0, Lw/c;->b:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public n()Z
    .locals 3

    iget v0, p0, Lw/c;->b:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v2, 0x6

    if-eq v0, v2, :cond_0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    return v1
.end method

.method public o()Z
    .locals 2

    iget v0, p0, Lw/c;->b:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lw/c;->a:Ljava/lang/String;

    return-object v0
.end method
