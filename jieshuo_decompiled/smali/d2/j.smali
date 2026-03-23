.class public Ld2/j;
.super Ld2/h;
.source "SourceFile"


# static fields
.field private static k:Ld2/h;

.field private static final l:[Ljava/lang/String;

.field private static final m:[C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Ld2/j;->l:[Ljava/lang/String;

    new-array v0, v0, [C

    sput-object v0, Ld2/j;->m:[C

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ld2/h;-><init>()V

    sget-object v0, Ld2/j;->l:[Ljava/lang/String;

    invoke-super {p0, v0}, Ld2/h;->A([Ljava/lang/String;)V

    sget-object v0, Ld2/j;->m:[C

    invoke-super {p0, v0}, Ld2/h;->C([C)V

    return-void
.end method

.method public static E()Ld2/h;
    .locals 1

    sget-object v0, Ld2/j;->k:Ld2/h;

    if-nez v0, :cond_0

    new-instance v0, Ld2/j;

    invoke-direct {v0}, Ld2/j;-><init>()V

    sput-object v0, Ld2/j;->k:Ld2/h;

    :cond_0
    sget-object v0, Ld2/j;->k:Ld2/h;

    return-object v0
.end method


# virtual methods
.method public k(C)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public l(C)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public m(C)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public o(C)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public q(CC)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public r(CC)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public s(CC)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public v()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
