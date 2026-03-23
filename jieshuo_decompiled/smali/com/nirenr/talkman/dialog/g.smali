.class public Lcom/nirenr/talkman/dialog/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/ai/OcrResult$OCRListener;


# instance fields
.field private a:Lcom/nirenr/talkman/TalkManAccessibilityService;

.field private b:Lcom/nirenr/talkman/dialog/VirtualScreen$VirtualScreenOnClickListener;


# direct methods
.method public constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nirenr/talkman/dialog/g;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    return-void
.end method

.method static bridge synthetic a(Lcom/nirenr/talkman/dialog/g;)Lcom/nirenr/talkman/dialog/VirtualScreen$VirtualScreenOnClickListener;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/dialog/g;->b:Lcom/nirenr/talkman/dialog/VirtualScreen$VirtualScreenOnClickListener;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/nirenr/talkman/dialog/g;)Lcom/nirenr/talkman/TalkManAccessibilityService;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/dialog/g;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    return-object p0
.end method


# virtual methods
.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/g;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, p0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->ocrScreen(Lcom/nirenr/talkman/ai/OcrResult$OCRListener;)V

    return-void
.end method

.method public d(Lcom/nirenr/talkman/dialog/VirtualScreen$VirtualScreenOnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/dialog/g;->b:Lcom/nirenr/talkman/dialog/VirtualScreen$VirtualScreenOnClickListener;

    return-void
.end method

.method public e(Lcom/nirenr/talkman/ai/OcrResult;)V
    .locals 4

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/g;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v1, 0x7f070410

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/nirenr/talkman/ai/OcrResult;->getStringList()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/androlua/LuaService;->createDialog(Ljava/lang/String;[Ljava/lang/String;)Lcom/androlua/LuaDialog;

    move-result-object v0

    invoke-virtual {p1}, Lcom/nirenr/talkman/ai/OcrResult;->getItems()[Lcom/nirenr/talkman/ai/OcrResult$OcrItem;

    move-result-object v1

    iget-object v2, p0, Lcom/nirenr/talkman/dialog/g;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v3, 0x7f070248

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/nirenr/talkman/dialog/g$a;

    invoke-direct {v3, p0, p1}, Lcom/nirenr/talkman/dialog/g$a;-><init>(Lcom/nirenr/talkman/dialog/g;Lcom/nirenr/talkman/ai/OcrResult;)V

    invoke-virtual {v0, v2, v3}, Lcom/androlua/LuaDialog;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0}, Lcom/androlua/LuaDialog;->getListView()Landroid/widget/ListView;

    move-result-object p1

    new-instance v2, Lcom/nirenr/talkman/dialog/g$b;

    invoke-direct {v2, p0, v1, v0}, Lcom/nirenr/talkman/dialog/g$b;-><init>(Lcom/nirenr/talkman/dialog/g;[Lcom/nirenr/talkman/ai/OcrResult$OcrItem;Lcom/androlua/LuaDialog;)V

    invoke-virtual {p1, v2}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v0}, Lcom/androlua/LuaDialog;->show()V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-ge p1, v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/androlua/LuaDialog;->getListView()Landroid/widget/ListView;

    move-result-object p1

    new-instance v2, Lcom/nirenr/talkman/dialog/g$c;

    invoke-direct {v2, p0, v1, v0}, Lcom/nirenr/talkman/dialog/g$c;-><init>(Lcom/nirenr/talkman/dialog/g;[Lcom/nirenr/talkman/ai/OcrResult$OcrItem;Lcom/androlua/LuaDialog;)V

    invoke-virtual {p1, v2}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    return-void
.end method

.method public onDone(Lcom/nirenr/talkman/ai/OcrResult;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/nirenr/talkman/dialog/g;->e(Lcom/nirenr/talkman/ai/OcrResult;)V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 1

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/g;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v0, 0x7f07038f

    invoke-virtual {p1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speak(I)V

    return-void
.end method
