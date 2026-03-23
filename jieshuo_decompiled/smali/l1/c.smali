.class public Ll1/c;
.super Lm1/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lm1/a;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lm1/a;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Ll1/c;->a:I

    const/4 v0, 0x5

    iput v0, p0, Ll1/c;->b:I

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Ll1/c;->b:I

    return-void
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Ll1/c;->a:I

    return-void
.end method

.method public f()I
    .locals 1

    iget v0, p0, Ll1/c;->a:I

    return v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Ll1/c;->b:I

    return v0
.end method
