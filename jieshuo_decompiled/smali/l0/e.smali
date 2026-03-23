.class public Ll0/e;
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
    .locals 0

    const-string p1, "StatisticsInterceptor"

    const-string p2, "statistics"

    invoke-static {p1, p2}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lk0/b;->d:Ljava/lang/Object;

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
