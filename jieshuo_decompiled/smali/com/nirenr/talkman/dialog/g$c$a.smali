.class Lcom/nirenr/talkman/dialog/g$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/dialog/g$c;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/androlua/LuaDialog;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:I

.field final synthetic f:[Ljava/lang/String;

.field final synthetic g:Lcom/nirenr/talkman/dialog/g$c;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/dialog/g$c;Lcom/androlua/LuaDialog;IILjava/lang/String;I[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/dialog/g$c$a;->g:Lcom/nirenr/talkman/dialog/g$c;

    iput-object p2, p0, Lcom/nirenr/talkman/dialog/g$c$a;->a:Lcom/androlua/LuaDialog;

    iput p3, p0, Lcom/nirenr/talkman/dialog/g$c$a;->b:I

    iput p4, p0, Lcom/nirenr/talkman/dialog/g$c$a;->c:I

    iput-object p5, p0, Lcom/nirenr/talkman/dialog/g$c$a;->d:Ljava/lang/String;

    iput p6, p0, Lcom/nirenr/talkman/dialog/g$c$a;->e:I

    iput-object p7, p0, Lcom/nirenr/talkman/dialog/g$c$a;->f:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/g$c$a;->a:Lcom/androlua/LuaDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/g$c$a;->g:Lcom/nirenr/talkman/dialog/g$c;

    iget-object p1, p1, Lcom/nirenr/talkman/dialog/g$c;->c:Lcom/nirenr/talkman/dialog/g;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/g;->a(Lcom/nirenr/talkman/dialog/g;)Lcom/nirenr/talkman/dialog/VirtualScreen$VirtualScreenOnClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;

    invoke-direct {p1}, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;-><init>()V

    iget p2, p0, Lcom/nirenr/talkman/dialog/g$c$a;->b:I

    iget p4, p0, Lcom/nirenr/talkman/dialog/g$c$a;->c:I

    int-to-double p4, p4

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    mul-double p4, p4, v0

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/g$c$a;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    int-to-double v0, v0

    div-double/2addr p4, v0

    add-int/lit8 v0, p3, 0x1

    int-to-double v0, v0

    mul-double p4, p4, v0

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Double;->intValue()I

    move-result p4

    add-int/2addr p2, p4

    iput p2, p1, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->x:I

    iget p2, p0, Lcom/nirenr/talkman/dialog/g$c$a;->e:I

    iput p2, p1, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->y:I

    iget-object p2, p0, Lcom/nirenr/talkman/dialog/g$c$a;->f:[Ljava/lang/String;

    aget-object p2, p2, p3

    iput-object p2, p1, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->text:Ljava/lang/String;

    iget-object p2, p0, Lcom/nirenr/talkman/dialog/g$c$a;->g:Lcom/nirenr/talkman/dialog/g$c;

    iget-object p2, p2, Lcom/nirenr/talkman/dialog/g$c;->c:Lcom/nirenr/talkman/dialog/g;

    invoke-static {p2}, Lcom/nirenr/talkman/dialog/g;->a(Lcom/nirenr/talkman/dialog/g;)Lcom/nirenr/talkman/dialog/VirtualScreen$VirtualScreenOnClickListener;

    move-result-object p2

    const/4 p3, 0x0

    invoke-interface {p2, p3, p1}, Lcom/nirenr/talkman/dialog/VirtualScreen$VirtualScreenOnClickListener;->onClick(Lcom/nirenr/talkman/dialog/VirtualScreen;Lcom/nirenr/talkman/ai/OcrResult$OcrItem;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/g$c$a;->g:Lcom/nirenr/talkman/dialog/g$c;

    iget-object p1, p1, Lcom/nirenr/talkman/dialog/g$c;->c:Lcom/nirenr/talkman/dialog/g;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/g;->b(Lcom/nirenr/talkman/dialog/g;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/nirenr/talkman/dialog/g$c$a$a;

    invoke-direct {p2, p0, p3}, Lcom/nirenr/talkman/dialog/g$c$a$a;-><init>(Lcom/nirenr/talkman/dialog/g$c$a;I)V

    const-wide/16 p3, 0x1f4

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
