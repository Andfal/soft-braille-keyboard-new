.class public Ll0/d;
.super Lk0/a;
.source "SourceFile"


# instance fields
.field private b:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lk0/a;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Ll0/d;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private f(Ln1/c;Ll1/j;Ll1/i;)Ljava/lang/Object;
    .locals 0

    invoke-static {}, Ln0/b;->f()Ln0/b;

    move-result-object p1

    invoke-virtual {p2}, Ll1/j;->i()Lq0/e$a;

    move-result-object p2

    invoke-virtual {p1, p2}, Ln0/b;->g(Lq0/e$a;)Ln0/e$a;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Ll0/d;->g(Ln0/e$a;Ll1/i;)V

    sget-object p1, Lk0/b;->d:Ljava/lang/Object;

    return-object p1
.end method

.method private g(Ln0/e$a;Ll1/i;)V
    .locals 4

    invoke-virtual {p1}, Ln0/e$a;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ln0/e$a;->a()I

    move-result v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "\u767e\u5ea6\u8bed\u97f3\u8bd5\u7528\u670d\u52a1%d\u5929\u540e\u5230\u671f\uff0c"

    invoke-static {v1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ll1/i;->f(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Ln0/e$a;->j()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "\u767e\u5ea6\u8bed\u97f3\u8bd5\u7528\u670d\u52a1\u5df2\u7ecf\u5230\u671f\uff0c\u8bf7\u53ca\u65f6\u66f4\u65b0\u6388\u6743\uff0c"

    invoke-virtual {p2, p1}, Ll1/i;->f(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p2}, Ll1/i;->c()V

    return-void
.end method


# virtual methods
.method protected c(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ln1/c;

    invoke-virtual {p1}, Ln1/c;->W()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ln1/c;->K()Lb1/m;

    move-result-object p2

    if-nez p2, :cond_1

    :cond_0
    invoke-virtual {p1}, Ln1/c;->V()I

    sget-object p1, Lk0/b;->e:Ljava/lang/Object;

    return-object p1

    :cond_1
    sget-object v0, Ll0/d$a;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object p2, p0, Ll0/d;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "currentCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OfflineAuthNotificationInterceptor"

    invoke-static {v1, v0}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    rem-int/lit8 p2, p2, 0x14

    if-nez p2, :cond_3

    const/4 p2, 0x0

    aget-object p2, p3, p2

    check-cast p2, Ll1/i;

    invoke-virtual {p1}, Ln1/c;->M()Ll1/j;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-direct {p0, p1, p3, p2}, Ll0/d;->f(Ln1/c;Ll1/j;Ll1/i;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_0
    sget-object p1, Lk0/b;->d:Ljava/lang/Object;

    return-object p1
.end method

.method protected d()V
    .locals 2

    iget-object v0, p0, Lk0/a;->a:Ljava/util/List;

    const-string v1, "speak"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
