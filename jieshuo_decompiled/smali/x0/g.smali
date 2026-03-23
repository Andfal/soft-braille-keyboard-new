.class public Lx0/g;
.super Lk1/e;
.source "SourceFile"


# instance fields
.field private h:Lx0/c;


# direct methods
.method public constructor <init>(Ljava/io/File;Lx0/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lk1/e;-><init>(Ljava/io/File;)V

    iput-object p2, p0, Lx0/g;->h:Lx0/c;

    return-void
.end method


# virtual methods
.method public h(ILjava/util/Map;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    const-string p1, "ModelFileResponseHandler"

    const-string p2, "onSuccess"

    invoke-static {p1, p2}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lx0/g;->h:Lx0/c;

    invoke-virtual {p1}, Lx0/c;->h()V

    return-void
.end method

.method public i(ILjava/util/Map;Ljava/lang/Throwable;Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/Throwable;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    if-nez p2, :cond_0

    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onFailure statuscode="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "--msg="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p4, "ModelFileResponseHandler"

    invoke-static {p4, p2}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ld1/c;->b()Ld1/c;

    move-result-object p2

    sget-object p4, Lb1/n;->h0:Lb1/n;

    const-string v0, "download failure"

    invoke-virtual {p2, p4, p1, v0, p3}, Ld1/c;->e(Lb1/n;ILjava/lang/String;Ljava/lang/Throwable;)Ll0/f;

    move-result-object p1

    iget-object p2, p0, Lx0/g;->h:Lx0/c;

    invoke-virtual {p2, p1}, Lx0/c;->c(Ll0/f;)V

    return-void
.end method

.method public j(JJ)V
    .locals 1

    iget-object v0, p0, Lx0/g;->h:Lx0/c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lx0/c;->b(JJ)V

    return-void
.end method
