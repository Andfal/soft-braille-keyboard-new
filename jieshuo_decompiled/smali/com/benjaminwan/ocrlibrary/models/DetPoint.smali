.class public Lcom/benjaminwan/ocrlibrary/models/DetPoint;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/benjaminwan/ocrlibrary/models/DetPoint;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private x:I

.field private y:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/benjaminwan/ocrlibrary/models/DetPoint$1;

    invoke-direct {v0}, Lcom/benjaminwan/ocrlibrary/models/DetPoint$1;-><init>()V

    sput-object v0, Lcom/benjaminwan/ocrlibrary/models/DetPoint;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/benjaminwan/ocrlibrary/models/DetPoint;->x:I

    iput p2, p0, Lcom/benjaminwan/ocrlibrary/models/DetPoint;->y:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/benjaminwan/ocrlibrary/models/DetPoint;->x:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/benjaminwan/ocrlibrary/models/DetPoint;->y:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getX()I
    .locals 1

    iget v0, p0, Lcom/benjaminwan/ocrlibrary/models/DetPoint;->x:I

    return v0
.end method

.method public getY()I
    .locals 1

    iget v0, p0, Lcom/benjaminwan/ocrlibrary/models/DetPoint;->y:I

    return v0
.end method

.method public setX(I)V
    .locals 0

    iput p1, p0, Lcom/benjaminwan/ocrlibrary/models/DetPoint;->x:I

    return-void
.end method

.method public setY(I)V
    .locals 0

    iput p1, p0, Lcom/benjaminwan/ocrlibrary/models/DetPoint;->y:I

    return-void
.end method

.method public toCvPoint()Lorg/opencv/core/Point;
    .locals 5

    new-instance v0, Lorg/opencv/core/Point;

    iget v1, p0, Lcom/benjaminwan/ocrlibrary/models/DetPoint;->x:I

    int-to-double v1, v1

    iget v3, p0, Lcom/benjaminwan/ocrlibrary/models/DetPoint;->y:I

    int-to-double v3, v3

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/opencv/core/Point;-><init>(DD)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/benjaminwan/ocrlibrary/models/DetPoint;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/benjaminwan/ocrlibrary/models/DetPoint;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lcom/benjaminwan/ocrlibrary/models/DetPoint;->x:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/benjaminwan/ocrlibrary/models/DetPoint;->y:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
