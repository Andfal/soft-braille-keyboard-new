.class Lt1/e$d;
.super Lt1/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lt1/e;->b(Lt1/t;)Lt1/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lt1/t<",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lt1/t;


# direct methods
.method constructor <init>(Lt1/t;)V
    .locals 0

    iput-object p1, p0, Lt1/e$d;->a:Lt1/t;

    invoke-direct {p0}, Lt1/t;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic b(La2/a;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lt1/e$d;->e(La2/a;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic d(La2/c;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0, p1, p2}, Lt1/e$d;->f(La2/c;Ljava/util/concurrent/atomic/AtomicLong;)V

    return-void
.end method

.method public e(La2/a;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 3

    iget-object v0, p0, Lt1/e$d;->a:Lt1/t;

    invoke-virtual {v0, p1}, Lt1/t;->b(La2/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    return-object v0
.end method

.method public f(La2/c;Ljava/util/concurrent/atomic/AtomicLong;)V
    .locals 3

    iget-object v0, p0, Lt1/e$d;->a:Lt1/t;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lt1/t;->d(La2/c;Ljava/lang/Object;)V

    return-void
.end method
