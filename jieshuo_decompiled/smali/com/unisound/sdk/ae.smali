.class public Lcom/unisound/sdk/ae;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Z = true


# instance fields
.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unisound/sdk/ae;->b:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unisound/sdk/ae;->b:Z

    return-void
.end method

.method public a([BII)Z
    .locals 3

    iget-boolean v0, p0, Lcom/unisound/sdk/ae;->b:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/unisound/sdk/ae;->a:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    if-ge p2, p3, :cond_1

    aget-byte v2, p1, p2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    if-le v0, p1, :cond_2

    iput-boolean v1, p0, Lcom/unisound/sdk/ae;->b:Z

    return p1

    :cond_2
    return v1
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unisound/sdk/ae;->b:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/unisound/sdk/ae;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
