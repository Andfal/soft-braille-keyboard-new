.class final Ly2/o$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly2/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly2/o$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ly2/w;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly2/w;",
            "Ljava/util/List<",
            "Ly2/n;",
            ">;)V"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "cookies"

    invoke-static {p2, p1}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public b(Ly2/w;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly2/w;",
            ")",
            "Ljava/util/List<",
            "Ly2/n;",
            ">;"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lo2/k;->f()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
