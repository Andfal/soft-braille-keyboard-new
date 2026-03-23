.class public final Lkotlin/ranges/c;
.super Lkotlin/ranges/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/ranges/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/ranges/a;"
    }
.end annotation


# static fields
.field private static final e:Lkotlin/ranges/c;

.field public static final f:Lkotlin/ranges/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lkotlin/ranges/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/ranges/c$a;-><init>(Lt2/d;)V

    sput-object v0, Lkotlin/ranges/c;->f:Lkotlin/ranges/c$a;

    new-instance v0, Lkotlin/ranges/c;

    const/4 v1, 0x1

    int-to-char v1, v1

    const/4 v2, 0x0

    int-to-char v2, v2

    invoke-direct {v0, v1, v2}, Lkotlin/ranges/c;-><init>(CC)V

    sput-object v0, Lkotlin/ranges/c;->e:Lkotlin/ranges/c;

    return-void
.end method

.method public constructor <init>(CC)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lkotlin/ranges/a;-><init>(CCI)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lkotlin/ranges/c;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lkotlin/ranges/c;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lkotlin/ranges/c;

    invoke-virtual {v0}, Lkotlin/ranges/c;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lkotlin/ranges/a;->a()C

    move-result v0

    check-cast p1, Lkotlin/ranges/c;

    invoke-virtual {p1}, Lkotlin/ranges/a;->a()C

    move-result v1

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lkotlin/ranges/a;->b()C

    move-result v0

    invoke-virtual {p1}, Lkotlin/ranges/a;->b()C

    move-result p1

    if-ne v0, p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lkotlin/ranges/c;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lkotlin/ranges/a;->a()C

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lkotlin/ranges/a;->b()C

    move-result v1

    add-int/2addr v0, v1

    :goto_0
    return v0
.end method

.method public isEmpty()Z
    .locals 2

    invoke-virtual {p0}, Lkotlin/ranges/a;->a()C

    move-result v0

    invoke-virtual {p0}, Lkotlin/ranges/a;->b()C

    move-result v1

    invoke-static {v0, v1}, Lt2/f;->e(II)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lkotlin/ranges/a;->a()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlin/ranges/a;->b()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
