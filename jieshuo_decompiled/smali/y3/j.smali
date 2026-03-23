.class public Ly3/j;
.super Ly3/e;
.source "SourceFile"


# instance fields
.field private m:Ljava/lang/String;

.field private n:Lw3/s3$a;


# direct methods
.method public constructor <init>(IILw3/s3$a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ly3/e;-><init>(II)V

    const/16 p1, 0xa4

    iput p1, p0, Lw3/g2;->a:I

    iput-object p3, p0, Ly3/j;->n:Lw3/s3$a;

    iput-object p4, p0, Ly3/j;->m:Ljava/lang/String;

    return-void
.end method
