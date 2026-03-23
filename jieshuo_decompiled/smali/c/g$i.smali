.class Lc/g$i;
.super Lc/g$v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "i"
.end annotation


# instance fields
.field private final f:[J

.field private final g:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z[JZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lc/g$v;-><init>(Ljava/lang/String;Z)V

    iput-object p3, p0, Lc/g$i;->f:[J

    iput-boolean p4, p0, Lc/g$i;->g:Z

    return-void
.end method


# virtual methods
.method public a(Lc/g;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4

    invoke-virtual {p0, p1, p2, p4}, Lc/g$v;->b(Lc/g;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return p2

    :cond_0
    instance-of p3, p1, Ljava/lang/Number;

    if-eqz p3, :cond_2

    check-cast p1, Ljava/lang/Number;

    invoke-static {p1}, Ll/l;->C0(Ljava/lang/Number;)J

    move-result-wide p3

    iget-object p1, p0, Lc/g$i;->f:[J

    array-length v0, p1

    :goto_0
    if-ge p2, v0, :cond_2

    aget-wide v1, p1, p2

    cmp-long v3, v1, p3

    if-nez v3, :cond_1

    iget-boolean p1, p0, Lc/g$i;->g:Z

    xor-int/lit8 p1, p1, 0x1

    return p1

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    iget-boolean p1, p0, Lc/g$i;->g:Z

    return p1
.end method
