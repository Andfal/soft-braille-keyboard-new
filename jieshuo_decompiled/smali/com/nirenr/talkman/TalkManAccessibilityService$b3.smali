.class Lcom/nirenr/talkman/TalkManAccessibilityService$b3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/screencapture/ScreenCaptureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/TalkManAccessibilityService;->colorClick(DDDDIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:D

.field final synthetic b:D

.field final synthetic c:D

.field final synthetic d:D

.field final synthetic e:I

.field final synthetic f:I

.field final synthetic g:I

.field final synthetic h:I

.field final synthetic i:Lcom/nirenr/talkman/TalkManAccessibilityService;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService;DDDDIIII)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$b3;->i:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iput-wide p2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$b3;->a:D

    iput-wide p4, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$b3;->b:D

    iput-wide p6, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$b3;->c:D

    iput-wide p8, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$b3;->d:D

    iput p10, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$b3;->e:I

    iput p11, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$b3;->f:I

    iput p12, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$b3;->g:I

    iput p13, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$b3;->h:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScreenCaptureDone(Landroid/graphics/Bitmap;)V
    .locals 18

    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/nirenr/talkman/TalkManAccessibilityService$b3;->a:D

    iget-wide v3, v0, Lcom/nirenr/talkman/TalkManAccessibilityService$b3;->b:D

    iget-wide v5, v0, Lcom/nirenr/talkman/TalkManAccessibilityService$b3;->c:D

    iget-wide v7, v0, Lcom/nirenr/talkman/TalkManAccessibilityService$b3;->d:D

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    cmpg-double v11, v1, v9

    if-gtz v11, :cond_0

    cmpg-double v11, v3, v9

    if-gtz v11, :cond_0

    cmpg-double v11, v5, v9

    if-gtz v11, :cond_0

    cmpg-double v11, v7, v9

    if-gtz v11, :cond_0

    iget-object v1, v0, Lcom/nirenr/talkman/TalkManAccessibilityService$b3;->i:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/androlua/LuaService;->getDisplayWidth()I

    move-result v1

    int-to-double v1, v1

    iget-wide v3, v0, Lcom/nirenr/talkman/TalkManAccessibilityService$b3;->a:D

    mul-double v1, v1, v3

    iget-object v3, v0, Lcom/nirenr/talkman/TalkManAccessibilityService$b3;->i:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v3}, Lcom/androlua/LuaService;->getDisplayHeight()I

    move-result v3

    int-to-double v3, v3

    iget-wide v5, v0, Lcom/nirenr/talkman/TalkManAccessibilityService$b3;->b:D

    mul-double v3, v3, v5

    iget-object v5, v0, Lcom/nirenr/talkman/TalkManAccessibilityService$b3;->i:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v5}, Lcom/androlua/LuaService;->getDisplayWidth()I

    move-result v5

    int-to-double v5, v5

    iget-wide v7, v0, Lcom/nirenr/talkman/TalkManAccessibilityService$b3;->c:D

    mul-double v5, v5, v7

    iget-object v7, v0, Lcom/nirenr/talkman/TalkManAccessibilityService$b3;->i:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v7}, Lcom/androlua/LuaService;->getDisplayHeight()I

    move-result v7

    int-to-double v7, v7

    iget-wide v9, v0, Lcom/nirenr/talkman/TalkManAccessibilityService$b3;->d:D

    mul-double v7, v7, v9

    :cond_0
    new-instance v9, Lcom/nirenr/ColorFinder;

    move-object/from16 v10, p1

    invoke-direct {v9, v10}, Lcom/nirenr/ColorFinder;-><init>(Landroid/graphics/Bitmap;)V

    double-to-int v10, v1

    double-to-int v11, v3

    double-to-int v12, v5

    double-to-int v13, v7

    iget v14, v0, Lcom/nirenr/talkman/TalkManAccessibilityService$b3;->e:I

    iget v15, v0, Lcom/nirenr/talkman/TalkManAccessibilityService$b3;->f:I

    iget v1, v0, Lcom/nirenr/talkman/TalkManAccessibilityService$b3;->g:I

    iget v2, v0, Lcom/nirenr/talkman/TalkManAccessibilityService$b3;->h:I

    move/from16 v16, v1

    move/from16 v17, v2

    invoke-virtual/range {v9 .. v17}, Lcom/nirenr/ColorFinder;->find(IIIIIIII)Landroid/graphics/Point;

    move-result-object v1

    iget v2, v1, Landroid/graphics/Point;->x:I

    const/4 v3, -0x1

    if-le v2, v3, :cond_1

    iget-object v2, v0, Lcom/nirenr/talkman/TalkManAccessibilityService$b3;->i:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->click(Landroid/graphics/Point;)Z

    :cond_1
    return-void
.end method

.method public onScreenCaptureError(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
