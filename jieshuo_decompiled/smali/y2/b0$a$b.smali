.class public final Ly2/b0$a$b;
.super Ly2/b0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ly2/b0$a;->c(Lm3/h;Ly2/y;)Ly2/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic g:Lm3/h;

.field final synthetic h:Ly2/y;


# direct methods
.method constructor <init>(Lm3/h;Ly2/y;)V
    .locals 0

    iput-object p1, p0, Ly2/b0$a$b;->g:Lm3/h;

    iput-object p2, p0, Ly2/b0$a$b;->h:Ly2/y;

    invoke-direct {p0}, Ly2/b0;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    iget-object v0, p0, Ly2/b0$a$b;->g:Lm3/h;

    invoke-virtual {v0}, Lm3/h;->t()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public contentType()Ly2/y;
    .locals 1

    iget-object v0, p0, Ly2/b0$a$b;->h:Ly2/y;

    return-object v0
.end method

.method public writeTo(Lm3/f;)V
    .locals 1

    const-string v0, "sink"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ly2/b0$a$b;->g:Lm3/h;

    invoke-interface {p1, v0}, Lm3/f;->v(Lm3/h;)Lm3/f;

    return-void
.end method
