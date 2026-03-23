.class Lcom/androlua/LuaEditActivity$23$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androlua/LuaEditActivity$23;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/androlua/LuaEditActivity$23;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/androlua/LuaEditActivity$23;I)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaEditActivity$23$1;->this$1:Lcom/androlua/LuaEditActivity$23;

    iput p2, p0, Lcom/androlua/LuaEditActivity$23$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/nirenr/talkman/dialog/EditDialog;

    iget-object v0, p0, Lcom/androlua/LuaEditActivity$23$1;->this$1:Lcom/androlua/LuaEditActivity$23;

    iget-object v0, v0, Lcom/androlua/LuaEditActivity$23;->this$0:Lcom/androlua/LuaEditActivity;

    const v1, 0x7f070304

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/androlua/LuaEditActivity$23$1;->this$1:Lcom/androlua/LuaEditActivity$23;

    iget-object v2, v2, Lcom/androlua/LuaEditActivity$23;->val$list:[Ljava/lang/String;

    iget v3, p0, Lcom/androlua/LuaEditActivity$23$1;->val$position:I

    aget-object v2, v2, v3

    new-instance v3, Lcom/androlua/LuaEditActivity$23$1$1;

    invoke-direct {v3, p0}, Lcom/androlua/LuaEditActivity$23$1$1;-><init>(Lcom/androlua/LuaEditActivity$23$1;)V

    invoke-direct {p2, v0, v1, v2, v3}, Lcom/nirenr/talkman/dialog/EditDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/nirenr/talkman/dialog/EditDialog$EditDialogCallback;)V

    invoke-virtual {p2}, Lcom/nirenr/talkman/dialog/EditDialog;->g()V

    goto :goto_0

    :cond_1
    new-instance p2, Ljava/io/File;

    iget-object v0, p0, Lcom/androlua/LuaEditActivity$23$1;->this$1:Lcom/androlua/LuaEditActivity$23;

    iget-object v1, v0, Lcom/androlua/LuaEditActivity$23;->val$dir:Ljava/io/File;

    iget-object v0, v0, Lcom/androlua/LuaEditActivity$23;->val$list:[Ljava/lang/String;

    iget v2, p0, Lcom/androlua/LuaEditActivity$23$1;->val$position:I

    aget-object v0, v0, v2

    invoke-direct {p2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    iget-object p2, p0, Lcom/androlua/LuaEditActivity$23$1;->this$1:Lcom/androlua/LuaEditActivity$23;

    iget-object v0, p2, Lcom/androlua/LuaEditActivity$23;->val$list:[Ljava/lang/String;

    iget v1, p0, Lcom/androlua/LuaEditActivity$23$1;->val$position:I

    aget-object v0, v0, v1

    iget-object p2, p2, Lcom/androlua/LuaEditActivity$23;->this$0:Lcom/androlua/LuaEditActivity;

    invoke-static {p2}, Lcom/androlua/LuaEditActivity;->g(Lcom/androlua/LuaEditActivity;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/androlua/LuaEditActivity$23$1;->this$1:Lcom/androlua/LuaEditActivity$23;

    iget-object p2, p2, Lcom/androlua/LuaEditActivity$23;->this$0:Lcom/androlua/LuaEditActivity;

    invoke-static {p2}, Lcom/androlua/LuaEditActivity;->m(Lcom/androlua/LuaEditActivity;)V

    :cond_2
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
