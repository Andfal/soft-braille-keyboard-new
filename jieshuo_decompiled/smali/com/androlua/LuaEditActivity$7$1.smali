.class Lcom/androlua/LuaEditActivity$7$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androlua/LuaEditActivity$7;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/androlua/LuaEditActivity$7;

.field final synthetic val$tc:Landroid/content/res/ColorStateList;


# direct methods
.method constructor <init>(Lcom/androlua/LuaEditActivity$7;Landroid/content/res/ColorStateList;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaEditActivity$7$1;->this$1:Lcom/androlua/LuaEditActivity$7;

    iput-object p2, p0, Lcom/androlua/LuaEditActivity$7$1;->val$tc:Landroid/content/res/ColorStateList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/androlua/LuaEditActivity$7$1;->this$1:Lcom/androlua/LuaEditActivity$7;

    iget-object v0, v0, Lcom/androlua/LuaEditActivity$7;->val$view:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/androlua/LuaEditActivity$7$1;->this$1:Lcom/androlua/LuaEditActivity$7;

    iget-object v0, v0, Lcom/androlua/LuaEditActivity$7;->val$view:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/androlua/LuaEditActivity$7$1;->val$tc:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method
