.class public Lde/lighti/clipper/PolyNode;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/lighti/clipper/PolyNode$NodeType;
    }
.end annotation


# instance fields
.field final childs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lde/lighti/clipper/PolyNode;",
            ">;"
        }
    .end annotation
.end field

.field private endType:Lde/lighti/clipper/Clipper$EndType;

.field private index:I

.field private isOpen:Z

.field private joinType:Lde/lighti/clipper/Clipper$JoinType;

.field private parent:Lde/lighti/clipper/PolyNode;

.field private final polygon:Lde/lighti/clipper/Path;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lde/lighti/clipper/Path;

    invoke-direct {v0}, Lde/lighti/clipper/Path;-><init>()V

    iput-object v0, p0, Lde/lighti/clipper/PolyNode;->polygon:Lde/lighti/clipper/Path;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lde/lighti/clipper/PolyNode;->childs:Ljava/util/List;

    return-void
.end method

.method private getNextSiblingUp()Lde/lighti/clipper/PolyNode;
    .locals 2

    iget-object v0, p0, Lde/lighti/clipper/PolyNode;->parent:Lde/lighti/clipper/PolyNode;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget v1, p0, Lde/lighti/clipper/PolyNode;->index:I

    iget-object v0, v0, Lde/lighti/clipper/PolyNode;->childs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v1, v0, :cond_1

    iget-object v0, p0, Lde/lighti/clipper/PolyNode;->parent:Lde/lighti/clipper/PolyNode;

    invoke-direct {v0}, Lde/lighti/clipper/PolyNode;->getNextSiblingUp()Lde/lighti/clipper/PolyNode;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lde/lighti/clipper/PolyNode;->parent:Lde/lighti/clipper/PolyNode;

    iget-object v0, v0, Lde/lighti/clipper/PolyNode;->childs:Ljava/util/List;

    iget v1, p0, Lde/lighti/clipper/PolyNode;->index:I

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/lighti/clipper/PolyNode;

    return-object v0
.end method

.method private isHoleNode()Z
    .locals 2

    iget-object v0, p0, Lde/lighti/clipper/PolyNode;->parent:Lde/lighti/clipper/PolyNode;

    const/4 v1, 0x1

    :goto_0
    if-eqz v0, :cond_0

    xor-int/lit8 v1, v1, 0x1

    iget-object v0, v0, Lde/lighti/clipper/PolyNode;->parent:Lde/lighti/clipper/PolyNode;

    goto :goto_0

    :cond_0
    return v1
.end method


# virtual methods
.method public addChild(Lde/lighti/clipper/PolyNode;)V
    .locals 2

    iget-object v0, p0, Lde/lighti/clipper/PolyNode;->childs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lde/lighti/clipper/PolyNode;->childs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object p0, p1, Lde/lighti/clipper/PolyNode;->parent:Lde/lighti/clipper/PolyNode;

    iput v0, p1, Lde/lighti/clipper/PolyNode;->index:I

    return-void
.end method

.method public getChildCount()I
    .locals 1

    iget-object v0, p0, Lde/lighti/clipper/PolyNode;->childs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getChilds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lde/lighti/clipper/PolyNode;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lde/lighti/clipper/PolyNode;->childs:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getContour()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lde/lighti/clipper/Point$LongPoint;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lde/lighti/clipper/PolyNode;->polygon:Lde/lighti/clipper/Path;

    return-object v0
.end method

.method public getEndType()Lde/lighti/clipper/Clipper$EndType;
    .locals 1

    iget-object v0, p0, Lde/lighti/clipper/PolyNode;->endType:Lde/lighti/clipper/Clipper$EndType;

    return-object v0
.end method

.method public getJoinType()Lde/lighti/clipper/Clipper$JoinType;
    .locals 1

    iget-object v0, p0, Lde/lighti/clipper/PolyNode;->joinType:Lde/lighti/clipper/Clipper$JoinType;

    return-object v0
.end method

.method public getNext()Lde/lighti/clipper/PolyNode;
    .locals 2

    iget-object v0, p0, Lde/lighti/clipper/PolyNode;->childs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lde/lighti/clipper/PolyNode;->childs:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/lighti/clipper/PolyNode;

    return-object v0

    :cond_0
    invoke-direct {p0}, Lde/lighti/clipper/PolyNode;->getNextSiblingUp()Lde/lighti/clipper/PolyNode;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lde/lighti/clipper/PolyNode;
    .locals 1

    iget-object v0, p0, Lde/lighti/clipper/PolyNode;->parent:Lde/lighti/clipper/PolyNode;

    return-object v0
.end method

.method public getPolygon()Lde/lighti/clipper/Path;
    .locals 1

    iget-object v0, p0, Lde/lighti/clipper/PolyNode;->polygon:Lde/lighti/clipper/Path;

    return-object v0
.end method

.method public isHole()Z
    .locals 1

    invoke-direct {p0}, Lde/lighti/clipper/PolyNode;->isHoleNode()Z

    move-result v0

    return v0
.end method

.method public isOpen()Z
    .locals 1

    iget-boolean v0, p0, Lde/lighti/clipper/PolyNode;->isOpen:Z

    return v0
.end method

.method public setEndType(Lde/lighti/clipper/Clipper$EndType;)V
    .locals 0

    iput-object p1, p0, Lde/lighti/clipper/PolyNode;->endType:Lde/lighti/clipper/Clipper$EndType;

    return-void
.end method

.method public setJoinType(Lde/lighti/clipper/Clipper$JoinType;)V
    .locals 0

    iput-object p1, p0, Lde/lighti/clipper/PolyNode;->joinType:Lde/lighti/clipper/Clipper$JoinType;

    return-void
.end method

.method public setOpen(Z)V
    .locals 0

    iput-boolean p1, p0, Lde/lighti/clipper/PolyNode;->isOpen:Z

    return-void
.end method

.method public setParent(Lde/lighti/clipper/PolyNode;)V
    .locals 0

    iput-object p1, p0, Lde/lighti/clipper/PolyNode;->parent:Lde/lighti/clipper/PolyNode;

    return-void
.end method
