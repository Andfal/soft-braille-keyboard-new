.class Landroid/widget/HorizontalListView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/HorizontalListView;->bindGestureDetector()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/HorizontalListView;


# direct methods
.method constructor <init>(Landroid/widget/HorizontalListView;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/HorizontalListView$1;->this$0:Landroid/widget/HorizontalListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p1, p0, Landroid/widget/HorizontalListView$1;->this$0:Landroid/widget/HorizontalListView;

    invoke-static {p1}, Landroid/widget/HorizontalListView;->b(Landroid/widget/HorizontalListView;)Landroid/view/GestureDetector;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
