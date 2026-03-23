.class Lcom/myopicmobile/textwarrior/android/c$m$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/myopicmobile/textwarrior/android/c$m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/myopicmobile/textwarrior/android/c$m;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/myopicmobile/textwarrior/android/c$m;
    .locals 2

    new-instance v0, Lcom/myopicmobile/textwarrior/android/c$m;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/myopicmobile/textwarrior/android/c$m;-><init>(Landroid/os/Parcel;Lcom/myopicmobile/textwarrior/android/e;)V

    return-object v0
.end method

.method public b(I)[Lcom/myopicmobile/textwarrior/android/c$m;
    .locals 0

    new-array p1, p1, [Lcom/myopicmobile/textwarrior/android/c$m;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/myopicmobile/textwarrior/android/c$m$a;->a(Landroid/os/Parcel;)Lcom/myopicmobile/textwarrior/android/c$m;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/myopicmobile/textwarrior/android/c$m$a;->b(I)[Lcom/myopicmobile/textwarrior/android/c$m;

    move-result-object p1

    return-object p1
.end method
