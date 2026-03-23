.class Lr3/h$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr3/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private a:[Lt3/m;

.field private b:Lr3/i;

.field private c:Ljava/lang/String;

.field private d:I


# direct methods
.method constructor <init>(Lr3/h;[Ljava/lang/Object;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length p1, p2

    new-array p1, p1, [Lt3/m;

    iput-object p1, p0, Lr3/h$b;->a:[Lt3/m;

    const/4 p1, 0x0

    :goto_0
    array-length v0, p2

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lr3/h$b;->a:[Lt3/m;

    aget-object v1, p2, p1

    check-cast v1, Lt3/m;

    aput-object v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lr3/h$b;->b:Lr3/i;

    iput-object p1, p0, Lr3/h$b;->c:Ljava/lang/String;

    const/4 p1, -0x1

    iput p1, p0, Lr3/h$b;->d:I

    return-void
.end method


# virtual methods
.method a()[Lt3/f;
    .locals 1

    invoke-virtual {p0}, Lr3/h$b;->b()Z

    iget-object v0, p0, Lr3/h$b;->a:[Lt3/m;

    return-object v0
.end method

.method b()Z
    .locals 1

    iget-object v0, p0, Lr3/h$b;->a:[Lt3/m;

    array-length v0, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method
