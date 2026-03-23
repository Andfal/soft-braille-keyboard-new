.class Lcom/androlua/LuaEditActivity$23;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androlua/LuaEditActivity;->openFile(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androlua/LuaEditActivity;

.field final synthetic val$dir:Ljava/io/File;

.field final synthetic val$dlg:Landroid/app/AlertDialog;

.field final synthetic val$list:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/androlua/LuaEditActivity;Landroid/app/AlertDialog;Ljava/io/File;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaEditActivity$23;->this$0:Lcom/androlua/LuaEditActivity;

    iput-object p2, p0, Lcom/androlua/LuaEditActivity$23;->val$dlg:Landroid/app/AlertDialog;

    iput-object p3, p0, Lcom/androlua/LuaEditActivity$23;->val$dir:Ljava/io/File;

    iput-object p4, p0, Lcom/androlua/LuaEditActivity$23;->val$list:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    iget-object p1, p0, Lcom/androlua/LuaEditActivity$23;->val$dlg:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object p2, p0, Lcom/androlua/LuaEditActivity$23;->this$0:Lcom/androlua/LuaEditActivity;

    invoke-direct {p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/String;

    iget-object p4, p0, Lcom/androlua/LuaEditActivity$23;->this$0:Lcom/androlua/LuaEditActivity;

    const p5, 0x7f0701ea

    invoke-virtual {p4, p5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    const/4 p5, 0x0

    aput-object p4, p2, p5

    iget-object p4, p0, Lcom/androlua/LuaEditActivity$23;->this$0:Lcom/androlua/LuaEditActivity;

    const p5, 0x7f07055d

    invoke-virtual {p4, p5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    const/4 p5, 0x1

    aput-object p4, p2, p5

    iget-object p4, p0, Lcom/androlua/LuaEditActivity$23;->this$0:Lcom/androlua/LuaEditActivity;

    const v0, 0x7f070095

    invoke-virtual {p4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    const/4 v0, 0x2

    aput-object p4, p2, v0

    new-instance p4, Lcom/androlua/LuaEditActivity$23$1;

    invoke-direct {p4, p0, p3}, Lcom/androlua/LuaEditActivity$23$1;-><init>(Lcom/androlua/LuaEditActivity$23;I)V

    invoke-virtual {p1, p2, p4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return p5
.end method
