.class Lcom/baidu/speech/utils/cuid/util/DeviceId$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/speech/utils/cuid/util/DeviceId;->collectBuddyInfos(Landroid/content/Intent;Z)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/baidu/speech/utils/cuid/util/DeviceId$CUIDBuddyInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/speech/utils/cuid/util/DeviceId;


# direct methods
.method constructor <init>(Lcom/baidu/speech/utils/cuid/util/DeviceId;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/speech/utils/cuid/util/DeviceId$1;->this$0:Lcom/baidu/speech/utils/cuid/util/DeviceId;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/baidu/speech/utils/cuid/util/DeviceId$CUIDBuddyInfo;Lcom/baidu/speech/utils/cuid/util/DeviceId$CUIDBuddyInfo;)I
    .locals 2

    iget v0, p2, Lcom/baidu/speech/utils/cuid/util/DeviceId$CUIDBuddyInfo;->priority:I

    iget v1, p1, Lcom/baidu/speech/utils/cuid/util/DeviceId$CUIDBuddyInfo;->priority:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_2

    iget-boolean p1, p1, Lcom/baidu/speech/utils/cuid/util/DeviceId$CUIDBuddyInfo;->isSelf:Z

    if-eqz p1, :cond_0

    iget-boolean v1, p2, Lcom/baidu/speech/utils/cuid/util/DeviceId$CUIDBuddyInfo;->isSelf:Z

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    iget-boolean p1, p2, Lcom/baidu/speech/utils/cuid/util/DeviceId$CUIDBuddyInfo;->isSelf:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/baidu/speech/utils/cuid/util/DeviceId$CUIDBuddyInfo;

    check-cast p2, Lcom/baidu/speech/utils/cuid/util/DeviceId$CUIDBuddyInfo;

    invoke-virtual {p0, p1, p2}, Lcom/baidu/speech/utils/cuid/util/DeviceId$1;->compare(Lcom/baidu/speech/utils/cuid/util/DeviceId$CUIDBuddyInfo;Lcom/baidu/speech/utils/cuid/util/DeviceId$CUIDBuddyInfo;)I

    move-result p1

    return p1
.end method
