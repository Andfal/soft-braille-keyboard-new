.class public final Ly2/Response;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ly2/Response$a;
    }
.end annotation


# instance fields
.field private a:Ly2/d;

.field private final b:Ly2/Request;

.field private final c:Ly2/a0;

.field private final d:Ljava/lang/String;

.field private final e:I

.field private final f:Ly2/u;

.field private final g:Ly2/v;

.field private final h:Ly2/c0;

.field private final i:Ly2/Response;

.field private final j:Ly2/Response;

.field private final k:Ly2/Response;

.field private final l:J

.field private final m:J

.field private final n:Ld3/Exchange;


# direct methods
.method public constructor <init>(Ly2/Request;Ly2/a0;Ljava/lang/String;ILy2/u;Ly2/v;Ly2/c0;Ly2/Response;Ly2/Response;Ly2/Response;JJLd3/Exchange;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p6

    const-string v5, "request"

    invoke-static {p1, v5}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "protocol"

    invoke-static {p2, v5}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "message"

    invoke-static {p3, v5}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "headers"

    invoke-static {p6, v5}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Ly2/Response;->b:Ly2/Request;

    iput-object v2, v0, Ly2/Response;->c:Ly2/a0;

    iput-object v3, v0, Ly2/Response;->d:Ljava/lang/String;

    move v1, p4

    iput v1, v0, Ly2/Response;->e:I

    move-object v1, p5

    iput-object v1, v0, Ly2/Response;->f:Ly2/u;

    iput-object v4, v0, Ly2/Response;->g:Ly2/v;

    move-object v1, p7

    iput-object v1, v0, Ly2/Response;->h:Ly2/c0;

    move-object v1, p8

    iput-object v1, v0, Ly2/Response;->i:Ly2/Response;

    move-object v1, p9

    iput-object v1, v0, Ly2/Response;->j:Ly2/Response;

    move-object/from16 v1, p10

    iput-object v1, v0, Ly2/Response;->k:Ly2/Response;

    move-wide/from16 v1, p11

    iput-wide v1, v0, Ly2/Response;->l:J

    move-wide/from16 v1, p13

    iput-wide v1, v0, Ly2/Response;->m:J

    move-object/from16 v1, p15

    iput-object v1, v0, Ly2/Response;->n:Ld3/Exchange;

    return-void
.end method

.method public static synthetic l(Ly2/Response;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Ly2/Response;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final A()Ly2/Response$a;
    .locals 1

    new-instance v0, Ly2/Response$a;

    invoke-direct {v0, p0}, Ly2/Response$a;-><init>(Ly2/Response;)V

    return-object v0
.end method

.method public final B()Ly2/Response;
    .locals 1

    iget-object v0, p0, Ly2/Response;->k:Ly2/Response;

    return-object v0
.end method

.method public final C()Ly2/a0;
    .locals 1

    iget-object v0, p0, Ly2/Response;->c:Ly2/a0;

    return-object v0
.end method

.method public final D()J
    .locals 2

    iget-wide v0, p0, Ly2/Response;->m:J

    return-wide v0
.end method

.method public final G()Ly2/Request;
    .locals 1

    iget-object v0, p0, Ly2/Response;->b:Ly2/Request;

    return-object v0
.end method

.method public final H()J
    .locals 2

    iget-wide v0, p0, Ly2/Response;->l:J

    return-wide v0
.end method

.method public final b()Ly2/c0;
    .locals 1

    iget-object v0, p0, Ly2/Response;->h:Ly2/c0;

    return-object v0
.end method

.method public final c()Ly2/d;
    .locals 2

    iget-object v0, p0, Ly2/Response;->a:Ly2/d;

    if-nez v0, :cond_0

    sget-object v0, Ly2/d;->p:Ly2/d$b;

    iget-object v1, p0, Ly2/Response;->g:Ly2/v;

    invoke-virtual {v0, v1}, Ly2/d$b;->b(Ly2/v;)Ly2/d;

    move-result-object v0

    iput-object v0, p0, Ly2/Response;->a:Ly2/d;

    :cond_0
    return-object v0
.end method

.method public close()V
    .locals 2

    iget-object v0, p0, Ly2/Response;->h:Ly2/c0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ly2/c0;->close()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "response is not eligible for a body and must not be closed"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final e()Ly2/Response;
    .locals 1

    iget-object v0, p0, Ly2/Response;->j:Ly2/Response;

    return-object v0
.end method

.method public final f()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ly2/g;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ly2/Response;->g:Ly2/v;

    iget v1, p0, Ly2/Response;->e:I

    const/16 v2, 0x191

    if-eq v1, v2, :cond_1

    const/16 v2, 0x197

    if-eq v1, v2, :cond_0

    invoke-static {}, Lo2/k;->f()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v1, "Proxy-Authenticate"

    goto :goto_0

    :cond_1
    const-string v1, "WWW-Authenticate"

    :goto_0
    invoke-static {v0, v1}, Le3/e;->a(Ly2/v;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final g()I
    .locals 1

    iget v0, p0, Ly2/Response;->e:I

    return v0
.end method

.method public final h()Ld3/Exchange;
    .locals 1

    iget-object v0, p0, Ly2/Response;->n:Ld3/Exchange;

    return-object v0
.end method

.method public final i()Ly2/u;
    .locals 1

    iget-object v0, p0, Ly2/Response;->f:Ly2/u;

    return-object v0
.end method

.method public final j(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Ly2/Response;->l(Ly2/Response;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ly2/Response;->g:Ly2/v;

    invoke-virtual {v0, p1}, Ly2/v;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    move-object p2, p1

    :cond_0
    return-object p2
.end method

.method public final m()Ly2/v;
    .locals 1

    iget-object v0, p0, Ly2/Response;->g:Ly2/v;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Response{protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ly2/Response;->c:Ly2/a0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ly2/Response;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ly2/Response;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ly2/Response;->b:Ly2/Request;

    invoke-virtual {v1}, Ly2/Request;->i()Ly2/w;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()Z
    .locals 2

    iget v0, p0, Ly2/Response;->e:I

    const/16 v1, 0xc8

    if-le v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x12b

    if-lt v1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public final x()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ly2/Response;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final y()Ly2/Response;
    .locals 1

    iget-object v0, p0, Ly2/Response;->i:Ly2/Response;

    return-object v0
.end method
