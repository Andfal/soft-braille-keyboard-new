.class public Lp3/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static e:Lu3/a;

.field private static f:Lu3/a;

.field private static g:Lu3/a;


# instance fields
.field a:S

.field b:I

.field c:S

.field d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lu3/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lu3/a;-><init>(I)V

    sput-object v0, Lp3/h;->e:Lu3/a;

    new-instance v0, Lu3/a;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lu3/a;-><init>(I)V

    sput-object v0, Lp3/h;->f:Lu3/a;

    new-instance v0, Lu3/a;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lu3/a;-><init>(I)V

    sput-object v0, Lp3/h;->g:Lu3/a;

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2}, Lu3/g;->f([BI)S

    move-result v0

    iput-short v0, p0, Lp3/h;->a:S

    add-int/lit8 p2, p2, 0x2

    invoke-static {p1, p2}, Lu3/g;->b([BI)I

    move-result v0

    iput v0, p0, Lp3/h;->b:I

    add-int/lit8 p2, p2, 0x4

    invoke-static {p1, p2}, Lu3/g;->f([BI)S

    move-result p1

    iput-short p1, p0, Lp3/h;->c:S

    iget p1, p0, Lp3/h;->b:I

    const/high16 p2, 0x40000000    # 2.0f

    and-int/2addr p2, p1

    if-nez p2, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lp3/h;->d:Z

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    iput-boolean p2, p0, Lp3/h;->d:Z

    const p2, -0x40000001    # -1.9999999f

    and-int/2addr p1, p2

    iput p1, p0, Lp3/h;->b:I

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lp3/h;->b:I

    :goto_0
    return-void
.end method

.method public static b()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lp3/h;->b:I

    return v0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lp3/h;->d:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    check-cast p1, Lp3/h;

    iget-short v0, p0, Lp3/h;->a:S

    iget-short v1, p1, Lp3/h;->a:S

    if-ne v0, v1, :cond_0

    iget-short v0, p0, Lp3/h;->c:S

    iget-short v1, p1, Lp3/h;->c:S

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lp3/h;->d:Z

    iget-boolean p1, p1, Lp3/h;->d:Z

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
