.class public final Le3/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly2/x$a;


# instance fields
.field private a:I

.field private final b:Ld3/d;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ly2/x;",
            ">;"
        }
    .end annotation
.end field

.field private final d:I

.field private final e:Ld3/Exchange;

.field private final f:Ly2/Request;

.field private final g:I

.field private final h:I

.field private final i:I


# direct methods
.method public constructor <init>(Ld3/d;Ljava/util/List;ILd3/Exchange;Ly2/Request;III)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld3/d;",
            "Ljava/util/List<",
            "+",
            "Ly2/x;",
            ">;I",
            "Ld3/Exchange;",
            "Ly2/Request;",
            "III)V"
        }
    .end annotation

    const-string v0, "call"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "interceptors"

    invoke-static {p2, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p5, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le3/g;->b:Ld3/d;

    iput-object p2, p0, Le3/g;->c:Ljava/util/List;

    iput p3, p0, Le3/g;->d:I

    iput-object p4, p0, Le3/g;->e:Ld3/Exchange;

    iput-object p5, p0, Le3/g;->f:Ly2/Request;

    iput p6, p0, Le3/g;->g:I

    iput p7, p0, Le3/g;->h:I

    iput p8, p0, Le3/g;->i:I

    return-void
.end method

.method public static synthetic d(Le3/g;ILd3/Exchange;Ly2/Request;IIIILjava/lang/Object;)Le3/g;
    .locals 4

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget p1, p0, Le3/g;->d:I

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget-object p2, p0, Le3/g;->e:Ld3/Exchange;

    :cond_1
    move-object p8, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Le3/g;->f:Ly2/Request;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_3

    iget p4, p0, Le3/g;->g:I

    :cond_3
    move v1, p4

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_4

    iget p5, p0, Le3/g;->h:I

    :cond_4
    move v2, p5

    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_5

    iget p6, p0, Le3/g;->i:I

    :cond_5
    move v3, p6

    move-object p2, p0

    move p3, p1

    move-object p4, p8

    move-object p5, v0

    move p6, v1

    move p7, v2

    move p8, v3

    invoke-virtual/range {p2 .. p8}, Le3/g;->c(ILd3/Exchange;Ly2/Request;III)Le3/g;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Ly2/Request;)Ly2/Response;
    .locals 14

    const-string v0, "request"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Le3/g;->d:I

    iget-object v1, p0, Le3/g;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_c

    iget v0, p0, Le3/g;->a:I

    add-int/2addr v0, v3

    iput v0, p0, Le3/g;->a:I

    iget-object v0, p0, Le3/g;->e:Ld3/Exchange;

    const-string v1, " must call proceed() exactly once"

    const-string v4, "network interceptor "

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ld3/Exchange;->j()Ld3/c;

    move-result-object v0

    invoke-virtual {p1}, Ly2/Request;->i()Ly2/w;

    move-result-object v5

    invoke-virtual {v0, v5}, Ld3/c;->g(Ly2/w;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Le3/g;->a:I

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Le3/g;->c:Ljava/util/List;

    iget v2, p0, Le3/g;->d:I

    sub-int/2addr v2, v3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly2/x;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Le3/g;->c:Ljava/util/List;

    iget v1, p0, Le3/g;->d:I

    sub-int/2addr v1, v3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly2/x;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " must retain the same host and port"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_2
    iget v0, p0, Le3/g;->d:I

    add-int/lit8 v6, v0, 0x1

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x3a

    const/4 v13, 0x0

    move-object v5, p0

    move-object v8, p1

    invoke-static/range {v5 .. v13}, Le3/g;->d(Le3/g;ILd3/Exchange;Ly2/Request;IIIILjava/lang/Object;)Le3/g;

    move-result-object p1

    iget-object v0, p0, Le3/g;->c:Ljava/util/List;

    iget v5, p0, Le3/g;->d:I

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly2/x;

    invoke-interface {v0, p1}, Ly2/x;->intercept(Ly2/x$a;)Ly2/Response;

    move-result-object v5

    const-string v6, "interceptor "

    if-eqz v5, :cond_b

    iget-object v7, p0, Le3/g;->e:Ld3/Exchange;

    if-eqz v7, :cond_8

    iget v7, p0, Le3/g;->d:I

    add-int/2addr v7, v3

    iget-object v8, p0, Le3/g;->c:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_6

    iget p1, p1, Le3/g;->a:I

    if-ne p1, v3, :cond_5

    goto :goto_3

    :cond_5
    const/4 p1, 0x0

    goto :goto_4

    :cond_6
    :goto_3
    const/4 p1, 0x1

    :goto_4
    if-eqz p1, :cond_7

    goto :goto_5

    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    :goto_5
    invoke-virtual {v5}, Ly2/Response;->b()Ly2/c0;

    move-result-object p1

    if-eqz p1, :cond_9

    const/4 v2, 0x1

    :cond_9
    if-eqz v2, :cond_a

    return-object v5

    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " returned a response with no body"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    new-instance p1, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " returned null"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Check failed."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()Ly2/Request;
    .locals 1

    iget-object v0, p0, Le3/g;->f:Ly2/Request;

    return-object v0
.end method

.method public final c(ILd3/Exchange;Ly2/Request;III)Le3/g;
    .locals 11

    move-object v0, p0

    const-string v1, "request"

    move-object v7, p3

    invoke-static {p3, v1}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Le3/g;

    iget-object v3, v0, Le3/g;->b:Ld3/d;

    iget-object v4, v0, Le3/g;->c:Ljava/util/List;

    move-object v2, v1

    move v5, p1

    move-object v6, p2

    move v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-direct/range {v2 .. v10}, Le3/g;-><init>(Ld3/d;Ljava/util/List;ILd3/Exchange;Ly2/Request;III)V

    return-object v1
.end method

.method public call()Ly2/Call;
    .locals 1

    iget-object v0, p0, Le3/g;->b:Ld3/d;

    return-object v0
.end method

.method public final e()Ld3/d;
    .locals 1

    iget-object v0, p0, Le3/g;->b:Ld3/d;

    return-object v0
.end method

.method public final f()I
    .locals 1

    iget v0, p0, Le3/g;->g:I

    return v0
.end method

.method public final g()Ld3/Exchange;
    .locals 1

    iget-object v0, p0, Le3/g;->e:Ld3/Exchange;

    return-object v0
.end method

.method public final h()I
    .locals 1

    iget v0, p0, Le3/g;->h:I

    return v0
.end method

.method public final i()Ly2/Request;
    .locals 1

    iget-object v0, p0, Le3/g;->f:Ly2/Request;

    return-object v0
.end method

.method public final j()I
    .locals 1

    iget v0, p0, Le3/g;->i:I

    return v0
.end method

.method public k()I
    .locals 1

    iget v0, p0, Le3/g;->h:I

    return v0
.end method
