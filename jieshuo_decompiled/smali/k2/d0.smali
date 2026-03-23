.class public Lk2/d0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static c:I = 0x0

.field private static d:I = 0x0

.field private static e:Z = false


# instance fields
.field private a:I

.field private b:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(II)I
    .locals 1

    if-eqz p1, :cond_1

    sget-boolean v0, Lk2/d0;->e:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget v0, Lk2/d0;->d:I

    mul-int p0, p0, v0

    div-int/2addr p0, p1

    :cond_1
    :goto_0
    return p0
.end method

.method public static d(II)I
    .locals 1

    if-eqz p1, :cond_1

    sget-boolean v0, Lk2/d0;->e:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget v0, Lk2/d0;->c:I

    mul-int p0, p0, v0

    div-int/2addr p0, p1

    :cond_1
    :goto_0
    return p0
.end method


# virtual methods
.method public a(I)I
    .locals 1

    iget v0, p0, Lk2/d0;->a:I

    invoke-static {p1, v0}, Lk2/d0;->b(II)I

    move-result p1

    return p1
.end method

.method public c(I)I
    .locals 1

    iget v0, p0, Lk2/d0;->b:I

    invoke-static {p1, v0}, Lk2/d0;->d(II)I

    move-result p1

    return p1
.end method
