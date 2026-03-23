.class Lcom/androlua/LuaCameraView2$ConfirmationDialog$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androlua/LuaCameraView2$ConfirmationDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androlua/LuaCameraView2$ConfirmationDialog;

.field final synthetic val$parent:Landroid/app/Fragment;


# direct methods
.method constructor <init>(Lcom/androlua/LuaCameraView2$ConfirmationDialog;Landroid/app/Fragment;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaCameraView2$ConfirmationDialog$2;->this$0:Lcom/androlua/LuaCameraView2$ConfirmationDialog;

    iput-object p2, p0, Lcom/androlua/LuaCameraView2$ConfirmationDialog$2;->val$parent:Landroid/app/Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lcom/androlua/LuaCameraView2$ConfirmationDialog$2;->val$parent:Landroid/app/Fragment;

    const-string p2, "android.permission.CAMERA"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/androlua/t;->a(Landroid/app/Fragment;[Ljava/lang/String;I)V

    return-void
.end method
