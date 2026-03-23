.class public Lp3/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lp3/l;


# direct methods
.method public constructor <init>([B[BII)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :goto_0
    aget-byte v0, p2, p3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    add-int/lit8 p3, p3, 0x1

    invoke-static {p2, p3}, Lu3/g;->f([BI)S

    move-result v0

    add-int/2addr v0, v1

    add-int/2addr p3, v0

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_1

    add-int/2addr p3, v2

    invoke-static {p2, p3}, Lu3/g;->b([BI)I

    move-result v4

    add-int/lit8 v3, p3, 0x4

    new-instance p3, Lp3/l;

    move-object v0, p3

    move-object v1, p1

    move-object v2, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lp3/l;-><init>([B[BIII)V

    iput-object p3, p0, Lp3/e;->a:Lp3/l;

    return-void

    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "The text piece table is corrupted"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Lp3/l;
    .locals 1

    iget-object v0, p0, Lp3/e;->a:Lp3/l;

    return-object v0
.end method
