.class Lw1/n$r$a;
.super Lt1/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw1/n$r;->a(Lt1/e;Lz1/a;)Lt1/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lt1/t<",
        "Ljava/sql/Timestamp;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lt1/t;

.field final synthetic b:Lw1/n$r;


# direct methods
.method constructor <init>(Lw1/n$r;Lt1/t;)V
    .locals 0

    iput-object p1, p0, Lw1/n$r$a;->b:Lw1/n$r;

    iput-object p2, p0, Lw1/n$r$a;->a:Lt1/t;

    invoke-direct {p0}, Lt1/t;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic b(La2/a;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lw1/n$r$a;->e(La2/a;)Ljava/sql/Timestamp;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic d(La2/c;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/sql/Timestamp;

    invoke-virtual {p0, p1, p2}, Lw1/n$r$a;->f(La2/c;Ljava/sql/Timestamp;)V

    return-void
.end method

.method public e(La2/a;)Ljava/sql/Timestamp;
    .locals 3

    iget-object v0, p0, Lw1/n$r$a;->a:Lt1/t;

    invoke-virtual {v0, p1}, Lt1/t;->b(La2/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Date;

    if-eqz p1, :cond_0

    new-instance v0, Ljava/sql/Timestamp;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/sql/Timestamp;-><init>(J)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public f(La2/c;Ljava/sql/Timestamp;)V
    .locals 1

    iget-object v0, p0, Lw1/n$r$a;->a:Lt1/t;

    invoke-virtual {v0, p1, p2}, Lt1/t;->d(La2/c;Ljava/lang/Object;)V

    return-void
.end method
