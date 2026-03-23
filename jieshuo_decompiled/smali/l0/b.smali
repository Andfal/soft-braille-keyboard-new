.class public Ll0/b;
.super Lk0/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lk0/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected c(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "method="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CallbackInterceptor"

    invoke-static {p2, p1}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    aget-object p2, p3, p1

    check-cast p2, Lm0/b;

    new-instance v0, Lm0/c;

    invoke-direct {v0, p2}, Lm0/c;-><init>(Lm0/b;)V

    invoke-interface {v0}, Lk0/f;->d()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lm0/b;

    aput-object p2, p3, p1

    sget-object p1, Lk0/b;->d:Ljava/lang/Object;

    return-object p1
.end method

.method protected d()V
    .locals 2

    iget-object v0, p0, Lk0/a;->a:Ljava/util/List;

    const-string v1, "setTtsListener"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
