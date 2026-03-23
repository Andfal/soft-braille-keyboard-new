.class Lcom/nirenr/talkman/dialog/g$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/dialog/g;->e(Lcom/nirenr/talkman/ai/OcrResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Lcom/nirenr/talkman/ai/OcrResult$OcrItem;

.field final synthetic b:Lcom/androlua/LuaDialog;

.field final synthetic c:Lcom/nirenr/talkman/dialog/g;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/dialog/g;[Lcom/nirenr/talkman/ai/OcrResult$OcrItem;Lcom/androlua/LuaDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/dialog/g$c;->c:Lcom/nirenr/talkman/dialog/g;

    iput-object p2, p0, Lcom/nirenr/talkman/dialog/g$c;->a:[Lcom/nirenr/talkman/ai/OcrResult$OcrItem;

    iput-object p3, p0, Lcom/nirenr/talkman/dialog/g$c;->b:Lcom/androlua/LuaDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/g$c;->a:[Lcom/nirenr/talkman/ai/OcrResult$OcrItem;

    aget-object p1, p1, p3

    iget-object p2, p0, Lcom/nirenr/talkman/dialog/g$c;->b:Lcom/androlua/LuaDialog;

    invoke-virtual {p2}, Landroid/app/Dialog;->dismiss()V

    iget v3, p1, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->x:I

    iget v6, p1, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->y:I

    iget v4, p1, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->width:I

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/g$c;->a:[Lcom/nirenr/talkman/ai/OcrResult$OcrItem;

    aget-object p1, p1, p3

    iget-object v5, p1, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->text:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result p1

    new-array v7, p1, [Ljava/lang/String;

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result p2

    if-ge p1, p2, :cond_0

    invoke-virtual {v5, p1}, Ljava/lang/String;->charAt(I)C

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v7, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/g$c;->c:Lcom/nirenr/talkman/dialog/g;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/g;->b(Lcom/nirenr/talkman/dialog/g;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    iget-object p2, p0, Lcom/nirenr/talkman/dialog/g$c;->c:Lcom/nirenr/talkman/dialog/g;

    invoke-static {p2}, Lcom/nirenr/talkman/dialog/g;->b(Lcom/nirenr/talkman/dialog/g;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p2

    const p3, 0x7f070410

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v7}, Lcom/androlua/LuaService;->createDialog(Ljava/lang/String;[Ljava/lang/String;)Lcom/androlua/LuaDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/androlua/LuaDialog;->getListView()Landroid/widget/ListView;

    move-result-object p2

    new-instance p3, Lcom/nirenr/talkman/dialog/g$c$a;

    move-object v0, p3

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/nirenr/talkman/dialog/g$c$a;-><init>(Lcom/nirenr/talkman/dialog/g$c;Lcom/androlua/LuaDialog;IILjava/lang/String;I[Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {p1}, Lcom/androlua/LuaDialog;->show()V

    const/4 p1, 0x1

    return p1
.end method
