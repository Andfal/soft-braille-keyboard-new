.class Lg0/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Z

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/util/Hashtable;

.field final synthetic f:Lg0/b;


# direct methods
.method constructor <init>(Lg0/b;IZLjava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;)V
    .locals 0

    iput-object p1, p0, Lg0/m;->f:Lg0/b;

    iput p2, p0, Lg0/m;->a:I

    iput-boolean p3, p0, Lg0/m;->b:Z

    iput-object p4, p0, Lg0/m;->c:Ljava/lang/String;

    iput-object p5, p0, Lg0/m;->d:Ljava/lang/String;

    iput-object p6, p0, Lg0/m;->e:Ljava/util/Hashtable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lg0/m;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; forced = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lg0/m;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "checkAK = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg0/m;->f:Lg0/b;

    iget-object v2, p0, Lg0/m;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lg0/b;->l(Lg0/b;Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lg0/d;->b(Ljava/lang/String;)V

    iget v0, p0, Lg0/m;->a:I

    const/16 v1, 0x259

    if-eq v0, v1, :cond_3

    iget-boolean v1, p0, Lg0/m;->b:Z

    if-nez v1, :cond_3

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lg0/m;->f:Lg0/b;

    iget-object v1, p0, Lg0/m;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lg0/b;->l(Lg0/b;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/16 v0, 0x25a

    iget v1, p0, Lg0/m;->a:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    const-string v0, "authenticate wait "

    invoke-static {v0}, Lg0/d;->b(Ljava/lang/String;)V

    invoke-static {}, Lg0/b;->p()Lg0/p;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lg0/b;->p()Lg0/p;

    move-result-object v0

    invoke-virtual {v0}, Lg0/p;->b()V

    goto :goto_0

    :cond_1
    const-string v0, "authenticate else"

    invoke-static {v0}, Lg0/d;->b(Ljava/lang/String;)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lg0/m;->f:Lg0/b;

    iget-object v1, p0, Lg0/m;->c:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lg0/b;->f(Lg0/b;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    :goto_1
    const-string v0, "authenticate sendAuthRequest"

    invoke-static {v0}, Lg0/d;->b(Ljava/lang/String;)V

    invoke-static {}, Lg0/b;->n()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lg0/e;->f(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "authStrings.length:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lg0/d;->b(Ljava/lang/String;)V

    array-length v0, v5

    const/4 v1, 0x1

    if-le v0, v1, :cond_4

    const-string v0, "more sha1 auth"

    invoke-static {v0}, Lg0/d;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lg0/m;->f:Lg0/b;

    iget-boolean v2, p0, Lg0/m;->b:Z

    iget-object v3, p0, Lg0/m;->d:Ljava/lang/String;

    iget-object v4, p0, Lg0/m;->e:Ljava/util/Hashtable;

    iget-object v6, p0, Lg0/m;->c:Ljava/lang/String;

    invoke-static/range {v1 .. v6}, Lg0/b;->h(Lg0/b;ZLjava/lang/String;Ljava/util/Hashtable;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lg0/m;->f:Lg0/b;

    iget-boolean v1, p0, Lg0/m;->b:Z

    iget-object v2, p0, Lg0/m;->d:Ljava/lang/String;

    iget-object v3, p0, Lg0/m;->e:Ljava/util/Hashtable;

    iget-object v4, p0, Lg0/m;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lg0/b;->g(Lg0/b;ZLjava/lang/String;Ljava/util/Hashtable;Ljava/lang/String;)V

    :goto_2
    return-void
.end method
