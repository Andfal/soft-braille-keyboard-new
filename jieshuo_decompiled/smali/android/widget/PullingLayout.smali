.class public Landroid/widget/PullingLayout;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/PullingLayout$FailDrawable;,
        Landroid/widget/PullingLayout$SucceedDrawable;,
        Landroid/widget/PullingLayout$LoadingDrawable;,
        Landroid/widget/PullingLayout$FailDrawable2;,
        Landroid/widget/PullingLayout$SucceedDrawable2;,
        Landroid/widget/PullingLayout$LoadingDrawable2;,
        Landroid/widget/PullingLayout$PullUpDrawable;,
        Landroid/widget/PullingLayout$PullDownDrawable;,
        Landroid/widget/PullingLayout$FootView;,
        Landroid/widget/PullingLayout$HeadView;,
        Landroid/widget/PullingLayout$MyTimer;,
        Landroid/widget/PullingLayout$AutoRefreshAndLoadTask;,
        Landroid/widget/PullingLayout$OnPullDownListener;,
        Landroid/widget/PullingLayout$OnPullUpListener;,
        Landroid/widget/PullingLayout$OnLoadMoreListener;,
        Landroid/widget/PullingLayout$OnRefreshListener;
    }
.end annotation


# static fields
.field public static final DONE:I = 0x5

.field public static final FAIL:I = 0x1

.field public static final INIT:I = 0x0

.field public static final LOADING:I = 0x4

.field public static final NOTHING:I = 0x2

.field public static final REFRESHING:I = 0x2

.field public static final RELEASE_TO_LOAD:I = 0x3

.field public static final RELEASE_TO_REFRESH:I = 0x1

.field public static final SUCCEED:I = 0x0

.field public static final TAG:Ljava/lang/String; = "PullToRefreshLayout"


# instance fields
.field public MOVE_SPEED:F

.field private canPullDown:Z

.field private canPullUp:Z

.field private dm:Landroid/util/DisplayMetrics;

.field private downY:F

.field private isLayout:Z

.field private isTouch:Z

.field private lastY:F

.field private loadStateImageView:Landroid/widget/ImageView;

.field private loadStateTextView:Landroid/widget/TextView;

.field private load_fail:Ljava/lang/String;

.field private load_nothing:Ljava/lang/String;

.field private load_succeed:Ljava/lang/String;

.field private loading:Ljava/lang/String;

.field private loadingView:Landroid/view/View;

.field private loadmoreDist:F

.field private loadmoreView:Landroid/widget/PullingLayout$FootView;

.field private m:I

.field private mBackgroundColor:I

.field private mContext:Landroid/content/Context;

.field private mEvents:I

.field private mForegroundColor:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLoadMoreListener:Landroid/widget/PullingLayout$OnLoadMoreListener;

.field private mPullDown:Z

.field private mPullDownListener:Landroid/widget/PullingLayout$OnPullDownListener;

.field private mPullUp:Z

.field private mPullUpListener:Landroid/widget/PullingLayout$OnPullUpListener;

.field private mRefreshListener:Landroid/widget/PullingLayout$OnRefreshListener;

.field private mStateColor:I

.field private n:I

.field public pullDownY:F

.field private pullUpView:Landroid/view/View;

.field private pullUpY:F

.field private pullView:Landroid/view/View;

.field private pull_to_refresh:Ljava/lang/String;

.field private pullableLayout:Landroid/widget/FrameLayout;

.field private pullableView:Landroid/view/View;

.field private pullup_to_load:Ljava/lang/String;

.field private radio:F

.field private refreshDist:F

.field private refreshStateImageView:Landroid/widget/ImageView;

.field private refreshStateTextView:Landroid/widget/TextView;

.field private refreshView:Landroid/widget/PullingLayout$HeadView;

.field private refresh_fail:Ljava/lang/String;

.field private refresh_nothing:Ljava/lang/String;

.field private refresh_succeed:Ljava/lang/String;

.field private refreshing:Ljava/lang/String;

.field private refreshingAnimation:Landroid/view/animation/RotateAnimation;

.field private refreshingView:Landroid/view/View;

.field private release_to_load:Ljava/lang/String;

.field private release_to_refresh:Ljava/lang/String;

.field private rotateAnimation:Landroid/view/animation/RotateAnimation;

.field private sm:I

.field private sn:I

.field private state:I

.field private timer:Landroid/widget/PullingLayout$MyTimer;

.field updateHandler:Landroid/os/Handler;

.field private x:I

.field private y:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/PullingLayout;->pullDownY:F

    const/high16 v1, 0x41200000    # 10.0f

    iput v1, p0, Landroid/widget/PullingLayout;->MOVE_SPEED:F

    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/PullingLayout;->state:I

    iput v0, p0, Landroid/widget/PullingLayout;->pullUpY:F

    const/high16 v0, 0x43480000    # 200.0f

    iput v0, p0, Landroid/widget/PullingLayout;->refreshDist:F

    iput v0, p0, Landroid/widget/PullingLayout;->loadmoreDist:F

    iput-boolean v1, p0, Landroid/widget/PullingLayout;->isLayout:Z

    iput-boolean v1, p0, Landroid/widget/PullingLayout;->isTouch:Z

    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Landroid/widget/PullingLayout;->radio:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/PullingLayout;->canPullDown:Z

    iput-boolean v0, p0, Landroid/widget/PullingLayout;->canPullUp:Z

    const-string v0, "\u5237\u65b0\u6210\u529f"

    iput-object v0, p0, Landroid/widget/PullingLayout;->refresh_succeed:Ljava/lang/String;

    const-string v0, "\u6682\u65e0\u66f4\u65b0"

    iput-object v0, p0, Landroid/widget/PullingLayout;->refresh_nothing:Ljava/lang/String;

    const-string v0, "\u5237\u65b0\u5931\u8d25"

    iput-object v0, p0, Landroid/widget/PullingLayout;->refresh_fail:Ljava/lang/String;

    const-string v0, "\u52a0\u8f7d\u6210\u529f"

    iput-object v0, p0, Landroid/widget/PullingLayout;->load_succeed:Ljava/lang/String;

    const-string v0, "\u6ca1\u6709\u66f4\u591a\u5185\u5bb9"

    iput-object v0, p0, Landroid/widget/PullingLayout;->load_nothing:Ljava/lang/String;

    const-string v0, "\u52a0\u8f7d\u5931\u8d25"

    iput-object v0, p0, Landroid/widget/PullingLayout;->load_fail:Ljava/lang/String;

    const-string v0, "\u4e0a\u62c9\u52a0\u8f7d\u66f4\u591a"

    iput-object v0, p0, Landroid/widget/PullingLayout;->pullup_to_load:Ljava/lang/String;

    const-string v0, "\u91ca\u653e\u7acb\u5373\u5237\u65b0"

    iput-object v0, p0, Landroid/widget/PullingLayout;->release_to_refresh:Ljava/lang/String;

    const-string v0, "\u6b63\u5728\u5237\u65b0..."

    iput-object v0, p0, Landroid/widget/PullingLayout;->refreshing:Ljava/lang/String;

    const-string v0, "\u91ca\u653e\u7acb\u5373\u52a0\u8f7d"

    iput-object v0, p0, Landroid/widget/PullingLayout;->release_to_load:Ljava/lang/String;

    const-string v0, "\u4e0b\u62c9\u5237\u65b0"

    iput-object v0, p0, Landroid/widget/PullingLayout;->pull_to_refresh:Ljava/lang/String;

    const-string v0, "\u6b63\u5728\u52a0\u8f7d..."

    iput-object v0, p0, Landroid/widget/PullingLayout;->loading:Ljava/lang/String;

    new-instance v0, Landroid/widget/PullingLayout$1;

    invoke-direct {v0, p0}, Landroid/widget/PullingLayout$1;-><init>(Landroid/widget/PullingLayout;)V

    iput-object v0, p0, Landroid/widget/PullingLayout;->updateHandler:Landroid/os/Handler;

    iput v1, p0, Landroid/widget/PullingLayout;->n:I

    iput v1, p0, Landroid/widget/PullingLayout;->m:I

    iput v1, p0, Landroid/widget/PullingLayout;->x:I

    iput v1, p0, Landroid/widget/PullingLayout;->y:I

    const/4 v0, 0x6

    iput v0, p0, Landroid/widget/PullingLayout;->sn:I

    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/PullingLayout;->sm:I

    invoke-direct {p0, p1}, Landroid/widget/PullingLayout;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput p2, p0, Landroid/widget/PullingLayout;->pullDownY:F

    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Landroid/widget/PullingLayout;->MOVE_SPEED:F

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/PullingLayout;->state:I

    iput p2, p0, Landroid/widget/PullingLayout;->pullUpY:F

    const/high16 p2, 0x43480000    # 200.0f

    iput p2, p0, Landroid/widget/PullingLayout;->refreshDist:F

    iput p2, p0, Landroid/widget/PullingLayout;->loadmoreDist:F

    iput-boolean v0, p0, Landroid/widget/PullingLayout;->isLayout:Z

    iput-boolean v0, p0, Landroid/widget/PullingLayout;->isTouch:Z

    const/high16 p2, 0x40000000    # 2.0f

    iput p2, p0, Landroid/widget/PullingLayout;->radio:F

    const/4 p2, 0x1

    iput-boolean p2, p0, Landroid/widget/PullingLayout;->canPullDown:Z

    iput-boolean p2, p0, Landroid/widget/PullingLayout;->canPullUp:Z

    const-string p2, "\u5237\u65b0\u6210\u529f"

    iput-object p2, p0, Landroid/widget/PullingLayout;->refresh_succeed:Ljava/lang/String;

    const-string p2, "\u6682\u65e0\u66f4\u65b0"

    iput-object p2, p0, Landroid/widget/PullingLayout;->refresh_nothing:Ljava/lang/String;

    const-string p2, "\u5237\u65b0\u5931\u8d25"

    iput-object p2, p0, Landroid/widget/PullingLayout;->refresh_fail:Ljava/lang/String;

    const-string p2, "\u52a0\u8f7d\u6210\u529f"

    iput-object p2, p0, Landroid/widget/PullingLayout;->load_succeed:Ljava/lang/String;

    const-string p2, "\u6ca1\u6709\u66f4\u591a\u5185\u5bb9"

    iput-object p2, p0, Landroid/widget/PullingLayout;->load_nothing:Ljava/lang/String;

    const-string p2, "\u52a0\u8f7d\u5931\u8d25"

    iput-object p2, p0, Landroid/widget/PullingLayout;->load_fail:Ljava/lang/String;

    const-string p2, "\u4e0a\u62c9\u52a0\u8f7d\u66f4\u591a"

    iput-object p2, p0, Landroid/widget/PullingLayout;->pullup_to_load:Ljava/lang/String;

    const-string p2, "\u91ca\u653e\u7acb\u5373\u5237\u65b0"

    iput-object p2, p0, Landroid/widget/PullingLayout;->release_to_refresh:Ljava/lang/String;

    const-string p2, "\u6b63\u5728\u5237\u65b0..."

    iput-object p2, p0, Landroid/widget/PullingLayout;->refreshing:Ljava/lang/String;

    const-string p2, "\u91ca\u653e\u7acb\u5373\u52a0\u8f7d"

    iput-object p2, p0, Landroid/widget/PullingLayout;->release_to_load:Ljava/lang/String;

    const-string p2, "\u4e0b\u62c9\u5237\u65b0"

    iput-object p2, p0, Landroid/widget/PullingLayout;->pull_to_refresh:Ljava/lang/String;

    const-string p2, "\u6b63\u5728\u52a0\u8f7d..."

    iput-object p2, p0, Landroid/widget/PullingLayout;->loading:Ljava/lang/String;

    new-instance p2, Landroid/widget/PullingLayout$1;

    invoke-direct {p2, p0}, Landroid/widget/PullingLayout$1;-><init>(Landroid/widget/PullingLayout;)V

    iput-object p2, p0, Landroid/widget/PullingLayout;->updateHandler:Landroid/os/Handler;

    iput v0, p0, Landroid/widget/PullingLayout;->n:I

    iput v0, p0, Landroid/widget/PullingLayout;->m:I

    iput v0, p0, Landroid/widget/PullingLayout;->x:I

    iput v0, p0, Landroid/widget/PullingLayout;->y:I

    const/4 p2, 0x6

    iput p2, p0, Landroid/widget/PullingLayout;->sn:I

    const/4 p2, 0x2

    iput p2, p0, Landroid/widget/PullingLayout;->sm:I

    invoke-direct {p0, p1}, Landroid/widget/PullingLayout;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    iput p2, p0, Landroid/widget/PullingLayout;->pullDownY:F

    const/high16 p3, 0x41200000    # 10.0f

    iput p3, p0, Landroid/widget/PullingLayout;->MOVE_SPEED:F

    const/4 p3, 0x0

    iput p3, p0, Landroid/widget/PullingLayout;->state:I

    iput p2, p0, Landroid/widget/PullingLayout;->pullUpY:F

    const/high16 p2, 0x43480000    # 200.0f

    iput p2, p0, Landroid/widget/PullingLayout;->refreshDist:F

    iput p2, p0, Landroid/widget/PullingLayout;->loadmoreDist:F

    iput-boolean p3, p0, Landroid/widget/PullingLayout;->isLayout:Z

    iput-boolean p3, p0, Landroid/widget/PullingLayout;->isTouch:Z

    const/high16 p2, 0x40000000    # 2.0f

    iput p2, p0, Landroid/widget/PullingLayout;->radio:F

    const/4 p2, 0x1

    iput-boolean p2, p0, Landroid/widget/PullingLayout;->canPullDown:Z

    iput-boolean p2, p0, Landroid/widget/PullingLayout;->canPullUp:Z

    const-string p2, "\u5237\u65b0\u6210\u529f"

    iput-object p2, p0, Landroid/widget/PullingLayout;->refresh_succeed:Ljava/lang/String;

    const-string p2, "\u6682\u65e0\u66f4\u65b0"

    iput-object p2, p0, Landroid/widget/PullingLayout;->refresh_nothing:Ljava/lang/String;

    const-string p2, "\u5237\u65b0\u5931\u8d25"

    iput-object p2, p0, Landroid/widget/PullingLayout;->refresh_fail:Ljava/lang/String;

    const-string p2, "\u52a0\u8f7d\u6210\u529f"

    iput-object p2, p0, Landroid/widget/PullingLayout;->load_succeed:Ljava/lang/String;

    const-string p2, "\u6ca1\u6709\u66f4\u591a\u5185\u5bb9"

    iput-object p2, p0, Landroid/widget/PullingLayout;->load_nothing:Ljava/lang/String;

    const-string p2, "\u52a0\u8f7d\u5931\u8d25"

    iput-object p2, p0, Landroid/widget/PullingLayout;->load_fail:Ljava/lang/String;

    const-string p2, "\u4e0a\u62c9\u52a0\u8f7d\u66f4\u591a"

    iput-object p2, p0, Landroid/widget/PullingLayout;->pullup_to_load:Ljava/lang/String;

    const-string p2, "\u91ca\u653e\u7acb\u5373\u5237\u65b0"

    iput-object p2, p0, Landroid/widget/PullingLayout;->release_to_refresh:Ljava/lang/String;

    const-string p2, "\u6b63\u5728\u5237\u65b0..."

    iput-object p2, p0, Landroid/widget/PullingLayout;->refreshing:Ljava/lang/String;

    const-string p2, "\u91ca\u653e\u7acb\u5373\u52a0\u8f7d"

    iput-object p2, p0, Landroid/widget/PullingLayout;->release_to_load:Ljava/lang/String;

    const-string p2, "\u4e0b\u62c9\u5237\u65b0"

    iput-object p2, p0, Landroid/widget/PullingLayout;->pull_to_refresh:Ljava/lang/String;

    const-string p2, "\u6b63\u5728\u52a0\u8f7d..."

    iput-object p2, p0, Landroid/widget/PullingLayout;->loading:Ljava/lang/String;

    new-instance p2, Landroid/widget/PullingLayout$1;

    invoke-direct {p2, p0}, Landroid/widget/PullingLayout$1;-><init>(Landroid/widget/PullingLayout;)V

    iput-object p2, p0, Landroid/widget/PullingLayout;->updateHandler:Landroid/os/Handler;

    iput p3, p0, Landroid/widget/PullingLayout;->n:I

    iput p3, p0, Landroid/widget/PullingLayout;->m:I

    iput p3, p0, Landroid/widget/PullingLayout;->x:I

    iput p3, p0, Landroid/widget/PullingLayout;->y:I

    const/4 p2, 0x6

    iput p2, p0, Landroid/widget/PullingLayout;->sn:I

    const/4 p2, 0x2

    iput p2, p0, Landroid/widget/PullingLayout;->sm:I

    invoke-direct {p0, p1}, Landroid/widget/PullingLayout;->initView(Landroid/content/Context;)V

    return-void
.end method

.method static bridge synthetic a(Landroid/widget/PullingLayout;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/PullingLayout;->isTouch:Z

    return p0
.end method

.method private absListViewCanPullDown(Landroid/widget/AbsListView;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    if-ltz p1, :cond_1

    return v1

    :cond_1
    return v2
.end method

.method static bridge synthetic b(Landroid/widget/PullingLayout;)F
    .locals 0

    iget p0, p0, Landroid/widget/PullingLayout;->loadmoreDist:F

    return p0
.end method

.method static bridge synthetic c(Landroid/widget/PullingLayout;)I
    .locals 0

    iget p0, p0, Landroid/widget/PullingLayout;->m:I

    return p0
.end method

.method private canPullDown()Z
    .locals 2

    iget-boolean v0, p0, Landroid/widget/PullingLayout;->mPullDown:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/widget/PullingLayout;->pullableView:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/widget/PullingLayout;->mPullDownListener:Landroid/widget/PullingLayout$OnPullDownListener;

    if-eqz v1, :cond_1

    invoke-interface {v1, v0}, Landroid/widget/PullingLayout$OnPullDownListener;->onPullDown(Landroid/view/View;)Z

    move-result v0

    return v0

    :cond_1
    instance-of v1, v0, Landroid/widget/AbsListView;

    if-eqz v1, :cond_2

    check-cast v0, Landroid/widget/AbsListView;

    invoke-direct {p0, v0}, Landroid/widget/PullingLayout;->absListViewCanPullDown(Landroid/widget/AbsListView;)Z

    move-result v0

    return v0

    :cond_2
    instance-of v1, v0, Landroid/widget/ScrollView;

    if-eqz v1, :cond_3

    check-cast v0, Landroid/widget/ScrollView;

    invoke-direct {p0, v0}, Landroid/widget/PullingLayout;->viewCanPullDown(Landroid/view/View;)Z

    move-result v0

    return v0

    :cond_3
    instance-of v1, v0, Landroid/webkit/WebView;

    if-eqz v1, :cond_4

    check-cast v0, Landroid/webkit/WebView;

    invoke-direct {p0, v0}, Landroid/widget/PullingLayout;->viewCanPullDown(Landroid/view/View;)Z

    move-result v0

    return v0

    :cond_4
    const/4 v0, 0x1

    return v0

    :cond_5
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private canPullUp()Z
    .locals 2

    iget-boolean v0, p0, Landroid/widget/PullingLayout;->mPullUp:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/widget/PullingLayout;->pullableView:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/widget/PullingLayout;->mPullUpListener:Landroid/widget/PullingLayout$OnPullUpListener;

    if-eqz v1, :cond_1

    invoke-interface {v1, v0}, Landroid/widget/PullingLayout$OnPullUpListener;->onPullUp(Landroid/view/View;)Z

    move-result v0

    return v0

    :cond_1
    instance-of v1, v0, Landroid/widget/ListView;

    if-eqz v1, :cond_2

    check-cast v0, Landroid/widget/ListView;

    invoke-direct {p0, v0}, Landroid/widget/PullingLayout;->listViewCanPullUp(Landroid/widget/ListView;)Z

    move-result v0

    return v0

    :cond_2
    instance-of v1, v0, Landroid/widget/GridView;

    if-eqz v1, :cond_3

    check-cast v0, Landroid/widget/GridView;

    invoke-direct {p0, v0}, Landroid/widget/PullingLayout;->gridViewCanPullUp(Landroid/widget/GridView;)Z

    move-result v0

    return v0

    :cond_3
    instance-of v1, v0, Landroid/widget/ExpandableListView;

    if-eqz v1, :cond_4

    check-cast v0, Landroid/widget/ExpandableListView;

    invoke-direct {p0, v0}, Landroid/widget/PullingLayout;->expandableListViewCanPullUp(Landroid/widget/ExpandableListView;)Z

    move-result v0

    return v0

    :cond_4
    instance-of v1, v0, Landroid/widget/ScrollView;

    if-eqz v1, :cond_5

    check-cast v0, Landroid/widget/ScrollView;

    invoke-direct {p0, v0}, Landroid/widget/PullingLayout;->scrollViewCanPullUp(Landroid/widget/ScrollView;)Z

    move-result v0

    return v0

    :cond_5
    instance-of v1, v0, Landroid/webkit/WebView;

    if-eqz v1, :cond_6

    check-cast v0, Landroid/webkit/WebView;

    invoke-direct {p0, v0}, Landroid/widget/PullingLayout;->webViewCanPullUp(Landroid/webkit/WebView;)Z

    move-result v0

    return v0

    :cond_6
    const/4 v0, 0x1

    return v0

    :cond_7
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private changeState(I)V
    .locals 3

    iput p1, p0, Landroid/widget/PullingLayout;->state:I

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    const/4 v2, 0x4

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    if-eq p1, v2, :cond_0

    goto :goto_2

    :cond_0
    iget-object p1, p0, Landroid/widget/PullingLayout;->pullUpView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    iget-object p1, p0, Landroid/widget/PullingLayout;->loadingView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Landroid/widget/PullingLayout;->pullUpView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Landroid/widget/PullingLayout;->loadStateTextView:Landroid/widget/TextView;

    iget-object v0, p0, Landroid/widget/PullingLayout;->loading:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroid/widget/PullingLayout;->loadStateTextView:Landroid/widget/TextView;

    iget-object v0, p0, Landroid/widget/PullingLayout;->release_to_load:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Landroid/widget/PullingLayout;->pullUpView:Landroid/view/View;

    goto :goto_1

    :cond_2
    iget-object p1, p0, Landroid/widget/PullingLayout;->pullView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    iget-object p1, p0, Landroid/widget/PullingLayout;->refreshingView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Landroid/widget/PullingLayout;->pullView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Landroid/widget/PullingLayout;->refreshStateTextView:Landroid/widget/TextView;

    iget-object v0, p0, Landroid/widget/PullingLayout;->refreshing:Ljava/lang/String;

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_3
    iget-object p1, p0, Landroid/widget/PullingLayout;->refreshStateTextView:Landroid/widget/TextView;

    iget-object v0, p0, Landroid/widget/PullingLayout;->release_to_refresh:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Landroid/widget/PullingLayout;->pullView:Landroid/view/View;

    :goto_1
    iget-object v0, p0, Landroid/widget/PullingLayout;->rotateAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_2

    :cond_4
    iget-object p1, p0, Landroid/widget/PullingLayout;->refreshStateImageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Landroid/widget/PullingLayout;->refreshStateTextView:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/widget/PullingLayout;->pull_to_refresh:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Landroid/widget/PullingLayout;->pullView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    iget-object p1, p0, Landroid/widget/PullingLayout;->pullView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Landroid/widget/PullingLayout;->loadStateImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Landroid/widget/PullingLayout;->loadStateTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/PullingLayout;->pullup_to_load:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Landroid/widget/PullingLayout;->pullUpView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    iget-object p1, p0, Landroid/widget/PullingLayout;->pullUpView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method static bridge synthetic d(Landroid/widget/PullingLayout;)Landroid/widget/PullingLayout$OnRefreshListener;
    .locals 0

    iget-object p0, p0, Landroid/widget/PullingLayout;->mRefreshListener:Landroid/widget/PullingLayout$OnRefreshListener;

    return-object p0
.end method

.method private dp(F)I
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Landroid/widget/PullingLayout;->dm:Landroid/util/DisplayMetrics;

    invoke-static {v0, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method static bridge synthetic e(Landroid/widget/PullingLayout;)I
    .locals 0

    iget p0, p0, Landroid/widget/PullingLayout;->mStateColor:I

    return p0
.end method

.method private expandableListViewCanPullUp(Landroid/widget/ExpandableListView;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getCount()I

    move-result v2

    sub-int/2addr v2, v1

    if-ne v0, v2, :cond_1

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    if-gt v0, p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method static bridge synthetic f(Landroid/widget/PullingLayout;)I
    .locals 0

    iget p0, p0, Landroid/widget/PullingLayout;->n:I

    return p0
.end method

.method static bridge synthetic g(Landroid/widget/PullingLayout;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Landroid/widget/PullingLayout;->pullUpView:Landroid/view/View;

    return-object p0
.end method

.method private gridViewCanPullUp(Landroid/widget/GridView;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getCount()I

    move-result v2

    sub-int/2addr v2, v1

    if-ne v0, v2, :cond_1

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    if-gt v0, p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method static bridge synthetic h(Landroid/widget/PullingLayout;)F
    .locals 0

    iget p0, p0, Landroid/widget/PullingLayout;->pullUpY:F

    return p0
.end method

.method private hide()V
    .locals 3

    iget-object v0, p0, Landroid/widget/PullingLayout;->timer:Landroid/widget/PullingLayout$MyTimer;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/widget/PullingLayout$MyTimer;->schedule(J)V

    return-void
.end method

.method static bridge synthetic i(Landroid/widget/PullingLayout;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Landroid/widget/PullingLayout;->pullView:Landroid/view/View;

    return-object p0
.end method

.method private initView()V
    .locals 1

    iget-object v0, p0, Landroid/widget/PullingLayout;->refreshView:Landroid/widget/PullingLayout$HeadView;

    invoke-virtual {v0}, Landroid/widget/PullingLayout$HeadView;->getPullView()Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/PullingLayout;->pullView:Landroid/view/View;

    iget-object v0, p0, Landroid/widget/PullingLayout;->refreshView:Landroid/widget/PullingLayout$HeadView;

    invoke-virtual {v0}, Landroid/widget/PullingLayout$HeadView;->getStateText()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/PullingLayout;->refreshStateTextView:Landroid/widget/TextView;

    iget-object v0, p0, Landroid/widget/PullingLayout;->refreshView:Landroid/widget/PullingLayout$HeadView;

    invoke-virtual {v0}, Landroid/widget/PullingLayout$HeadView;->getLoadingView()Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/PullingLayout;->refreshingView:Landroid/view/View;

    iget-object v0, p0, Landroid/widget/PullingLayout;->refreshView:Landroid/widget/PullingLayout$HeadView;

    invoke-virtual {v0}, Landroid/widget/PullingLayout$HeadView;->getStateView()Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/PullingLayout;->refreshStateImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Landroid/widget/PullingLayout;->loadmoreView:Landroid/widget/PullingLayout$FootView;

    invoke-virtual {v0}, Landroid/widget/PullingLayout$FootView;->getPullView()Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/PullingLayout;->pullUpView:Landroid/view/View;

    iget-object v0, p0, Landroid/widget/PullingLayout;->loadmoreView:Landroid/widget/PullingLayout$FootView;

    invoke-virtual {v0}, Landroid/widget/PullingLayout$FootView;->getStateText()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/PullingLayout;->loadStateTextView:Landroid/widget/TextView;

    iget-object v0, p0, Landroid/widget/PullingLayout;->loadmoreView:Landroid/widget/PullingLayout$FootView;

    invoke-virtual {v0}, Landroid/widget/PullingLayout$FootView;->getLoadingView()Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/PullingLayout;->loadingView:Landroid/view/View;

    iget-object v0, p0, Landroid/widget/PullingLayout;->loadmoreView:Landroid/widget/PullingLayout$FootView;

    invoke-virtual {v0}, Landroid/widget/PullingLayout$FootView;->getStateView()Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/PullingLayout;->loadStateImageView:Landroid/widget/ImageView;

    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 12

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/PullingLayout;->dm:Landroid/util/DisplayMetrics;

    iput-object p1, p0, Landroid/widget/PullingLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Landroid/widget/PullingLayout;->mForegroundColor:I

    const/high16 v3, -0x1000000

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Landroid/widget/PullingLayout;->mBackgroundColor:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget v0, p0, Landroid/widget/PullingLayout;->mForegroundColor:I

    invoke-virtual {p0, v0}, Landroid/widget/PullingLayout;->setStateColor(I)V

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Landroid/widget/PullingLayout;->mInflater:Landroid/view/LayoutInflater;

    new-instance p1, Landroid/widget/PullingLayout$HeadView;

    iget-object v0, p0, Landroid/widget/PullingLayout;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0, v0}, Landroid/widget/PullingLayout$HeadView;-><init>(Landroid/widget/PullingLayout;Landroid/content/Context;)V

    iput-object p1, p0, Landroid/widget/PullingLayout;->refreshView:Landroid/widget/PullingLayout$HeadView;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-super {p0, p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Landroid/widget/FrameLayout;

    iget-object v0, p0, Landroid/widget/PullingLayout;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Landroid/widget/PullingLayout;->pullableLayout:Landroid/widget/FrameLayout;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-super {p0, p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Landroid/widget/PullingLayout$FootView;

    iget-object v0, p0, Landroid/widget/PullingLayout;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0, v0}, Landroid/widget/PullingLayout$FootView;-><init>(Landroid/widget/PullingLayout;Landroid/content/Context;)V

    iput-object p1, p0, Landroid/widget/PullingLayout;->loadmoreView:Landroid/widget/PullingLayout$FootView;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-super {p0, p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Landroid/widget/PullingLayout;->pullableLayout:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Landroid/widget/PullingLayout;->initView()V

    new-instance p1, Landroid/widget/PullingLayout$MyTimer;

    iget-object v0, p0, Landroid/widget/PullingLayout;->updateHandler:Landroid/os/Handler;

    invoke-direct {p1, p0, v0}, Landroid/widget/PullingLayout$MyTimer;-><init>(Landroid/widget/PullingLayout;Landroid/os/Handler;)V

    iput-object p1, p0, Landroid/widget/PullingLayout;->timer:Landroid/widget/PullingLayout$MyTimer;

    new-instance p1, Landroid/view/animation/RotateAnimation;

    const/4 v6, 0x0

    const/high16 v7, 0x43340000    # 180.0f

    const/4 v8, 0x1

    const/high16 v9, 0x3f000000    # 0.5f

    const/4 v10, 0x1

    const/high16 v11, 0x3f000000    # 0.5f

    move-object v5, p1

    invoke-direct/range {v5 .. v11}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object p1, p0, Landroid/widget/PullingLayout;->rotateAnimation:Landroid/view/animation/RotateAnimation;

    const-wide/16 v5, 0x64

    invoke-virtual {p1, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object p1, p0, Landroid/widget/PullingLayout;->rotateAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {p1, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    iget-object p1, p0, Landroid/widget/PullingLayout;->rotateAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {p1, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance p1, Landroid/view/animation/RotateAnimation;

    const/4 v6, 0x0

    const/high16 v7, 0x43b40000    # 360.0f

    move-object v5, p1

    invoke-direct/range {v5 .. v11}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object p1, p0, Landroid/widget/PullingLayout;->refreshingAnimation:Landroid/view/animation/RotateAnimation;

    const-wide/16 v0, 0x5dc

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object p1, p0, Landroid/widget/PullingLayout;->refreshingAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {p1, v2}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    iget-object p1, p0, Landroid/widget/PullingLayout;->refreshingAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {p1, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iget-object v0, p0, Landroid/widget/PullingLayout;->rotateAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, p1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Landroid/widget/PullingLayout;->refreshingAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, p1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-void

    :array_0
    .array-data 4
        0x1010030
        0x1010031
    .end array-data
.end method

.method static bridge synthetic j(Landroid/widget/PullingLayout;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/widget/PullingLayout;->pull_to_refresh:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic k(Landroid/widget/PullingLayout;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/widget/PullingLayout;->pullup_to_load:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic l(Landroid/widget/PullingLayout;)F
    .locals 0

    iget p0, p0, Landroid/widget/PullingLayout;->refreshDist:F

    return p0
.end method

.method private listViewCanPullUp(Landroid/widget/ListView;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getCount()I

    move-result v2

    sub-int/2addr v2, v1

    if-ne v0, v2, :cond_1

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    if-gt v0, p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method static bridge synthetic m(Landroid/widget/PullingLayout;)I
    .locals 0

    iget p0, p0, Landroid/widget/PullingLayout;->sm:I

    return p0
.end method

.method static bridge synthetic n(Landroid/widget/PullingLayout;)I
    .locals 0

    iget p0, p0, Landroid/widget/PullingLayout;->sn:I

    return p0
.end method

.method static bridge synthetic o(Landroid/widget/PullingLayout;)I
    .locals 0

    iget p0, p0, Landroid/widget/PullingLayout;->state:I

    return p0
.end method

.method static bridge synthetic p(Landroid/widget/PullingLayout;)Landroid/widget/PullingLayout$MyTimer;
    .locals 0

    iget-object p0, p0, Landroid/widget/PullingLayout;->timer:Landroid/widget/PullingLayout$MyTimer;

    return-object p0
.end method

.method static bridge synthetic q(Landroid/widget/PullingLayout;I)V
    .locals 0

    iput p1, p0, Landroid/widget/PullingLayout;->m:I

    return-void
.end method

.method static bridge synthetic r(Landroid/widget/PullingLayout;I)V
    .locals 0

    iput p1, p0, Landroid/widget/PullingLayout;->n:I

    return-void
.end method

.method private releasePull()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/PullingLayout;->canPullDown:Z

    iput-boolean v0, p0, Landroid/widget/PullingLayout;->canPullUp:Z

    return-void
.end method

.method static bridge synthetic s(Landroid/widget/PullingLayout;F)V
    .locals 0

    iput p1, p0, Landroid/widget/PullingLayout;->pullUpY:F

    return-void
.end method

.method private scrollViewCanPullUp(Landroid/widget/ScrollView;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    sub-int/2addr v2, p1

    if-lt v0, v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method static bridge synthetic t(Landroid/widget/PullingLayout;I)V
    .locals 0

    iput p1, p0, Landroid/widget/PullingLayout;->sm:I

    return-void
.end method

.method static bridge synthetic u(Landroid/widget/PullingLayout;I)V
    .locals 0

    iput p1, p0, Landroid/widget/PullingLayout;->sn:I

    return-void
.end method

.method static bridge synthetic v(Landroid/widget/PullingLayout;I)V
    .locals 0

    iput p1, p0, Landroid/widget/PullingLayout;->x:I

    return-void
.end method

.method private viewCanPullDown(Landroid/view/View;)Z
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method static bridge synthetic w(Landroid/widget/PullingLayout;I)V
    .locals 0

    iput p1, p0, Landroid/widget/PullingLayout;->y:I

    return-void
.end method

.method private webViewCanPullUp(Landroid/webkit/WebView;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/webkit/WebView;->getScale()F

    move-result v2

    mul-float v1, v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr v1, p1

    cmpl-float p1, v0, v1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method static bridge synthetic x(Landroid/widget/PullingLayout;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/PullingLayout;->changeState(I)V

    return-void
.end method

.method static bridge synthetic y(Landroid/widget/PullingLayout;F)I
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/PullingLayout;->dp(F)I

    move-result p0

    return p0
.end method

.method static bridge synthetic z(Landroid/widget/PullingLayout;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/PullingLayout;->hide()V

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Landroid/widget/PullingLayout;->pullableView:Landroid/view/View;

    iget-object v0, p0, Landroid/widget/PullingLayout;->pullableLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget p2, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v0, v1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput-object p1, p0, Landroid/widget/PullingLayout;->pullableView:Landroid/view/View;

    iget-object p2, p0, Landroid/widget/PullingLayout;->pullableLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public autoLoad()V
    .locals 1

    iget v0, p0, Landroid/widget/PullingLayout;->loadmoreDist:F

    neg-float v0, v0

    iput v0, p0, Landroid/widget/PullingLayout;->pullUpY:F

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/widget/PullingLayout;->changeState(I)V

    iget-object v0, p0, Landroid/widget/PullingLayout;->mLoadMoreListener:Landroid/widget/PullingLayout$OnLoadMoreListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Landroid/widget/PullingLayout$OnLoadMoreListener;->onLoadMore(Landroid/widget/PullingLayout;)V

    :cond_0
    return-void
.end method

.method public autoRefresh()V
    .locals 4

    new-instance v0, Landroid/widget/PullingLayout$AutoRefreshAndLoadTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/PullingLayout$AutoRefreshAndLoadTask;-><init>(Landroid/widget/PullingLayout;Landroid/widget/d;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_19

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-eq v0, v2, :cond_14

    const/4 v6, 0x5

    if-eq v0, v5, :cond_1

    if-eq v0, v6, :cond_0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    goto/16 :goto_6

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/PullingLayout;->mEvents:I

    goto/16 :goto_6

    :cond_1
    iget v0, p0, Landroid/widget/PullingLayout;->mEvents:I

    const/4 v7, 0x0

    if-nez v0, :cond_a

    iget v0, p0, Landroid/widget/PullingLayout;->pullDownY:F

    cmpl-float v0, v0, v7

    if-gtz v0, :cond_7

    invoke-direct {p0}, Landroid/widget/PullingLayout;->canPullDown()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/widget/PullingLayout;->canPullDown:Z

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/widget/PullingLayout;->state:I

    if-eq v0, v3, :cond_2

    goto :goto_1

    :cond_2
    iget v0, p0, Landroid/widget/PullingLayout;->pullUpY:F

    cmpg-float v0, v0, v7

    if-ltz v0, :cond_4

    invoke-direct {p0}, Landroid/widget/PullingLayout;->canPullUp()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/widget/PullingLayout;->canPullUp:Z

    if-eqz v0, :cond_3

    iget v0, p0, Landroid/widget/PullingLayout;->state:I

    if-eq v0, v5, :cond_3

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Landroid/widget/PullingLayout;->releasePull()V

    goto :goto_3

    :cond_4
    :goto_0
    iget v0, p0, Landroid/widget/PullingLayout;->pullUpY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iget v8, p0, Landroid/widget/PullingLayout;->lastY:F

    sub-float/2addr v5, v8

    iget v8, p0, Landroid/widget/PullingLayout;->radio:F

    div-float/2addr v5, v8

    add-float/2addr v0, v5

    iput v0, p0, Landroid/widget/PullingLayout;->pullUpY:F

    cmpl-float v0, v0, v7

    if-lez v0, :cond_5

    iput v7, p0, Landroid/widget/PullingLayout;->pullUpY:F

    iput-boolean v2, p0, Landroid/widget/PullingLayout;->canPullDown:Z

    iput-boolean v1, p0, Landroid/widget/PullingLayout;->canPullUp:Z

    :cond_5
    iget v0, p0, Landroid/widget/PullingLayout;->pullUpY:F

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    cmpg-float v0, v0, v5

    if-gez v0, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Landroid/widget/PullingLayout;->pullUpY:F

    :cond_6
    iget v0, p0, Landroid/widget/PullingLayout;->state:I

    if-ne v0, v3, :cond_b

    goto :goto_2

    :cond_7
    :goto_1
    iget v0, p0, Landroid/widget/PullingLayout;->pullDownY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v8, p0, Landroid/widget/PullingLayout;->lastY:F

    sub-float/2addr v3, v8

    iget v8, p0, Landroid/widget/PullingLayout;->radio:F

    div-float/2addr v3, v8

    add-float/2addr v0, v3

    iput v0, p0, Landroid/widget/PullingLayout;->pullDownY:F

    cmpg-float v0, v0, v7

    if-gez v0, :cond_8

    iput v7, p0, Landroid/widget/PullingLayout;->pullDownY:F

    iput-boolean v1, p0, Landroid/widget/PullingLayout;->canPullDown:Z

    iput-boolean v2, p0, Landroid/widget/PullingLayout;->canPullUp:Z

    :cond_8
    iget v0, p0, Landroid/widget/PullingLayout;->pullDownY:F

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_9

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Landroid/widget/PullingLayout;->pullDownY:F

    :cond_9
    iget v0, p0, Landroid/widget/PullingLayout;->state:I

    if-ne v0, v5, :cond_b

    :goto_2
    iput-boolean v2, p0, Landroid/widget/PullingLayout;->isTouch:Z

    goto :goto_3

    :cond_a
    iput v1, p0, Landroid/widget/PullingLayout;->mEvents:I

    :cond_b
    :goto_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Landroid/widget/PullingLayout;->lastY:F

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-double v8, v0

    const-wide v10, 0x3ff921fb54442d18L    # 1.5707963267948966

    div-double/2addr v10, v8

    iget v0, p0, Landroid/widget/PullingLayout;->pullDownY:F

    iget v3, p0, Landroid/widget/PullingLayout;->pullUpY:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float/2addr v0, v3

    float-to-double v8, v0

    mul-double v10, v10, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->tan(D)D

    move-result-wide v8

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    mul-double v8, v8, v10

    add-double/2addr v8, v10

    double-to-float v0, v8

    iput v0, p0, Landroid/widget/PullingLayout;->radio:F

    iget v0, p0, Landroid/widget/PullingLayout;->pullDownY:F

    cmpl-float v0, v0, v7

    if-gtz v0, :cond_c

    iget v0, p0, Landroid/widget/PullingLayout;->pullUpY:F

    cmpg-float v0, v0, v7

    if-gez v0, :cond_d

    :cond_c
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_d
    iget v0, p0, Landroid/widget/PullingLayout;->pullDownY:F

    cmpl-float v3, v0, v7

    if-lez v3, :cond_10

    iget v3, p0, Landroid/widget/PullingLayout;->refreshDist:F

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_f

    iget v0, p0, Landroid/widget/PullingLayout;->state:I

    if-eq v0, v2, :cond_e

    if-ne v0, v6, :cond_f

    :cond_e
    invoke-direct {p0, v1}, Landroid/widget/PullingLayout;->changeState(I)V

    :cond_f
    iget v0, p0, Landroid/widget/PullingLayout;->pullDownY:F

    iget v1, p0, Landroid/widget/PullingLayout;->refreshDist:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_13

    iget v0, p0, Landroid/widget/PullingLayout;->state:I

    if-nez v0, :cond_13

    invoke-direct {p0, v2}, Landroid/widget/PullingLayout;->changeState(I)V

    goto :goto_4

    :cond_10
    iget v0, p0, Landroid/widget/PullingLayout;->pullUpY:F

    cmpg-float v3, v0, v7

    if-gez v3, :cond_13

    neg-float v0, v0

    iget v3, p0, Landroid/widget/PullingLayout;->loadmoreDist:F

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_12

    iget v0, p0, Landroid/widget/PullingLayout;->state:I

    if-eq v0, v4, :cond_11

    if-ne v0, v6, :cond_12

    :cond_11
    invoke-direct {p0, v1}, Landroid/widget/PullingLayout;->changeState(I)V

    :cond_12
    iget v0, p0, Landroid/widget/PullingLayout;->pullUpY:F

    neg-float v0, v0

    iget v1, p0, Landroid/widget/PullingLayout;->loadmoreDist:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_13

    iget v0, p0, Landroid/widget/PullingLayout;->state:I

    if-nez v0, :cond_13

    invoke-direct {p0, v4}, Landroid/widget/PullingLayout;->changeState(I)V

    :cond_13
    :goto_4
    iget v0, p0, Landroid/widget/PullingLayout;->pullDownY:F

    iget v1, p0, Landroid/widget/PullingLayout;->pullUpY:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    add-float/2addr v0, v1

    const/high16 v1, 0x41000000    # 8.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1a

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_6

    :cond_14
    iget v0, p0, Landroid/widget/PullingLayout;->pullDownY:F

    iget v6, p0, Landroid/widget/PullingLayout;->refreshDist:F

    cmpl-float v0, v0, v6

    if-gtz v0, :cond_15

    iget v0, p0, Landroid/widget/PullingLayout;->pullUpY:F

    neg-float v0, v0

    iget v6, p0, Landroid/widget/PullingLayout;->loadmoreDist:F

    cmpl-float v0, v0, v6

    if-lez v0, :cond_16

    :cond_15
    iput-boolean v1, p0, Landroid/widget/PullingLayout;->isTouch:Z

    :cond_16
    iget v0, p0, Landroid/widget/PullingLayout;->state:I

    if-ne v0, v2, :cond_17

    invoke-direct {p0, v5}, Landroid/widget/PullingLayout;->changeState(I)V

    iget-object v0, p0, Landroid/widget/PullingLayout;->mRefreshListener:Landroid/widget/PullingLayout$OnRefreshListener;

    if-eqz v0, :cond_18

    invoke-interface {v0, p0}, Landroid/widget/PullingLayout$OnRefreshListener;->onRefresh(Landroid/widget/PullingLayout;)V

    goto :goto_5

    :cond_17
    if-ne v0, v4, :cond_18

    invoke-direct {p0, v3}, Landroid/widget/PullingLayout;->changeState(I)V

    iget-object v0, p0, Landroid/widget/PullingLayout;->mLoadMoreListener:Landroid/widget/PullingLayout$OnLoadMoreListener;

    if-eqz v0, :cond_18

    invoke-interface {v0, p0}, Landroid/widget/PullingLayout$OnLoadMoreListener;->onLoadMore(Landroid/widget/PullingLayout;)V

    :cond_18
    :goto_5
    invoke-direct {p0}, Landroid/widget/PullingLayout;->hide()V

    goto :goto_6

    :cond_19
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Landroid/widget/PullingLayout;->downY:F

    iput v0, p0, Landroid/widget/PullingLayout;->lastY:F

    iget-object v0, p0, Landroid/widget/PullingLayout;->timer:Landroid/widget/PullingLayout$MyTimer;

    invoke-virtual {v0}, Landroid/widget/PullingLayout$MyTimer;->cancel()V

    iput v1, p0, Landroid/widget/PullingLayout;->mEvents:I

    invoke-direct {p0}, Landroid/widget/PullingLayout;->releasePull()V

    :cond_1a
    :goto_6
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    return v2
.end method

.method public getLoadFail()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/widget/PullingLayout;->load_fail:Ljava/lang/String;

    return-object v0
.end method

.method public getLoadNothing()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/widget/PullingLayout;->load_nothing:Ljava/lang/String;

    return-object v0
.end method

.method public getLoadSucceed()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/widget/PullingLayout;->load_succeed:Ljava/lang/String;

    return-object v0
.end method

.method public getLoading()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/widget/PullingLayout;->loading:Ljava/lang/String;

    return-object v0
.end method

.method public getPulldownToRefresh()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/widget/PullingLayout;->pull_to_refresh:Ljava/lang/String;

    return-object v0
.end method

.method public getPullupToLoad()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/widget/PullingLayout;->pullup_to_load:Ljava/lang/String;

    return-object v0
.end method

.method public getRefreshFail()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/widget/PullingLayout;->refresh_fail:Ljava/lang/String;

    return-object v0
.end method

.method public getRefreshNothing()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/widget/PullingLayout;->refresh_nothing:Ljava/lang/String;

    return-object v0
.end method

.method public getRefreshSucceed()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/widget/PullingLayout;->refresh_succeed:Ljava/lang/String;

    return-object v0
.end method

.method public getRefreshing()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/widget/PullingLayout;->refreshing:Ljava/lang/String;

    return-object v0
.end method

.method public getReleaseToLoad()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/widget/PullingLayout;->release_to_load:Ljava/lang/String;

    return-object v0
.end method

.method public getReleaseToRefresh()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/widget/PullingLayout;->release_to_refresh:Ljava/lang/String;

    return-object v0
.end method

.method public loadmoreFinish(I)V
    .locals 3

    iget v0, p0, Landroid/widget/PullingLayout;->state:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/PullingLayout;->loadingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Landroid/widget/PullingLayout;->loadingView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    iget-object p1, p0, Landroid/widget/PullingLayout;->loadStateImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Landroid/widget/PullingLayout;->loadStateTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/PullingLayout;->load_fail:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Landroid/widget/PullingLayout;->loadStateImageView:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/PullingLayout$FailDrawable;

    invoke-direct {v1, p0}, Landroid/widget/PullingLayout$FailDrawable;-><init>(Landroid/widget/PullingLayout;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroid/widget/PullingLayout;->loadStateImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Landroid/widget/PullingLayout;->loadStateTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/PullingLayout;->load_nothing:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Landroid/widget/PullingLayout;->loadStateImageView:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/PullingLayout$FailDrawable;

    invoke-direct {v1, p0}, Landroid/widget/PullingLayout$FailDrawable;-><init>(Landroid/widget/PullingLayout;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Landroid/widget/PullingLayout;->loadStateImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Landroid/widget/PullingLayout;->loadStateTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/PullingLayout;->load_succeed:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Landroid/widget/PullingLayout;->loadStateImageView:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/PullingLayout$SucceedDrawable;

    invoke-direct {v1, p0}, Landroid/widget/PullingLayout$SucceedDrawable;-><init>(Landroid/widget/PullingLayout;)V

    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget p1, p0, Landroid/widget/PullingLayout;->pullUpY:F

    const/4 v1, 0x0

    cmpg-float p1, p1, v1

    if-gez p1, :cond_3

    new-instance p1, Landroid/widget/PullingLayout$3;

    invoke-direct {p1, p0}, Landroid/widget/PullingLayout$3;-><init>(Landroid/widget/PullingLayout;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    :cond_3
    const/4 p1, 0x5

    invoke-direct {p0, p1}, Landroid/widget/PullingLayout;->changeState(I)V

    invoke-direct {p0}, Landroid/widget/PullingLayout;->hide()V

    :goto_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    iget-boolean p1, p0, Landroid/widget/PullingLayout;->isLayout:Z

    const/4 p2, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/widget/PullingLayout;->isLayout:Z

    iget-object p1, p0, Landroid/widget/PullingLayout;->refreshView:Landroid/widget/PullingLayout$HeadView;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Landroid/widget/PullingLayout;->refreshDist:F

    iget-object p1, p0, Landroid/widget/PullingLayout;->loadmoreView:Landroid/widget/PullingLayout$FootView;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Landroid/widget/PullingLayout;->loadmoreDist:F

    iget-object p1, p0, Landroid/widget/PullingLayout;->loadStateTextView:Landroid/widget/TextView;

    iget p3, p0, Landroid/widget/PullingLayout;->mStateColor:I

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Landroid/widget/PullingLayout;->refreshStateTextView:Landroid/widget/TextView;

    iget p3, p0, Landroid/widget/PullingLayout;->mStateColor:I

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    iget-object p1, p0, Landroid/widget/PullingLayout;->refreshView:Landroid/widget/PullingLayout$HeadView;

    iget p3, p0, Landroid/widget/PullingLayout;->pullDownY:F

    iget p4, p0, Landroid/widget/PullingLayout;->pullUpY:F

    add-float/2addr p3, p4

    float-to-int p3, p3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    sub-int/2addr p3, p4

    iget-object p4, p0, Landroid/widget/PullingLayout;->refreshView:Landroid/widget/PullingLayout$HeadView;

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    iget p5, p0, Landroid/widget/PullingLayout;->pullDownY:F

    iget v0, p0, Landroid/widget/PullingLayout;->pullUpY:F

    add-float/2addr p5, v0

    float-to-int p5, p5

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    iget-object p1, p0, Landroid/widget/PullingLayout;->pullableLayout:Landroid/widget/FrameLayout;

    iget p3, p0, Landroid/widget/PullingLayout;->pullDownY:F

    iget p4, p0, Landroid/widget/PullingLayout;->pullUpY:F

    add-float/2addr p3, p4

    float-to-int p3, p3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    iget p5, p0, Landroid/widget/PullingLayout;->pullDownY:F

    iget v0, p0, Landroid/widget/PullingLayout;->pullUpY:F

    add-float/2addr p5, v0

    float-to-int p5, p5

    iget-object v0, p0, Landroid/widget/PullingLayout;->pullableLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr p5, v0

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    iget-object p1, p0, Landroid/widget/PullingLayout;->loadmoreView:Landroid/widget/PullingLayout$FootView;

    iget p3, p0, Landroid/widget/PullingLayout;->pullDownY:F

    iget p4, p0, Landroid/widget/PullingLayout;->pullUpY:F

    add-float/2addr p3, p4

    float-to-int p3, p3

    iget-object p4, p0, Landroid/widget/PullingLayout;->pullableLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    add-int/2addr p3, p4

    iget-object p4, p0, Landroid/widget/PullingLayout;->loadmoreView:Landroid/widget/PullingLayout$FootView;

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    iget p5, p0, Landroid/widget/PullingLayout;->pullDownY:F

    iget v0, p0, Landroid/widget/PullingLayout;->pullUpY:F

    add-float/2addr p5, v0

    float-to-int p5, p5

    iget-object v0, p0, Landroid/widget/PullingLayout;->pullableLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr p5, v0

    iget-object v0, p0, Landroid/widget/PullingLayout;->loadmoreView:Landroid/widget/PullingLayout$FootView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr p5, v0

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method public refreshFinish(I)V
    .locals 3

    iget v0, p0, Landroid/widget/PullingLayout;->state:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/PullingLayout;->refreshingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Landroid/widget/PullingLayout;->refreshingView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-eq p1, v1, :cond_1

    iget-object p1, p0, Landroid/widget/PullingLayout;->refreshStateImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Landroid/widget/PullingLayout;->refreshStateTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/PullingLayout;->refresh_fail:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Landroid/widget/PullingLayout;->refreshStateImageView:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/PullingLayout$FailDrawable;

    invoke-direct {v1, p0}, Landroid/widget/PullingLayout$FailDrawable;-><init>(Landroid/widget/PullingLayout;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroid/widget/PullingLayout;->refreshStateImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Landroid/widget/PullingLayout;->refreshStateTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/PullingLayout;->refresh_nothing:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Landroid/widget/PullingLayout;->refreshStateImageView:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/PullingLayout$FailDrawable;

    invoke-direct {v1, p0}, Landroid/widget/PullingLayout$FailDrawable;-><init>(Landroid/widget/PullingLayout;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Landroid/widget/PullingLayout;->refreshStateImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Landroid/widget/PullingLayout;->refreshStateTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/PullingLayout;->refresh_succeed:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Landroid/widget/PullingLayout;->refreshStateImageView:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/PullingLayout$SucceedDrawable;

    invoke-direct {v1, p0}, Landroid/widget/PullingLayout$SucceedDrawable;-><init>(Landroid/widget/PullingLayout;)V

    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget p1, p0, Landroid/widget/PullingLayout;->pullDownY:F

    const/4 v1, 0x0

    cmpl-float p1, p1, v1

    if-lez p1, :cond_3

    new-instance p1, Landroid/widget/PullingLayout$2;

    invoke-direct {p1, p0}, Landroid/widget/PullingLayout$2;-><init>(Landroid/widget/PullingLayout;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    :cond_3
    const/4 p1, 0x5

    invoke-direct {p0, p1}, Landroid/widget/PullingLayout;->changeState(I)V

    invoke-direct {p0}, Landroid/widget/PullingLayout;->hide()V

    :goto_1
    return-void
.end method

.method public setLoadFail(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/PullingLayout;->load_fail:Ljava/lang/String;

    return-void
.end method

.method public setLoadNothing(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/PullingLayout;->load_nothing:Ljava/lang/String;

    return-void
.end method

.method public setLoadSucceed(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/PullingLayout;->load_succeed:Ljava/lang/String;

    return-void
.end method

.method public setLoading(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/PullingLayout;->loading:Ljava/lang/String;

    return-void
.end method

.method public setOnLoadMoreListener(Landroid/widget/PullingLayout$OnLoadMoreListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/PullingLayout;->mLoadMoreListener:Landroid/widget/PullingLayout$OnLoadMoreListener;

    return-void
.end method

.method public setOnPullDownListener(Landroid/widget/PullingLayout$OnPullDownListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/PullingLayout;->mPullDownListener:Landroid/widget/PullingLayout$OnPullDownListener;

    return-void
.end method

.method public setOnPullUpListener(Landroid/widget/PullingLayout$OnPullUpListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/PullingLayout;->mPullUpListener:Landroid/widget/PullingLayout$OnPullUpListener;

    return-void
.end method

.method public setOnRefreshListener(Landroid/widget/PullingLayout$OnRefreshListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/PullingLayout;->mRefreshListener:Landroid/widget/PullingLayout$OnRefreshListener;

    return-void
.end method

.method public setPullDownEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/PullingLayout;->mPullDown:Z

    return-void
.end method

.method public setPullUpEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/PullingLayout;->mPullUp:Z

    return-void
.end method

.method public setPulldownToRefresh(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/PullingLayout;->pull_to_refresh:Ljava/lang/String;

    return-void
.end method

.method public setPullupToLoad(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/PullingLayout;->pullup_to_load:Ljava/lang/String;

    return-void
.end method

.method public setRefreshFail(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/PullingLayout;->refresh_fail:Ljava/lang/String;

    return-void
.end method

.method public setRefreshNothing(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/PullingLayout;->refresh_nothing:Ljava/lang/String;

    return-void
.end method

.method public setRefreshSucceed(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/PullingLayout;->refresh_succeed:Ljava/lang/String;

    return-void
.end method

.method public setRefreshing(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/PullingLayout;->refreshing:Ljava/lang/String;

    return-void
.end method

.method public setReleaseToLoad(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/PullingLayout;->release_to_load:Ljava/lang/String;

    return-void
.end method

.method public setReleaseToRefresh(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/PullingLayout;->release_to_refresh:Ljava/lang/String;

    return-void
.end method

.method public setStateColor(I)V
    .locals 0

    iput p1, p0, Landroid/widget/PullingLayout;->mStateColor:I

    return-void
.end method
