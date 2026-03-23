.class Landroid/widget/ToolBar$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/ToolBar;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ToolBar;


# direct methods
.method constructor <init>(Landroid/widget/ToolBar;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/ToolBar$3;->this$0:Landroid/widget/ToolBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Landroid/widget/ToolBar$3;->this$0:Landroid/widget/ToolBar;

    invoke-static {p1}, Landroid/widget/ToolBar;->a(Landroid/widget/ToolBar;)Landroid/widget/PopupMenu;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/widget/ToolBar$3;->this$0:Landroid/widget/ToolBar;

    invoke-static {p1}, Landroid/widget/ToolBar;->a(Landroid/widget/ToolBar;)Landroid/widget/PopupMenu;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupMenu;->show()V

    :cond_0
    return-void
.end method
