.class public final Lw3/h0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw3/h0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field protected a:Ljava/lang/Object;

.field protected b:Ljava/lang/Object;

.field protected c:Z

.field protected d:Lw3/h0$a;

.field protected e:Lw3/h0$a;

.field private final f:I


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lw3/h0$a;->f:I

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_0

    instance-of v0, p1, Ljava/lang/Double;

    if-nez v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lw3/k;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lw3/h0$a;->a:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    iput-object p1, p0, Lw3/h0$a;->a:Ljava/lang/Object;

    :goto_1
    iget-object v0, p0, Lw3/h0$a;->a:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    :goto_2
    iput v1, p0, Lw3/h0$a;->f:I

    goto :goto_3

    :cond_2
    sget-object v0, Lw3/u2;->w:Ljava/lang/Double;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lw3/h0$a;->a:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    iput p1, p0, Lw3/h0$a;->f:I

    :goto_3
    iput-object p2, p0, Lw3/h0$a;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method a()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lw3/h0$a;->b:Ljava/lang/Object;

    sget-object v1, Lw3/w3;->a:Ljava/lang/Object;

    iput-object v1, p0, Lw3/h0$a;->a:Ljava/lang/Object;

    iput-object v1, p0, Lw3/h0$a;->b:Ljava/lang/Object;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lw3/h0$a;->c:Z

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lw3/h0$a;->a:Ljava/lang/Object;

    check-cast p1, Lw3/h0$a;

    iget-object p1, p1, Lw3/h0$a;->a:Ljava/lang/Object;

    invoke-static {v1, p1}, Lw3/u2;->r1(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lw3/h0$a;->f:I

    return v0
.end method
