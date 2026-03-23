.class final Lw3/r0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Lz3/b;


# instance fields
.field A:Lw3/v3;

.field B:I

.field C:Lw3/r0;

.field D:Z

.field private E:I

.field F:Z

.field G:Z

.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Z

.field d:I

.field e:[Ljava/lang/String;

.field f:[D

.field g:[Lw3/r0;

.field h:[Ljava/lang/Object;

.field i:[B

.field j:[I

.field k:I

.field l:I

.field m:I

.field n:I

.field o:[Ljava/lang/String;

.field p:[Z

.field q:I

.field r:I

.field s:Ljava/lang/String;

.field t:I

.field u:I

.field v:I

.field w:Z

.field x:Z

.field y:Z

.field z:[Ljava/lang/Object;


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lw3/r0;->B:I

    const/4 v0, 0x0

    iput v0, p0, Lw3/r0;->E:I

    iput p1, p0, Lw3/r0;->v:I

    iput-object p2, p0, Lw3/r0;->b:Ljava/lang/String;

    iput-object p3, p0, Lw3/r0;->s:Ljava/lang/String;

    iput-boolean p4, p0, Lw3/r0;->w:Z

    invoke-direct {p0}, Lw3/r0;->g()V

    return-void
.end method

.method constructor <init>(Lw3/r0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lw3/r0;->B:I

    const/4 v0, 0x0

    iput v0, p0, Lw3/r0;->E:I

    iput-object p1, p0, Lw3/r0;->C:Lw3/r0;

    iget v0, p1, Lw3/r0;->v:I

    iput v0, p0, Lw3/r0;->v:I

    iget-object v0, p1, Lw3/r0;->b:Ljava/lang/String;

    iput-object v0, p0, Lw3/r0;->b:Ljava/lang/String;

    iget-object v0, p1, Lw3/r0;->s:Ljava/lang/String;

    iput-object v0, p0, Lw3/r0;->s:Ljava/lang/String;

    iget-boolean p1, p1, Lw3/r0;->w:Z

    iput-boolean p1, p0, Lw3/r0;->w:Z

    invoke-direct {p0}, Lw3/r0;->g()V

    return-void
.end method

.method private g()V
    .locals 1

    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Lw3/r0;->i:[B

    const/16 v0, 0x40

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lw3/r0;->e:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(I)Lz3/b;
    .locals 1

    iget-object v0, p0, Lw3/r0;->g:[Lw3/r0;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, Lw3/r0;->g:[Lw3/r0;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, v0

    :goto_0
    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lw3/r0;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lw3/r0;->o:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public e(I)Z
    .locals 1

    iget-object v0, p0, Lw3/r0;->p:[Z

    aget-boolean p1, v0, p1

    return p1
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lw3/r0;->E:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lw3/r0;->i:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    iput v0, p0, Lw3/r0;->E:I

    :cond_0
    return v0
.end method
