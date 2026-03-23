.class public Lw3/m2$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw3/m2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "c"
.end annotation


# instance fields
.field private a:Ly3/s0;

.field private b:Ly3/r0;

.field private c:I

.field private d:Z

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ly3/f0;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ly3/h0;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ly3/c0;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic h:Lw3/m2;


# direct methods
.method constructor <init>(Lw3/m2;Ly3/w;)V
    .locals 1

    iput-object p1, p0, Lw3/m2$c;->h:Lw3/m2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lw3/m2;->r:Ly3/s0;

    iput-object v0, p0, Lw3/m2$c;->a:Ly3/s0;

    iput-object p2, p1, Lw3/m2;->r:Ly3/s0;

    iget-object v0, p1, Lw3/m2;->s:Ly3/r0;

    iput-object v0, p0, Lw3/m2$c;->b:Ly3/r0;

    iput-object p2, p1, Lw3/m2;->s:Ly3/r0;

    invoke-static {p1}, Lw3/m2;->c(Lw3/m2;)Ljava/util/Map;

    move-result-object p2

    iput-object p2, p0, Lw3/m2$c;->e:Ljava/util/Map;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lw3/m2;->h(Lw3/m2;Ljava/util/Map;)V

    invoke-static {p1}, Lw3/m2;->e(Lw3/m2;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lw3/m2$c;->f:Ljava/util/List;

    invoke-static {p1, p2}, Lw3/m2;->j(Lw3/m2;Ljava/util/List;)V

    invoke-static {p1}, Lw3/m2;->d(Lw3/m2;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lw3/m2$c;->g:Ljava/util/List;

    invoke-static {p1, p2}, Lw3/m2;->i(Lw3/m2;Ljava/util/List;)V

    invoke-static {p1}, Lw3/m2;->a(Lw3/m2;)I

    move-result p2

    iput p2, p0, Lw3/m2$c;->c:I

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lw3/m2;->f(Lw3/m2;I)V

    invoke-static {p1}, Lw3/m2;->b(Lw3/m2;)Z

    move-result v0

    iput-boolean v0, p0, Lw3/m2$c;->d:Z

    invoke-static {p1, p2}, Lw3/m2;->g(Lw3/m2;Z)V

    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    iget-object v0, p0, Lw3/m2$c;->h:Lw3/m2;

    iget-object v1, p0, Lw3/m2$c;->a:Ly3/s0;

    iput-object v1, v0, Lw3/m2;->r:Ly3/s0;

    iget-object v1, p0, Lw3/m2$c;->b:Ly3/r0;

    iput-object v1, v0, Lw3/m2;->s:Ly3/r0;

    iget-object v1, p0, Lw3/m2$c;->e:Ljava/util/Map;

    invoke-static {v0, v1}, Lw3/m2;->h(Lw3/m2;Ljava/util/Map;)V

    iget-object v0, p0, Lw3/m2$c;->h:Lw3/m2;

    iget-object v1, p0, Lw3/m2$c;->f:Ljava/util/List;

    invoke-static {v0, v1}, Lw3/m2;->j(Lw3/m2;Ljava/util/List;)V

    iget-object v0, p0, Lw3/m2$c;->h:Lw3/m2;

    iget-object v1, p0, Lw3/m2$c;->g:Ljava/util/List;

    invoke-static {v0, v1}, Lw3/m2;->i(Lw3/m2;Ljava/util/List;)V

    iget-object v0, p0, Lw3/m2$c;->h:Lw3/m2;

    iget v1, p0, Lw3/m2$c;->c:I

    invoke-static {v0, v1}, Lw3/m2;->f(Lw3/m2;I)V

    iget-object v0, p0, Lw3/m2$c;->h:Lw3/m2;

    iget-boolean v1, p0, Lw3/m2$c;->d:Z

    invoke-static {v0, v1}, Lw3/m2;->g(Lw3/m2;Z)V

    return-void
.end method
