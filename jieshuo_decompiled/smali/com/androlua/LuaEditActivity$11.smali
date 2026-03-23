.class Lcom/androlua/LuaEditActivity$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/ai/OcrResult$OCRListener;


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
.method constructor <init>(Lcom/androlua/LuaEditActivity;Landroid/graphics/pdf/PdfRenderer;I)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaEditActivity$11;->this$0:Lcom/androlua/LuaEditActivity;

    iput-object p2, p0, Lcom/androlua/LuaEditActivity$11;->val$pdf:Landroid/graphics/pdf/PdfRenderer;

    iput p3, p0, Lcom/androlua/LuaEditActivity$11;->val$i:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(Lcom/nirenr/talkman/ai/OcrResult;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "readPdf"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/androlua/LuaEditActivity$11;->this$0:Lcom/androlua/LuaEditActivity;

    invoke-static {v0}, Lcom/androlua/LuaEditActivity;->b(Lcom/androlua/LuaEditActivity;)Landroid/widget/SplitEditView;

    move-result-object v0

    iget-object v1, p0, Lcom/androlua/LuaEditActivity$11;->this$0:Lcom/androlua/LuaEditActivity;

    invoke-static {v1}, Lcom/androlua/LuaEditActivity;->b(Lcom/androlua/LuaEditActivity;)Landroid/widget/SplitEditView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SplitEditView;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/nirenr/talkman/ai/OcrResult;->getString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n\n"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/widget/SplitEditView;->insert(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/androlua/LuaEditActivity$11;->this$0:Lcom/androlua/LuaEditActivity;

    iget-object v0, p0, Lcom/androlua/LuaEditActivity$11;->val$pdf:Landroid/graphics/pdf/PdfRenderer;

    iget v1, p0, Lcom/androlua/LuaEditActivity$11;->val$i:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/androlua/LuaEditActivity;->p(Lcom/androlua/LuaEditActivity;Landroid/graphics/pdf/PdfRenderer;I)V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 2

    iget-object p1, p0, Lcom/androlua/LuaEditActivity$11;->this$0:Lcom/androlua/LuaEditActivity;

    iget-object v0, p0, Lcom/androlua/LuaEditActivity$11;->val$pdf:Landroid/graphics/pdf/PdfRenderer;

    iget v1, p0, Lcom/androlua/LuaEditActivity$11;->val$i:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/androlua/LuaEditActivity;->p(Lcom/androlua/LuaEditActivity;Landroid/graphics/pdf/PdfRenderer;I)V

    return-void
.end method
