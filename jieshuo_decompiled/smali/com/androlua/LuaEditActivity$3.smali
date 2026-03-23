.class Lcom/androlua/LuaEditActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$sEdit:Landroid/widget/EditText;

.field final synthetic val$sList:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/androlua/LuaEditActivity;Landroid/widget/LinearLayout;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaEditActivity$3;->this$0:Lcom/androlua/LuaEditActivity;

    iput-object p2, p0, Lcom/androlua/LuaEditActivity$3;->val$sList:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/androlua/LuaEditActivity$3;->val$sEdit:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/androlua/LuaEditActivity$3;->val$sList:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/androlua/LuaEditActivity$3;->val$sList:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/androlua/LuaEditActivity$3;->val$sEdit:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/androlua/LuaEditActivity$3;->this$0:Lcom/androlua/LuaEditActivity;

    invoke-static {v0}, Lcom/androlua/LuaEditActivity;->b(Lcom/androlua/LuaEditActivity;)Landroid/widget/SplitEditView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SplitEditView;->getSelectedText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/androlua/LuaEditActivity$3;->val$sList:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method
