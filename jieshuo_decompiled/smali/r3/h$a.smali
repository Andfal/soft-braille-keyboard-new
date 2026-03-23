.class Lr3/h$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr3/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private a:[Lt3/g;

.field private b:Lr3/i;

.field private c:Ljava/lang/String;

.field private d:I


# direct methods
.method constructor <init>(Lr3/h;[Ljava/lang/Object;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length p1, p2

    new-array p1, p1, [Lt3/g;

    iput-object p1, p0, Lr3/h$a;->a:[Lt3/g;

    const/4 p1, 0x0

    :goto_0
    array-length v0, p2

    if-ge p1, v0, :cond_1

    aget-object v0, p2, p1

    instance-of v1, v0, Lt3/g;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lr3/h$a;->a:[Lt3/g;

    check-cast v0, Lt3/g;

    aput-object v0, v1, p1

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lr3/h$a;->a:[Lt3/g;

    new-instance v2, Lt3/g;

    check-cast v0, Lt3/j;

    invoke-direct {v2, v0}, Lt3/g;-><init>(Lt3/j;)V

    aput-object v2, v1, p1

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lr3/h$a;->b:Lr3/i;

    iput-object p1, p0, Lr3/h$a;->c:Ljava/lang/String;

    const/4 p1, -0x1

    iput p1, p0, Lr3/h$a;->d:I

    return-void
.end method


# virtual methods
.method a()[Lt3/g;
    .locals 1

    invoke-virtual {p0}, Lr3/h$a;->b()Z

    iget-object v0, p0, Lr3/h$a;->a:[Lt3/g;

    return-object v0
.end method

.method b()Z
    .locals 1

    iget-object v0, p0, Lr3/h$a;->a:[Lt3/g;

    array-length v0, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method
