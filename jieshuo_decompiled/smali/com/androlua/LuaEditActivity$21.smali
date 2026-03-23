.class Lcom/androlua/LuaEditActivity$21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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


# direct methods
.method constructor <init>(Lcom/androlua/LuaEditActivity;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaEditActivity$21;->this$0:Lcom/androlua/LuaEditActivity;

    iput-object p2, p0, Lcom/androlua/LuaEditActivity$21;->val$dir:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    new-instance p1, Lcom/nirenr/talkman/dialog/EditDialog;

    iget-object p2, p0, Lcom/androlua/LuaEditActivity$21;->this$0:Lcom/androlua/LuaEditActivity;

    const v0, 0x7f070304

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/androlua/LuaEditActivity$21$1;

    invoke-direct {v1, p0}, Lcom/androlua/LuaEditActivity$21$1;-><init>(Lcom/androlua/LuaEditActivity$21;)V

    const-string v2, ""

    invoke-direct {p1, p2, v0, v2, v1}, Lcom/nirenr/talkman/dialog/EditDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/nirenr/talkman/dialog/EditDialog$EditDialogCallback;)V

    invoke-virtual {p1}, Lcom/nirenr/talkman/dialog/EditDialog;->g()V

    return-void
.end method
