.class public final Lg3/f$d$a;
.super Lg3/f$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg3/f$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lg3/f$d;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lg3/i;)V
    .locals 2

    const-string v0, "stream"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lg3/b;->i:Lg3/b;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lg3/i;->d(Lg3/b;Ljava/io/IOException;)V

    return-void
.end method
