.class Lcom/androlua/LuaEditActivity$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androlua/LuaEditActivity;->onOptionsItemSelected(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androlua/LuaEditActivity;


# direct methods
.method constructor <init>(Lcom/androlua/LuaEditActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaEditActivity$13;->this$0:Lcom/androlua/LuaEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/androlua/LuaEditActivity$13;->this$0:Lcom/androlua/LuaEditActivity;

    invoke-static {p1}, Lcom/androlua/LuaEditActivity;->q(Lcom/androlua/LuaEditActivity;)V

    iget-object p1, p0, Lcom/androlua/LuaEditActivity$13;->this$0:Lcom/androlua/LuaEditActivity;

    invoke-static {p1, p2}, Lcom/androlua/LuaEditActivity;->o(Lcom/androlua/LuaEditActivity;I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/androlua/LuaEditActivity$13;->this$0:Lcom/androlua/LuaEditActivity;

    invoke-static {p1}, Lcom/androlua/LuaEditActivity;->c(Lcom/androlua/LuaEditActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Lcom/androlua/LuaEditActivity$13;->this$0:Lcom/androlua/LuaEditActivity;

    invoke-static {p1}, Lcom/androlua/LuaEditActivity;->q(Lcom/androlua/LuaEditActivity;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/androlua/LuaEditActivity$13;->this$0:Lcom/androlua/LuaEditActivity;

    invoke-static {p1}, Lcom/androlua/LuaEditActivity;->c(Lcom/androlua/LuaEditActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :goto_0
    return-void
.end method
