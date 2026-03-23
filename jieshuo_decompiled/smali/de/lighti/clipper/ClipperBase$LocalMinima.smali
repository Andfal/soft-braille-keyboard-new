.class public Lde/lighti/clipper/ClipperBase$LocalMinima;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/lighti/clipper/ClipperBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "LocalMinima"
.end annotation


# instance fields
.field leftBound:Lde/lighti/clipper/Edge;

.field next:Lde/lighti/clipper/ClipperBase$LocalMinima;

.field rightBound:Lde/lighti/clipper/Edge;

.field final synthetic this$0:Lde/lighti/clipper/ClipperBase;

.field y:J


# direct methods
.method protected constructor <init>(Lde/lighti/clipper/ClipperBase;)V
    .locals 0

    iput-object p1, p0, Lde/lighti/clipper/ClipperBase$LocalMinima;->this$0:Lde/lighti/clipper/ClipperBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
