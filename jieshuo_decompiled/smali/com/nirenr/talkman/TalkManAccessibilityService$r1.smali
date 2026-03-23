.class Lcom/nirenr/talkman/TalkManAccessibilityService$r1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/TalkManAccessibilityService;->showNotificationBox()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ArrayListAdapter;

.field final synthetic b:Lcom/nirenr/talkman/TalkManAccessibilityService;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Landroid/widget/ArrayListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$r1;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iput-object p2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$r1;->a:Landroid/widget/ArrayListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$r1;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->p0(Lcom/nirenr/talkman/TalkManAccessibilityService;)I

    move-result p1

    const/4 p2, 0x2

    const/4 p4, 0x1

    if-eqz p1, :cond_3

    if-eq p1, p4, :cond_2

    if-eq p1, p2, :cond_1

    const/4 p5, 0x3

    if-eq p1, p5, :cond_0

    return p4

    :cond_0
    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->v3()Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->p3()Ljava/util/ArrayList;

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->u3()Ljava/util/ArrayList;

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->t3()Ljava/util/ArrayList;

    :goto_0
    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$r1;->a:Landroid/widget/ArrayListAdapter;

    invoke-virtual {p1, p3}, Landroid/widget/ArrayListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string p3, ":\n"

    invoke-virtual {p1, p3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p3

    const/4 p5, 0x0

    invoke-virtual {p1, p5, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    add-int/2addr p3, p2

    invoke-virtual {p1, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, " "

    invoke-virtual {v0, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v0, p5, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$r1;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {p3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->p(Lcom/nirenr/talkman/TalkManAccessibilityService;)Z

    move-result p3

    if-eqz p3, :cond_4

    iget-object p3, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$r1;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p3, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->splitRow2(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_1

    :cond_4
    iget-object p3, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$r1;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p3, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->splitRow3(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    :goto_1
    iget-object p3, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$r1;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p3, p2, p1}, Lcom/androlua/LuaService;->createDialog(Ljava/lang/String;Ljava/util/List;)Lcom/androlua/LuaDialog;

    move-result-object p3

    invoke-virtual {p3}, Lcom/androlua/LuaDialog;->getListView()Landroid/widget/ListView;

    move-result-object p5

    new-instance v0, Lcom/nirenr/talkman/TalkManAccessibilityService$r1$a;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService$r1$a;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService$r1;Lcom/androlua/LuaDialog;Ljava/util/ArrayList;Ljava/lang/String;)V

    invoke-virtual {p5, v0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$r1;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const p2, 0x7f070095

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/nirenr/talkman/TalkManAccessibilityService$r1$b;

    invoke-direct {p2, p0, p3}, Lcom/nirenr/talkman/TalkManAccessibilityService$r1$b;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService$r1;Lcom/androlua/LuaDialog;)V

    invoke-virtual {p3, p1, p2}, Lcom/androlua/LuaDialog;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p3}, Lcom/androlua/LuaDialog;->show()V

    return p4
.end method
