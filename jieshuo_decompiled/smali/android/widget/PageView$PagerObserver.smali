.class Landroid/widget/PageView$PagerObserver;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/PageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PagerObserver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/PageView;


# direct methods
.method private constructor <init>(Landroid/widget/PageView;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/PageView$PagerObserver;->this$0:Landroid/widget/PageView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/PageView;Landroid/widget/c;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/PageView$PagerObserver;-><init>(Landroid/widget/PageView;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    iget-object v0, p0, Landroid/widget/PageView$PagerObserver;->this$0:Landroid/widget/PageView;

    invoke-virtual {v0}, Landroid/widget/PageView;->dataSetChanged()V

    return-void
.end method

.method public onInvalidated()V
    .locals 1

    iget-object v0, p0, Landroid/widget/PageView$PagerObserver;->this$0:Landroid/widget/PageView;

    invoke-virtual {v0}, Landroid/widget/PageView;->dataSetChanged()V

    return-void
.end method
