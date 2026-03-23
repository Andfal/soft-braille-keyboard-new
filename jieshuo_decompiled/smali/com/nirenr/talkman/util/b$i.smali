.class Lcom/nirenr/talkman/util/b$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/util/b;->B(Ljava/lang/String;Landroid/view/accessibility/AccessibilityNodeInfo;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/androlua/LuaDialog;

.field final synthetic b:Lcom/nirenr/talkman/util/b;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/util/b;Lcom/androlua/LuaDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/util/b$i;->b:Lcom/nirenr/talkman/util/b;

    iput-object p2, p0, Lcom/nirenr/talkman/util/b$i;->a:Lcom/androlua/LuaDialog;

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

    iget-object p1, p0, Lcom/nirenr/talkman/util/b$i;->a:Lcom/androlua/LuaDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    iget-object p1, p0, Lcom/nirenr/talkman/util/b$i;->b:Lcom/nirenr/talkman/util/b;

    invoke-static {p1}, Lcom/nirenr/talkman/util/b;->i(Lcom/nirenr/talkman/util/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    iget-object p2, p0, Lcom/nirenr/talkman/util/b$i;->b:Lcom/nirenr/talkman/util/b;

    invoke-static {p2}, Lcom/nirenr/talkman/util/b;->i(Lcom/nirenr/talkman/util/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p2

    invoke-virtual {p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getAllAppList()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->startApp(Ljava/lang/String;)Z

    return-void
.end method
