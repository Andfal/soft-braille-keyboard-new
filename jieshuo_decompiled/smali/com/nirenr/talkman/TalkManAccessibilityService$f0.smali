.class Lcom/nirenr/talkman/TalkManAccessibilityService$f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/TalkManAccessibilityService;->setAsyncTtsEngine()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Ljava/util/ArrayList;

.field final synthetic c:Lcom/androlua/LuaDialog;

.field final synthetic d:Lcom/nirenr/talkman/TalkManAccessibilityService;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/androlua/LuaDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$f0;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iput-object p2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$f0;->a:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$f0;->b:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$f0;->c:Lcom/androlua/LuaDialog;

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

    const/4 p1, 0x1

    if-le p3, p1, :cond_0

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$f0;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string p2, "nirenr"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$f0;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->H2(Lcom/nirenr/talkman/TalkManAccessibilityService;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$f0;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const p2, 0x7f07037f

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speak(I)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$f0;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p2

    const p4, 0x7f070046

    invoke-static {p2, p4, p1}, Lk2/b0;->j(Landroid/content/Context;ILjava/lang/Object;)V

    invoke-static {}, Lcom/nirenr/talkman/settings/AsyncTtsSetting;->recreat()V

    iget-object p2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$f0;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {p2, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->f3(Lcom/nirenr/talkman/TalkManAccessibilityService;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$f0;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/nirenr/talkman/TalkManAccessibilityService$f0$a;

    invoke-direct {p2, p0, p3}, Lcom/nirenr/talkman/TalkManAccessibilityService$f0$a;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService$f0;I)V

    const-wide/16 p3, 0x7d0

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$f0;->c:Lcom/androlua/LuaDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
