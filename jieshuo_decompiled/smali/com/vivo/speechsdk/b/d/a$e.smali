.class public final Lcom/vivo/speechsdk/b/d/a$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/speechsdk/b/d/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "e"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:J

.field private final c:[Ljava/io/InputStream;

.field private final d:[J

.field final synthetic e:Lcom/vivo/speechsdk/b/d/a;


# direct methods
.method private constructor <init>(Lcom/vivo/speechsdk/b/d/a;Ljava/lang/String;J[Ljava/io/InputStream;[J)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/b/d/a$e;->e:Lcom/vivo/speechsdk/b/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/vivo/speechsdk/b/d/a$e;->a:Ljava/lang/String;

    iput-wide p3, p0, Lcom/vivo/speechsdk/b/d/a$e;->b:J

    iput-object p5, p0, Lcom/vivo/speechsdk/b/d/a$e;->c:[Ljava/io/InputStream;

    iput-object p6, p0, Lcom/vivo/speechsdk/b/d/a$e;->d:[J

    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/speechsdk/b/d/a;Ljava/lang/String;J[Ljava/io/InputStream;[JLcom/vivo/speechsdk/b/d/a$a;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/vivo/speechsdk/b/d/a$e;-><init>(Lcom/vivo/speechsdk/b/d/a;Ljava/lang/String;J[Ljava/io/InputStream;[J)V

    return-void
.end method


# virtual methods
.method public a()Lcom/vivo/speechsdk/b/d/a$c;
    .locals 4

    iget-object v0, p0, Lcom/vivo/speechsdk/b/d/a$e;->e:Lcom/vivo/speechsdk/b/d/a;

    iget-object v1, p0, Lcom/vivo/speechsdk/b/d/a$e;->a:Ljava/lang/String;

    iget-wide v2, p0, Lcom/vivo/speechsdk/b/d/a$e;->b:J

    invoke-static {v0, v1, v2, v3}, Lcom/vivo/speechsdk/b/d/a;->a(Lcom/vivo/speechsdk/b/d/a;Ljava/lang/String;J)Lcom/vivo/speechsdk/b/d/a$c;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/b/d/a$e;->c:[Ljava/io/InputStream;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public b(I)J
    .locals 3

    iget-object v0, p0, Lcom/vivo/speechsdk/b/d/a$e;->d:[J

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public c(I)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/vivo/speechsdk/b/d/a$e;->a(I)Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Lcom/vivo/speechsdk/b/d/a;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public close()V
    .locals 4

    iget-object v0, p0, Lcom/vivo/speechsdk/b/d/a$e;->c:[Ljava/io/InputStream;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-static {v3}, Lcom/vivo/speechsdk/b/d/c;->a(Ljava/io/Closeable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
