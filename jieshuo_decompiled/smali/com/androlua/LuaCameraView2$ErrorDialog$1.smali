.class Lcom/androlua/LuaCameraView2$ErrorDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androlua/LuaCameraView2$ErrorDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androlua/LuaCameraView2$ErrorDialog;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/androlua/LuaCameraView2$ErrorDialog;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaCameraView2$ErrorDialog$1;->this$0:Lcom/androlua/LuaCameraView2$ErrorDialog;

    iput-object p2, p0, Lcom/androlua/LuaCameraView2$ErrorDialog$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/androlua/LuaCameraView2$ErrorDialog$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
