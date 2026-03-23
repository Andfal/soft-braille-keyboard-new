.class Lcom/androlua/LuaEditActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/myopicmobile/textwarrior/android/g;


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

.field final synthetic val$cList:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/androlua/LuaEditActivity;Landroid/widget/LinearLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaEditActivity$4;->this$0:Lcom/androlua/LuaEditActivity;

    iput-object p2, p0, Lcom/androlua/LuaEditActivity$4;->val$cList:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelectionChanged(ZII)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/androlua/LuaEditActivity$4;->val$cList:Landroid/widget/LinearLayout;

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/androlua/LuaEditActivity$4;->val$cList:Landroid/widget/LinearLayout;

    const/16 p2, 0x8

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
