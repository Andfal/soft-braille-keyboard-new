.class public final Lq/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ln/b;

.field private final b:Lq/g0;

.field private final c:Lq/g0;

.field private final d:Lq/g0;

.field private final e:Lq/g0;

.field private final f:Lq/p0;

.field private final g:Lq/r0;

.field private final h:Lq/k0;

.field private final i:Lq/t;

.field private final j:Lq/f0;

.field private final k:Lq/i;

.field private final l:Lq/g0;

.field private final m:Lq/g0;

.field private final n:Lq/v;

.field private final o:[Lq/l0;

.field private p:I

.field private q:I


# direct methods
.method public constructor <init>(Ln/b;)V
    .locals 17

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v1, p1

    iput-object v1, v0, Lq/m;->a:Ln/b;

    new-instance v1, Lq/v;

    invoke-direct {v1, v0}, Lq/v;-><init>(Lq/m;)V

    iput-object v1, v0, Lq/m;->n:Lq/v;

    new-instance v2, Lq/g0;

    sget-object v3, Lq/g0$c;->a:Lq/g0$c;

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-direct {v2, v4, v0, v5, v3}, Lq/g0;-><init>(Ljava/lang/String;Lq/m;ILq/g0$c;)V

    iput-object v2, v0, Lq/m;->c:Lq/g0;

    new-instance v6, Lq/g0;

    sget-object v7, Lq/g0$c;->b:Lq/g0$c;

    const-string v8, "word_data"

    invoke-direct {v6, v8, v0, v5, v7}, Lq/g0;-><init>(Ljava/lang/String;Lq/m;ILq/g0$c;)V

    iput-object v6, v0, Lq/m;->b:Lq/g0;

    new-instance v8, Lq/g0;

    sget-object v9, Lq/g0$c;->c:Lq/g0$c;

    const-string v10, "string_data"

    const/4 v11, 0x1

    invoke-direct {v8, v10, v0, v11, v9}, Lq/g0;-><init>(Ljava/lang/String;Lq/m;ILq/g0$c;)V

    iput-object v8, v0, Lq/m;->e:Lq/g0;

    new-instance v9, Lq/g0;

    invoke-direct {v9, v4, v0, v11, v3}, Lq/g0;-><init>(Ljava/lang/String;Lq/m;ILq/g0$c;)V

    iput-object v9, v0, Lq/m;->l:Lq/g0;

    new-instance v4, Lq/g0;

    const-string v10, "byte_data"

    invoke-direct {v4, v10, v0, v11, v7}, Lq/g0;-><init>(Ljava/lang/String;Lq/m;ILq/g0$c;)V

    iput-object v4, v0, Lq/m;->m:Lq/g0;

    new-instance v7, Lq/p0;

    invoke-direct {v7, v0}, Lq/p0;-><init>(Lq/m;)V

    iput-object v7, v0, Lq/m;->f:Lq/p0;

    new-instance v10, Lq/r0;

    invoke-direct {v10, v0}, Lq/r0;-><init>(Lq/m;)V

    iput-object v10, v0, Lq/m;->g:Lq/r0;

    new-instance v12, Lq/k0;

    invoke-direct {v12, v0}, Lq/k0;-><init>(Lq/m;)V

    iput-object v12, v0, Lq/m;->h:Lq/k0;

    new-instance v13, Lq/t;

    invoke-direct {v13, v0}, Lq/t;-><init>(Lq/m;)V

    iput-object v13, v0, Lq/m;->i:Lq/t;

    new-instance v14, Lq/f0;

    invoke-direct {v14, v0}, Lq/f0;-><init>(Lq/m;)V

    iput-object v14, v0, Lq/m;->j:Lq/f0;

    new-instance v15, Lq/i;

    invoke-direct {v15, v0}, Lq/i;-><init>(Lq/m;)V

    iput-object v15, v0, Lq/m;->k:Lq/i;

    new-instance v11, Lq/g0;

    move-object/from16 v16, v9

    const-string v9, "map"

    invoke-direct {v11, v9, v0, v5, v3}, Lq/g0;-><init>(Ljava/lang/String;Lq/m;ILq/g0$c;)V

    iput-object v11, v0, Lq/m;->d:Lq/g0;

    const/16 v3, 0xd

    new-array v3, v3, [Lq/l0;

    const/4 v9, 0x0

    aput-object v1, v3, v9

    const/4 v1, 0x1

    aput-object v7, v3, v1

    const/4 v1, 0x2

    aput-object v10, v3, v1

    const/4 v1, 0x3

    aput-object v12, v3, v1

    aput-object v13, v3, v5

    const/4 v1, 0x5

    aput-object v14, v3, v1

    const/4 v1, 0x6

    aput-object v15, v3, v1

    const/4 v1, 0x7

    aput-object v6, v3, v1

    const/16 v1, 0x8

    aput-object v2, v3, v1

    const/16 v1, 0x9

    aput-object v8, v3, v1

    const/16 v1, 0xa

    aput-object v4, v3, v1

    const/16 v1, 0xb

    aput-object v16, v3, v1

    const/16 v1, 0xc

    aput-object v11, v3, v1

    iput-object v3, v0, Lq/m;->o:[Lq/l0;

    const/4 v1, -0x1

    iput v1, v0, Lq/m;->p:I

    const/16 v1, 0x4f

    iput v1, v0, Lq/m;->q:I

    return-void
.end method

.method private static b([B)V
    .locals 3

    new-instance v0, Ljava/util/zip/Adler32;

    invoke-direct {v0}, Ljava/util/zip/Adler32;-><init>()V

    array-length v1, p0

    const/16 v2, 0xc

    sub-int/2addr v1, v2

    invoke-virtual {v0, p0, v2, v1}, Ljava/util/zip/Adler32;->update([BII)V

    invoke-virtual {v0}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v0

    long-to-int v1, v0

    const/16 v0, 0x8

    int-to-byte v2, v1

    aput-byte v2, p0, v0

    shr-int/lit8 v0, v1, 0x8

    int-to-byte v0, v0

    const/16 v2, 0x9

    aput-byte v0, p0, v2

    shr-int/lit8 v0, v1, 0x10

    int-to-byte v0, v0

    const/16 v2, 0xa

    aput-byte v0, p0, v2

    shr-int/lit8 v0, v1, 0x18

    int-to-byte v0, v0

    const/16 v1, 0xb

    aput-byte v0, p0, v1

    return-void
.end method

.method private static c([B)V
    .locals 3

    :try_start_0
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    array-length v1, p0

    const/16 v2, 0x20

    sub-int/2addr v1, v2

    invoke-virtual {v0, p0, v2, v1}, Ljava/security/MessageDigest;->update([BII)V

    const/16 v1, 0xc

    const/16 v2, 0x14

    :try_start_1
    invoke-virtual {v0, p0, v1, v2}, Ljava/security/MessageDigest;->digest([BII)I

    move-result p0

    if-ne p0, v2, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected digest write: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " bytes"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/security/DigestException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private x(ZZ)Lx/d;
    .locals 8

    iget-object v0, p0, Lq/m;->k:Lq/i;

    invoke-virtual {v0}, Lq/l0;->h()V

    iget-object v0, p0, Lq/m;->l:Lq/g0;

    invoke-virtual {v0}, Lq/l0;->h()V

    iget-object v0, p0, Lq/m;->b:Lq/g0;

    invoke-virtual {v0}, Lq/l0;->h()V

    iget-object v0, p0, Lq/m;->m:Lq/g0;

    invoke-virtual {v0}, Lq/l0;->h()V

    iget-object v0, p0, Lq/m;->j:Lq/f0;

    invoke-virtual {v0}, Lq/l0;->h()V

    iget-object v0, p0, Lq/m;->i:Lq/t;

    invoke-virtual {v0}, Lq/l0;->h()V

    iget-object v0, p0, Lq/m;->h:Lq/k0;

    invoke-virtual {v0}, Lq/l0;->h()V

    iget-object v0, p0, Lq/m;->c:Lq/g0;

    invoke-virtual {v0}, Lq/l0;->h()V

    iget-object v0, p0, Lq/m;->g:Lq/r0;

    invoke-virtual {v0}, Lq/l0;->h()V

    iget-object v0, p0, Lq/m;->f:Lq/p0;

    invoke-virtual {v0}, Lq/l0;->h()V

    iget-object v0, p0, Lq/m;->e:Lq/g0;

    invoke-virtual {v0}, Lq/l0;->h()V

    iget-object v0, p0, Lq/m;->n:Lq/v;

    invoke-virtual {v0}, Lq/l0;->h()V

    iget-object v0, p0, Lq/m;->o:[Lq/l0;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const-string v4, "...while writing section "

    if-ge v2, v0, :cond_3

    iget-object v5, p0, Lq/m;->o:[Lq/l0;

    aget-object v5, v5, v2

    invoke-virtual {v5, v3}, Lq/l0;->j(I)I

    move-result v6

    if-lt v6, v3, :cond_2

    :try_start_0
    iget-object v3, p0, Lq/m;->d:Lq/g0;

    if-ne v5, v3, :cond_0

    iget-object v7, p0, Lq/m;->o:[Lq/l0;

    invoke-static {v7, v3}, Lq/a0;->q([Lq/l0;Lq/g0;)V

    iget-object v3, p0, Lq/m;->d:Lq/g0;

    invoke-virtual {v3}, Lq/l0;->h()V

    :cond_0
    instance-of v3, v5, Lq/g0;

    if-eqz v3, :cond_1

    move-object v3, v5

    check-cast v3, Lq/g0;

    invoke-virtual {v3}, Lq/g0;->s()V

    :cond_1
    invoke-virtual {v5}, Lq/l0;->n()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v3, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lx/g;->b(Ljava/lang/Throwable;Ljava/lang/String;)Lx/g;

    move-result-object p1

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "bogus placement for section "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    iput v3, p0, Lq/m;->p:I

    new-array v2, v3, [B

    new-instance v3, Lx/d;

    invoke-direct {v3, v2}, Lx/d;-><init>([B)V

    if-eqz p1, :cond_4

    iget v5, p0, Lq/m;->q:I

    invoke-virtual {v3, v5, p2}, Lx/d;->m(IZ)V

    :cond_4
    :goto_1
    if-ge v1, v0, :cond_7

    :try_start_1
    iget-object p2, p0, Lq/m;->o:[Lq/l0;

    aget-object p2, p2, v1

    invoke-virtual {p2}, Lq/l0;->f()I

    move-result v5

    invoke-virtual {v3}, Lx/d;->c()I

    move-result v6

    sub-int/2addr v5, v6

    if-ltz v5, :cond_5

    invoke-virtual {p2}, Lq/l0;->f()I

    move-result v5

    invoke-virtual {v3}, Lx/d;->c()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v3, v5}, Lx/d;->f(I)V

    invoke-virtual {p2, v3}, Lq/l0;->o(Lx/a;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    new-instance p1, Lx/g;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "excess write of "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    neg-int v0, v5

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lx/g;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception p1

    instance-of p2, p1, Lx/g;

    if-eqz p2, :cond_6

    check-cast p1, Lx/g;

    goto :goto_2

    :cond_6
    new-instance p2, Lx/g;

    invoke-direct {p2, p1}, Lx/g;-><init>(Ljava/lang/Throwable;)V

    move-object p1, p2

    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lx/g;->a(Ljava/lang/String;)V

    throw p1

    :cond_7
    invoke-virtual {v3}, Lx/d;->c()I

    move-result p2

    iget v0, p0, Lq/m;->p:I

    if-ne p2, v0, :cond_9

    invoke-static {v2}, Lq/m;->c([B)V

    invoke-static {v2}, Lq/m;->b([B)V

    if-eqz p1, :cond_8

    iget-object p1, p0, Lq/m;->b:Lq/g0;

    sget-object p2, Lq/z;->p:Lq/z;

    const-string v0, "\nmethod code index:\n\n"

    invoke-virtual {p1, v3, p2, v0}, Lq/g0;->t(Lx/a;Lq/z;Ljava/lang/String;)V

    invoke-virtual {p0}, Lq/m;->p()Lq/m0;

    move-result-object p1

    invoke-virtual {p1, v3}, Lq/m0;->c(Lx/a;)V

    invoke-virtual {v3}, Lx/d;->o()V

    :cond_8
    return-object v3

    :cond_9
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "foreshortened write"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(Lq/h;)V
    .locals 1

    iget-object v0, p0, Lq/m;->k:Lq/i;

    invoke-virtual {v0, p1}, Lq/i;->r(Lq/h;)V

    return-void
.end method

.method d(Lv/a;)Lq/x;
    .locals 1

    instance-of v0, p1, Lv/v;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lq/m;->f:Lq/p0;

    invoke-virtual {v0, p1}, Lq/p0;->r(Lv/a;)Lq/x;

    move-result-object p1

    return-object p1

    :cond_0
    instance-of v0, p1, Lv/w;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lq/m;->g:Lq/r0;

    invoke-virtual {v0, p1}, Lq/r0;->r(Lv/a;)Lq/x;

    move-result-object p1

    return-object p1

    :cond_1
    instance-of v0, p1, Lv/d;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lq/m;->j:Lq/f0;

    invoke-virtual {v0, p1}, Lq/f0;->r(Lv/a;)Lq/x;

    move-result-object p1

    return-object p1

    :cond_2
    instance-of v0, p1, Lv/j;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lq/m;->i:Lq/t;

    invoke-virtual {v0, p1}, Lq/t;->r(Lv/a;)Lq/x;

    move-result-object p1

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method e()Lq/g0;
    .locals 1

    iget-object v0, p0, Lq/m;->m:Lq/g0;

    return-object v0
.end method

.method f()Lq/g0;
    .locals 1

    iget-object v0, p0, Lq/m;->l:Lq/g0;

    return-object v0
.end method

.method g()Lq/i;
    .locals 1

    iget-object v0, p0, Lq/m;->k:Lq/i;

    return-object v0
.end method

.method public h()Ln/b;
    .locals 1

    iget-object v0, p0, Lq/m;->a:Ln/b;

    return-object v0
.end method

.method i()Lq/t;
    .locals 1

    iget-object v0, p0, Lq/m;->i:Lq/t;

    return-object v0
.end method

.method j()I
    .locals 2

    iget v0, p0, Lq/m;->p:I

    if-ltz v0, :cond_0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "file size not yet known"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method k()Lq/l0;
    .locals 1

    iget-object v0, p0, Lq/m;->b:Lq/g0;

    return-object v0
.end method

.method l()Lq/l0;
    .locals 1

    iget-object v0, p0, Lq/m;->d:Lq/g0;

    return-object v0
.end method

.method m()Lq/g0;
    .locals 1

    iget-object v0, p0, Lq/m;->d:Lq/g0;

    return-object v0
.end method

.method n()Lq/f0;
    .locals 1

    iget-object v0, p0, Lq/m;->j:Lq/f0;

    return-object v0
.end method

.method o()Lq/k0;
    .locals 1

    iget-object v0, p0, Lq/m;->h:Lq/k0;

    return-object v0
.end method

.method public p()Lq/m0;
    .locals 5

    new-instance v0, Lq/m0;

    invoke-direct {v0}, Lq/m0;-><init>()V

    iget-object v1, p0, Lq/m;->o:[Lq/l0;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    invoke-virtual {v0, v4}, Lq/m0;->b(Lq/l0;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method q()Lq/g0;
    .locals 1

    iget-object v0, p0, Lq/m;->e:Lq/g0;

    return-object v0
.end method

.method r()Lq/p0;
    .locals 1

    iget-object v0, p0, Lq/m;->f:Lq/p0;

    return-object v0
.end method

.method s()Lq/r0;
    .locals 1

    iget-object v0, p0, Lq/m;->g:Lq/r0;

    return-object v0
.end method

.method t()Lq/g0;
    .locals 1

    iget-object v0, p0, Lq/m;->c:Lq/g0;

    return-object v0
.end method

.method u()Lq/g0;
    .locals 1

    iget-object v0, p0, Lq/m;->b:Lq/g0;

    return-object v0
.end method

.method v(Lv/a;)V
    .locals 1

    instance-of v0, p1, Lv/v;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lq/m;->f:Lq/p0;

    check-cast p1, Lv/v;

    invoke-virtual {v0, p1}, Lq/p0;->u(Lv/v;)Lq/o0;

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lv/w;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lq/m;->g:Lq/r0;

    check-cast p1, Lv/w;

    invoke-virtual {v0, p1}, Lq/r0;->u(Lv/w;)Lq/q0;

    goto :goto_1

    :cond_1
    instance-of v0, p1, Lv/d;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lq/m;->j:Lq/f0;

    check-cast p1, Lv/d;

    invoke-virtual {v0, p1}, Lq/f0;->t(Lv/d;)Lq/e0;

    goto :goto_1

    :cond_2
    instance-of v0, p1, Lv/j;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lq/m;->i:Lq/t;

    check-cast p1, Lv/j;

    :goto_0
    invoke-virtual {v0, p1}, Lq/t;->t(Lv/j;)Lq/s;

    goto :goto_1

    :cond_3
    instance-of v0, p1, Lv/i;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lq/m;->i:Lq/t;

    check-cast p1, Lv/i;

    invoke-virtual {p1}, Lv/i;->i()Lv/j;

    move-result-object p1

    goto :goto_0

    :cond_4
    if-eqz p1, :cond_5

    :goto_1
    return-void

    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "cst == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public w(Ljava/io/Writer;Z)[B
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0, p2}, Lq/m;->x(ZZ)Lx/d;

    move-result-object p2

    if-eqz v0, :cond_1

    invoke-virtual {p2, p1}, Lx/d;->t(Ljava/io/Writer;)V

    :cond_1
    invoke-virtual {p2}, Lx/d;->p()[B

    move-result-object p1

    return-object p1
.end method
