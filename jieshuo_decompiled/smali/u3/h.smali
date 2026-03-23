.class public Lu3/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:J

.field private final b:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_0

    iput p1, p0, Lu3/h;->b:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Illegal offset: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(I[B)V
    .locals 0

    invoke-direct {p0, p1}, Lu3/h;-><init>(I)V

    invoke-virtual {p0, p2}, Lu3/h;->b([B)V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-wide v0, p0, Lu3/h;->a:J

    return-wide v0
.end method

.method public b([B)V
    .locals 2

    iget v0, p0, Lu3/h;->b:I

    invoke-static {p1, v0}, Lu3/g;->c([BI)J

    move-result-wide v0

    iput-wide v0, p0, Lu3/h;->a:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lu3/h;->a:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
