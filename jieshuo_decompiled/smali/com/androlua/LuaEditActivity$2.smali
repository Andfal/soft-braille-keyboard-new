.class Lcom/androlua/LuaEditActivity$2;
.super Landroid/widget/EditText;
.source "SourceFile"


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


# direct methods
.method constructor <init>(Lcom/androlua/LuaEditActivity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaEditActivity$2;->this$0:Lcom/androlua/LuaEditActivity;

    invoke-direct {p0, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->onTextChanged(Ljava/lang/CharSequence;III)V

    iget-object p2, p0, Lcom/androlua/LuaEditActivity$2;->this$0:Lcom/androlua/LuaEditActivity;

    invoke-static {p2}, Lcom/androlua/LuaEditActivity;->b(Lcom/androlua/LuaEditActivity;)Landroid/widget/SplitEditView;

    move-result-object p2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/SplitEditView;->findNext(Ljava/lang/String;)V

    return-void
.end method
