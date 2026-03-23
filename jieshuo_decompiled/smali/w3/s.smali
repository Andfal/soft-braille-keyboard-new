.class Lw3/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw3/z;


# static fields
.field static final c:Lw3/s;


# instance fields
.field private a:Z

.field private b:Lw3/z;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lw3/s;

    invoke-direct {v0}, Lw3/s;-><init>()V

    sput-object v0, Lw3/s;->c:Lw3/s;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static f(Lw3/z;)Lw3/z;
    .locals 2

    new-instance v0, Lw3/s;

    invoke-direct {v0}, Lw3/s;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lw3/s;->a:Z

    iput-object p0, v0, Lw3/s;->b:Lw3/z;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 7

    iget-boolean v0, p0, Lw3/s;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "TypeError: "

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "TypeError"

    goto :goto_0

    :cond_0
    const-string v0, "SyntaxError"

    :goto_0
    move-object v2, p1

    move-object v1, v0

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-static/range {v1 .. v6}, Lw3/u2;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Lw3/w;

    move-result-object p1

    throw p1

    :cond_1
    iget-object v0, p0, Lw3/s;->b:Lw3/z;

    if-eqz v0, :cond_2

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lw3/z;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    return-void

    :cond_2
    invoke-virtual/range {p0 .. p5}, Lw3/s;->e(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Lw3/b0;

    move-result-object p1

    throw p1
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 6

    iget-object v0, p0, Lw3/s;->b:Lw3/z;

    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lw3/z;->d(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Lw3/b0;
    .locals 7

    iget-object v0, p0, Lw3/s;->b:Lw3/z;

    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lw3/z;->e(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Lw3/b0;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v6, Lw3/b0;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lw3/b0;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    return-object v6
.end method
