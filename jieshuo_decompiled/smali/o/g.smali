.class public final Lo/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/g$a;
    }
.end annotation


# instance fields
.field private final a:I

.field private b:Lo/t;

.field private c:Lo/b;

.field private d:Lo/d;

.field private e:Lo/u;

.field private f:Lo/p;

.field private g:Lo/i;


# direct methods
.method public constructor <init>(ILo/t;Lo/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    iput p1, p0, Lo/g;->a:I

    iput-object p2, p0, Lo/g;->b:Lo/t;

    iput-object p3, p0, Lo/g;->c:Lo/b;

    const/4 p1, 0x0

    iput-object p1, p0, Lo/g;->d:Lo/d;

    iput-object p1, p0, Lo/g;->e:Lo/u;

    iput-object p1, p0, Lo/g;->f:Lo/p;

    iput-object p1, p0, Lo/g;->g:Lo/i;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "unprocessedCatches == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "unprocessedInsns == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lo/g;->g:Lo/i;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lo/g;->b:Lo/t;

    invoke-virtual {v0}, Lo/t;->k()Lo/i;

    move-result-object v0

    iput-object v0, p0, Lo/g;->g:Lo/i;

    iget v1, p0, Lo/g;->a:I

    invoke-static {v0, v1}, Lo/u;->q(Lo/i;I)Lo/u;

    move-result-object v0

    iput-object v0, p0, Lo/g;->e:Lo/u;

    iget-object v0, p0, Lo/g;->g:Lo/i;

    invoke-static {v0}, Lo/p;->q(Lo/i;)Lo/p;

    move-result-object v0

    iput-object v0, p0, Lo/g;->f:Lo/p;

    iget-object v0, p0, Lo/g;->c:Lo/b;

    invoke-interface {v0}, Lo/b;->build()Lo/d;

    move-result-object v0

    iput-object v0, p0, Lo/g;->d:Lo/d;

    const/4 v0, 0x0

    iput-object v0, p0, Lo/g;->b:Lo/t;

    iput-object v0, p0, Lo/g;->c:Lo/b;

    return-void
.end method


# virtual methods
.method public a(Lo/g$a;)V
    .locals 1

    iget-object v0, p0, Lo/g;->b:Lo/t;

    invoke-virtual {v0, p1}, Lo/t;->g(Lo/g$a;)V

    return-void
.end method

.method public c()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Lw/c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lo/g;->c:Lo/b;

    invoke-interface {v0}, Lo/b;->b()Ljava/util/HashSet;

    move-result-object v0

    return-object v0
.end method

.method public d()Lo/d;
    .locals 1

    invoke-direct {p0}, Lo/g;->b()V

    iget-object v0, p0, Lo/g;->d:Lo/d;

    return-object v0
.end method

.method public e()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Lv/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lo/g;->b:Lo/t;

    invoke-virtual {v0}, Lo/t;->m()Ljava/util/HashSet;

    move-result-object v0

    return-object v0
.end method

.method public f()Lo/i;
    .locals 1

    invoke-direct {p0}, Lo/g;->b()V

    iget-object v0, p0, Lo/g;->g:Lo/i;

    return-object v0
.end method

.method public g()Lo/p;
    .locals 1

    invoke-direct {p0}, Lo/g;->b()V

    iget-object v0, p0, Lo/g;->f:Lo/p;

    return-object v0
.end method

.method public h()Lo/u;
    .locals 1

    invoke-direct {p0}, Lo/g;->b()V

    iget-object v0, p0, Lo/g;->e:Lo/u;

    return-object v0
.end method

.method public i()Z
    .locals 1

    iget-object v0, p0, Lo/g;->c:Lo/b;

    invoke-interface {v0}, Lo/b;->a()Z

    move-result v0

    return v0
.end method

.method public j()Z
    .locals 1

    iget-object v0, p0, Lo/g;->b:Lo/t;

    invoke-virtual {v0}, Lo/t;->n()Z

    move-result v0

    return v0
.end method

.method public k()Z
    .locals 2

    iget v0, p0, Lo/g;->a:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lo/g;->b:Lo/t;

    invoke-virtual {v0}, Lo/t;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
