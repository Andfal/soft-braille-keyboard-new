.class Lcom/nirenr/talkman/dialog/g$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/dialog/g$b;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/ai/OcrResult$OcrItem;

.field final synthetic b:Lcom/nirenr/talkman/dialog/g$b;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/dialog/g$b;Lcom/nirenr/talkman/ai/OcrResult$OcrItem;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/dialog/g$b$a;->b:Lcom/nirenr/talkman/dialog/g$b;

    iput-object p2, p0, Lcom/nirenr/talkman/dialog/g$b$a;->a:Lcom/nirenr/talkman/ai/OcrResult$OcrItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/g$b$a;->b:Lcom/nirenr/talkman/dialog/g$b;

    iget-object v0, v0, Lcom/nirenr/talkman/dialog/g$b;->c:Lcom/nirenr/talkman/dialog/g;

    invoke-static {v0}, Lcom/nirenr/talkman/dialog/g;->b(Lcom/nirenr/talkman/dialog/g;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/g$b$a;->a:Lcom/nirenr/talkman/ai/OcrResult$OcrItem;

    iget v2, v1, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->x:I

    iget v3, v1, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->width:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget v3, v1, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->y:I

    iget v1, v1, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->height:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v3, v1

    invoke-virtual {v0, v2, v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->click(II)Z

    return-void
.end method
