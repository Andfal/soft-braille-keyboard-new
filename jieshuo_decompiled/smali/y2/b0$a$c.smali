.class public final Ly2/b0$a$c;
.super Ly2/b0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ly2/b0$a;->h([BLy2/y;II)Ly2/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic g:[B

.field final synthetic h:Ly2/y;

.field final synthetic i:I

.field final synthetic j:I


# direct methods
.method constructor <init>([BLy2/y;II)V
    .locals 0

    iput-object p1, p0, Ly2/b0$a$c;->g:[B

    iput-object p2, p0, Ly2/b0$a$c;->h:Ly2/y;

    iput p3, p0, Ly2/b0$a$c;->i:I

    iput p4, p0, Ly2/b0$a$c;->j:I

    invoke-direct {p0}, Ly2/b0;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    iget v0, p0, Ly2/b0$a$c;->i:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public contentType()Ly2/y;
    .locals 1

    iget-object v0, p0, Ly2/b0$a$c;->h:Ly2/y;

    return-object v0
.end method

.method public writeTo(Lm3/f;)V
    .locals 3

    const-string v0, "sink"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ly2/b0$a$c;->g:[B

    iget v1, p0, Ly2/b0$a$c;->j:I

    iget v2, p0, Ly2/b0$a$c;->i:I

    invoke-interface {p1, v0, v1, v2}, Lm3/f;->write([BII)Lm3/f;

    return-void
.end method
