.class public Lm0/a;
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
    .locals 5

    const/4 p1, 0x0

    aget-object p2, p3, p1

    check-cast p2, Ll1/h;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ll1/h;->x()Ll1/i;

    move-result-object v0

    invoke-virtual {v0}, Ll1/i;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2}, Ll1/h;->r()I

    move-result v1

    if-le v1, v0, :cond_0

    sub-int v2, v1, v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "prefixLength="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "--progress="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProgressCorrectInterceptor"

    invoke-static {v1, v0}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lm1/a;->a()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ll1/h;

    invoke-virtual {p2, v2}, Ll1/h;->t(I)V

    aput-object p2, p3, p1

    :cond_1
    sget-object p1, Lk0/b;->d:Ljava/lang/Object;

    return-object p1
.end method

.method protected d()V
    .locals 2

    iget-object v0, p0, Lk0/a;->a:Ljava/util/List;

    const-string v1, "onSynthesizeDataArrived"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lk0/a;->a:Ljava/util/List;

    const-string v1, "onPlayProgressUpdate"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
