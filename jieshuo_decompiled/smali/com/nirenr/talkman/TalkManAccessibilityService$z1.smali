.class Lcom/nirenr/talkman/TalkManAccessibilityService$z1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/TalkManAccessibilityService;->toastNotificationBox()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/TalkManAccessibilityService;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$z1;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->u3()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string p2, ":\n"

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p4

    add-int/lit8 p2, p2, 0x2

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, " "

    invoke-virtual {p4, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p4, p3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$z1;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {p3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->p(Lcom/nirenr/talkman/TalkManAccessibilityService;)Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$z1;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p3, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->splitRow2(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$z1;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p3, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->splitRow3(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    :goto_0
    iget-object p3, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$z1;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p3, p2, p1}, Lcom/androlua/LuaService;->createDialog(Ljava/lang/String;Ljava/util/List;)Lcom/androlua/LuaDialog;

    move-result-object p3

    invoke-virtual {p3}, Lcom/androlua/LuaDialog;->getListView()Landroid/widget/ListView;

    move-result-object p4

    new-instance p5, Lcom/nirenr/talkman/TalkManAccessibilityService$z1$a;

    invoke-direct {p5, p0, p3, p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService$z1$a;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService$z1;Lcom/androlua/LuaDialog;Ljava/util/ArrayList;Ljava/lang/String;)V

    invoke-virtual {p4, p5}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$z1;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const p2, 0x7f070095

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/nirenr/talkman/TalkManAccessibilityService$z1$b;

    invoke-direct {p2, p0, p3}, Lcom/nirenr/talkman/TalkManAccessibilityService$z1$b;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService$z1;Lcom/androlua/LuaDialog;)V

    invoke-virtual {p3, p1, p2}, Lcom/androlua/LuaDialog;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p3}, Lcom/androlua/LuaDialog;->show()V

    const/4 p1, 0x1

    return p1
.end method
