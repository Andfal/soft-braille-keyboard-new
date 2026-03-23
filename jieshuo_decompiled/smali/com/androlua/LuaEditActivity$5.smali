.class Lcom/androlua/LuaEditActivity$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SplitEditView$OnModeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androlua/LuaEditActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androlua/LuaEditActivity;

.field final synthetic val$hLayout:Landroid/widget/LinearLayout;

.field final synthetic val$mScroll:Landroid/widget/HorizontalScrollView;


# direct methods
.method constructor <init>(Lcom/androlua/LuaEditActivity;Landroid/widget/LinearLayout;Landroid/widget/HorizontalScrollView;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaEditActivity$5;->this$0:Lcom/androlua/LuaEditActivity;

    iput-object p2, p0, Lcom/androlua/LuaEditActivity$5;->val$hLayout:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/androlua/LuaEditActivity$5;->val$mScroll:Landroid/widget/HorizontalScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnModeChanged(I)V
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/androlua/LuaEditActivity$5;->val$hLayout:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/androlua/LuaEditActivity$5;->val$mScroll:Landroid/widget/HorizontalScrollView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x5

    if-ge p1, v0, :cond_1

    iget-object p1, p0, Lcom/androlua/LuaEditActivity$5;->val$hLayout:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
