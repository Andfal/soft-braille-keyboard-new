.class public Lcom/myopicmobile/textwarrior/android/c$m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/myopicmobile/textwarrior/android/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "m"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/myopicmobile/textwarrior/android/c$m;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:I

.field final b:I

.field final c:I

.field final d:Z

.field final e:I

.field final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/myopicmobile/textwarrior/android/c$m$a;

    invoke-direct {v0}, Lcom/myopicmobile/textwarrior/android/c$m$a;-><init>()V

    sput-object v0, Lcom/myopicmobile/textwarrior/android/c$m;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/myopicmobile/textwarrior/android/c$m;->a:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/myopicmobile/textwarrior/android/c$m;->b:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/myopicmobile/textwarrior/android/c$m;->c:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/myopicmobile/textwarrior/android/c$m;->d:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/myopicmobile/textwarrior/android/c$m;->e:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/myopicmobile/textwarrior/android/c$m;->f:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/myopicmobile/textwarrior/android/e;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/myopicmobile/textwarrior/android/c$m;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/myopicmobile/textwarrior/android/c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/myopicmobile/textwarrior/android/c;->getCaretPosition()I

    move-result v0

    iput v0, p0, Lcom/myopicmobile/textwarrior/android/c$m;->a:I

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v0

    iput v0, p0, Lcom/myopicmobile/textwarrior/android/c$m;->b:I

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v0

    iput v0, p0, Lcom/myopicmobile/textwarrior/android/c$m;->c:I

    invoke-virtual {p1}, Lcom/myopicmobile/textwarrior/android/c;->isSelectText()Z

    move-result v0

    iput-boolean v0, p0, Lcom/myopicmobile/textwarrior/android/c$m;->d:Z

    invoke-virtual {p1}, Lcom/myopicmobile/textwarrior/android/c;->getSelectionStart()I

    move-result v0

    iput v0, p0, Lcom/myopicmobile/textwarrior/android/c$m;->e:I

    invoke-virtual {p1}, Lcom/myopicmobile/textwarrior/android/c;->getSelectionEnd()I

    move-result p1

    iput p1, p0, Lcom/myopicmobile/textwarrior/android/c$m;->f:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lcom/myopicmobile/textwarrior/android/c$m;->a:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/myopicmobile/textwarrior/android/c$m;->b:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/myopicmobile/textwarrior/android/c$m;->c:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/myopicmobile/textwarrior/android/c$m;->d:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/myopicmobile/textwarrior/android/c$m;->e:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/myopicmobile/textwarrior/android/c$m;->f:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
