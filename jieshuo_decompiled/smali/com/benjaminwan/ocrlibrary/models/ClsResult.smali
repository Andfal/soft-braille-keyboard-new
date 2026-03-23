.class public Lcom/benjaminwan/ocrlibrary/models/ClsResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/benjaminwan/ocrlibrary/models/ClsResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private index:I

.field private score:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/benjaminwan/ocrlibrary/models/ClsResult$1;

    invoke-direct {v0}, Lcom/benjaminwan/ocrlibrary/models/ClsResult$1;-><init>()V

    sput-object v0, Lcom/benjaminwan/ocrlibrary/models/ClsResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/benjaminwan/ocrlibrary/models/ClsResult;->index:I

    iput p2, p0, Lcom/benjaminwan/ocrlibrary/models/ClsResult;->score:F

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/benjaminwan/ocrlibrary/models/ClsResult;->index:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/benjaminwan/ocrlibrary/models/ClsResult;->score:F

    return-void
.end method


# virtual methods
.method public copy(I)Lcom/benjaminwan/ocrlibrary/models/ClsResult;
    .locals 2

    new-instance v0, Lcom/benjaminwan/ocrlibrary/models/ClsResult;

    iget v1, p0, Lcom/benjaminwan/ocrlibrary/models/ClsResult;->score:F

    invoke-direct {v0, p1, v1}, Lcom/benjaminwan/ocrlibrary/models/ClsResult;-><init>(IF)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getIndex()I
    .locals 1

    iget v0, p0, Lcom/benjaminwan/ocrlibrary/models/ClsResult;->index:I

    return v0
.end method

.method public getIndexDirection()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/benjaminwan/ocrlibrary/models/ClsResult;->index:I

    if-nez v0, :cond_0

    const-string v0, "\u2191"

    goto :goto_0

    :cond_0
    const-string v0, "\u2193"

    :goto_0
    return-object v0
.end method

.method public getScore()F
    .locals 1

    iget v0, p0, Lcom/benjaminwan/ocrlibrary/models/ClsResult;->score:F

    return v0
.end method

.method public setIndex(I)V
    .locals 0

    iput p1, p0, Lcom/benjaminwan/ocrlibrary/models/ClsResult;->index:I

    return-void
.end method

.method public setScore(F)V
    .locals 0

    iput p1, p0, Lcom/benjaminwan/ocrlibrary/models/ClsResult;->score:F

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lcom/benjaminwan/ocrlibrary/models/ClsResult;->index:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/benjaminwan/ocrlibrary/models/ClsResult;->score:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
