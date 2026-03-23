.class public Lcom/unisound/sdk/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:I = 0x400


# instance fields
.field private b:[S

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x400

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/unisound/sdk/e;->b:[S

    return-void
.end method


# virtual methods
.method public a([SI)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([SI)",
            "Ljava/util/ArrayList<",
            "[S>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-lez p2, :cond_1

    iget v3, p0, Lcom/unisound/sdk/e;->c:I

    rsub-int v4, v3, 0x400

    if-gt p2, v4, :cond_0

    iget-object v4, p0, Lcom/unisound/sdk/e;->b:[S

    invoke-static {p1, v2, v4, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Lcom/unisound/sdk/e;->c:I

    add-int/2addr v3, p2

    iput v3, p0, Lcom/unisound/sdk/e;->c:I

    add-int/2addr v2, p2

    sub-int/2addr p2, p2

    goto :goto_0

    :cond_0
    rsub-int v4, v3, 0x400

    iget-object v5, p0, Lcom/unisound/sdk/e;->b:[S

    invoke-static {p1, v2, v5, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/unisound/sdk/e;->b:[S

    invoke-virtual {v3}, [S->clone()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput v1, p0, Lcom/unisound/sdk/e;->c:I

    add-int/2addr v2, v4

    sub-int/2addr p2, v4

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public a()[S
    .locals 4

    iget v0, p0, Lcom/unisound/sdk/e;->c:I

    if-lez v0, :cond_0

    new-array v1, v0, [S

    iget-object v2, p0, Lcom/unisound/sdk/e;->b:[S

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
