.class public Lk1/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:J

.field private b:Ljava/io/InputStream;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-wide v0, p0, Lk1/c;->a:J

    return-wide v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lk1/c;->d:I

    return-void
.end method

.method public c(J)V
    .locals 0

    iput-wide p1, p0, Lk1/c;->a:J

    return-void
.end method

.method public d(Ljava/io/InputStream;)V
    .locals 0

    iput-object p1, p0, Lk1/c;->b:Ljava/io/InputStream;

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lk1/c;->e:Ljava/lang/String;

    return-void
.end method

.method public f(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lk1/c;->c:Ljava/util/Map;

    return-void
.end method

.method public g()Ljava/io/InputStream;
    .locals 2

    iget-object v0, p0, Lk1/c;->b:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "response getInputstream is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lk1/c;->f:Ljava/lang/String;

    return-void
.end method

.method public i()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lk1/c;->c:Ljava/util/Map;

    return-object v0
.end method

.method public j()I
    .locals 1

    iget v0, p0, Lk1/c;->d:I

    return v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lk1/c;->f:Ljava/lang/String;

    return-object v0
.end method
