.class public Ly3/e0;
.super Ly3/c0;
.source "SourceFile"


# instance fields
.field private p:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ly3/c0;-><init>()V

    const/16 v0, 0x85

    iput v0, p0, Lw3/g2;->a:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ly3/c0;-><init>()V

    const/16 v0, 0x85

    iput v0, p0, Lw3/g2;->a:I

    iput p1, p0, Ly3/e;->h:I

    iput p2, p0, Ly3/e;->i:I

    return-void
.end method


# virtual methods
.method public E0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ly3/e0;->p:Ljava/lang/String;

    return-object v0
.end method

.method public F0(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iput-object p1, p0, Ly3/e0;->p:Ljava/lang/String;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid label name"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
