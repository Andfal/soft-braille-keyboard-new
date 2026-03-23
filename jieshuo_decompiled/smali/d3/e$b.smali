.class final Ld3/e$b;
.super Lt2/g;
.source "SourceFile"

# interfaces
.implements Ls2/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld3/e;->i(Ld3/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lt2/g;",
        "Ls2/a<",
        "Ljava/util/List<",
        "+",
        "Ljava/security/cert/Certificate;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Ly2/f;

.field final synthetic c:Ly2/u;

.field final synthetic d:Ly2/a;


# direct methods
.method constructor <init>(Ly2/f;Ly2/u;Ly2/a;)V
    .locals 0

    iput-object p1, p0, Ld3/e$b;->b:Ly2/f;

    iput-object p2, p0, Ld3/e$b;->c:Ly2/u;

    iput-object p3, p0, Ld3/e$b;->d:Ly2/a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lt2/g;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ld3/e$b;->d()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ld3/e$b;->b:Ly2/f;

    invoke-virtual {v0}, Ly2/f;->d()Lk3/c;

    move-result-object v0

    invoke-static {v0}, Lt2/f;->b(Ljava/lang/Object;)V

    iget-object v1, p0, Ld3/e$b;->c:Ly2/u;

    invoke-virtual {v1}, Ly2/u;->d()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Ld3/e$b;->d:Ly2/a;

    invoke-virtual {v2}, Ly2/a;->l()Ly2/w;

    move-result-object v2

    invoke-virtual {v2}, Ly2/w;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lk3/c;->a(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
