.class public Lg/f;
.super Lg/l;
.source "SourceFile"


# instance fields
.field protected c:Lg/j1;

.field protected d:Z


# direct methods
.method public constructor <init>(Lf/i;Ljava/lang/Class;Ll/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/i;",
            "Ljava/lang/Class<",
            "*>;",
            "Ll/c;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2, p3}, Lg/l;-><init>(Ljava/lang/Class;Ll/c;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lg/f;->d:Z

    invoke-virtual {p3}, Ll/c;->d()Ld/b;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ld/b;->deserializeUsing()Ljava/lang/Class;

    move-result-object p2

    if-eqz p2, :cond_0

    const-class p3, Ljava/lang/Void;

    if-eq p2, p3, :cond_0

    const/4 p1, 0x1

    :cond_0
    iput-boolean p1, p0, Lg/f;->d:Z

    :cond_1
    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    iget-object v0, p0, Lg/f;->c:Lg/j1;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lg/j1;->c()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x2

    return v0
.end method

.method public c(Lf/a;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/a;",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lg/f;->c:Lg/j1;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lf/a;->i()Lf/i;

    move-result-object v0

    invoke-virtual {p0, v0}, Lg/f;->j(Lf/i;)Lg/j1;

    :cond_0
    iget-object v0, p0, Lg/f;->c:Lg/j1;

    iget-object v1, p0, Lg/l;->a:Ll/c;

    iget-object v1, v1, Ll/c;->f:Ljava/lang/reflect/Type;

    instance-of v2, p3, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lf/a;->j()Lf/h;

    move-result-object v2

    if-eqz v2, :cond_1

    iput-object p3, v2, Lf/h;->e:Ljava/lang/reflect/Type;

    :cond_1
    if-eq v1, p3, :cond_2

    iget-object v0, p0, Lg/l;->b:Ljava/lang/Class;

    invoke-static {v0, p3, v1}, Ll/c;->h(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {p1}, Lf/a;->i()Lf/i;

    move-result-object p3

    invoke-virtual {p3, v1}, Lf/i;->n(Ljava/lang/reflect/Type;)Lg/j1;

    move-result-object v0

    :cond_2
    move-object v3, v1

    instance-of p3, v0, Lg/o;

    if-eqz p3, :cond_3

    iget-object p3, p0, Lg/l;->a:Ll/c;

    iget v1, p3, Ll/c;->j:I

    if-eqz v1, :cond_3

    check-cast v0, Lg/o;

    iget-object p3, p3, Ll/c;->a:Ljava/lang/String;

    invoke-virtual {v0, p1, v3, p3, v1}, Lg/o;->h(Lf/a;Ljava/lang/reflect/Type;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p3

    goto :goto_0

    :cond_3
    iget-object p3, p0, Lg/l;->a:Ll/c;

    iget-object v5, p3, Ll/c;->t:Ljava/lang/String;

    if-eqz v5, :cond_4

    instance-of v1, v0, Lg/e;

    if-eqz v1, :cond_4

    move-object v1, v0

    check-cast v1, Lg/e;

    iget-object v4, p3, Ll/c;->a:Ljava/lang/String;

    iget v6, p3, Ll/c;->j:I

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lg/e;->f(Lf/a;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p3

    goto :goto_0

    :cond_4
    iget-object p3, p3, Ll/c;->a:Ljava/lang/String;

    invoke-interface {v0, p1, v3, p3}, Lg/j1;->d(Lf/a;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    :goto_0
    instance-of v0, p3, [B

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lg/l;->a:Ll/c;

    iget-object v0, v0, Ll/c;->t:Ljava/lang/String;

    const-string v2, "gzip"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lg/l;->a:Ll/c;

    iget-object v0, v0, Ll/c;->t:Ljava/lang/String;

    const-string v2, "gzip,base64"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_5
    check-cast p3, [B

    :try_start_0
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance p3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :cond_6
    :goto_1
    const/16 v2, 0x400

    new-array v2, v2, [B

    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_7

    invoke-virtual {p3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p3

    goto :goto_2

    :cond_7
    if-lez v3, :cond_6

    invoke-virtual {p3, v2, v1, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance p2, Lc/d;

    const-string p3, "unzip bytes error."

    invoke-direct {p2, p3, p1}, Lc/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_8
    :goto_2
    invoke-virtual {p1}, Lf/a;->B()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_9

    invoke-virtual {p1}, Lf/a;->y()Lf/a$a;

    move-result-object p2

    iput-object p0, p2, Lf/a$a;->c:Lg/l;

    invoke-virtual {p1}, Lf/a;->j()Lf/h;

    move-result-object p3

    iput-object p3, p2, Lf/a$a;->d:Lf/h;

    invoke-virtual {p1, v1}, Lf/a;->l0(I)V

    goto :goto_3

    :cond_9
    if-nez p2, :cond_a

    iget-object p1, p0, Lg/l;->a:Ll/c;

    iget-object p1, p1, Ll/c;->a:Ljava/lang/String;

    invoke-interface {p4, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_a
    invoke-virtual {p0, p2, p3}, Lg/l;->g(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_3
    return-void
.end method

.method public j(Lf/i;)Lg/j1;
    .locals 3

    iget-object v0, p0, Lg/f;->c:Lg/j1;

    if-nez v0, :cond_1

    iget-object v0, p0, Lg/l;->a:Ll/c;

    invoke-virtual {v0}, Ll/c;->d()Ld/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ld/b;->deserializeUsing()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/Void;

    if-eq v1, v2, :cond_0

    invoke-interface {v0}, Ld/b;->deserializeUsing()Ljava/lang/Class;

    move-result-object p1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/j1;

    iput-object p1, p0, Lg/f;->c:Lg/j1;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Lc/d;

    const-string v1, "create deserializeUsing ObjectDeserializer error"

    invoke-direct {v0, v1, p1}, Lc/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lg/l;->a:Ll/c;

    iget-object v1, v0, Ll/c;->e:Ljava/lang/Class;

    iget-object v0, v0, Ll/c;->f:Ljava/lang/reflect/Type;

    invoke-virtual {p1, v1, v0}, Lf/i;->m(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lg/j1;

    move-result-object p1

    iput-object p1, p0, Lg/f;->c:Lg/j1;

    :cond_1
    :goto_0
    iget-object p1, p0, Lg/f;->c:Lg/j1;

    return-object p1
.end method
