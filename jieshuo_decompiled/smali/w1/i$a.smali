.class Lw1/i$a;
.super Lw1/i$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw1/i;->b(Lt1/e;Ljava/lang/reflect/Field;Ljava/lang/String;Lz1/a;ZZ)Lw1/i$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Ljava/lang/reflect/Field;

.field final synthetic e:Z

.field final synthetic f:Lt1/t;

.field final synthetic g:Lt1/e;

.field final synthetic h:Lz1/a;

.field final synthetic i:Z

.field final synthetic j:Lw1/i;


# direct methods
.method constructor <init>(Lw1/i;Ljava/lang/String;ZZLjava/lang/reflect/Field;ZLt1/t;Lt1/e;Lz1/a;Z)V
    .locals 0

    iput-object p1, p0, Lw1/i$a;->j:Lw1/i;

    iput-object p5, p0, Lw1/i$a;->d:Ljava/lang/reflect/Field;

    iput-boolean p6, p0, Lw1/i$a;->e:Z

    iput-object p7, p0, Lw1/i$a;->f:Lt1/t;

    iput-object p8, p0, Lw1/i$a;->g:Lt1/e;

    iput-object p9, p0, Lw1/i$a;->h:Lz1/a;

    iput-boolean p10, p0, Lw1/i$a;->i:Z

    invoke-direct {p0, p2, p3, p4}, Lw1/i$c;-><init>(Ljava/lang/String;ZZ)V

    return-void
.end method


# virtual methods
.method a(La2/a;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lw1/i$a;->f:Lt1/t;

    invoke-virtual {v0, p1}, Lt1/t;->b(La2/a;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    iget-boolean v0, p0, Lw1/i$a;->i:Z

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lw1/i$a;->d:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p2, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method b(La2/c;Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lw1/i$a;->d:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    iget-boolean v0, p0, Lw1/i$a;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lw1/i$a;->f:Lt1/t;

    goto :goto_0

    :cond_0
    new-instance v0, Lw1/m;

    iget-object v1, p0, Lw1/i$a;->g:Lt1/e;

    iget-object v2, p0, Lw1/i$a;->f:Lt1/t;

    iget-object v3, p0, Lw1/i$a;->h:Lz1/a;

    invoke-virtual {v3}, Lz1/a;->e()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lw1/m;-><init>(Lt1/e;Lt1/t;Ljava/lang/reflect/Type;)V

    :goto_0
    invoke-virtual {v0, p1, p2}, Lt1/t;->d(La2/c;Ljava/lang/Object;)V

    return-void
.end method

.method public c(Ljava/lang/Object;)Z
    .locals 2

    iget-boolean v0, p0, Lw1/i$c;->b:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lw1/i$a;->d:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method
