.class public final Lg3/f$e$b;
.super Lc3/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg3/f$e;->d(ZIILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Z

.field final synthetic g:Lg3/i;

.field final synthetic h:Lg3/f$e;

.field final synthetic i:Lg3/i;

.field final synthetic j:I

.field final synthetic k:Ljava/util/List;

.field final synthetic l:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;ZLg3/i;Lg3/f$e;Lg3/i;ILjava/util/List;Z)V
    .locals 0

    iput-object p1, p0, Lg3/f$e$b;->e:Ljava/lang/String;

    iput-boolean p2, p0, Lg3/f$e$b;->f:Z

    iput-object p5, p0, Lg3/f$e$b;->g:Lg3/i;

    iput-object p6, p0, Lg3/f$e$b;->h:Lg3/f$e;

    iput-object p7, p0, Lg3/f$e$b;->i:Lg3/i;

    iput p8, p0, Lg3/f$e$b;->j:I

    iput-object p9, p0, Lg3/f$e$b;->k:Ljava/util/List;

    iput-boolean p10, p0, Lg3/f$e$b;->l:Z

    invoke-direct {p0, p3, p4}, Lc3/a;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public f()J
    .locals 4

    :try_start_0
    iget-object v0, p0, Lg3/f$e$b;->h:Lg3/f$e;

    iget-object v0, v0, Lg3/f$e;->b:Lg3/f;

    invoke-virtual {v0}, Lg3/f;->M()Lg3/f$d;

    move-result-object v0

    iget-object v1, p0, Lg3/f$e$b;->g:Lg3/i;

    invoke-virtual {v0, v1}, Lg3/f$d;->b(Lg3/i;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lh3/m;->c:Lh3/m$a;

    invoke-virtual {v1}, Lh3/m$a;->g()Lh3/m;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Http2Connection.Listener failure for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lg3/f$e$b;->h:Lg3/f$e;

    iget-object v3, v3, Lg3/f$e;->b:Lg3/f;

    invoke-virtual {v3}, Lg3/f;->K()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3, v0}, Lh3/m;->j(Ljava/lang/String;ILjava/lang/Throwable;)V

    :try_start_1
    iget-object v1, p0, Lg3/f$e$b;->g:Lg3/i;

    sget-object v2, Lg3/b;->c:Lg3/b;

    invoke-virtual {v1, v2, v0}, Lg3/i;->d(Lg3/b;Ljava/io/IOException;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :goto_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method
