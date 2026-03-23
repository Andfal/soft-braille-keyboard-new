.class public final Lm3/s;
.super Lo2/b;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm3/s$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo2/b<",
        "Lm3/h;",
        ">;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field public static final d:Lm3/s$a;


# instance fields
.field private final b:[Lm3/h;

.field private final c:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lm3/s$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lm3/s$a;-><init>(Lt2/d;)V

    sput-object v0, Lm3/s;->d:Lm3/s$a;

    return-void
.end method

.method private constructor <init>([Lm3/h;[I)V
    .locals 0

    invoke-direct {p0}, Lo2/b;-><init>()V

    iput-object p1, p0, Lm3/s;->b:[Lm3/h;

    iput-object p2, p0, Lm3/s;->c:[I

    return-void
.end method

.method public synthetic constructor <init>([Lm3/h;[ILt2/d;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lm3/s;-><init>([Lm3/h;[I)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lm3/s;->b:[Lm3/h;

    array-length v0, v0

    return v0
.end method

.method public bridge b(Lm3/h;)Z
    .locals 0

    invoke-super {p0, p1}, Lo2/a;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final bridge contains(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lm3/h;

    if-eqz v0, :cond_0

    check-cast p1, Lm3/h;

    invoke-virtual {p0, p1}, Lm3/s;->b(Lm3/h;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public d(I)Lm3/h;
    .locals 1

    iget-object v0, p0, Lm3/s;->b:[Lm3/h;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final e()[Lm3/h;
    .locals 1

    iget-object v0, p0, Lm3/s;->b:[Lm3/h;

    return-object v0
.end method

.method public final f()[I
    .locals 1

    iget-object v0, p0, Lm3/s;->c:[I

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lm3/s;->d(I)Lm3/h;

    move-result-object p1

    return-object p1
.end method

.method public bridge h(Lm3/h;)I
    .locals 0

    invoke-super {p0, p1}, Lo2/b;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public bridge i(Lm3/h;)I
    .locals 0

    invoke-super {p0, p1}, Lo2/b;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final bridge indexOf(Ljava/lang/Object;)I
    .locals 1

    instance-of v0, p1, Lm3/h;

    if-eqz v0, :cond_0

    check-cast p1, Lm3/h;

    invoke-virtual {p0, p1}, Lm3/s;->h(Lm3/h;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public final bridge lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    instance-of v0, p1, Lm3/h;

    if-eqz v0, :cond_0

    check-cast p1, Lm3/h;

    invoke-virtual {p0, p1}, Lm3/s;->i(Lm3/h;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method
