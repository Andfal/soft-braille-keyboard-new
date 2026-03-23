.class final Ly2/u$a$a;
.super Lt2/g;
.source "SourceFile"

# interfaces
.implements Ls2/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ly2/u$a;->a(Ljavax/net/ssl/SSLSession;)Ly2/u;
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
.field final synthetic b:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Ly2/u$a$a;->b:Ljava/util/List;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lt2/g;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ly2/u$a$a;->d()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ly2/u$a$a;->b:Ljava/util/List;

    return-object v0
.end method
