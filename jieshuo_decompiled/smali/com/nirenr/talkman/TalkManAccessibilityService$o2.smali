.class Lcom/nirenr/talkman/TalkManAccessibilityService$o2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/dialog/VirtualScreen$VirtualScreenOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/TalkManAccessibilityService;->showGrid()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/nirenr/talkman/TalkManAccessibilityService;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService;II)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$o2;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iput p2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$o2;->a:I

    iput p3, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$o2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/nirenr/talkman/dialog/VirtualScreen;Lcom/nirenr/talkman/ai/OcrResult$OcrItem;)V
    .locals 2

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$o2;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iget v0, p2, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->x:I

    iget v1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$o2;->a:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget p2, p2, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->y:I

    iget v1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$o2;->b:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p2, v1

    invoke-virtual {p1, v0, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->click(II)Z

    return-void
.end method
