.class Ls1/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a;->z(Ls1/a$d;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ls1/a$d;

.field final synthetic b:Ls1/a;


# direct methods
.method constructor <init>(Ls1/a;Ls1/a$d;)V
    .locals 0

    iput-object p1, p0, Ls1/a$b;->b:Ls1/a;

    iput-object p2, p0, Ls1/a$b;->a:Ls1/a$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    new-instance v0, Ls1/a$d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ls1/a$d;-><init>(Ls1/a$a;)V

    iget-object v1, p0, Ls1/a$b;->a:Ls1/a$d;

    iget-object v2, v1, Ls1/a$d;->b:Ljava/lang/String;

    iput-object v2, v0, Ls1/a$d;->b:Ljava/lang/String;

    iget-object v1, v1, Ls1/a$d;->a:Ljava/lang/String;

    iput-object v1, v0, Ls1/a$d;->a:Ljava/lang/String;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Ls1/a$b;->b:Ls1/a;

    invoke-static {v2}, Ls1/a;->a(Ls1/a;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "libcuid.so"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ls1/a$d;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ls1/a;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    iget-object v1, p0, Ls1/a$b;->b:Ls1/a;

    invoke-static {v1, v0}, Ls1/a;->k(Ls1/a;Ljava/lang/String;)Z

    goto :goto_1

    :cond_0
    invoke-static {v1}, Ls1/a;->b(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ls1/a;->A(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ls1/a$d;->e(Ljava/lang/String;)Ls1/a$d;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Ls1/a$b;->b:Ls1/a;

    invoke-static {v2, v1}, Ls1/a;->m(Ls1/a;Ls1/a$d;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Ls1/a$b;->b:Ls1/a;

    invoke-virtual {v1}, Ls1/a$d;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ls1/a;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Ls1/a;->k(Ls1/a;Ljava/lang/String;)Z

    goto :goto_1

    :cond_1
    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v1, p0, Ls1/a$b;->b:Ls1/a;

    invoke-static {v1}, Ls1/a;->y(Ls1/a;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v2, p0, Ls1/a$b;->b:Ls1/a;

    const-string v3, "com.baidu.deviceid.v2"

    invoke-static {v2, v3}, Ls1/a;->t(Ls1/a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    :goto_2
    iget-object v2, p0, Ls1/a$b;->b:Ls1/a;

    invoke-static {v2, v3, v0}, Ls1/a;->l(Ls1/a;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_3

    :cond_3
    invoke-static {v2}, Ls1/a;->A(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ls1/a$d;->e(Ljava/lang/String;)Ls1/a$d;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v4, p0, Ls1/a$b;->b:Ls1/a;

    invoke-static {v4, v2}, Ls1/a;->m(Ls1/a;Ls1/a$d;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Ls1/a$b;->b:Ls1/a;

    invoke-virtual {v2}, Ls1/a$d;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ls1/a;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v3, v2}, Ls1/a;->l(Ls1/a;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_3

    :cond_4
    if-nez v2, :cond_5

    goto :goto_2

    :cond_5
    :goto_3
    iget-object v2, p0, Ls1/a$b;->b:Ls1/a;

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v2, v3}, Ls1/a;->E(Ls1/a;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    const-string v5, "backups/.SystemConfig/.cuid2"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_6

    :goto_4
    invoke-static {v0}, Ls1/a;->H(Ljava/lang/String;)V

    goto :goto_5

    :cond_6
    iget-object v3, p0, Ls1/a$b;->b:Ls1/a;

    invoke-static {v3}, Ls1/a;->B(Ls1/a;)Ls1/a$d;

    move-result-object v3

    if-eqz v3, :cond_7

    iget-object v0, p0, Ls1/a$b;->b:Ls1/a;

    invoke-static {v0, v3}, Ls1/a;->m(Ls1/a;Ls1/a$d;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v3}, Ls1/a$d;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ls1/a;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_7
    if-nez v3, :cond_8

    goto :goto_4

    :cond_8
    :goto_5
    if-eqz v1, :cond_b

    iget-object v0, p0, Ls1/a$b;->b:Ls1/a;

    const-string v1, "bd_setting_i"

    invoke-static {v0, v1}, Ls1/a;->t(Ls1/a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v3, 0x0

    goto :goto_6

    :cond_9
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    :goto_6
    invoke-static {v3}, Ls1/a$d;->c(I)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v0, p0, Ls1/a$b;->b:Ls1/a;

    const-string v3, "O"

    :goto_7
    invoke-static {v0, v1, v3}, Ls1/a;->l(Ls1/a;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_8

    :cond_a
    invoke-static {v0}, Ls1/a$d;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Ls1/a$b;->b:Ls1/a;

    const-string v3, "0"

    goto :goto_7

    :cond_b
    :goto_8
    if-eqz v2, :cond_d

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "backups/.SystemConfig/.cuid"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_9

    :cond_c
    iget-object v0, p0, Ls1/a$b;->b:Ls1/a;

    const-string v1, ""

    invoke-static {v0, v1}, Ls1/a;->F(Ls1/a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ls1/a$b;->b:Ls1/a;

    invoke-static {v1, v0}, Ls1/a;->J(Ls1/a;Ljava/lang/String;)Ls1/a$d;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v1, p0, Ls1/a$b;->b:Ls1/a;

    invoke-static {v1, v0}, Ls1/a;->m(Ls1/a;Ls1/a$d;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, v0, Ls1/a$d;->b:Ljava/lang/String;

    iget-object v0, v0, Ls1/a$d;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Ls1/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    :goto_9
    return-void
.end method
