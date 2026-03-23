.class public Lg4/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:[B

.field b:I


# direct methods
.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg4/a;->a:[B

    const/4 p1, 0x0

    iput p1, p0, Lg4/a;->b:I

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    iget v0, p0, Lg4/a;->b:I

    iget-object v1, p0, Lg4/a;->a:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b()Lg4/b;
    .locals 3

    new-instance v0, Lg4/b;

    iget-object v1, p0, Lg4/a;->a:[B

    iget v2, p0, Lg4/a;->b:I

    invoke-direct {v0, v1, v2}, Lg4/b;-><init>([BI)V

    iget v1, p0, Lg4/a;->b:I

    invoke-virtual {v0}, Lg4/b;->c()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lg4/a;->b:I

    return-object v0
.end method
