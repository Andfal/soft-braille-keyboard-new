.class public abstract Ll3/d$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll3/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "d"
.end annotation


# instance fields
.field private final a:Z

.field private final b:Lm3/g;

.field private final c:Lm3/f;


# direct methods
.method public constructor <init>(ZLm3/g;Lm3/f;)V
    .locals 1

    const-string v0, "source"

    invoke-static {p2, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sink"

    invoke-static {p3, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Ll3/d$d;->a:Z

    iput-object p2, p0, Ll3/d$d;->b:Lm3/g;

    iput-object p3, p0, Ll3/d$d;->c:Lm3/f;

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Ll3/d$d;->a:Z

    return v0
.end method

.method public final c()Lm3/f;
    .locals 1

    iget-object v0, p0, Ll3/d$d;->c:Lm3/f;

    return-object v0
.end method

.method public final e()Lm3/g;
    .locals 1

    iget-object v0, p0, Ll3/d$d;->b:Lm3/g;

    return-object v0
.end method
