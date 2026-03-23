.class public Lr3/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt3/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr3/h$a;,
        Lr3/h$b;
    }
.end annotation


# instance fields
.field private a:Ls3/c;

.field private b:I

.field private c:Lr3/h$b;

.field private d:Lr3/h$a;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Lt3/i;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, Lr3/h;->b:I

    new-instance v0, Ls3/c;

    invoke-direct {v0, p1, p3}, Ls3/c;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lr3/h;->a:Ls3/c;

    invoke-virtual {v0, p0}, Ls3/c;->v(Lr3/h;)V

    iget p1, p0, Lr3/h;->b:I

    invoke-static {p1}, Ls3/d;->j(I)Z

    move-result p1

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    new-instance p1, Lr3/h$a;

    new-array p3, p3, [Lt3/j;

    invoke-direct {p1, p0, p3}, Lr3/h$a;-><init>(Lr3/h;[Ljava/lang/Object;)V

    iput-object p1, p0, Lr3/h;->d:Lr3/h$a;

    new-instance p1, Lr3/h$b;

    invoke-direct {p1, p0, p2}, Lr3/h$b;-><init>(Lr3/h;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lr3/h$a;

    invoke-direct {p1, p0, p2}, Lr3/h$a;-><init>(Lr3/h;[Ljava/lang/Object;)V

    iput-object p1, p0, Lr3/h;->d:Lr3/h$a;

    new-instance p1, Lr3/h$b;

    new-array p2, p3, [Lt3/f;

    invoke-direct {p1, p0, p2}, Lr3/h$b;-><init>(Lr3/h;[Ljava/lang/Object;)V

    :goto_0
    iput-object p1, p0, Lr3/h;->c:Lr3/h$b;

    return-void
.end method


# virtual methods
.method a()Ls3/c;
    .locals 1

    iget-object v0, p0, Lr3/h;->a:Ls3/c;

    return-object v0
.end method

.method b([BI)V
    .locals 1

    iget-object v0, p0, Lr3/h;->a:Ls3/c;

    invoke-virtual {v0}, Ls3/c;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr3/h;->c:Lr3/h$b;

    invoke-virtual {v0}, Lr3/h$b;->a()[Lt3/f;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lt3/m;->c([Lt3/f;[BI)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lr3/h;->d:Lr3/h$a;

    invoke-virtual {v0}, Lr3/h$a;->a()[Lt3/g;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lt3/g;->a([Lt3/g;[BI)V

    :goto_0
    return-void
.end method
