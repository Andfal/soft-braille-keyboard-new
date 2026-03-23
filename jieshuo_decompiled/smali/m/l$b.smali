.class Lm/l$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field final a:Lm/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm/p<",
            "**>;"
        }
    .end annotation
.end field

.field private final b:I

.field private final c:Lm/b;


# direct methods
.method public constructor <init>(Lm/p;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm/p<",
            "**>;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm/l$b;->a:Lm/p;

    iput p2, p0, Lm/l$b;->b:I

    new-instance p1, Lm/b;

    invoke-direct {p1, p0}, Lm/b;-><init>(Lm/l$b;)V

    iput-object p1, p0, Lm/l$b;->c:Lm/b;

    return-void
.end method

.method static bridge synthetic a(Lm/l$b;)Lm/b;
    .locals 0

    iget-object p0, p0, Lm/l$b;->c:Lm/b;

    return-object p0
.end method


# virtual methods
.method b()Z
    .locals 2

    iget v0, p0, Lm/l$b;->b:I

    const v1, 0x1000a

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method c()Z
    .locals 1

    iget v0, p0, Lm/l$b;->b:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method d(Ln/b;)Lq/q;
    .locals 4

    new-instance v0, Lu/s;

    iget-object v1, p0, Lm/l$b;->c:Lm/b;

    invoke-virtual {v1}, Lm/b;->E()Lu/c;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lu/s;-><init>(Lu/c;I)V

    iget-object v1, p0, Lm/l$b;->c:Lm/b;

    invoke-virtual {v1}, Lm/b;->A()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1, p1}, Lo/w;->n(Lu/s;ILu/i;ILn/b;)Lo/g;

    move-result-object p1

    new-instance v0, Lq/q;

    iget-object v1, p0, Lm/l$b;->a:Lm/p;

    iget-object v1, v1, Lm/p;->f:Lv/s;

    iget v2, p0, Lm/l$b;->b:I

    sget-object v3, Lw/b;->c:Lw/b;

    invoke-direct {v0, v1, v2, p1, v3}, Lq/q;-><init>(Lv/s;ILo/g;Lw/e;)V

    return-object v0
.end method
