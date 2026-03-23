.class public Lcom/unisound/sdk/bh;
.super Lcom/unisound/common/f;
.source "SourceFile"


# static fields
.field public static final b:Ljava/lang/String; = "TTSBaseThread"


# instance fields
.field private volatile c:Z

.field private d:Z

.field private volatile e:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/unisound/common/f;-><init>(Z)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/unisound/sdk/bh;->c:Z

    iput-boolean p2, p0, Lcom/unisound/sdk/bh;->d:Z

    iput-boolean p2, p0, Lcom/unisound/sdk/bh;->e:Z

    iput-boolean p1, p0, Lcom/unisound/sdk/bh;->d:Z

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/unisound/sdk/bh;->d:Z

    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unisound/sdk/bh;->c:Z

    return v0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unisound/sdk/bh;->c:Z

    return-void
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unisound/sdk/bh;->d:Z

    return v0
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unisound/sdk/bh;->e:Z

    return-void
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unisound/sdk/bh;->e:Z

    return v0
.end method

.method public f()V
    .locals 0

    return-void
.end method
