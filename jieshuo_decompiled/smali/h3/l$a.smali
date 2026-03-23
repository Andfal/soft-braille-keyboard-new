.class public final Lh3/l$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh3/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lt2/d;)V
    .locals 0

    invoke-direct {p0}, Lh3/l$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lh3/l;
    .locals 2

    invoke-virtual {p0}, Lh3/l$a;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lh3/l;

    invoke-direct {v0, v1}, Lh3/l;-><init>(Lt2/d;)V

    move-object v1, v0

    :cond_0
    return-object v1
.end method

.method public final b()Z
    .locals 1

    invoke-static {}, Lh3/l;->p()Z

    move-result v0

    return v0
.end method
