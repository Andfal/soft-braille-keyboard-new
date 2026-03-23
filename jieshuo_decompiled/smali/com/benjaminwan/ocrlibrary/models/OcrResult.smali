.class public Lcom/benjaminwan/ocrlibrary/models/OcrResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/benjaminwan/ocrlibrary/models/OcrResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private boxImage:Landroid/graphics/Bitmap;

.field private clsResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/benjaminwan/ocrlibrary/models/ClsResult;",
            ">;"
        }
    .end annotation
.end field

.field private clsTime:D

.field private detResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/benjaminwan/ocrlibrary/models/DetResult;",
            ">;"
        }
    .end annotation
.end field

.field private detTime:D

.field private fullTime:D

.field private recResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/benjaminwan/ocrlibrary/models/RecResult;",
            ">;"
        }
    .end annotation
.end field

.field private recTime:D

.field private text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/benjaminwan/ocrlibrary/models/OcrResult$1;

    invoke-direct {v0}, Lcom/benjaminwan/ocrlibrary/models/OcrResult$1;-><init>()V

    sput-object v0, Lcom/benjaminwan/ocrlibrary/models/OcrResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/benjaminwan/ocrlibrary/models/DetResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/benjaminwan/ocrlibrary/models/OcrResult;->detResults:Ljava/util/List;

    sget-object v0, Lcom/benjaminwan/ocrlibrary/models/ClsResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/benjaminwan/ocrlibrary/models/OcrResult;->clsResults:Ljava/util/List;

    sget-object v0, Lcom/benjaminwan/ocrlibrary/models/RecResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/benjaminwan/ocrlibrary/models/OcrResult;->recResults:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/benjaminwan/ocrlibrary/models/OcrResult;->detTime:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/benjaminwan/ocrlibrary/models/OcrResult;->clsTime:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/benjaminwan/ocrlibrary/models/OcrResult;->recTime:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/benjaminwan/ocrlibrary/models/OcrResult;->fullTime:D

    const-class v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/benjaminwan/ocrlibrary/models/OcrResult;->boxImage:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/benjaminwan/ocrlibrary/models/OcrResult;->text:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;DDDDLandroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/benjaminwan/ocrlibrary/models/DetResult;",
            ">;",
            "Ljava/util/List<",
            "Lcom/benjaminwan/ocrlibrary/models/ClsResult;",
            ">;",
            "Ljava/util/List<",
            "Lcom/benjaminwan/ocrlibrary/models/RecResult;",
            ">;DDDD",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/benjaminwan/ocrlibrary/models/OcrResult;->detResults:Ljava/util/List;

    iput-object p2, p0, Lcom/benjaminwan/ocrlibrary/models/OcrResult;->clsResults:Ljava/util/List;

    iput-object p3, p0, Lcom/benjaminwan/ocrlibrary/models/OcrResult;->recResults:Ljava/util/List;

    iput-wide p4, p0, Lcom/benjaminwan/ocrlibrary/models/OcrResult;->detTime:D

    iput-wide p6, p0, Lcom/benjaminwan/ocrlibrary/models/OcrResult;->clsTime:D

    iput-wide p8, p0, Lcom/benjaminwan/ocrlibrary/models/OcrResult;->recTime:D

    iput-wide p10, p0, Lcom/benjaminwan/ocrlibrary/models/OcrResult;->fullTime:D

    iput-object p12, p0, Lcom/benjaminwan/ocrlibrary/models/OcrResult;->boxImage:Landroid/graphics/Bitmap;

    iput-object p13, p0, Lcom/benjaminwan/ocrlibrary/models/OcrResult;->text:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBoxImage()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/benjaminwan/ocrlibrary/models/OcrResult;->boxImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getClsResults()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/benjaminwan/ocrlibrary/models/ClsResult;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/benjaminwan/ocrlibrary/models/OcrResult;->clsResults:Ljava/util/List;

    return-object v0
.end method

.method public getClsTime()D
    .locals 2

    iget-wide v0, p0, Lcom/benjaminwan/ocrlibrary/models/OcrResult;->clsTime:D

    return-wide v0
.end method

.method public getDetResults()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/benjaminwan/ocrlibrary/models/DetResult;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/benjaminwan/ocrlibrary/models/OcrResult;->detResults:Ljava/util/List;

    return-object v0
.end method

.method public getDetTime()D
    .locals 2

    iget-wide v0, p0, Lcom/benjaminwan/ocrlibrary/models/OcrResult;->detTime:D

    return-wide v0
.end method

.method public getFullTime()D
    .locals 2

    iget-wide v0, p0, Lcom/benjaminwan/ocrlibrary/models/OcrResult;->fullTime:D

    return-wide v0
.end method

.method public getRecResults()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/benjaminwan/ocrlibrary/models/RecResult;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/benjaminwan/ocrlibrary/models/OcrResult;->recResults:Ljava/util/List;

    return-object v0
.end method

.method public getRecTime()D
    .locals 2

    iget-wide v0, p0, Lcom/benjaminwan/ocrlibrary/models/OcrResult;->recTime:D

    return-wide v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/benjaminwan/ocrlibrary/models/OcrResult;->text:Ljava/lang/String;

    return-object v0
.end method

.method public setBoxImage(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/benjaminwan/ocrlibrary/models/OcrResult;->boxImage:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setClsResults(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/benjaminwan/ocrlibrary/models/ClsResult;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/benjaminwan/ocrlibrary/models/OcrResult;->clsResults:Ljava/util/List;

    return-void
.end method

.method public setClsTime(D)V
    .locals 0

    iput-wide p1, p0, Lcom/benjaminwan/ocrlibrary/models/OcrResult;->clsTime:D

    return-void
.end method

.method public setDetResults(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/benjaminwan/ocrlibrary/models/DetResult;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/benjaminwan/ocrlibrary/models/OcrResult;->detResults:Ljava/util/List;

    return-void
.end method

.method public setDetTime(D)V
    .locals 0

    iput-wide p1, p0, Lcom/benjaminwan/ocrlibrary/models/OcrResult;->detTime:D

    return-void
.end method

.method public setFullTime(D)V
    .locals 0

    iput-wide p1, p0, Lcom/benjaminwan/ocrlibrary/models/OcrResult;->fullTime:D

    return-void
.end method

.method public setRecResults(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/benjaminwan/ocrlibrary/models/RecResult;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/benjaminwan/ocrlibrary/models/OcrResult;->recResults:Ljava/util/List;

    return-void
.end method

.method public setRecTime(D)V
    .locals 0

    iput-wide p1, p0, Lcom/benjaminwan/ocrlibrary/models/OcrResult;->recTime:D

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/benjaminwan/ocrlibrary/models/OcrResult;->text:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Lcom/benjaminwan/ocrlibrary/models/OcrResult;->detResults:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/benjaminwan/ocrlibrary/models/OcrResult;->clsResults:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/benjaminwan/ocrlibrary/models/OcrResult;->recResults:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget-wide v0, p0, Lcom/benjaminwan/ocrlibrary/models/OcrResult;->detTime:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/benjaminwan/ocrlibrary/models/OcrResult;->clsTime:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/benjaminwan/ocrlibrary/models/OcrResult;->recTime:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/benjaminwan/ocrlibrary/models/OcrResult;->fullTime:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-object v0, p0, Lcom/benjaminwan/ocrlibrary/models/OcrResult;->boxImage:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p2, p0, Lcom/benjaminwan/ocrlibrary/models/OcrResult;->text:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
