.class Ln0/b$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln0/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ln0/e$a;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lq0/e$a;

.field final synthetic b:Ln0/b;


# direct methods
.method public constructor <init>(Ln0/b;Lq0/e$a;)V
    .locals 0

    iput-object p1, p0, Ln0/b$d;->b:Ln0/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ln0/b$d;->a:Lq0/e$a;

    return-void
.end method


# virtual methods
.method public a()Ln0/e$a;
    .locals 6

    new-instance v0, Ln0/e$a;

    invoke-direct {v0}, Ln0/e$a;-><init>()V

    invoke-static {}, Le1/b;->D()Le1/b;

    move-result-object v1

    invoke-virtual {v1}, Le1/b;->G()Le1/a;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Ld1/c;->b()Ld1/c;

    move-result-object v1

    sget-object v2, Lb1/n;->e0:Lb1/n;

    invoke-virtual {v1, v2}, Ld1/c;->h(Lb1/n;)Ll0/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Ln0/e$a;->d(Ll0/f;)V

    return-object v0

    :cond_0
    iget-object v0, p0, Ln0/b$d;->a:Lq0/e$a;

    invoke-virtual {v0}, Lq0/e$a;->B()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Ln0/b$d;->a:Lq0/e$a;

    invoke-virtual {v2}, Ll1/d;->h()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ln0/b$d;->a:Lq0/e$a;

    invoke-virtual {v3}, Lq0/e$a;->z()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lq1/k;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_0
    invoke-virtual {v1}, Le1/a;->b()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "appCode="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " SN="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "AuthClient"

    invoke-static {v4, v1}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "licenseFilePath="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ln0/e;

    invoke-direct {v1}, Ln0/e;-><init>()V

    invoke-virtual {v1, v2}, Ln0/e;->e(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ln0/e;->c(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ln0/e;->g(Ljava/lang/String;)V

    iget-object v0, p0, Ln0/b$d;->b:Ln0/b;

    invoke-static {v0}, Ln0/b;->i(Ln0/b;)Lh1/c;

    move-result-object v0

    invoke-virtual {v0, v1}, Lh1/c;->a(Lh1/b;)Lh1/a;

    move-result-object v0

    check-cast v0, Ln0/e$a;

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ln0/b$d;->a()Ln0/e$a;

    move-result-object v0

    return-object v0
.end method
