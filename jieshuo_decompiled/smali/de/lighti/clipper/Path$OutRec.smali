.class Lde/lighti/clipper/Path$OutRec;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/lighti/clipper/Path;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OutRec"
.end annotation


# instance fields
.field Idx:I

.field bottomPt:Lde/lighti/clipper/Path$OutPt;

.field firstLeft:Lde/lighti/clipper/Path$OutRec;

.field isHole:Z

.field isOpen:Z

.field polyNode:Lde/lighti/clipper/PolyNode;

.field private pts:Lde/lighti/clipper/Path$OutPt;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lde/lighti/clipper/Path$OutRec;)Lde/lighti/clipper/Path$OutPt;
    .locals 0

    iget-object p0, p0, Lde/lighti/clipper/Path$OutRec;->pts:Lde/lighti/clipper/Path$OutPt;

    return-object p0
.end method

.method public static parseFirstLeft(Lde/lighti/clipper/Path$OutRec;)Lde/lighti/clipper/Path$OutRec;
    .locals 1

    :goto_0
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lde/lighti/clipper/Path$OutRec;->getPoints()Lde/lighti/clipper/Path$OutPt;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lde/lighti/clipper/Path$OutRec;->firstLeft:Lde/lighti/clipper/Path$OutRec;

    goto :goto_0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public area()D
    .locals 2

    iget-object v0, p0, Lde/lighti/clipper/Path$OutRec;->pts:Lde/lighti/clipper/Path$OutPt;

    invoke-static {v0}, Lde/lighti/clipper/Path$OutPt;->access$100(Lde/lighti/clipper/Path$OutPt;)D

    move-result-wide v0

    return-wide v0
.end method

.method public fixHoleLinkage()V
    .locals 3

    iget-object v0, p0, Lde/lighti/clipper/Path$OutRec;->firstLeft:Lde/lighti/clipper/Path$OutRec;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lde/lighti/clipper/Path$OutRec;->isHole:Z

    iget-boolean v2, v0, Lde/lighti/clipper/Path$OutRec;->isHole:Z

    if-eq v1, v2, :cond_0

    iget-object v1, v0, Lde/lighti/clipper/Path$OutRec;->pts:Lde/lighti/clipper/Path$OutPt;

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    iget-boolean v1, v0, Lde/lighti/clipper/Path$OutRec;->isHole:Z

    iget-boolean v2, p0, Lde/lighti/clipper/Path$OutRec;->isHole:Z

    if-eq v1, v2, :cond_1

    iget-object v1, v0, Lde/lighti/clipper/Path$OutRec;->pts:Lde/lighti/clipper/Path$OutPt;

    if-nez v1, :cond_2

    :cond_1
    iget-object v0, v0, Lde/lighti/clipper/Path$OutRec;->firstLeft:Lde/lighti/clipper/Path$OutRec;

    goto :goto_0

    :cond_2
    iput-object v0, p0, Lde/lighti/clipper/Path$OutRec;->firstLeft:Lde/lighti/clipper/Path$OutRec;

    :cond_3
    :goto_1
    return-void
.end method

.method public getPoints()Lde/lighti/clipper/Path$OutPt;
    .locals 1

    iget-object v0, p0, Lde/lighti/clipper/Path$OutRec;->pts:Lde/lighti/clipper/Path$OutPt;

    return-object v0
.end method

.method public setPoints(Lde/lighti/clipper/Path$OutPt;)V
    .locals 0

    iput-object p1, p0, Lde/lighti/clipper/Path$OutRec;->pts:Lde/lighti/clipper/Path$OutPt;

    return-void
.end method
