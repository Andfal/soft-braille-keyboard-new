.class Lorg/opencv/core/Mat$AtableBase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/opencv/core/Mat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AtableBase"
.end annotation


# instance fields
.field protected final indices:[I

.field protected final mat:Lorg/opencv/core/Mat;


# direct methods
.method protected constructor <init>(Lorg/opencv/core/Mat;II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/opencv/core/Mat$AtableBase;->mat:Lorg/opencv/core/Mat;

    const/4 p1, 0x2

    new-array p1, p1, [I

    iput-object p1, p0, Lorg/opencv/core/Mat$AtableBase;->indices:[I

    const/4 v0, 0x0

    aput p2, p1, v0

    const/4 p2, 0x1

    aput p3, p1, p2

    return-void
.end method

.method protected constructor <init>(Lorg/opencv/core/Mat;[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/opencv/core/Mat$AtableBase;->mat:Lorg/opencv/core/Mat;

    iput-object p2, p0, Lorg/opencv/core/Mat$AtableBase;->indices:[I

    return-void
.end method
