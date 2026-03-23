.class public Lf1/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:Z

.field private d:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lf1/a;->c:Z

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lf1/a;->a:I

    return v0
.end method

.method public b(F)V
    .locals 0

    iput p1, p0, Lf1/a;->d:F

    return-void
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lf1/a;->a:I

    return-void
.end method

.method public d(Z)V
    .locals 0

    iput-boolean p1, p0, Lf1/a;->c:Z

    return-void
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lf1/a;->b:I

    return v0
.end method

.method public f(I)V
    .locals 0

    iput p1, p0, Lf1/a;->b:I

    return-void
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lf1/a;->c:Z

    return v0
.end method

.method public h()F
    .locals 1

    iget v0, p0, Lf1/a;->d:F

    return v0
.end method
