.class Lde/lighti/clipper/DefaultClipper$IntersectNode;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/lighti/clipper/DefaultClipper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IntersectNode"
.end annotation


# instance fields
.field Edge2:Lde/lighti/clipper/Edge;

.field edge1:Lde/lighti/clipper/Edge;

.field private pt:Lde/lighti/clipper/Point$LongPoint;

.field final synthetic this$0:Lde/lighti/clipper/DefaultClipper;


# direct methods
.method private constructor <init>(Lde/lighti/clipper/DefaultClipper;)V
    .locals 0

    iput-object p1, p0, Lde/lighti/clipper/DefaultClipper$IntersectNode;->this$0:Lde/lighti/clipper/DefaultClipper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lde/lighti/clipper/DefaultClipper;Lde/lighti/clipper/DefaultClipper$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lde/lighti/clipper/DefaultClipper$IntersectNode;-><init>(Lde/lighti/clipper/DefaultClipper;)V

    return-void
.end method


# virtual methods
.method getPt()Lde/lighti/clipper/Point$LongPoint;
    .locals 1

    iget-object v0, p0, Lde/lighti/clipper/DefaultClipper$IntersectNode;->pt:Lde/lighti/clipper/Point$LongPoint;

    return-object v0
.end method

.method setPt(Lde/lighti/clipper/Point$LongPoint;)V
    .locals 0

    iput-object p1, p0, Lde/lighti/clipper/DefaultClipper$IntersectNode;->pt:Lde/lighti/clipper/Point$LongPoint;

    return-void
.end method
