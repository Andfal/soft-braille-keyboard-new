.class public Lcom/benjaminwan/ocrlibrary/models/DetResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/benjaminwan/ocrlibrary/models/DetResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private points:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/benjaminwan/ocrlibrary/models/DetPoint;",
            ">;"
        }
    .end annotation
.end field

.field private score:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/benjaminwan/ocrlibrary/models/DetResult$1;

    invoke-direct {v0}, Lcom/benjaminwan/ocrlibrary/models/DetResult$1;-><init>()V

    sput-object v0, Lcom/benjaminwan/ocrlibrary/models/DetResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/benjaminwan/ocrlibrary/models/DetPoint;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/benjaminwan/ocrlibrary/models/DetResult;->points:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/benjaminwan/ocrlibrary/models/DetResult;->score:F

    return-void
.end method

.method public constructor <init>(Ljava/util/List;F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/benjaminwan/ocrlibrary/models/DetPoint;",
            ">;F)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/benjaminwan/ocrlibrary/models/DetResult;->points:Ljava/util/List;

    iput p2, p0, Lcom/benjaminwan/ocrlibrary/models/DetResult;->score:F

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/benjaminwan/ocrlibrary/models/DetPoint;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/benjaminwan/ocrlibrary/models/DetResult;->points:Ljava/util/List;

    return-object v0
.end method

.method public getScore()F
    .locals 1

    iget v0, p0, Lcom/benjaminwan/ocrlibrary/models/DetResult;->score:F

    return v0
.end method

.method public setPoints(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/benjaminwan/ocrlibrary/models/DetPoint;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/benjaminwan/ocrlibrary/models/DetResult;->points:Ljava/util/List;

    return-void
.end method

.method public setScore(F)V
    .locals 0

    iput p1, p0, Lcom/benjaminwan/ocrlibrary/models/DetResult;->score:F

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/benjaminwan/ocrlibrary/models/DetResult;->points:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget p2, p0, Lcom/benjaminwan/ocrlibrary/models/DetResult;->score:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
