.class public final Ld2/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ld2/n;->a:I

    iput p2, p0, Ld2/n;->b:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Ld2/n;->a:I

    return v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Ld2/n;->b:I

    return v0
.end method

.method public final c(I)V
    .locals 0

    iput p1, p0, Ld2/n;->a:I

    return-void
.end method

.method public final d(I)V
    .locals 0

    iput p1, p0, Ld2/n;->b:I

    return-void
.end method
