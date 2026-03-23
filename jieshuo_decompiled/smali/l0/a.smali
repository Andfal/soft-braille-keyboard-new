.class public Ll0/a;
.super Lk0/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lk0/a;-><init>()V

    return-void
.end method

.method private f(Ljava/lang/Object;Ll1/i;Lb1/n;)Ljava/lang/Object;
    .locals 1

    invoke-static {p2}, Ll1/h;->p(Ll1/i;)Ll1/h;

    move-result-object p2

    invoke-static {}, Ld1/c;->b()Ld1/c;

    move-result-object v0

    invoke-virtual {v0, p3}, Ld1/c;->h(Lb1/n;)Ll0/f;

    move-result-object p3

    invoke-virtual {p2, p3}, Ll1/h;->k(Ll0/f;)V

    invoke-direct {p0, p1, p2}, Ll0/a;->g(Ljava/lang/Object;Ll1/h;)V

    sget-object p1, Lk0/b;->e:Ljava/lang/Object;

    return-object p1
.end method

.method private g(Ljava/lang/Object;Ll1/h;)V
    .locals 0

    check-cast p1, Ln1/c;

    invoke-virtual {p1}, Ln1/c;->L()Lm0/b;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Lm0/b;->g(Ll1/h;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected c(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const/4 p2, 0x0

    aget-object p2, p3, p2

    check-cast p2, Ll1/i;

    invoke-virtual {p2}, Ll1/i;->i()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ArgsCheckInterceptor"

    invoke-static {v1, v0}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p3}, Lq1/h;->d(Ljava/lang/String;)Lb1/n;

    move-result-object p3

    if-nez p3, :cond_0

    sget-object p1, Lk0/b;->d:Ljava/lang/Object;

    return-object p1

    :cond_0
    sget-object p3, Lb1/n;->U:Lb1/n;

    invoke-direct {p0, p1, p2, p3}, Ll0/a;->f(Ljava/lang/Object;Ll1/i;Lb1/n;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected d()V
    .locals 2

    iget-object v0, p0, Lk0/a;->a:Ljava/util/List;

    const-string v1, "speak"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lk0/a;->a:Ljava/util/List;

    const-string v1, "synthesize"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
