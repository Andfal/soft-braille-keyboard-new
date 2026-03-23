.class Lcom/nirenr/talkman/j$h;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nirenr/talkman/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "h"
.end annotation


# instance fields
.field private final a:Landroid/graphics/Paint;

.field private b:I

.field final synthetic c:Lcom/nirenr/talkman/j;


# direct methods
.method public constructor <init>(Lcom/nirenr/talkman/j;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/j$h;->c:Lcom/nirenr/talkman/j;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/nirenr/talkman/j$h;->b:I

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/nirenr/talkman/j$h;->a:Landroid/graphics/Paint;

    const p2, -0x77777778

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/nirenr/talkman/j$h;->b:I

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/nirenr/talkman/j$h;->c:Lcom/nirenr/talkman/j;

    invoke-static {v2}, Lcom/nirenr/talkman/j;->o(Lcom/nirenr/talkman/j;)I

    move-result v2

    div-int/lit8 v2, v2, 0x4

    if-ge v1, v2, :cond_0

    return-void

    :cond_0
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/nirenr/talkman/j$h;->b:I

    div-int/2addr v1, v2

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lcom/nirenr/talkman/j$h;->b:I

    if-ge v2, v3, :cond_1

    mul-int v3, v1, v2

    int-to-float v7, v3

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v6, v3

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v3

    iget-object v9, p0, Lcom/nirenr/talkman/j$h;->a:Landroid/graphics/Paint;

    move-object v4, p1

    move v5, v7

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
