.class public Lt0/b$a;
.super Ll1/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt0/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ll1/c<",
        "Lt0/b$a;",
        ">;"
    }
.end annotation


# instance fields
.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:F

.field private h:F

.field private i:I

.field private j:I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ll1/c;-><init>()V

    sget-object v0, Lb1/k;->d:Lb1/k;

    invoke-virtual {v0}, Lb1/k;->a()I

    move-result v0

    iput v0, p0, Lt0/b$a;->c:I

    const/4 v0, 0x4

    iput v0, p0, Lt0/b$a;->d:I

    const/4 v0, 0x2

    iput v0, p0, Lt0/b$a;->e:I

    const/4 v1, 0x1

    iput v1, p0, Lt0/b$a;->f:I

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lt0/b$a;->g:F

    iput v2, p0, Lt0/b$a;->h:F

    iput v1, p0, Lt0/b$a;->i:I

    iput v0, p0, Lt0/b$a;->j:I

    return-void
.end method


# virtual methods
.method public h()I
    .locals 1

    iget v0, p0, Lt0/b$a;->c:I

    return v0
.end method

.method public i(F)V
    .locals 0

    iput p1, p0, Lt0/b$a;->g:F

    return-void
.end method

.method public j(I)V
    .locals 0

    iput p1, p0, Lt0/b$a;->c:I

    return-void
.end method

.method public k()I
    .locals 1

    iget v0, p0, Lt0/b$a;->d:I

    return v0
.end method

.method public l(F)V
    .locals 0

    iput p1, p0, Lt0/b$a;->h:F

    return-void
.end method

.method public m(I)V
    .locals 0

    iput p1, p0, Lt0/b$a;->i:I

    return-void
.end method

.method public n()I
    .locals 1

    iget v0, p0, Lt0/b$a;->e:I

    return v0
.end method

.method public o(I)V
    .locals 0

    iput p1, p0, Lt0/b$a;->j:I

    return-void
.end method

.method public p()I
    .locals 1

    iget v0, p0, Lt0/b$a;->f:I

    return v0
.end method

.method public q()F
    .locals 1

    iget v0, p0, Lt0/b$a;->g:F

    return v0
.end method

.method public r()F
    .locals 1

    iget v0, p0, Lt0/b$a;->h:F

    return v0
.end method

.method public s()I
    .locals 1

    iget v0, p0, Lt0/b$a;->i:I

    return v0
.end method

.method public t()I
    .locals 1

    iget v0, p0, Lt0/b$a;->j:I

    return v0
.end method
