.class Lcom/nirenr/talkman/dialog/g$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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

    iput-object p1, p0, Lcom/nirenr/talkman/dialog/g$b;->c:Lcom/nirenr/talkman/dialog/g;

    iput-object p2, p0, Lcom/nirenr/talkman/dialog/g$b;->a:[Lcom/nirenr/talkman/ai/OcrResult$OcrItem;

    iput-object p3, p0, Lcom/nirenr/talkman/dialog/g$b;->b:Lcom/androlua/LuaDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/g$b;->a:[Lcom/nirenr/talkman/ai/OcrResult$OcrItem;

    aget-object p1, p1, p3

    iget-object p2, p0, Lcom/nirenr/talkman/dialog/g$b;->b:Lcom/androlua/LuaDialog;

    invoke-virtual {p2}, Landroid/app/Dialog;->dismiss()V

    iget-object p2, p0, Lcom/nirenr/talkman/dialog/g$b;->c:Lcom/nirenr/talkman/dialog/g;

    invoke-static {p2}, Lcom/nirenr/talkman/dialog/g;->a(Lcom/nirenr/talkman/dialog/g;)Lcom/nirenr/talkman/dialog/VirtualScreen$VirtualScreenOnClickListener;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/nirenr/talkman/dialog/g$b;->c:Lcom/nirenr/talkman/dialog/g;

    invoke-static {p2}, Lcom/nirenr/talkman/dialog/g;->a(Lcom/nirenr/talkman/dialog/g;)Lcom/nirenr/talkman/dialog/VirtualScreen$VirtualScreenOnClickListener;

    move-result-object p2

    const/4 p3, 0x0

    invoke-interface {p2, p3, p1}, Lcom/nirenr/talkman/dialog/VirtualScreen$VirtualScreenOnClickListener;->onClick(Lcom/nirenr/talkman/dialog/VirtualScreen;Lcom/nirenr/talkman/ai/OcrResult$OcrItem;)V

    return-void

    :cond_0
    iget-object p2, p0, Lcom/nirenr/talkman/dialog/g$b;->c:Lcom/nirenr/talkman/dialog/g;

    invoke-static {p2}, Lcom/nirenr/talkman/dialog/g;->b(Lcom/nirenr/talkman/dialog/g;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p2

    invoke-virtual {p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getHandler()Landroid/os/Handler;

    move-result-object p2

    new-instance p3, Lcom/nirenr/talkman/dialog/g$b$a;

    invoke-direct {p3, p0, p1}, Lcom/nirenr/talkman/dialog/g$b$a;-><init>(Lcom/nirenr/talkman/dialog/g$b;Lcom/nirenr/talkman/ai/OcrResult$OcrItem;)V

    const-wide/16 p4, 0x1f4

    invoke-virtual {p2, p3, p4, p5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
