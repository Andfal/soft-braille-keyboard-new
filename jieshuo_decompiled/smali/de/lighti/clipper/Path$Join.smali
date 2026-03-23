.class Lde/lighti/clipper/Path$Join;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/lighti/clipper/Path;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Join"
.end annotation


# instance fields
.field private offPt:Lde/lighti/clipper/Point$LongPoint;

.field outPt1:Lde/lighti/clipper/Path$OutPt;

.field outPt2:Lde/lighti/clipper/Path$OutPt;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getOffPt()Lde/lighti/clipper/Point$LongPoint;
    .locals 1

    iget-object v0, p0, Lde/lighti/clipper/Path$Join;->offPt:Lde/lighti/clipper/Point$LongPoint;

    return-object v0
.end method

.method public setOffPt(Lde/lighti/clipper/Point$LongPoint;)V
    .locals 0

    iput-object p1, p0, Lde/lighti/clipper/Path$Join;->offPt:Lde/lighti/clipper/Point$LongPoint;

    return-void
.end method
