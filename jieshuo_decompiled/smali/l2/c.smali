.class public Ll2/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Ll2/b;

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ll2/c;->a:I

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    iget v0, p0, Ll2/c;->a:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public b()Z
    .locals 1

    iget v0, p0, Ll2/c;->a:I

    and-int/lit8 v0, v0, 0x10

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Ll2/c;->c:I

    return-void
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Ll2/c;->d:I

    return-void
.end method

.method public e()V
    .locals 1

    iget v0, p0, Ll2/c;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Ll2/c;->a:I

    return-void
.end method

.method public f(Ll2/b;)V
    .locals 0

    iput-object p1, p0, Ll2/c;->b:Ll2/b;

    return-void
.end method

.method public g()V
    .locals 1

    iget v0, p0, Ll2/c;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Ll2/c;->a:I

    return-void
.end method

.method public h()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Ll2/c;->a:I

    return-void
.end method
