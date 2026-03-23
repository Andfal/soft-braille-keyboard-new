.class public final Ly2/z;
.super Ly2/b0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ly2/z$c;,
        Ly2/z$a;,
        Ly2/z$b;
    }
.end annotation


# static fields
.field public static final l:Ly2/y;

.field public static final m:Ly2/y;

.field public static final n:Ly2/y;

.field public static final o:Ly2/y;

.field public static final p:Ly2/y;

.field private static final q:[B

.field private static final r:[B

.field private static final s:[B

.field public static final t:Ly2/z$b;


# instance fields
.field private final g:Ly2/y;

.field private h:J

.field private final i:Lm3/h;

.field private final j:Ly2/y;

.field private final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ly2/z$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ly2/z$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ly2/z$b;-><init>(Lt2/d;)V

    sput-object v0, Ly2/z;->t:Ly2/z$b;

    sget-object v0, Ly2/y;->g:Ly2/y$a;

    const-string v1, "multipart/mixed"

    invoke-virtual {v0, v1}, Ly2/y$a;->a(Ljava/lang/String;)Ly2/y;

    move-result-object v1

    sput-object v1, Ly2/z;->l:Ly2/y;

    const-string v1, "multipart/alternative"

    invoke-virtual {v0, v1}, Ly2/y$a;->a(Ljava/lang/String;)Ly2/y;

    move-result-object v1

    sput-object v1, Ly2/z;->m:Ly2/y;

    const-string v1, "multipart/digest"

    invoke-virtual {v0, v1}, Ly2/y$a;->a(Ljava/lang/String;)Ly2/y;

    move-result-object v1

    sput-object v1, Ly2/z;->n:Ly2/y;

    const-string v1, "multipart/parallel"

    invoke-virtual {v0, v1}, Ly2/y$a;->a(Ljava/lang/String;)Ly2/y;

    move-result-object v1

    sput-object v1, Ly2/z;->o:Ly2/y;

    const-string v1, "multipart/form-data"

    invoke-virtual {v0, v1}, Ly2/y$a;->a(Ljava/lang/String;)Ly2/y;

    move-result-object v0

    sput-object v0, Ly2/z;->p:Ly2/y;

    const/4 v0, 0x2

    new-array v1, v0, [B

    const/16 v2, 0x3a

    int-to-byte v2, v2

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    const/16 v2, 0x20

    int-to-byte v2, v2

    const/4 v4, 0x1

    aput-byte v2, v1, v4

    sput-object v1, Ly2/z;->q:[B

    new-array v1, v0, [B

    const/16 v2, 0xd

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    const/16 v2, 0xa

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    sput-object v1, Ly2/z;->r:[B

    new-array v0, v0, [B

    const/16 v1, 0x2d

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    aput-byte v1, v0, v4

    sput-object v0, Ly2/z;->s:[B

    return-void
.end method

.method public constructor <init>(Lm3/h;Ly2/y;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm3/h;",
            "Ly2/y;",
            "Ljava/util/List<",
            "Ly2/z$c;",
            ">;)V"
        }
    .end annotation

    const-string v0, "boundaryByteString"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parts"

    invoke-static {p3, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ly2/b0;-><init>()V

    iput-object p1, p0, Ly2/z;->i:Lm3/h;

    iput-object p2, p0, Ly2/z;->j:Ly2/y;

    iput-object p3, p0, Ly2/z;->k:Ljava/util/List;

    sget-object p1, Ly2/y;->g:Ly2/y$a;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "; boundary="

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ly2/z;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ly2/y$a;->a(Ljava/lang/String;)Ly2/y;

    move-result-object p1

    iput-object p1, p0, Ly2/z;->g:Ly2/y;

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Ly2/z;->h:J

    return-void
.end method

.method private final b(Lm3/f;Z)J
    .locals 12

    if-eqz p2, :cond_0

    new-instance p1, Lm3/e;

    invoke-direct {p1}, Lm3/e;-><init>()V

    move-object v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ly2/z;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v1, :cond_6

    iget-object v6, p0, Ly2/z;->k:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ly2/z$c;

    invoke-virtual {v6}, Ly2/z$c;->b()Ly2/v;

    move-result-object v7

    invoke-virtual {v6}, Ly2/z$c;->a()Ly2/b0;

    move-result-object v6

    invoke-static {p1}, Lt2/f;->b(Ljava/lang/Object;)V

    sget-object v8, Ly2/z;->s:[B

    invoke-interface {p1, v8}, Lm3/f;->write([B)Lm3/f;

    iget-object v8, p0, Ly2/z;->i:Lm3/h;

    invoke-interface {p1, v8}, Lm3/f;->v(Lm3/h;)Lm3/f;

    sget-object v8, Ly2/z;->r:[B

    invoke-interface {p1, v8}, Lm3/f;->write([B)Lm3/f;

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ly2/v;->size()I

    move-result v8

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v8, :cond_1

    invoke-virtual {v7, v9}, Ly2/v;->b(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v10}, Lm3/f;->E(Ljava/lang/String;)Lm3/f;

    move-result-object v10

    sget-object v11, Ly2/z;->q:[B

    invoke-interface {v10, v11}, Lm3/f;->write([B)Lm3/f;

    move-result-object v10

    invoke-virtual {v7, v9}, Ly2/v;->f(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lm3/f;->E(Ljava/lang/String;)Lm3/f;

    move-result-object v10

    sget-object v11, Ly2/z;->r:[B

    invoke-interface {v10, v11}, Lm3/f;->write([B)Lm3/f;

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_1
    invoke-virtual {v6}, Ly2/b0;->contentType()Ly2/y;

    move-result-object v7

    if-eqz v7, :cond_2

    const-string v8, "Content-Type: "

    invoke-interface {p1, v8}, Lm3/f;->E(Ljava/lang/String;)Lm3/f;

    move-result-object v8

    invoke-virtual {v7}, Ly2/y;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v8, v7}, Lm3/f;->E(Ljava/lang/String;)Lm3/f;

    move-result-object v7

    sget-object v8, Ly2/z;->r:[B

    invoke-interface {v7, v8}, Lm3/f;->write([B)Lm3/f;

    :cond_2
    invoke-virtual {v6}, Ly2/b0;->contentLength()J

    move-result-wide v7

    const-wide/16 v9, -0x1

    cmp-long v11, v7, v9

    if-eqz v11, :cond_3

    const-string v9, "Content-Length: "

    invoke-interface {p1, v9}, Lm3/f;->E(Ljava/lang/String;)Lm3/f;

    move-result-object v9

    invoke-interface {v9, v7, v8}, Lm3/f;->d0(J)Lm3/f;

    move-result-object v9

    sget-object v10, Ly2/z;->r:[B

    invoke-interface {v9, v10}, Lm3/f;->write([B)Lm3/f;

    goto :goto_3

    :cond_3
    if-eqz p2, :cond_4

    invoke-static {v0}, Lt2/f;->b(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lm3/e;->c()V

    return-wide v9

    :cond_4
    :goto_3
    sget-object v9, Ly2/z;->r:[B

    invoke-interface {p1, v9}, Lm3/f;->write([B)Lm3/f;

    if-eqz p2, :cond_5

    add-long/2addr v3, v7

    goto :goto_4

    :cond_5
    invoke-virtual {v6, p1}, Ly2/b0;->writeTo(Lm3/f;)V

    :goto_4
    invoke-interface {p1, v9}, Lm3/f;->write([B)Lm3/f;

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :cond_6
    invoke-static {p1}, Lt2/f;->b(Ljava/lang/Object;)V

    sget-object v1, Ly2/z;->s:[B

    invoke-interface {p1, v1}, Lm3/f;->write([B)Lm3/f;

    iget-object v2, p0, Ly2/z;->i:Lm3/h;

    invoke-interface {p1, v2}, Lm3/f;->v(Lm3/h;)Lm3/f;

    invoke-interface {p1, v1}, Lm3/f;->write([B)Lm3/f;

    sget-object v1, Ly2/z;->r:[B

    invoke-interface {p1, v1}, Lm3/f;->write([B)Lm3/f;

    if-eqz p2, :cond_7

    invoke-static {v0}, Lt2/f;->b(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lm3/e;->size()J

    move-result-wide p1

    add-long/2addr v3, p1

    invoke-virtual {v0}, Lm3/e;->c()V

    :cond_7
    return-wide v3
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ly2/z;->i:Lm3/h;

    invoke-virtual {v0}, Lm3/h;->x()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public contentLength()J
    .locals 5

    iget-wide v0, p0, Ly2/z;->h:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Ly2/z;->b(Lm3/f;Z)J

    move-result-wide v0

    iput-wide v0, p0, Ly2/z;->h:J

    :cond_0
    return-wide v0
.end method

.method public contentType()Ly2/y;
    .locals 1

    iget-object v0, p0, Ly2/z;->g:Ly2/y;

    return-object v0
.end method

.method public writeTo(Lm3/f;)V
    .locals 1

    const-string v0, "sink"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ly2/z;->b(Lm3/f;Z)J

    return-void
.end method
