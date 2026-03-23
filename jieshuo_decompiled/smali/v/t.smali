.class public final Lv/t;
.super Lv/a;
.source "SourceFile"


# static fields
.field public static final c:Lv/t;


# instance fields
.field private final a:Lv/v;

.field private final b:Lv/v;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lv/t;

    new-instance v1, Lv/v;

    const-string v2, "TYPE"

    invoke-direct {v1, v2}, Lv/v;-><init>(Ljava/lang/String;)V

    new-instance v2, Lv/v;

    const-string v3, "Ljava/lang/Class;"

    invoke-direct {v2, v3}, Lv/v;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lv/t;-><init>(Lv/v;Lv/v;)V

    sput-object v0, Lv/t;->c:Lv/t;

    return-void
.end method

.method public constructor <init>(Lv/v;Lv/v;)V
    .locals 0

    invoke-direct {p0}, Lv/a;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iput-object p1, p0, Lv/t;->a:Lv/v;

    iput-object p2, p0, Lv/t;->b:Lv/v;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "descriptor == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "name == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lv/t;->a:Lv/v;

    invoke-virtual {v1}, Lv/v;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lv/t;->b:Lv/v;

    invoke-virtual {v1}, Lv/v;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected e(Lv/a;)I
    .locals 2

    check-cast p1, Lv/t;

    iget-object v0, p0, Lv/t;->a:Lv/v;

    iget-object v1, p1, Lv/t;->a:Lv/v;

    invoke-virtual {v0, v1}, Lv/a;->d(Lv/a;)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lv/t;->b:Lv/v;

    iget-object p1, p1, Lv/t;->b:Lv/v;

    invoke-virtual {v0, p1}, Lv/a;->d(Lv/a;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lv/t;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lv/t;

    iget-object v0, p0, Lv/t;->a:Lv/v;

    iget-object v2, p1, Lv/t;->a:Lv/v;

    invoke-virtual {v0, v2}, Lv/v;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lv/t;->b:Lv/v;

    iget-object p1, p1, Lv/t;->b:Lv/v;

    invoke-virtual {v0, p1}, Lv/v;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public f()Ljava/lang/String;
    .locals 1

    const-string v0, "nat"

    return-object v0
.end method

.method public g()Lv/v;
    .locals 1

    iget-object v0, p0, Lv/t;->b:Lv/v;

    return-object v0
.end method

.method public h()Lw/c;
    .locals 1

    iget-object v0, p0, Lv/t;->b:Lv/v;

    invoke-virtual {v0}, Lv/v;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lw/c;->j(Ljava/lang/String;)Lw/c;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lv/t;->a:Lv/v;

    invoke-virtual {v0}, Lv/v;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lv/t;->b:Lv/v;

    invoke-virtual {v1}, Lv/v;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public i()Lv/v;
    .locals 1

    iget-object v0, p0, Lv/t;->a:Lv/v;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nat{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lv/t;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
