.class public Lh/k0;
.super Lh/e1;
.source "SourceFile"


# instance fields
.field protected final j:Lh/c1;

.field public final k:Lh/f1;

.field private l:I

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/text/DateFormat;

.field protected p:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Ljava/lang/Object;",
            "Lh/a1;",
            ">;"
        }
    .end annotation
.end field

.field protected q:Lh/a1;

.field protected r:Ljava/util/TimeZone;

.field protected s:Ljava/util/Locale;


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Lh/f1;

    invoke-direct {v0}, Lh/f1;-><init>()V

    invoke-static {}, Lh/c1;->g()Lh/c1;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lh/k0;-><init>(Lh/f1;Lh/c1;)V

    return-void
.end method

.method public constructor <init>(Lh/f1;)V
    .locals 1

    invoke-static {}, Lh/c1;->g()Lh/c1;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lh/k0;-><init>(Lh/f1;Lh/c1;)V

    return-void
.end method

.method public constructor <init>(Lh/f1;Lh/c1;)V
    .locals 1

    invoke-direct {p0}, Lh/e1;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lh/k0;->l:I

    const-string v0, "\t"

    iput-object v0, p0, Lh/k0;->m:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lh/k0;->p:Ljava/util/IdentityHashMap;

    sget-object v0, Lc/a;->a:Ljava/util/TimeZone;

    iput-object v0, p0, Lh/k0;->r:Ljava/util/TimeZone;

    sget-object v0, Lc/a;->b:Ljava/util/Locale;

    iput-object v0, p0, Lh/k0;->s:Ljava/util/Locale;

    iput-object p1, p0, Lh/k0;->k:Lh/f1;

    iput-object p2, p0, Lh/k0;->j:Lh/c1;

    return-void
.end method


# virtual methods
.method public A()V
    .locals 3

    iget-object v0, p0, Lh/k0;->k:Lh/f1;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lh/f1;->write(I)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lh/k0;->l:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lh/k0;->k:Lh/f1;

    iget-object v2, p0, Lh/k0;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lh/f1;->write(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public B(Lh/a1;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lh/k0;->C(Lh/a1;Ljava/lang/Object;Ljava/lang/Object;II)V

    return-void
.end method

.method public C(Lh/a1;Ljava/lang/Object;Ljava/lang/Object;II)V
    .locals 7

    iget-object v0, p0, Lh/k0;->k:Lh/f1;

    iget-boolean v0, v0, Lh/f1;->h:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lh/a1;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lh/a1;-><init>(Lh/a1;Ljava/lang/Object;Ljava/lang/Object;II)V

    iput-object v0, p0, Lh/k0;->q:Lh/a1;

    iget-object p1, p0, Lh/k0;->p:Ljava/util/IdentityHashMap;

    if-nez p1, :cond_1

    new-instance p1, Ljava/util/IdentityHashMap;

    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object p1, p0, Lh/k0;->p:Ljava/util/IdentityHashMap;

    :cond_1
    iget-object p1, p0, Lh/k0;->p:Ljava/util/IdentityHashMap;

    iget-object p3, p0, Lh/k0;->q:Lh/a1;

    invoke-virtual {p1, p2, p3}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public D(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lh/k0;->n:Ljava/lang/String;

    iget-object p1, p0, Lh/k0;->o:Ljava/text/DateFormat;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lh/k0;->o:Ljava/text/DateFormat;

    :cond_0
    return-void
.end method

.method public final E(Ljava/lang/Object;)V
    .locals 7

    if-nez p1, :cond_0

    iget-object p1, p0, Lh/k0;->k:Lh/f1;

    invoke-virtual {p1}, Lh/f1;->O()V

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lh/k0;->v(Ljava/lang/Class;)Lh/v0;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    :try_start_0
    invoke-interface/range {v1 .. v6}, Lh/v0;->b(Lh/k0;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lc/d;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lc/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final F(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lh/h1;->a:Lh/h1;

    invoke-virtual {v0, p0, p1}, Lh/h1;->g(Lh/k0;Ljava/lang/String;)V

    return-void
.end method

.method public G()V
    .locals 1

    iget-object v0, p0, Lh/k0;->k:Lh/f1;

    invoke-virtual {v0}, Lh/f1;->O()V

    return-void
.end method

.method public H(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lh/k0;->q:Lh/a1;

    iget-object v1, v0, Lh/a1;->b:Ljava/lang/Object;

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lh/k0;->k:Lh/f1;

    const-string v0, "{\"$ref\":\"@\"}"

    :goto_0
    invoke-virtual {p1, v0}, Lh/f1;->write(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, v0, Lh/a1;->a:Lh/a1;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lh/a1;->b:Ljava/lang/Object;

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lh/k0;->k:Lh/f1;

    const-string v0, "{\"$ref\":\"..\"}"

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v1, v0, Lh/a1;->a:Lh/a1;

    if-nez v1, :cond_3

    iget-object v0, v0, Lh/a1;->b:Ljava/lang/Object;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lh/k0;->k:Lh/f1;

    const-string v0, "{\"$ref\":\"$\"}"

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lh/k0;->k:Lh/f1;

    const-string v1, "{\"$ref\":\""

    invoke-virtual {v0, v1}, Lh/f1;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lh/k0;->p:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lh/a1;

    invoke-virtual {p1}, Lh/a1;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lh/k0;->k:Lh/f1;

    invoke-virtual {v0, p1}, Lh/f1;->write(Ljava/lang/String;)V

    iget-object p1, p0, Lh/k0;->k:Lh/f1;

    const-string v0, "\"}"

    :goto_2
    invoke-virtual {p1, v0}, Lh/f1;->write(Ljava/lang/String;)V

    return-void

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method public final I(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lh/k0;->J(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    return-void
.end method

.method public final J(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 7

    if-nez p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lh/k0;->k:Lh/f1;

    invoke-virtual {p1}, Lh/f1;->O()V

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lh/k0;->v(Ljava/lang/Class;)Lh/v0;

    move-result-object v1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-interface/range {v1 .. v6}, Lh/v0;->b(Lh/k0;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lc/d;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lc/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final K(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 5

    instance-of v0, p1, Ljava/util/Date;

    if-eqz v0, :cond_3

    const-string v0, "unixtime"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    const-wide/16 v0, 0x3e8

    div-long/2addr p1, v0

    iget-object v0, p0, Lh/k0;->k:Lh/f1;

    long-to-int p2, p1

    invoke-virtual {v0, p2}, Lh/f1;->L(I)V

    return-void

    :cond_0
    const-string v0, "millis"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p2, p0, Lh/k0;->k:Lh/f1;

    check-cast p1, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lh/f1;->N(J)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lh/k0;->t()Ljava/text/DateFormat;

    move-result-object v0

    if-nez v0, :cond_2

    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lh/k0;->s:Ljava/util/Locale;

    invoke-direct {v0, p2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "T"

    const-string v1, "\'T\'"

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lh/k0;->s:Ljava/util/Locale;

    invoke-direct {v0, p2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    :goto_0
    iget-object p2, p0, Lh/k0;->r:Ljava/util/TimeZone;

    invoke-virtual {v0, p2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    :cond_2
    check-cast p1, Ljava/util/Date;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lh/k0;->k:Lh/f1;

    invoke-virtual {p2, p1}, Lh/f1;->S(Ljava/lang/String;)V

    return-void

    :cond_3
    instance-of v0, p1, [B

    if-eqz v0, :cond_8

    check-cast p1, [B

    const-string v0, "gzip"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "gzip,base64"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    const-string v0, "hex"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, p0, Lh/k0;->k:Lh/f1;

    invoke-virtual {p2, p1}, Lh/f1;->K([B)V

    goto :goto_3

    :cond_5
    iget-object p2, p0, Lh/k0;->k:Lh/f1;

    invoke-virtual {p2, p1}, Lh/f1;->l([B)V

    goto :goto_3

    :cond_6
    :goto_1
    const/4 p2, 0x0

    :try_start_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    array-length v1, p1

    const/16 v2, 0x200

    if-ge v1, v2, :cond_7

    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    array-length v2, p1

    invoke-direct {v1, v0, v2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;I)V

    goto :goto_2

    :cond_7
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    :goto_2
    move-object p2, v1

    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p2}, Ljava/util/zip/GZIPOutputStream;->finish()V

    iget-object p1, p0, Lh/k0;->k:Lh/f1;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lh/f1;->l([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {p2}, Ll/e;->a(Ljava/io/Closeable;)V

    :goto_3
    return-void

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_1
    move-exception p1

    :try_start_2
    new-instance v0, Lc/d;

    const-string v1, "write gzipBytes error"

    invoke-direct {v0, v1, p1}, Lc/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_4
    invoke-static {p2}, Ll/e;->a(Ljava/io/Closeable;)V

    throw p1

    :cond_8
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_b

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lh/k0;->k:Lh/f1;

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Lh/f1;->write(I)V

    const/4 v1, 0x0

    :goto_5
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    if-ge v1, v2, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-eqz v1, :cond_9

    iget-object v3, p0, Lh/k0;->k:Lh/f1;

    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Lh/f1;->write(I)V

    :cond_9
    invoke-virtual {p0, v2, p2}, Lh/k0;->K(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_a
    iget-object p1, p0, Lh/k0;->k:Lh/f1;

    const/16 p2, 0x5d

    invoke-virtual {p1, p2}, Lh/f1;->write(I)V

    return-void

    :cond_b
    invoke-virtual {p0, p1}, Lh/k0;->E(Ljava/lang/Object;)V

    return-void
.end method

.method public q(Lh/g1;Z)V
    .locals 1

    iget-object v0, p0, Lh/k0;->k:Lh/f1;

    invoke-virtual {v0, p1, p2}, Lh/f1;->g(Lh/g1;Z)V

    return-void
.end method

.method public r(Ljava/lang/Object;)Z
    .locals 3

    iget-object v0, p0, Lh/k0;->p:Ljava/util/IdentityHashMap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh/a1;

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    if-ne p1, v2, :cond_2

    return v1

    :cond_2
    iget-object p1, v0, Lh/a1;->c:Ljava/lang/Object;

    if-eqz p1, :cond_3

    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_3

    instance-of p1, p1, Ljava/lang/String;

    if-eqz p1, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method public s()V
    .locals 1

    iget v0, p0, Lh/k0;->l:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lh/k0;->l:I

    return-void
.end method

.method public t()Ljava/text/DateFormat;
    .locals 3

    iget-object v0, p0, Lh/k0;->o:Ljava/text/DateFormat;

    if-nez v0, :cond_0

    iget-object v0, p0, Lh/k0;->n:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lh/k0;->n:Ljava/lang/String;

    iget-object v2, p0, Lh/k0;->s:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lh/k0;->o:Ljava/text/DateFormat;

    iget-object v1, p0, Lh/k0;->r:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    :cond_0
    iget-object v0, p0, Lh/k0;->o:Ljava/text/DateFormat;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lh/k0;->k:Lh/f1;

    invoke-virtual {v0}, Lh/f1;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lh/k0;->o:Ljava/text/DateFormat;

    instance-of v1, v0, Ljava/text/SimpleDateFormat;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lh/k0;->n:Ljava/lang/String;

    return-object v0
.end method

.method public v(Ljava/lang/Class;)Lh/v0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lh/v0;"
        }
    .end annotation

    iget-object v0, p0, Lh/k0;->j:Lh/c1;

    invoke-virtual {v0, p1}, Lh/c1;->h(Ljava/lang/Class;)Lh/v0;

    move-result-object p1

    return-object p1
.end method

.method public w()Lh/f1;
    .locals 1

    iget-object v0, p0, Lh/k0;->k:Lh/f1;

    return-object v0
.end method

.method public x()V
    .locals 1

    iget v0, p0, Lh/k0;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lh/k0;->l:I

    return-void
.end method

.method public y(Lh/g1;)Z
    .locals 1

    iget-object v0, p0, Lh/k0;->k:Lh/f1;

    invoke-virtual {v0, p1}, Lh/f1;->j(Lh/g1;)Z

    move-result p1

    return p1
.end method

.method public final z(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z
    .locals 1

    iget-object p2, p0, Lh/k0;->k:Lh/f1;

    sget-object v0, Lh/g1;->p:Lh/g1;

    invoke-virtual {p2, v0}, Lh/f1;->j(Lh/g1;)Z

    move-result p2

    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    iget-object p1, p0, Lh/k0;->k:Lh/f1;

    sget-object p2, Lh/g1;->u:Lh/g1;

    invoke-virtual {p1, p2}, Lh/f1;->j(Lh/g1;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lh/k0;->q:Lh/a1;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lh/a1;->a:Lh/a1;

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
