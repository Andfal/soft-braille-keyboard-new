.class Lcom/androlua/LuaEditActivity$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androlua/LuaEditActivity;->createButton(Ljava/lang/String;I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androlua/LuaEditActivity;

.field final synthetic val$view:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/androlua/LuaEditActivity;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaEditActivity$7;->this$0:Lcom/androlua/LuaEditActivity;

    iput-object p2, p0, Lcom/androlua/LuaEditActivity$7;->val$view:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/androlua/LuaEditActivity$7;->this$0:Lcom/androlua/LuaEditActivity;

    invoke-virtual {v0, p1}, Lcom/androlua/LuaEditActivity;->onOptionsItemSelected(Landroid/view/View;)V

    iget-object p1, p0, Lcom/androlua/LuaEditActivity$7;->val$view:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object p1

    iget-object v0, p0, Lcom/androlua/LuaEditActivity$7;->val$view:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/androlua/LuaEditActivity$7;->val$view:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/androlua/LuaEditActivity$7$1;

    invoke-direct {v1, p0, p1}, Lcom/androlua/LuaEditActivity$7$1;-><init>(Lcom/androlua/LuaEditActivity$7;Landroid/content/res/ColorStateList;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
