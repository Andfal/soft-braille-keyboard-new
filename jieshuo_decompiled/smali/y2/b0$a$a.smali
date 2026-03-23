.class public final Ly2/b0$a$a;
.super Ly2/b0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ly2/b0$a;->a(Ljava/io/File;Ly2/y;)Ly2/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic g:Ljava/io/File;

.field final synthetic h:Ly2/y;


# direct methods
.method constructor <init>(Ljava/io/File;Ly2/y;)V
    .locals 0

    iput-object p1, p0, Ly2/b0$a$a;->g:Ljava/io/File;

    iput-object p2, p0, Ly2/b0$a$a;->h:Ly2/y;

    invoke-direct {p0}, Ly2/b0;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    iget-object v0, p0, Ly2/b0$a$a;->g:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Ly2/y;
    .locals 1

    iget-object v0, p0, Ly2/b0$a$a;->h:Ly2/y;

    return-object v0
.end method

.method public writeTo(Lm3/f;)V
    .locals 2

    const-string v0, "sink"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ly2/b0$a$a;->g:Ljava/io/File;

    invoke-static {v0}, Lm3/p;->e(Ljava/io/File;)Lm3/c0;

    move-result-object v0

    :try_start_0
    invoke-interface {p1, v0}, Lm3/f;->o(Lm3/c0;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    invoke-static {v0, p1}, Lr2/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {v0, p1}, Lr2/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
.end method
