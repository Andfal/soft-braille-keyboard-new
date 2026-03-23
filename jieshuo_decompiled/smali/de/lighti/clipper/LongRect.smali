.class public Lde/lighti/clipper/LongRect;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public bottom:J

.field public left:J

.field public right:J

.field public top:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(JJJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lde/lighti/clipper/LongRect;->left:J

    iput-wide p3, p0, Lde/lighti/clipper/LongRect;->top:J

    iput-wide p5, p0, Lde/lighti/clipper/LongRect;->right:J

    iput-wide p7, p0, Lde/lighti/clipper/LongRect;->bottom:J

    return-void
.end method

.method public constructor <init>(Lde/lighti/clipper/LongRect;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-wide v0, p1, Lde/lighti/clipper/LongRect;->left:J

    iput-wide v0, p0, Lde/lighti/clipper/LongRect;->left:J

    iget-wide v0, p1, Lde/lighti/clipper/LongRect;->top:J

    iput-wide v0, p0, Lde/lighti/clipper/LongRect;->top:J

    iget-wide v0, p1, Lde/lighti/clipper/LongRect;->right:J

    iput-wide v0, p0, Lde/lighti/clipper/LongRect;->right:J

    iget-wide v0, p1, Lde/lighti/clipper/LongRect;->bottom:J

    iput-wide v0, p0, Lde/lighti/clipper/LongRect;->bottom:J

    return-void
.end method
