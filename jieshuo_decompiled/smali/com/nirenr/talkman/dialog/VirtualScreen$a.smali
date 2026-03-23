.class Lcom/nirenr/talkman/dialog/VirtualScreen$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/dialog/VirtualScreen;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:[Ljava/lang/String;

.field final synthetic c:Lcom/nirenr/talkman/ai/OcrResult$OcrItem;

.field final synthetic d:Lcom/nirenr/talkman/dialog/VirtualScreen;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/dialog/VirtualScreen;Landroid/view/View;[Ljava/lang/String;Lcom/nirenr/talkman/ai/OcrResult$OcrItem;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/dialog/VirtualScreen$a;->d:Lcom/nirenr/talkman/dialog/VirtualScreen;

    iput-object p2, p0, Lcom/nirenr/talkman/dialog/VirtualScreen$a;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/nirenr/talkman/dialog/VirtualScreen$a;->b:[Ljava/lang/String;

    iput-object p4, p0, Lcom/nirenr/talkman/dialog/VirtualScreen$a;->c:Lcom/nirenr/talkman/ai/OcrResult$OcrItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nirenr/talkman/dialog/VirtualScreen$a;->d:Lcom/nirenr/talkman/dialog/VirtualScreen;

    iget-object v2, v0, Lcom/nirenr/talkman/dialog/VirtualScreen$a;->a:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v1, v0, Lcom/nirenr/talkman/dialog/VirtualScreen$a;->b:[Ljava/lang/String;

    aget-object v1, v1, p2

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v4, v0, Lcom/nirenr/talkman/dialog/VirtualScreen$a;->c:Lcom/nirenr/talkman/ai/OcrResult$OcrItem;

    iget v5, v4, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->width:I

    div-int/2addr v5, v2

    iget v4, v4, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->height:I

    div-int/2addr v4, v1

    mul-int v6, v2, v1

    new-array v13, v6, [Lcom/nirenr/talkman/ai/OcrResult$OcrItem;

    const/4 v6, 0x0

    const/4 v14, 0x0

    :goto_0
    if-ge v14, v2, :cond_1

    move v15, v6

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v1, :cond_0

    new-instance v16, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v8, v14, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v12, v6, 0x1

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Lcom/nirenr/talkman/dialog/VirtualScreen$a;->c:Lcom/nirenr/talkman/ai/OcrResult$OcrItem;

    iget v9, v8, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->x:I

    mul-int v10, v5, v14

    add-int/2addr v9, v10

    iget v8, v8, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->y:I

    mul-int v6, v6, v4

    add-int v10, v8, v6

    div-int/lit8 v17, v4, 0x2

    move-object/from16 v6, v16

    move v8, v9

    move v9, v10

    move v10, v5

    move v11, v4

    move/from16 v18, v12

    move/from16 v12, v17

    invoke-direct/range {v6 .. v12}, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;-><init>(Ljava/lang/String;IIIII)V

    aput-object v16, v13, v15

    add-int/lit8 v15, v15, 0x1

    move/from16 v6, v18

    goto :goto_1

    :cond_0
    add-int/lit8 v14, v14, 0x1

    move v6, v15

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lcom/nirenr/talkman/dialog/VirtualScreen$a;->d:Lcom/nirenr/talkman/dialog/VirtualScreen;

    invoke-virtual {v1, v13}, Lcom/nirenr/talkman/dialog/VirtualScreen;->r([Lcom/nirenr/talkman/ai/OcrResult$OcrItem;)Lcom/nirenr/talkman/dialog/VirtualScreen;

    return-void
.end method
