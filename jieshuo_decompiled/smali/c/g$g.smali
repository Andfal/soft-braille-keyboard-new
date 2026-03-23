.class Lc/g$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/g$b0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "g"
.end annotation


# static fields
.field public static final a:Lc/g$g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc/g$g;

    invoke-direct {v0}, Lc/g$g;-><init>()V

    sput-object v0, Lc/g$g;->a:Lc/g$g;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_2

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_2
    instance-of v0, p0, Ljava/math/BigDecimal;

    if-eqz v0, :cond_3

    check-cast p0, Ljava/math/BigDecimal;

    const/4 v0, 0x0

    sget-object v1, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    invoke-virtual {p0, v0, v1}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0

    :cond_3
    instance-of v0, p0, Ljava/lang/Byte;

    if-nez v0, :cond_5

    instance-of v0, p0, Ljava/lang/Short;

    if-nez v0, :cond_5

    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_5

    instance-of v0, p0, Ljava/lang/Long;

    if-nez v0, :cond_5

    instance-of v0, p0, Ljava/math/BigInteger;

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :cond_5
    :goto_0
    return-object p0
.end method


# virtual methods
.method public a(Lc/g;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    instance-of p1, p3, Lc/b;

    if-eqz p1, :cond_2

    check-cast p3, Lc/b;

    invoke-virtual {p3}, Lc/b;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/b;

    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1}, Lc/b;->size()I

    move-result p3

    if-ge p2, p3, :cond_1

    invoke-virtual {p1, p2}, Lc/b;->get(I)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3}, Lc/g$g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p3, :cond_0

    invoke-virtual {p1, p2, v0}, Lc/b;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-object p1

    :cond_2
    invoke-static {p3}, Lc/g$g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
