.class Lcom/androlua/LuaEditActivity$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androlua/LuaEditActivity;->readPdf(Landroid/graphics/pdf/PdfRenderer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androlua/LuaEditActivity;

.field final synthetic val$i:I

.field final synthetic val$pdf:Landroid/graphics/pdf/PdfRenderer;


# direct methods
.method constructor <init>(Lcom/androlua/LuaEditActivity;ILandroid/graphics/pdf/PdfRenderer;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaEditActivity$10;->this$0:Lcom/androlua/LuaEditActivity;

    iput p2, p0, Lcom/androlua/LuaEditActivity$10;->val$i:I

    iput-object p3, p0, Lcom/androlua/LuaEditActivity$10;->val$pdf:Landroid/graphics/pdf/PdfRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/androlua/LuaEditActivity$10;->this$0:Lcom/androlua/LuaEditActivity;

    invoke-static {v0}, Lcom/androlua/LuaEditActivity;->a(Lcom/androlua/LuaEditActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/androlua/LuaEditActivity$10;->this$0:Lcom/androlua/LuaEditActivity;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/androlua/LuaEditActivity$10;->val$i:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/androlua/LuaEditActivity$10;->val$pdf:Landroid/graphics/pdf/PdfRenderer;

    invoke-virtual {v3}, Landroid/graphics/pdf/PdfRenderer;->getPageCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const v3, 0x7f07051a

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method
